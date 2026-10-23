import assert from 'node:assert/strict';
import {execFileSync} from 'node:child_process';
import {readFileSync,writeFileSync} from 'node:fs';
const run=(...args)=>execFileSync('calcit',args,{encoding:'utf8',maxBuffer:20*1024*1024});
const q=(...args)=>JSON.parse(run('query',...args,'--format','json')).data;
assert.equal(run('-v').trim(),'0.30.1');run('docs','agents','--contract');
const config=q('config');
const inventory=()=>{
  const all=[],namespaces=q('ns').namespaces;assert.equal(namespaces.length,10);
  for(const ns of namespaces){
    const names=run('query','defs',ns).split('\n').filter(l=>/^  \S/.test(l)).map(l=>l.trim().split(' ')[0]);
    assert.equal(names.length,q('ns',ns).definition_count);
    for(const name of names)all.push(q('def',`${ns}/${name}`));
  }
  assert.equal(all.length,64);assert.equal(all.reduce((n,d)=>n+d.tests.length,0),0);
  assert.equal(all.reduce((n,d)=>n+d.examples.length,0),0);return all;
};
const before=inventory();assert.deepEqual(before,JSON.parse(readFileSync('acceptance/reviewed.json','utf8')));
const expected=structuredClone(before),operations=[],counts={option:0,merge:0,fold:0,setList:0};
const methods={'option:unwrap':'.unwrap','option:unwrap-or':'.unwrap-or','merge':'.merge','foldl':'.fold','&set:to-list':'.to-list'};
const option=q('type',":: 'Option 'String").methods;
for(const old of ['option:unwrap','option:unwrap-or'])assert.equal(option.find(m=>m.name===methods[old]).definition,'calcit.core/'+old);
assert.equal(q('type',":: 'List 'Tag").methods.find(m=>m.name==='.fold').definition,'calcit.core/fold');
assert.equal(q('type',":: 'Set 'String").methods.find(m=>m.name==='.to-list').definition,'calcit.core/&set:to-list');
assert.ok(q('type',":: 'Map 'Tag 'Dynamic").methods.some(m=>m.name==='.merge'));
function visit(node,id,path=[]){
  if(!Array.isArray(node))return;
  const old=node[0];
  if(methods[old]){
    if(old==='foldl')assert.deepEqual(node[1],['[]',':tasks',':archives']);
    if(old==='&set:to-list')assert.deepEqual(node,['&set:to-list']);
    const kind=old.startsWith('option:')?'option':old==='merge'?'merge':old==='foldl'?'fold':'setList';
    counts[kind]++;node[0]=methods[old];
    operations.push(['tree','replace',id,'--path','@'+[...path,0].join('.'),'--input-format','json-ast','--code',JSON.stringify(node[0])]);
  }
  node.forEach((n,i)=>visit(n,id,[...path,i]));
}
expected.forEach(d=>visit(d.code,d.id));assert.deepEqual(counts,{option:16,merge:4,fold:1,setList:5});
writeFileSync('acceptance/before.json',JSON.stringify(before,null,2));
writeFileSync('acceptance/operations.json',JSON.stringify(operations,null,2));
const args=['edit','transaction','--file','acceptance/operations.json','--format','json'];
const preview=JSON.parse(run(...args,'--dry-run'));assert.ok(preview.scoped_revision);
writeFileSync('acceptance/preview.json',JSON.stringify(preview,null,2));
writeFileSync('acceptance/applied.json',run(...args,'--expect-revision',preview.scoped_revision));
assert.deepEqual(inventory(),expected,'All64views preserve actual schema/generics/event guards/task/storage/HUD/config except26reviewedmethodheads');
assert.deepEqual(q('config'),config);
writeFileSync('acceptance/after.json',JSON.stringify(expected,null,2));
writeFileSync('acceptance/preserved.json',JSON.stringify({definitions:64,namespaces:10,tests:0,examples:0,...counts,schemasAssertionsHudStorageUnchanged:true},null,2));
writeFileSync('acceptance/snapshot-blob.txt',execFileSync('git',['hash-object','calcit.cirru'],{encoding:'utf8'}));

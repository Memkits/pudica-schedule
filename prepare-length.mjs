import assert from 'node:assert/strict';
import {execFileSync} from 'node:child_process';
import {readFileSync,writeFileSync,mkdirSync,readdirSync,copyFileSync,statSync} from 'node:fs';
import {createHash} from 'node:crypto';
assert.equal(process.env.GITHUB_ACTIONS,'true');assert.equal(process.platform,'linux');
const run=(exe,args)=>execFileSync(exe,args,{encoding:'utf8',maxBuffer:32e6,stdio:['pipe','pipe','pipe']});
const p=JSON.parse(readFileSync('reviewed-source.json')),mode=process.argv[2];
const norm=v=>Array.isArray(v)?v.map(norm):v&&typeof v==='object'?Object.fromEntries(Object.entries(v).map(([k,x])=>[k,k==='__edn_set'?x.map(norm).sort((a,b)=>JSON.stringify(a).localeCompare(JSON.stringify(b))):k==='schema'&&Array.isArray(x)&&x[0]==='{}'?['{}',...x.slice(1).map(norm).sort((a,b)=>a[0].localeCompare(b[0]))]:norm(x)])):v;
const q=(...args)=>{const r=JSON.parse(run('calcit',['query',...args,'--format','json']));assert.deepEqual(r.diagnostics||[],[]);return norm(r.data);};
const views=()=>{const namespaces=[],defs=[];for(const ns of q('ns').namespaces){const info=q('ns',ns);namespaces.push(info);const names=run('calcit',['query','defs',ns]).split('\n').filter(l=>/^  \S/.test(l)).map(l=>l.trim().split(' ')[0]);assert.equal(names.length,info.definition_count);for(const n of names)defs.push(q('def',ns+'/'+n));}return {config:q('config'),namespaces,defs};};
const expected=structuredClone(p.before);for(const s of p.sites){let n=expected.defs.find(d=>d.id===s.id).code;for(const i of s.path)n=n[i];assert.deepEqual(n,s.before);n[0]='.len';}
const blob=()=>run('git',['hash-object','calcit.cirru']).trim();
const guard=()=>{for(const [f,h]of Object.entries(p.ordinaryBlobs))assert.equal(run('git',['hash-object',f]).trim(),h,f);};
mkdirSync('acceptance',{recursive:true});assert.equal(run('calcit',['-v']).trim(),'0.30.1');
if(mode==='before'){
 assert.equal(blob(),p.blob);assert.deepEqual(views(),norm(p.before));guard();
 assert.ok(!p.before.defs.some(d=>d.id.endsWith('/count')));
 const symbols=[];const collect=n=>{if(Array.isArray(n))n.forEach(collect);else if(n==='count')symbols.push(n);};p.before.namespaces.forEach(n=>collect(n.ns_code));p.before.defs.forEach(d=>collect(d.code));assert.equal(symbols.length,5,'count occurs only at the five reviewed call heads');
 for(const [i,s]of p.sites.entries()){
  writeFileSync('acceptance/before-subtree-'+i+'.json',run('calcit',['tree','show',s.id,'--path','@'+s.path.join('.'),'--format','json']));
  const t=q('type-at',s.id,'--path','@'+[...s.path,1].join('.'));assert.equal(t.inferred_type,":: 'Map 'String 'app.schema/Task");
  const m=t.static_methods.find(m=>m.name==='.len');assert.equal(m.status,'proven');assert.equal(m.definition,'calcit.core/&map:count');assert.deepEqual(m.parameter_types,[]);assert.equal(m.rest_type,null);assert.equal(m.call_types.returns,"'Number");writeFileSync('acceptance/type-'+i+'.json',JSON.stringify(t));
 }
 writeFileSync('acceptance/before-source.json',JSON.stringify(views()));
}else if(mode==='apply'){
 assert.equal(blob(),p.blob);assert.deepEqual(views(),norm(p.before));guard();
 const operations=p.sites.map(s=>['tree','replace',s.id,'--path','@'+[...s.path,0].join('.'),'--input-format','json-ast','--code','".len"']);
 writeFileSync('acceptance/operations.json',JSON.stringify(operations));const args=['edit','transaction','--file','acceptance/operations.json','--format','json'];
 const preview=JSON.parse(run('calcit',[...args,'--dry-run']));assert.ok(preview.scoped_revision);assert.equal(blob(),p.blob);writeFileSync('acceptance/preview.json',JSON.stringify(preview));writeFileSync('acceptance/applied.json',run('calcit',[...args,'--expect-revision',preview.scoped_revision]));
 writeFileSync('acceptance/modified-blob.txt',blob());assert.deepEqual(views(),norm(expected));guard();
 for(const [i,s]of p.sites.entries())writeFileSync('acceptance/after-subtree-'+i+'.json',run('calcit',['tree','show',s.id,'--path','@'+s.path.join('.'),'--format','json']));
}else if(mode==='after'){
 assert.deepEqual(views(),norm(expected));assert.equal(blob(),readFileSync('acceptance/modified-blob.txt','utf8'));guard();writeFileSync('acceptance/after-source.json',JSON.stringify(views()));
}else if(mode==='before-js'||mode==='after-js'){
 const files=[];function visit(dir){for(const n of readdirSync(dir).sort()){const f=dir+'/'+n;if(statSync(f).isDirectory())visit(f);else if(f.endsWith('.mjs'))files.push({path:f,sha256:createHash('sha256').update(readFileSync(f)).digest('hex')});}}visit('js-out');
 writeFileSync('acceptance/'+mode+'.json',JSON.stringify(files));
 if(mode==='before-js')for(const f of files){const dest='/tmp/pudica-length-before/'+f.path;mkdirSync(dest.slice(0,dest.lastIndexOf('/')),{recursive:true});copyFileSync(f.path,dest);}
 else{const before=JSON.parse(readFileSync('acceptance/before-js.json')),a=new Map(files.map(f=>[f.path,f.sha256])),b=new Map(before.map(f=>[f.path,f.sha256])),changed=[...new Set([...a.keys(),...b.keys()])].filter(f=>a.get(f)!==b.get(f));let diff='';for(const f of changed){try{run('diff',['-u','--label','before/'+f,'--label','after/'+f,b.has(f)?'/tmp/pudica-length-before/'+f:'/dev/null',a.has(f)?f:'/dev/null']);}catch(e){assert.equal(e.status,1);diff+=e.stdout;}}writeFileSync('acceptance/generated-js.diff',diff);writeFileSync('acceptance/generated-js.json',JSON.stringify({before:before.length,after:files.length,changed}));}
}else throw Error('invalid mode');

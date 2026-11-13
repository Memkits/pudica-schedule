import assert from 'node:assert/strict';
import { test } from 'node:test';
import { animateTaskExit } from '../task-animation.mjs';

function fixture() {
  let resolve, reject;
  const finished = new Promise((yes, no) => { resolve = yes; reject = no; });
  const body = { children: [], appendChild(node) { this.children.push(node); } };
  const input = {
    attrs: { id: 'input-0' },
    removeAttribute(key) { delete this.attrs[key]; },
  };
  const ghost = {
    style: {}, attrs: { 'data-comp': 'comp-task' },
    querySelectorAll() { return [input]; },
    removeAttribute(key) { delete this.attrs[key]; },
    animate(frames, options) { this.frames = frames; this.options = options; return { finished }; },
  };
  const layer = {
    style: {}, dataset: {}, attrs: {},
    setAttribute(key, value) { this.attrs[key] = value; },
    appendChild(node) { this.child = node; },
    remove() { body.children.splice(body.children.indexOf(this), 1); },
  };
  const document = {
    body, defaultView: { getComputedStyle: () => ({ opacity: '0.5' }) },
    createElement: () => layer,
  };
  const element = {
    ownerDocument: document, style: { top: '98px' },
    getBoundingClientRect: () => ({ left: 200, top: 160, width: 720, height: 48 }),
    cloneNode: () => ghost,
    parentNode: { appendChild() { assert.fail('Exit ghosts must not enter the keyed list'); } },
  };
  return { element, body, layer, ghost, input, resolve, reject };
}

test('exit animation preserves DOM coordinates and fades an inert viewport-positioned ghost', async () => {
  const f = fixture();
  animateTaskExit(f.element);
  assert.deepEqual(f.body.children, [f.layer]);
  assert.equal(f.layer.child, f.ghost);
  assert.equal(f.layer.style.position, 'fixed');
  assert.equal(f.layer.style.left, '200px');
  assert.equal(f.layer.style.top, '160px');
  assert.equal(f.layer.style.pointerEvents, 'none');
  assert.equal(f.layer.inert, true);
  assert.equal(f.layer.attrs['aria-hidden'], 'true');
  assert.deepEqual(f.input.attrs, {});
  assert.deepEqual(f.ghost.attrs, {});
  assert.deepEqual(f.element.style, { top: '98px' });
  assert.equal(f.ghost.frames[0].opacity, '0.5');
  assert.equal(f.ghost.frames[1].opacity, 0);
  assert.equal(f.ghost.options.duration, 300);
  f.resolve();
  await Promise.resolve();
  assert.deepEqual(f.body.children, []);
});

test('cancelled exit animations also remove their overlay', async () => {
  const f = fixture();
  animateTaskExit(f.element);
  f.reject(new Error('cancelled'));
  await Promise.resolve();
  assert.deepEqual(f.body.children, []);
});

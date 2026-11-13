import assert from 'node:assert/strict';
import { test } from 'node:test';
import { animate_enter_$x_, animate_exit_$x_ } from '../js-out/app.comp.task.mjs';

function fixture(t) {
  function node(attrs = {}, children = []) {
    return {
      nodeType: 1, tagName: 'DIV', attrs, style: {}, children: { length: children.length, item: i => children[i] ?? null },
      removeAttribute(key) { delete this.attrs[key]; },
      setAttribute(key, value) { this.attrs[key] = value; },
      appendChild(child) { this.child = child; return child; },
      remove() { this.removed = true; },
      animate(frames, options) {
        this.frames = frames; this.options = options;
        return this.animation = {};
      },
    };
  }
  const input = node({ id: 'input-0' });
  const ghost = node({ 'data-comp': 'comp-task' }, [input]);
  const layer = node();
  const body = node();
  const element = node();
  element.style.opacity = '0.5';
  element.getBoundingClientRect = () => ({ x: 200, y: 160, width: 720, height: 48 });
  element.cloneNode = () => ghost;
  element.parentNode = { appendChild() { assert.fail('Ghost entered the keyed task list'); } };
  for (const [key, value] of Object.entries({
    document: { body, createElement: () => layer },
    getComputedStyle: () => ({ opacity: '0.5' }),
  })) {
    const previous = Object.getOwnPropertyDescriptor(globalThis, key);
    Object.defineProperty(globalThis, key, { value, configurable: true, writable: true });
    t.after(() => previous ? Object.defineProperty(globalThis, key, previous) : delete globalThis[key]);
  }
  return { element, body, layer, ghost, input };
}

test('Calcit exit animation preserves DOM coordinates and fades an isolated ghost', t => {
  const f = fixture(t);
  animate_exit_$x_(f.element);
  assert.equal(f.body.child, f.layer);
  assert.equal(f.layer.child, f.ghost);
  assert.equal(f.layer.style.position, 'fixed');
  assert.equal(f.layer.style.left, '200px');
  assert.equal(f.layer.style.top, '160px');
  assert.equal(f.layer.style.pointerEvents, 'none');
  assert.equal(f.layer.attrs.inert, '');
  assert.equal(f.layer.attrs['aria-hidden'], 'true');
  assert.deepEqual(f.input.attrs, {});
  assert.deepEqual(f.ghost.attrs, {});
  assert.equal(f.ghost.style.opacity, '0.5');
  assert.equal(f.layer.frames[1].opacity, 0);
  assert.equal(f.layer.options.duration, 300);
  f.layer.animation.onfinish({});
  assert.equal(f.layer.removed, true);
});

test('cancelled Calcit exit animations remove their overlay', t => {
  const f = fixture(t);
  animate_exit_$x_(f.element);
  f.layer.animation.oncancel({});
  assert.equal(f.layer.removed, true);
});

test('Calcit entrance fades without overwriting completion or drag styles', t => {
  const { element } = fixture(t);
  element.style.transform = 'translate(-2px,-4px)';
  const before = { ...element.style };
  animate_enter_$x_(element);
  assert.deepEqual(element.style, before);
  assert.equal(element.frames[0].opacity, 0);
  assert.equal(element.frames.at(-1).opacity, undefined, 'Final opacity follows the current task style');
  assert.equal(element.options.duration, 300);
  assert.equal(element.options.fill, undefined, 'Animation must not retain stale state styles');
});

import assert from "node:assert/strict";
import { test } from "node:test";
import * as c from "../js-out/calcit.core.mjs";
import { store } from "../js-out/app.schema.mjs";
import { comp_todolist } from "../js-out/app.comp.todolist.mjs";
import { updater } from "../js-out/app.updater.mjs";
import { comp_task, on_keydown } from "../js-out/app.comp.task.mjs";
import { event__GT_edn } from "../js-out/respo.util.format.mjs";
import { component_$q_, component_tree } from "../js-out/respo.util.detect.mjs";
const t = c.init_tags(["tasks", "archives", "root", "id", "text", "done?", "done-time", "archived-time", "sort-id", "pointer", "dragging-id", "dropping-id", "states", "editor", "data", "event", "children", "click", "input", "dragenter", "dragend", "drop", "value", "key-code", "original-event", "node"]);
const map = c._$n__$M_;
const get = (x, key) => c.option_$o_unwrap(c.get(x, key));
const nth = (x, i) => c.option_$o_unwrap(c.nth(x, i));
const op = (name, ...args) => c._$o__$o_(c.init_tags([name])[name], ...args);
function handlers(node, kind, found = []) {
  if (c.enum_$q_(node)) {
    if (node.tag.value === "none") return found;
    return handlers(c._$n_enum_$o_nth(node, 1), kind, found);
  }
  if (component_$q_(node)) return handlers(c.option_$o_unwrap(component_tree(node)), kind, found);
  if (c.list_$q_(node)) {
    for (const item of node.toArray()) handlers(item, kind, found);
    return found;
  }
  const event = c.get(node, t.event);
  if (c.option_$o_some_$q_(event)) {
    const fn = c.get(c.option_$o_unwrap(event), kind);
    if (c.option_$o_some_$q_(fn)) found.push(c.option_$o_unwrap(fn));
  }
  const children = c.get(node, t.children);
  if (c.option_$o_some_$q_(children)) for (const pair of c.option_$o_unwrap(children).toArray()) handlers(get(pair, t.node), kind, found);
  return found;
}
function session() {
  let db = store;
  return {
    get db() { return db; },
    dispatch(...args) {
      assert.equal(args.length, 1, "All application dispatches accept one Enum");
      db = updater(db, args[0], "fixture", 1000);
    },
  };
}
const root = (db) => get(get(db, t.tasks), "root");
function respoEvent(values) {
  return map(...Object.entries(values).flatMap(([key, value]) => [c.init_tags([key])[key], value]));
}
test("task text, toggle and pointer click dispatch one Enum", () => {
  const s = session();
  const node = comp_task(root(s.db), 0, true, "", "");
  handlers(node, t.input)[0](respoEvent({ type: t.input, value: "changed text" }), s.dispatch);
  assert.equal(get(root(s.db), t.text), "changed text");
  const clicks = handlers(node, t.click);
  clicks[0](null, s.dispatch);
  assert.equal(get(root(s.db), t["done?"]), true);
  assert.equal(c.option_$o_unwrap(get(root(s.db), t["done-time"])), 1000);
  clicks[1](null, s.dispatch);
  assert.equal(get(s.db, t.pointer), 0);
});
test("drag enter and end update and clear marks using Enum dispatch", () => {
  const s = session();
  const node = comp_task(root(s.db), 0, false, "", "");
  handlers(node, t.dragenter)[0](null, s.dispatch);
  assert.equal(get(s.db, t["dropping-id"]), "root");
  handlers(node, t.dragend)[0](null, s.dispatch);
  assert.equal(get(s.db, t["dragging-id"]), "");
  assert.equal(get(s.db, t["dropping-id"]), "");
});
test("Enter adds a task and modified Backspace removes it", () => {
  const s = session();
  const event = (code, shift = false) => {
    const host = { shiftKey: shift, ctrlKey: false, metaKey: false, preventDefault() {} };
    const values = { type: c.init_tags(["keydown"]).keydown, "key-code": code, "original-event": host };
    return respoEvent(values);
  };
  on_keydown("root", "existing", 0)(event(13), s.dispatch);
  assert.equal(c.count(get(s.db, t.tasks)), 2);
  on_keydown("fixture", "", 1)(event(8, true), s.dispatch);
  assert.equal(c.count(get(s.db, t.tasks)), 1);
  assert.equal(get(root(s.db), t.id), "root");
});
test("completed tasks move to archives and a fresh task remains", () => {
  const s = session();
  s.dispatch(op("task/edit", "root", "completed fixture"));
  s.dispatch(op("task/toggle", "root"));
  s.dispatch(op("task/relax"));
  assert.equal(get(get(get(s.db, t.archives), "root"), t["done?"]), true);
  assert.equal(c.option_$o_unwrap(get(get(get(s.db, t.archives), "root"), t["archived-time"])), 1000);
  assert.equal(c.count(get(s.db, t.tasks)), 1);
});
test("modified arrow keys and drop keep task ordering and pointer consistent", () => {
  const s = session();
  s.dispatch(op("task/add-after", "root"));
  let prevented = 0;
  const keyboard = (code) => respoEvent({
    type: c.init_tags(["keydown"]).keydown, "key-code": code,
    "original-event": { shiftKey: false, ctrlKey: true, metaKey: true, preventDefault() { prevented++; } },
  });
  const originalSort = get(root(s.db), t["sort-id"]);
  on_keydown("fixture", "", 1)(keyboard(38), s.dispatch);
  assert.equal(get(s.db, t.pointer), 0);
  assert.equal(get(get(get(s.db, t.tasks), "fixture"), t["sort-id"]), originalSort);
  on_keydown("fixture", "", 0)(keyboard(40), s.dispatch);
  assert.equal(get(s.db, t.pointer), 1);
  assert.equal(prevented, 2);
  const target = comp_task(root(s.db), 0, false, "fixture", "root");
  handlers(target, t.drop)[0](null, s.dispatch);
  assert.equal(c.count(get(s.db, t.tasks)), 2);
  assert.equal(get(root(s.db), t["sort-id"]), originalSort);
  assert.ok(c._$n_compare(get(get(get(s.db, t.tasks), "fixture"), t["sort-id"]), originalSort) < 0);
  assert.equal(get(s.db, t.pointer), 0);
});
test("nested UI state updates preserve tasks and archive fields", () => {
  const s = session();
  const before = s.db;
  s.dispatch(op("states", c._$L_(t.editor), "draft"));
  assert.ok(c._$e_(get(s.db, t.tasks), get(before, t.tasks)));
  assert.ok(c._$e_(get(s.db, t.archives), get(before, t.archives)));
  assert.equal(get(get(get(s.db, t.states), t.editor), t.data), "draft");
});

test("real Respo input events update task text without Struct casts", () => {
  const s = session();
  const node = comp_task(root(s.db), 0, true, "", "");
  const event = event__GT_edn({ type: "input", target: { value: "browser input", checked: false } });
  assert.ok(c.map_$q_(event));
  handlers(node, t.input)[0](event, s.dispatch);
  assert.equal(get(root(s.db), t.text), "browser input");
});

test("multiple Struct tasks render and retain both input handlers", () => {
  const s = session();
  s.dispatch(op("task/add-after", "root"));
  const node = comp_todolist(get(s.db, t.tasks), get(s.db, t.pointer), "", "");
  assert.equal(handlers(node, t.input).length, 2);
});

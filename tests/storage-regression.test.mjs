import assert from "node:assert/strict";
import { test } from "node:test";
import * as c from "../js-out/calcit.core.mjs";
import { store, Store, Task } from "../js-out/app.schema.mjs";
import { parse_store } from "../js-out/app.storage.mjs";
import { updater } from "../js-out/app.updater.mjs";
const tags = c.init_tags([
  "tasks",
  "archives",
  "root",
  "text",
  "done-time",
  "archived-time",
  "created-time",
  "pointer",
  "states",
  "dragging-id",
  "dropping-id",
  "task/edit",
]);
const get = (value, key) => c.option_$o_unwrap(c.get(value, key));
export const legacy = `{}
  :tasks $ {} $ |root
    {} (:id |root) (:text |saved-task) (:done? false) (:sort-id |T)
      :created-time nil
      :done-time nil
      :archived-time nil
  :archives $ {} $ |archived
    {} (:id |archived) (:text |saved-archive) (:done? true) (:sort-id |T)
      :created-time 10
      :done-time 20
      :archived-time 30
  :pointer 0
  :dragging-id |
  :dropping-id |
  :states $ {}
`;
test("legacy Map storage migrates nested tasks, archives and nullable timestamps", () => {
  const restored = parse_store(legacy);
  assert.equal(restored.structRef, Store);
  const task = get(get(restored, tags.tasks), "root");
  assert.equal(task.structRef, Task);
  assert.equal(get(task, tags.text), "saved-task");
  assert.equal(get(task, tags["created-time"]), 0);
  assert.ok(c.option_$o_none_$q_(get(task, tags["done-time"])));
  const archive = get(get(restored, tags.archives), "archived");
  assert.equal(archive.structRef, Task);
  assert.equal(c.option_$o_unwrap(get(archive, tags["archived-time"])), 30);
  const edited = updater(
    restored,
    c._$o__$o_(tags["task/edit"], "root", "edited"),
    "fixture",
    1000,
  );
  assert.equal(get(get(get(edited, tags.tasks), "root"), tags.text), "edited");
  assert.ok(c._$e_(parse_store(c.format_cirru_edn(edited)), edited));
});
test("current Struct storage restores canonical declarations and field layouts", () => {
  const restored = parse_store(c.format_cirru_edn(store));
  assert.equal(restored.structRef, Store);
  assert.equal(get(get(restored, tags.tasks), "root").structRef, Task);
  assert.ok(c._$e_(restored, store));
});
test("malformed and wrongly typed storage fails before hydration", () => {
  for (const raw of [
    "invalid",
    "do nil",
    "{}",
    legacy.replace("(:text |saved-task)", "(:text 42)"),
    legacy.replace(":pointer 0", ":pointer |wrong"),
    legacy.replace("(:done? false)", "(:done? |false)"),
  ]) {
    assert.throws(() => parse_store(raw));
  }
});

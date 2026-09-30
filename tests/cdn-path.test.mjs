import assert from "node:assert/strict";
import { test } from "node:test";
import { checkCdnPath } from "./check-cdn-path.mjs";
const base = "https://cos-sh.tiye.me/Memkits/pudica-schedule/pr/";
const entry = `<script src="${base}assets/main.js"></script>`;
test("accepts generated JS/CSS and existing external fonts", () => {
  checkCdnPath(`${entry}<link href="${base}assets/main.css"><link href="https://cdn.tiye.me/favored-fonts/main-fonts.css">`, base);
});
test("rejects relative, production and unrelated remote resource paths", () => {
  for (const url of ["./assets/main.js", "https://cos-sh.tiye.me/Memkits/pudica-schedule/assets/main.js", "https://example.com/main.js"]) assert.throws(() => checkCdnPath(`<script src="${url}"></script>`, base));
});
test("requires an entry and HTTPS base, ignoring comments", () => {
  assert.throws(() => checkCdnPath("", base));
  assert.throws(() => checkCdnPath(entry, "./"));
  checkCdnPath(`${entry}<!-- <link href="http://localhost/main.css"> -->`, base);
});

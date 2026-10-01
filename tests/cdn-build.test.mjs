import assert from "node:assert/strict";
import { existsSync, readFileSync } from "node:fs";
import { test } from "node:test";

const dist = new URL("../dist/", import.meta.url);

test("built HTML loads its generated assets from the selected CDN path", () => {
  const base = process.env.VITE_BASE_URL;
  assert.ok(base?.startsWith("https://"), "build with VITE_BASE_URL before testing");
  const html = readFileSync(new URL("index.html", dist), "utf8");
  const urls = [...html.matchAll(/(?:src|href)="([^"]+)"/g)]
    .map((match) => match[1])
    .filter((url) => url.includes("assets/"));
  assert.ok(urls.some((url) => url.endsWith(".js")), "built HTML must reference generated JavaScript");
  for (const url of urls) {
    assert.ok(url.startsWith(`${base}assets/`), `${url} must use ${base}`);
    assert.ok(existsSync(new URL(url.slice(base.length), dist)), `${url} must exist in dist`);
  }
});

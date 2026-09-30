import assert from "node:assert/strict";
import { readFileSync } from "node:fs";
import { pathToFileURL } from "node:url";
export function checkCdnPath(html, base) {
  assert.ok(base?.startsWith("https://") && base.endsWith("/"));
  const active = html.replace(/<!--[\s\S]*?-->/g, "");
  const assets = [...active.matchAll(/(?:src|href)=["']([^"']+)["']/g)]
    .map((match) => match[1]).filter((url) => /\.(?:js|css)(?:[?#]|$)/.test(url));
  assert.ok(assets.some((url) => /\.js(?:[?#]|$)/.test(url)), "Missing JavaScript entry");
  for (const asset of assets) {
    if (asset === "https://cdn.tiye.me/favored-fonts/main-fonts.css") continue;
    assert.ok(asset.startsWith(`${base}assets/`), `Wrong generated asset prefix: ${asset}`);
    assert.equal(new URL(asset).pathname, new URL(asset).pathname.replace(/\/\//g, "/"));
  }
}
// Local build check only; remote upload verification stays inside the COS action.
if (process.argv[1] && import.meta.url === pathToFileURL(process.argv[1]).href) {
  checkCdnPath(readFileSync("dist/index.html", "utf8"), process.env.VITE_BASE_URL);
  console.log("Generated HTML uses the selected CDN prefix");
}

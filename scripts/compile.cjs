const { execFileSync, spawnSync } = require("node:child_process");
const { existsSync, readFileSync, rmSync } = require("node:fs");
const { resolve } = require("node:path");

const root = resolve(__dirname, "..");
const expected = require("../package.json").dependencies["@calcit/procs"];
const local = resolve(root, ".calcit/bin/calcit");
const binary = existsSync(local) ? local : "calcit";
const version = execFileSync(binary, ["--version"], {
  encoding: "utf8",
}).trim();
const runtime = JSON.parse(
  readFileSync(
    resolve(root, "node_modules/@calcit/procs/package.json"),
    "utf8",
  ),
).version;
if (version !== expected || runtime !== expected) {
  throw new Error(
    `Calcit toolchain mismatch: expected ${expected}, compiler ${version}, runtime ${runtime}. Install the pinned release before compiling.`,
  );
}
// Generated modules must not retain output from a different compiler build.
rmSync(resolve(root, "js-out"), { recursive: true, force: true });
const result = spawnSync(binary, ["calcit.cirru", "js"], {
  cwd: root,
  stdio: "inherit",
});
if (result.error) throw result.error;
process.exit(result.status ?? 1);

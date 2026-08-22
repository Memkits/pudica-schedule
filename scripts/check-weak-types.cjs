const { execFileSync } = require("node:child_process");

const MAX_UNRESOLVED_DYNAMIC_SLOTS = 24;
const report = JSON.parse(
  execFileSync(
    "calcit",
    [
      "calcit.cirru",
      "analyze",
      "weak-types",
      "--only",
      "schema-dynamic,code-dynamic",
      "--intent",
      "unresolved",
      "--summary-only",
      "--format",
      "json",
    ],
    { encoding: "utf8" },
  ),
);
const hits = report.data.summary.hits;

if (hits > MAX_UNRESOLVED_DYNAMIC_SLOTS) {
  throw new Error(
    `Unresolved Dynamic slots increased to ${hits}; baseline is ${MAX_UNRESOLVED_DYNAMIC_SLOTS}.`,
  );
}

console.log(`Unresolved Dynamic slots: ${hits}/${MAX_UNRESOLVED_DYNAMIC_SLOTS}`);

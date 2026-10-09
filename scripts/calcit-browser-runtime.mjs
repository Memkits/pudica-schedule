import * as runtime from "../node_modules/@calcit/procs/lib/calcit.procs.mjs";
export * from "../node_modules/@calcit/procs/lib/calcit.procs.mjs";

// Respo's DomElement trait includes fields from several element subclasses
// and its own optional event cache. A native Element proves the DOM boundary;
// requiring every input/select-only field would reject div and style nodes.
export function js_cast(value, trait, fields, methods) {
  if (
    trait === "respo.dom/DomElement" &&
    typeof Element !== "undefined" &&
    value instanceof Element
  ) {
    return value;
  }
  return runtime.js_cast(value, trait, fields, methods);
}

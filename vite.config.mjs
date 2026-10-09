import { fileURLToPath } from "node:url";
import { defineConfig } from "vite";

export default defineConfig({
  base: process.env.VITE_BASE_URL ?? "./",
  resolve: {
    alias: [
      {
        find: /^@calcit\/procs$/,
        replacement: fileURLToPath(
          new URL("./scripts/calcit-browser-runtime.mjs", import.meta.url),
        ),
      },
    ],
  },
});

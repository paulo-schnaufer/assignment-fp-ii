import path from "node:path";
import { createRequire } from "node:module";
const require = createRequire(import.meta.url);
const readlineSync = require(path.resolve("node_modules/readline-sync"));

export function question(prompt) {
  return readlineSync.question(prompt);
}

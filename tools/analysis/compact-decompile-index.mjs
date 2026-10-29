// Shrink a REA decompile_all index for storage: keep each function's address,
// name, status, body ranges, failure and output SHA-256, and store the
// limitations text shared by most entries once instead of per function.
// Usage: node compact-decompile-index.mjs <decompile-index.json> <out.json>
import fs from 'node:fs';

const [input, output] = process.argv.slice(2);
const index = JSON.parse(fs.readFileSync(input, 'utf8'));

const counts = new Map();
for (const f of index.functions) for (const l of f.limitations ?? []) counts.set(l, (counts.get(l) ?? 0) + 1);
const common = [...counts].filter(([, n]) => n === index.functions.length).map(([l]) => l);
const commonSet = new Set(common);

const functions = index.functions.map(f => {
  const extra = (f.limitations ?? []).filter(l => !commonSet.has(l));
  return {
    address: f.address,
    name: f.name,
    status: f.status,
    ...(f.sha256 ? { sha256: f.sha256 } : {}),
    ...(f.body ? { body: f.body } : {}),
    ...(f.failure ? { failure: f.failure } : {}),
    ...(extra.length ? { limitations: extra } : {}),
  };
});

const { functions: _, ...header } = index;
fs.writeFileSync(output, JSON.stringify({ ...header, common_limitations: common, functions }) + '\n');
console.log(`${functions.length} functions, ${common.length} shared limitations -> ${output}`);

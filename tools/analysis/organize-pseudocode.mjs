// Group REA decompile-all output (one file per address) into one file per C++ class.
// Usage: node organize-pseudocode.mjs <decompiledDir> <game-functions.tsv> <outDir> [extraGameClass,...]
import fs from 'node:fs';
import path from 'node:path';

const [decompiledDir, gameTsv, outDir, extraClasses = ''] = process.argv.slice(2);
const index = JSON.parse(fs.readFileSync(path.join(decompiledDir, 'decompile-index.json'), 'utf8'));

// Game classes and their Ghidra addresses (ELF address with the Thumb bit cleared, plus image base 0x10000).
const gameRows = fs.readFileSync(gameTsv, 'utf8').split('\n').filter(Boolean).map(l => l.split('\t'));
const gameClasses = new Set([...gameRows.map(r => r[0]), ...extraClasses.split(',').filter(Boolean)]);
const gameAddrs = new Map(gameRows.map(r => [((parseInt(r[1], 16) & ~1) + 0x10000), r[3]]));

const topLevel = name => name.replace(/^(non-virtual thunk to |virtual thunk to )/, '').split('::')[0].replace(/<.*$/, '');
const safe = s => s.replace(/[^A-Za-z0-9_.-]/g, '_').slice(0, 80);

const buckets = new Map();
const failed = [];
const external = [];
for (const f of index.functions) {
  const addr = parseInt(f.address, 16);
  let bucket;
  if (f.name.startsWith('FUN_') || f.name.startsWith('thunk_FUN_')) bucket = `_unnamed/unnamed_${(addr >> 16).toString(16).padStart(4, '0')}xxxx.c`;
  else if (f.name.startsWith('<EXTERNAL>::')) bucket = '_libraries/_plt-imports.cpp';
  else if (gameClasses.has(topLevel(f.name))) bucket = `${safe(topLevel(f.name))}.cpp`;
  else if (f.name.includes('::')) bucket = `_libraries/${safe(topLevel(f.name))}.cpp`;
  else bucket = '_free-functions.cpp';
  if (f.status === 'external') { external.push(f); continue; }
  if (f.status !== 'written') { failed.push(f); continue; }
  const text = fs.readFileSync(path.join(decompiledDir, f.relative_path), 'utf8');
  const body = text.split('\n').filter(l => !l.startsWith('// ')).join('\n').trim();
  const header = `// ---- ${f.name}  @ ${f.address}\n`;
  if (!buckets.has(bucket)) buckets.set(bucket, []);
  buckets.get(bucket).push({ addr, chunk: header + body + '\n' });
}

for (const [rel, items] of buckets) {
  const file = path.join(outDir, rel);
  fs.mkdirSync(path.dirname(file), { recursive: true });
  items.sort((a, b) => a.addr - b.addr);
  fs.writeFileSync(file, `// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)\n// ${items.length} functions\n\n` + items.map(i => i.chunk).join('\n'));
}

const written = new Set(index.functions.filter(f => f.status === 'written').map(f => parseInt(f.address, 16)));
const missingGame = [...gameAddrs].filter(([a]) => !written.has(a));
fs.writeFileSync(path.join(outDir, '_not-decompiled.txt'),
  'Decompiler failures (see _failed-disassembly/):\n' + failed.map(f => `${f.address}  ${f.name}  ${f.code ?? f.status}`).join('\n') +
  '\n\nGame functions not decompiled:\n' + missingGame.map(([a, n]) => `0x${a.toString(16)}  ${n}`).join('\n') +
  `\n\nExternal imports (no body in this library, ${external.length}):\n` + external.map(f => `${f.address}  ${f.name}`).join('\n') + '\n');

const files = [...buckets.keys()];
console.log(JSON.stringify({
  files: files.length,
  gameClassFiles: files.filter(f => !f.startsWith('_')).length,
  libraryFiles: files.filter(f => f.startsWith('_libraries/')).length,
  unnamedFiles: files.filter(f => f.startsWith('_unnamed/')).length,
  failed: failed.length,
  external: external.length,
  gameFunctionsIndexed: gameAddrs.size,
  gameFunctionsDecompiled: gameAddrs.size - missingGame.length,
}, null, 1));

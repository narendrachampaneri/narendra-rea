// Write patchable ARM Thumb assembly for every game-class function, one .s per class,
// grouped like source/native/<Class>.cpp. Addresses are ELF addresses, which equal file
// offsets in libcocos2dcpp.so (its code segment is loaded at offset 0, address 0).
// Every function's first halfword is checked against the library bytes at that offset.
//
// Usage: node disassemble-classes.mjs <decompile-index.json> <dynfuncs-addr-demangled.txt>
//          <game-functions.tsv> <libcocos2dcpp.so> <out-dir> [extraGameClass,...]
import fs from 'node:fs';
import path from 'node:path';
import { execFile } from 'node:child_process';
import { promisify } from 'node:util';

const run = promisify(execFile);
const [indexPath, dynPath, gameTsv, soPath, outDir, extraClasses = ''] = process.argv.slice(2);
const GHIDRA_BASE = 0x10000;

const gameClasses = new Set([
  ...fs.readFileSync(gameTsv, 'utf8').split('\n').filter(Boolean).map(l => l.split('\t')[0]),
  ...extraClasses.split(',').filter(Boolean),
]);
const topLevel = name => name.replace(/^(non-virtual thunk to |virtual thunk to )/, '').split('::')[0].replace(/<.*$/, '');
const safe = s => s.replace(/[^A-Za-z0-9_.-]/g, '_').slice(0, 80);

// ELF address (Thumb bit cleared) -> symbol size from the dynamic symbol table.
const sizes = new Map();
for (const line of fs.readFileSync(dynPath, 'utf8').split('\n').filter(Boolean)) {
  const [addr, size] = line.split(' ');
  sizes.set(parseInt(addr, 16) & ~1, Number(size));
}

const so = fs.readFileSync(soPath);
const functions = JSON.parse(fs.readFileSync(indexPath, 'utf8')).functions
  .filter(f => f.status !== 'external' && gameClasses.has(topLevel(f.name)))
  .map(f => {
    const elf = parseInt(f.address, 16) - GHIDRA_BASE;
    const bodyEnd = Math.max(...(f.body?.ranges ?? []).map(r => parseInt(r.end, 16) - GHIDRA_BASE));
    const size = sizes.get(elf) ?? (bodyEnd - elf + 1);
    return { name: f.name, cls: topLevel(f.name), ghidra: f.address, elf, size, bodyEnd };
  });

const hex = n => '0x' + n.toString(16);
let checked = 0, mismatched = [];

async function disassemble(fn) {
  const { stdout } = await run('llvm-objdump', ['-d', '-C', '--triple=thumbv7-linux-gnueabi',
    `--start-address=${hex(fn.elf)}`, `--stop-address=${hex(fn.elf + fn.size)}`, soPath], { maxBuffer: 64 << 20 });
  const lines = stdout.split('\n').filter(l => /^\s+[0-9a-f]+:/.test(l));
  // Verify: the first printed halfword must equal the little-endian halfword at file offset = ELF address.
  const first = lines[0]?.match(/^\s+[0-9a-f]+:\s+([0-9a-f]{4})/)?.[1];
  const actual = so.readUInt16LE(fn.elf).toString(16).padStart(4, '0');
  checked++;
  if (first !== actual) mismatched.push(`${fn.name} @ ${hex(fn.elf)}: printed ${first}, file ${actual}`);
  const out = [];
  let poolMarked = false;
  for (const l of lines) {
    const addr = parseInt(l.trim().split(':')[0], 16);
    if (Number.isFinite(fn.bodyEnd) && addr > fn.bodyEnd && !poolMarked) {
      out.push(`  ; --- end of code (Ghidra body ends at ${hex(fn.bodyEnd)}); words below are literal-pool data ---`);
      poolMarked = true;
    }
    out.push(l.replace(/\s+$/, ''));
  }
  return out;
}

const byClass = new Map();
const queue = [...functions];
await Promise.all(Array.from({ length: 4 }, async () => {
  for (let fn; (fn = queue.shift());) {
    const body = await disassemble(fn);
    const header = [
      `// ==== ${fn.name}`,
      `//      file offset ${hex(fn.elf)} (= ELF address; Ghidra ${fn.ghidra}), ${fn.size} bytes, Thumb-2`,
    ];
    if (!byClass.has(fn.cls)) byClass.set(fn.cls, []);
    byClass.get(fn.cls).push({ elf: fn.elf, text: [...header, ...body, ''].join('\n') });
  }
}));

fs.mkdirSync(outDir, { recursive: true });
for (const [cls, items] of byClass) {
  items.sort((a, b) => a.elf - b.elf);
  fs.writeFileSync(path.join(outDir, `${safe(cls)}.s`),
    `// ${cls}: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), ${items.length} functions.\n` +
    `// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../${safe(cls)}.cpp\n\n` +
    items.map(i => i.text).join('\n'));
}
console.log(JSON.stringify({ classes: byClass.size, functions: functions.length, firstHalfwordChecked: checked, mismatched: mismatched.length }));
if (mismatched.length) { console.error(mismatched.slice(0, 20).join('\n')); process.exit(1); }

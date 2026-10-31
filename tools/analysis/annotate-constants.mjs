// Annotate Ghidra pseudo-C with the values of its DAT_xxxxxxxx constants, read from the library.
// Ghidra address = ELF address + 0x10000. File offset = ELF address in the code segment
// (offset 0), and ELF address - 0x1000 in the data segment (vaddr 0x8ee510 <- offset 0x8ed510).
// Each DAT_ is shown as DAT_xxxxxxxx{f=<float32>,i=<int32>}; addresses in .bss are shown as {bss}.
// Usage: node annotate-constants.mjs <libcocos2dcpp.so> < pseudo-c-text
import fs from 'node:fs';

const so = fs.readFileSync(process.argv[2]);
const BASE = 0x10000, CODE_END = 0x8ecdd4, DATA_VADDR = 0x8ee510, DATA_FILE = 0x8ed510, DATA_SIZE = 0x510dc;

function readCString(ghidra) {
  const v = ghidra - BASE;
  if (v < 0 || v >= CODE_END) return null;
  let end = v; while (end < v + 48 && so[end] !== 0) end++;
  const s = so.subarray(v, end);
  return s.length >= 2 && end < v + 48 && s.every(c => c >= 0x20 && c < 0x7f) ? s.toString('latin1') : null;
}
function read32(ghidra) {
  const v = ghidra - BASE;
  let off;
  if (v < CODE_END) off = v;
  else if (v >= DATA_VADDR && v < DATA_VADDR + DATA_SIZE) off = DATA_FILE + (v - DATA_VADDR);
  else return null;
  return so.subarray(off, off + 4);
}
const fmt = x => (Number.isInteger(x) ? x.toString() : Number(x.toPrecision(7)).toString());

const text = fs.readFileSync(0, 'utf8');
const hexFloat = (m, hex) => {
  const v = parseInt(hex, 16);
  if (v < 0x30000000 || v >= 0x50000000) return m; // outside the range of ordinary float32 values
  const b = Buffer.alloc(4); b.writeUInt32LE(v);
  return `${m}{f=${fmt(b.readFloatLE(0))}}`;
};
process.stdout.write(text.replace(/\b(0x[0-9a-f]{8})\b/g, (m) => hexFloat(m, m.slice(2))).replace(/\bDAT_([0-9a-f]{8})\b/g, (m, hex) => {
  const b = read32(parseInt(hex, 16));
  if (!b || b.length < 4) return `${m}{bss}`;
  const f = b.readFloatLE(0), i = b.readInt32LE(0);
  const floatOk = Number.isFinite(f) && Math.abs(f) > 1e-6 && Math.abs(f) < 1e7;
  const s = readCString(parseInt(hex, 16));
  return `${m}{${floatOk ? 'f=' + fmt(f) + ',' : ''}i=${i}${s ? ',s=' + JSON.stringify(s) : ''}}`;
}));

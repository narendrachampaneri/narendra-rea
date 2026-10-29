// Recover C++ member names from pure accessors in the Ghidra pseudo-C.
// A getter whose whole body is `return *(T *)(this + OFF);` (optionally cast or compared
// with zero) or a setter whose whole body stores its parameter at `this + OFF` names the
// field at OFF after the accessor (getHP / setHP -> HP). Accessors that do anything else
// are ignored, so every row is backed by the developer's own method name.
// Usage: node recover-fields.mjs <source/native dir> <out.tsv>
import fs from 'node:fs';
import path from 'node:path';

const [nativeDir, outPath] = process.argv.slice(2);
const T = String.raw`(\w+(?: \w+)?)`;
const OFF = String.raw`\(this \+ (0x[0-9a-f]+)\)`;
const getter = new RegExp(String.raw`^return (?:\(\w+\))?\*\(${T} \*\)${OFF}(?: != (?:0|'\\0'|0\.0))?;$`);
const setter = new RegExp(String.raw`^(?:\w+ in_r1; )?\*\(${T} \*\)${OFF} = (?:\(\w+\))?(?:param_1|in_r1); return;$`);

const fields = new Map(); // "Class\toffset" -> { cls, off, names:Set, types:Set, via:Set }
for (const file of fs.readdirSync(nativeDir).filter(f => f.endsWith('.cpp') && !f.startsWith('_'))) {
  for (const chunk of fs.readFileSync(path.join(nativeDir, file), 'utf8').split(/^\/\/ ---- /m).slice(1)) {
    const name = chunk.split('  @')[0];
    const m = name.match(/^(\w+)::(get|set|is|has)([A-Z]\w*)$/);
    if (!m) continue;
    const body = chunk.slice(chunk.indexOf('{') + 1, chunk.lastIndexOf('}'))
      .replace(/\/\*.*?\*\//gs, '').replace(/\s+/g, ' ').trim();
    const hit = (m[2] === 'set' ? setter : getter).exec(body);
    if (!hit) continue;
    const key = `${m[1]}\t${hit[2]}`;
    if (!fields.has(key)) fields.set(key, { cls: m[1], off: hit[2], names: new Set(), types: new Set(), via: new Set() });
    const f = fields.get(key);
    f.names.add(m[2] === 'is' || m[2] === 'has' ? m[2] + m[3] : m[3]);
    f.types.add(hit[1]);
    f.via.add(name);
  }
}

const rows = [...fields.values()].sort((a, b) => a.cls.localeCompare(b.cls) || parseInt(a.off, 16) - parseInt(b.off, 16));
fs.writeFileSync(outPath, 'class\toffset\tfield\tghidra_type\taccessors\n' + rows.map(f =>
  [f.cls, f.off, [...f.names].join('|'), [...f.types].join('|'), [...f.via].join(', ')].join('\t')).join('\n') + '\n');
console.log(`${rows.length} fields in ${new Set(rows.map(r => r.cls)).size} classes -> ${outPath}`);

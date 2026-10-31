// Extract the original app's built-in content tables into JSON (ranks, store items, sounds).
// Everything is read from the Ghidra pseudo-C and from data tables inside libcocos2dcpp.so.
// Usage: node extract-defaults.mjs <source/native dir> <libcocos2dcpp.so> <out dir>
import fs from 'node:fs';
import path from 'node:path';
import { execFileSync } from 'node:child_process';

const [nativeDir, soPath, outDir] = process.argv.slice(2);
const so = fs.readFileSync(soPath);
fs.mkdirSync(outDir, { recursive: true });
const write = (name, data) => fs.writeFileSync(path.join(outDir, name), JSON.stringify(data, null, 1) + '\n');
const here = path.dirname(new URL(import.meta.url).pathname);
const annotate = text => execFileSync('node', [path.join(here, 'annotate-constants.mjs'), soPath], { input: text, maxBuffer: 1 << 28 }).toString();
const fn = (file, name) => {
  const t = fs.readFileSync(path.join(nativeDir, file), 'utf8');
  const m = t.match(new RegExp(`^// ---- ${name.replace(/[.*+?^${}()|[\]\\]/g, '\\$&')}  @[^\\n]*\\n([\\s\\S]*?)(?=^// ---- )`, 'm'));
  return m ? m[1] : null;
};
const f32 = hex => { const b = Buffer.alloc(4); b.writeUInt32LE(parseInt(hex, 16) >>> 0); return Number(b.readFloatLE(0).toPrecision(7)); };

// --- Ranks: names from the unnamed rank-name function, EXP thresholds from the 21-entry table at Ghidra 0x7e383c.
{
  const unnamed = fs.readdirSync(path.join(nativeDir, '_unnamed')).map(f => fs.readFileSync(path.join(nativeDir, '_unnamed', f), 'utf8')).join('\n');
  const block = unnamed.match(/FUN_007c6a60\(auStack_64,"PRIVATE"[\s\S]*?"COMMANDER IN CHIEF"/)[0];
  const names = [...block.matchAll(/FUN_007c6a60\(auStack_[0-9a-f]+,"([^"]+)"/g)].map(m => m[1]);
  const off = 0x7e383c - 0x10000;
  const ranks = names.map((name, i) => ({ index: i, name, exp_required: so.readInt32LE(off + 4 * i) }));
  write('ranks.json', ranks);
}

// --- Store items: ItemLibrary constructor.
{
  const body = fn('ItemLibrary.cpp', 'ItemLibrary::ItemLibrary');
  const rows = [];
  for (const p of body.split(/(?=FUN_007c5e70\(aIStack_40,")/).slice(1)) {
    const g = re => (p.match(re) || [])[1];
    rows.push({
      id: g(/aIStack_40,"([^"]+)"/), name: g(/auStack_38,"([^"]+)"/), price_bp: Number(g(/local_34 = (0x[0-9a-f]+|\d+);/)),
      requires_pro_pack: Number(g(/local_28 = (0x[0-9a-f]+|\d+);/) ?? 0) === 1, description: g(/auStack_3c,"([^"]*)"/) ?? '',
    });
  }
  write('store-items.json', rows);
}

// --- Sounds: Sound::loadSoundBuffers -> "<name>.wav" with numeric id and group.
{
  const text = annotate(fn('Sound.cpp', 'Sound::loadSoundBuffers'));
  const re = /createWithFormat\("%s\.%s",(?:"([^"]+)"|&DAT_[0-9a-f]{8}\{[^}]*?s="([^"]+)"[^}]*\}),&DAT_[0-9a-f]{8}\{[^}]*\}\);[\s\S]*?(?:local_198 = (0x[0-9a-f]+|\d+);|setObject\([^)]*,(0x[0-9a-f]+)\);)[\s\S]*?\*puVar3 = (\d);/g;
  const rows = [...text.matchAll(re)].map(m => ({ id: Number(m[3] ?? m[4]), file: `${m[1] ?? m[2]}.wav`, group: Number(m[5]) }));
  rows.sort((a, b) => a.id - b.id || a.file.localeCompare(b.file));
  write('sounds.json', rows);
}

// --- Team colours (RGB) written by AppDelegate::applicationDidFinishLaunching.
{
  const t = fs.readFileSync(path.join(nativeDir, 'AppDelegate.cpp'), 'utf8');
  const num = '(0x[0-9a-f]+|\\d+)';
  const cols = [...t.matchAll(new RegExp(`uVar9 = FUN_002f4c78\\(${num},${num},${num}\\);\\s*teamColors\\[(?:0|3|6|9|0xc|0xf)\\]`, 'g'))].map(m => m.slice(1, 4).map(Number));
  write('team-colors.json', { slots_declared: so.readInt32LE(0x933264 - 0x1000), defined_rgb: cols });
}

// --- Soldier initial field values (SoldierHostController::init), raw offsets with hex-float decoding.
{
  const text = fn('SoldierHostController.cpp', 'SoldierHostController::init');
  const vals = {};
  for (const m of text.matchAll(/\*\(\w+ \*\)\(local_1c \+ (0x[0-9a-f]+|\d+)\) = (0x[0-9a-f]+|\d+);/g)) {
    const off = '0x' + Number(m[1]).toString(16), raw = m[2];
    vals[off] = /^0x[0-9a-f]{8}$/.test(raw) && parseInt(raw, 16) >= 0x30000000 && parseInt(raw, 16) < 0x50000000 ? { raw, float: f32(raw) } : { raw };
  }
  write('soldier-init.json', vals);
}
console.log('wrote ranks, store-items, sounds, team-colors, soldier-init ->', outDir);

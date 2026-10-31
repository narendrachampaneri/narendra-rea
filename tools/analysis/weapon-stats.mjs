// Extract the starting stats of every weapon class from its init() pseudo-C.
// Field meanings were established from Weapon::init, Weapon::triggerPull/getters and the
// assembly of Weapon::get* (see docs/reference/DEFAULTS.md, "Weapon field map").
// Usage: node weapon-stats.mjs <source/native dir> <libcocos2dcpp.so> <out.json>
import fs from 'node:fs';
import path from 'node:path';

const [nativeDir, soPath, outPath] = process.argv.slice(2);
const so = fs.readFileSync(soPath);
const BASE = 0x10000, CODE_END = 0x8ecdd4, DATA_VADDR = 0x8ee510, DATA_FILE = 0x8ed510, DATA_SIZE = 0x510dc;
const read32 = g => {
  const v = g - BASE; let off;
  if (v < CODE_END) off = v; else if (v >= DATA_VADDR && v < DATA_VADDR + DATA_SIZE) off = DATA_FILE + (v - DATA_VADDR); else return null;
  return so.subarray(off, off + 4);
};
const f32 = u => { const b = Buffer.alloc(4); b.writeUInt32LE(u >>> 0); return b.readFloatLE(0); };
const num = x => Number(Number(x).toPrecision(7));

const FIELDS = {
  0x144: 'zoom_index', 0x148: 'zoom_scale', 0x15c: 'fire_interval_s', 0x160: 'reload_time_s', 0x164: 'spread',
  0x168: 'accuracy_mod', 0x16c: 'field_16c', 0x170: 'clip_size', 0x174: 'ammo_capacity', 0x188: 'ammo_type_id',
  0x18c: 'view_offset', 0x198: 'damage', 0x19c: 'melee_damage', 0x1a0: 'melee_length', 0x1a4: 'range',
  0x1a8: 'field_1a8', 0x1b4: 'rounds_per_fire', 0x1b8: 'field_1b8', 0x1bc: 'bullet_speed', 0x1cc: 'weight_factor',
  0x1e8: 'start_ammo_reserve', 0x1ea: 'start_ammo_in_clip', 0x114: 'field_114',
  0x181: 'flag_181', 0x182: 'dual_wield_only', 0x183: 'can_dual_wield', 0x184: 'dual_primary_only', 0x1b0: 'is_melee', 0x195: 'flag_195',
};
// Fields that hold floats (everything else is an integer).
const FLOAT = new Set(['zoom_scale', 'fire_interval_s', 'reload_time_s', 'spread', 'accuracy_mod', 'weight_factor', 'field_16c', 'field_114', 'field_1a8']);

const classes = process.argv[5]?.split(',') ?? ['AK47', 'M16', 'M14', 'M93BA', 'MP5', 'UZI', 'DEAGLE', 'GDEAGLE', 'MAGNUM', 'SHOTGUN', 'SAWGUN', 'SAW', 'SMAW', 'ROCKET', 'PHASR', 'FLAMETHROWER', 'FLAME', 'EMP', 'MACHETE', 'RIOTSHIELD', 'FRAGNADE', 'GASNADE', 'PROXYNADE', 'POWERUP', 'Slug', 'PlasmaBall', 'ProxyMine'];
const out = {};
for (const cls of classes) {
  const file = path.join(nativeDir, `${cls}.cpp`);
  if (!fs.existsSync(file)) continue;
  const text = fs.readFileSync(file, 'utf8');
  const m = text.match(new RegExp(`^// ---- ${cls}::init  @[^\\n]*\\n([\\s\\S]*?)(?=^// ---- )`, 'm'));
  if (!m) { out[cls] = { error: 'no init' }; continue; }
  const stats = {};
  const assign = /(?:\*\(\w+(?: \w+)? \*\)\((\w+) \+ (0x[0-9a-f]+|\d+)\)|(\w+)\[(0x[0-9a-f]+)\]) = (?:\(\w+\))?(0x[0-9a-f]+|\d+|DAT_[0-9a-f]{8});/g;
  for (const a of m[1].matchAll(assign)) {
    const off = a[2] !== undefined ? Number(a[2]) : Number(a[4]);
    const name = FIELDS[off]; if (!name) continue;
    let raw = a[5], val;
    if (raw.startsWith('DAT_')) { const b = read32(parseInt(raw.slice(4), 16)); val = b ? (FLOAT.has(name) ? num(b.readFloatLE(0)) : b.readInt32LE(0)) : null; }
    else { const u = Number(raw); val = FLOAT.has(name) ? num(f32(u)) : u; }
    stats[name] = val;
  }
  const sprite = [...m[1].matchAll(/createWithSpriteFrameName\("([^"]+)"/g)].map(x => x[1]);
  out[cls] = { stats, sprites: sprite };
}
fs.writeFileSync(outPath, JSON.stringify(out, null, 1));
console.log(Object.keys(out).length, 'weapon classes ->', outPath);

// Render docs/reference/ORIGINAL-DEFAULTS.md from its template and the extracted data files.
// Markers in the template look like {{table:NAME}}; each is replaced by a generated table.
// Usage: node render-defaults-doc.mjs <template.md> <data dir> <out.md>
import fs from 'node:fs';
import path from 'node:path';

const [templatePath, dataDir, outPath] = process.argv.slice(2);
const load = n => JSON.parse(fs.readFileSync(path.join(dataDir, n), 'utf8'));
const md = (head, rows) => [`| ${head.join(' | ')} |`, `|${head.map(() => '---').join('|')}|`, ...rows.map(r => `| ${r.map(c => String(c ?? '—').replace(/\|/g, '\\|')).join(' | ')} |`)].join('\n');
const dash = v => (v === undefined || v === null ? '—' : v);

const WEAPONS = [ // ammo-type id -> [class, display name, spawn-list token(s)]
  [1, 'MACHETE', 'Machete', 'machete'], [2, 'FRAGNADE', 'Frag grenade', 'fragnade'], [3, 'DEAGLE', 'Desert Eagle', '—'],
  [4, 'MAGNUM', 'Magnum', 'magnum'], [5, 'UZI', 'Uzi', 'uzi'], [6, 'MP5', 'MP5', 'mp5'], [7, 'AK47', 'AK-47', 'ak47'],
  [8, 'M16', 'M16 (store text calls it "m4" ◐)', 'm16'], [9, 'SHOTGUN', 'Shotgun', 'shotgun'], [10, 'M93BA', 'M93BA (sniper)', 'm93ba'],
  [11, 'SMAW', 'SMAW (rocket launcher)', 'smaw'], [12, 'ROCKET', 'Rocket (SMAW projectile)', '—'], [13, 'RIOTSHIELD', 'Riot shield', 'riot, shield'],
  [14, 'POWERUP', 'Power-up (health pack or boost tank)', 'healthpack, boosttank'], [15, 'POWERUP', 'Power-up (health pack or boost tank)', 'healthpack, boosttank'],
  [16, 'M14', 'M14', 'm14'], [17, 'PHASR', 'PHASR (energy rifle)', 'phasr'], [18, 'GDEAGLE', 'Golden Eagle', '—'],
  [19, 'FLAMETHROWER', 'Flamethrower', 'flame'], [20, 'GASNADE', 'Gas grenade', 'gasnade'], [21, 'EMP', 'EMP grenade', 'emp'],
  [23, 'PROXYNADE', 'Proximity grenade', 'proxynade'], [24, 'SAW', 'SAW (saw blade projectile)', '—'], [25, 'SAWGUN', 'Saw gun', 'sawgun'],
];
const PRO = new Set([1, 10, 11, 17, 18, 19, 21, 25]);       // WeaponFactory::isProPackWeapon
const OFFHAND = new Set([1, 2, 3, 4, 5, 13, 18, 20, 23]);   // WeaponFactory::isDualWeapon (ids; also 0 and -1)
const NO_GUN_STATS = new Set(['FRAGNADE', 'GASNADE', 'PROXYNADE', 'POWERUP', 'ROCKET', 'SAW']);

const MAP_NAMES = { '0hunger_new': 'Hunger', '1outpost_new': 'Outpost', '2highTower_new': 'High Tower', '3subdivision_new': 'Subdivision', '4bottleNeck_new': 'Bottle Neck', '5noEscape_new': 'No Escape', '6solong_new': 'So Long', '7lunarcy_new': 'Lunarcy', '8icebox_new': 'Icebox', '9snowblind_new': 'Snow Blind', '10pyramid_new': 'Pyramid', '11catacombs_new': 'Catacombs', '12overseer_new': 'Overseer', survival_new: 'Survival arena', training_new: 'Training course' };
const THEME = { 't64_new.tsx': 'grass / default', 't64Moon_new.tsx': 'moon', 't64Snow_new.tsx': 'snow', 't64Desert_new.tsx': 'desert' };

const tables = {
  weapons() {
    const w = load('weapons.json');
    return md(['ID', 'Class', 'Name', 'Spawn token', 'Pro Pack', 'Off-hand slot'], WEAPONS.map(([id, cls, name, tok]) => [id, cls, name, tok, PRO.has(id) ? 'yes' : '', OFFHAND.has(id) ? 'yes' : '']));
  },
  weaponStats() {
    const w = load('weapons.json');
    const rows = [];
    for (const [id, cls, name] of WEAPONS) {
      if (NO_GUN_STATS.has(cls) || cls === 'POWERUP' || !w[cls] || w[cls].error) continue;
      if (rows.some(r => r[1] === cls)) continue;
      const s = w[cls].stats;
      rows.push([id, cls, dash(s.damage), dash(s.range), dash(s.clip_size), dash(s.start_ammo_in_clip), dash(s.start_ammo_reserve), dash(s.ammo_capacity), dash(s.fire_interval_s), dash(s.reload_time_s), dash(s.spread), dash(s.bullet_speed), dash(s.melee_damage), dash(s.melee_length), dash(s.weight_factor)]);
    }
    return md(['ID', 'Class', 'Damage', 'Range', 'Clip', 'Start in clip', 'Start reserve', 'Max ammo', 'Fire interval (s)', 'Reload (s)', 'Spread', 'Bullet speed', 'Melee dmg', 'Melee len', 'Weight factor'], rows);
  },
  items() {
    return md(['#', 'Id', 'Name', 'Price (BP)', 'Needs Pro Pack', 'Description (original text)'], load('store-items.json').map((r, i) => [i + 1, `\`${r.id}\``, r.name, r.price_bp.toLocaleString('en-US'), r.requires_pro_pack ? 'yes' : '', r.description || '(none in table)']));
  },
  ranks() {
    return md(['#', 'Rank', 'EXP required'], load('ranks.json').map(r => [r.index, r.name, r.exp_required.toLocaleString('en-US')]));
  },
  maps() {
    const m = load('maps.json');
    return md(['File', 'Name', 'Tiles (w×h)', 'World size (hdr px)', 'Theme', 'Player spawns', 'Weapon spawns', 'Decor sprites'],
      Object.entries(m).map(([k, v]) => [`${k}.tmx`, MAP_NAMES[k], `${v.width_tiles}×${v.height_tiles}`, `${v.width_tiles * v.tile_px}×${v.height_tiles * v.tile_px}`, THEME[v.tileset], v.object_kinds.sp_p ?? 0, v.object_kinds.wp_p ?? 0, (v.object_kinds.spritefg ?? 0) + (v.object_kinds.spritebg ?? 0)]));
  },
  mapWeapons() {
    const m = load('maps.json');
    return md(['Map', 'Distinct items in its weapon-spawn lists'], Object.entries(m).filter(([, v]) => v.object_kinds.wp_p).map(([k, v]) => {
      const s = new Set(); for (const o of v.objects) if (o.props.weapon) for (const t of o.props.weapon.split(',')) s.add(t);
      return [MAP_NAMES[k], [...s].sort().join(', ')];
    }));
  },
  sounds() {
    const s = load('sounds.json');
    const rows = []; for (let i = 0; i < s.length; i += 4) rows.push([0, 1, 2, 3].map(j => s[i + j] ? `${s[i + j].id} \`${s[i + j].file}\` (g${s[i + j].group})` : ''));
    return md(['', '', '', ''], rows).replace(/^\|[^\n]*\n\|[^\n]*\n/, '| | | | |\n|---|---|---|---|\n');
  },
  soldierInit() {
    const v = load('soldier-init.json');
    const LABEL = { '0x180': 'MaxPower (health ceiling)', '0x198': 'Power (current health), set to MaxPower as a float', '0x1b0': 'MassFactor', '0x1f4': 'BackupStarterWeapon ammo type (3 = Desert Eagle)', '0x1f8': 'BackupNadeWeapon ammo type (−1 = none)', '0x10c': 'ThrustFactor', '0x148': 'PrimaryWeapon', '0x14c': 'SecondaryWeapon', '0x150': 'DualWeapon', '0x154': 'SideWeapon', '0x1a8': 'view-scale smoothing state' };
    return md(['Offset', 'Initial value', 'Meaning'], Object.entries(v).sort((a, b) => parseInt(a[0], 16) - parseInt(b[0], 16)).map(([off, x]) => [`+${off}`, x.float !== undefined ? `${x.float} (${x.raw})` : x.raw, LABEL[off] ?? 'not labelled in the binary']));
  },
  teamColors() {
    const t = load('team-colors.json');
    return md(['Slot', 'RGB'], t.defined_rgb.map((c, i) => [i, c.join(', ')]));
  },
};

let out = fs.readFileSync(templatePath, 'utf8');
out = out.replace(/\{\{include:([\w-]+)\}\}/g, (m, name) => load(`${name}.json`).map(l => `* ${l}`).join('\n'));
out = out.replace(/\{\{table:(\w+)\}\}/g, (m, name) => { if (!tables[name]) throw new Error(`unknown table ${name}`); return tables[name](); });
fs.writeFileSync(outPath, out);
console.log(`rendered ${outPath} (${out.split('\n').length} lines)`);

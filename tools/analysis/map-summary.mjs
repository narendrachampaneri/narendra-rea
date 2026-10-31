// Summarise the original Tiled maps (assets/<res>/*.tmx): size, tileset, layers and every
// object group entry (spawn points, weapon spawns and their weapon lists, other properties).
// Usage: node map-summary.mjs <assets dir> <out.json> [resolution=hdr]
import fs from 'node:fs';
import path from 'node:path';
import zlib from 'node:zlib';

const [assets, outPath, res = 'hdr'] = process.argv.slice(2);
const dir = path.join(assets, res);
const attr = (tag, n) => (tag.match(new RegExp(`\\b${n}="([^"]*)"`)) || [])[1];

const maps = {};
for (const file of fs.readdirSync(dir).filter(f => f.endsWith('.tmx')).sort((a, b) => parseInt(a) - parseInt(b))) {
  const xml = fs.readFileSync(path.join(dir, file), 'utf8');
  const head = xml.match(/<map [^>]*>/)[0];
  const info = {
    width_tiles: +attr(head, 'width'), height_tiles: +attr(head, 'height'),
    tile_px: +attr(head, 'tilewidth'), tileset: attr(xml.match(/<tileset [^>]*>/)[0], 'source'),
    layers: [], objects: [],
  };
  for (const m of xml.matchAll(/<layer name="([^"]+)"[^>]*>\s*<data[^>]*>([\s\S]*?)<\/data>/g)) {
    const raw = zlib.gunzipSync(Buffer.from(m[2].replace(/\s+/g, ''), 'base64'));
    const gids = new Uint32Array(raw.buffer, raw.byteOffset, raw.length / 4);
    info.layers.push({ name: m[1], non_empty_tiles: gids.filter(g => g !== 0).length });
  }
  for (const m of xml.matchAll(/<object ([^>]*?)(?:\/>|>([\s\S]*?)<\/object>)/g)) {
    const props = {};
    for (const p of (m[2] || '').matchAll(/<property name="([^"]+)" value="([^"]*)"/g)) props[p[1]] = p[2];
    info.objects.push({ name: attr(m[1], 'name'), type: attr(m[1], 'type'), x: +attr(m[1], 'x'), y: +attr(m[1], 'y'), w: attr(m[1], 'width'), h: attr(m[1], 'height'), props });
  }
  const kinds = {};
  for (const o of info.objects) { const k = (o.name || '?').replace(/_?\d+$/, ''); kinds[k] = (kinds[k] || 0) + 1; }
  info.object_kinds = kinds;
  maps[file.replace(/\.tmx$/, '')] = info;
}
fs.writeFileSync(outPath, JSON.stringify(maps, null, 1));
console.log(Object.keys(maps).length, 'maps ->', outPath);

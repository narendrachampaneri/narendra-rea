// Usage: node edit-rea-entry.mjs KEY=VALUE ...  (sets command/env on the rea MCP entry)
import fs from 'node:fs';
const file = '/root/.claude.json';
const raw = fs.readFileSync(file, 'utf8');
const cfg = JSON.parse(raw);
const rea = cfg.mcpServers?.rea;
if (!rea) throw new Error('rea entry missing');
const nodeBin = '/root/.local/node26/bin';
rea.command = `${nodeBin}/npx`;
rea.env ??= {};
const rest = process.env.PATH.split(':').filter(p => p && p !== nodeBin);
rea.env.PATH = [nodeBin, ...rest].join(':');
for (const kv of process.argv.slice(2)) {
  const i = kv.indexOf('=');
  rea.env[kv.slice(0, i)] = kv.slice(i + 1);
}
const indent = raw.startsWith('{\n  ') ? 2 : undefined;
fs.writeFileSync(file, JSON.stringify(cfg, null, indent) + (raw.endsWith('\n') ? '\n' : ''), { mode: 0o600 });
console.log(JSON.stringify(rea, null, 2));

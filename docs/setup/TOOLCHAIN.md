# Toolchain

Everything used to produce this repository, with versions, sources and how each
download was checked. Install paths are those of the analysis machine (Linux x64).

| Tool | Version | Source | Integrity check | Install path |
|---|---|---|---|---|
| Node.js | 26.12.1 | `nodejs.org/dist/v26.12.1/node-v26.12.1-linux-x64.tar.xz` | SHA-256 `6170b2d4…9bbd` matches `SHASUMS256.txt` | `/root/.local/node26` |
| REA (`rea-agents`) | 6.8.0 | npm (`github.com/morluto/rea`) | npm registry integrity | via `npx` |
| JDK | OpenJDK 21.0.12.1 | system | – | `/usr/lib/jvm/java-21-openjdk-amd64` |
| Apktool | 3.0.3 | `github.com/iBotPeaches/Apktool/releases` (`apktool_3.0.3.jar`), wrapper `scripts/linux/apktool` at tag `v3.0.3` | no published checksum; GitHub and Bitbucket copies byte-identical, SHA-256 `dbf930b0…9423` | `/root/.local/opt/apktool-3.0.3/{apktool,apktool.jar}` |
| jadx-headless-mcp | 0.7.1 (JADX 1.5.6) | `github.com/1013503897/jadx-headless-mcp/releases/download/v0.7.1/jadx-headless-mcp-0.7.1-all.jar` | SHA-256 `6e5eacf5…ff75` matches REA's pinned value | `/root/.local/opt/jadx-headless-mcp-0.7.1/` |
| Ghidra | 12.1.4 (the version REA supports) | `github.com/NationalSecurityAgency/ghidra/releases/download/Ghidra_12.1.4_build/ghidra_12.1.4_PUBLIC_20260921.zip` | SHA-256 `ddac49f903da9d5bac833e5cc79395098b9c33cfd3279be5f31bd00387d2d4db` – **compare with the release page**; the published hash was unreachable from the analysis session | `/root/.local/opt/ghidra_12.1.4_PUBLIC` |
| Android build-tools | 37.0.0 (`zipalign`, `apksigner`) | `dl.google.com/android/repository/build-tools_r37_linux.zip` | SHA-1 `70954e99…6ebe` matches Google's `repository2-3.xml` | `/root/.local/opt/android-build-tools-37/android-37.0` |
| binutils / LLVM | system | – | – | `readelf`, `c++filt`, `llvm-objdump` |

## REA setup for Claude Code

1. Put Node 26 first on `PATH` (REA 6.8.0 needs Node ≥ 26.12.1, `^24.22.1` or `^22.23.4`).
2. `npx rea-agents@latest setup --client claude_code --dry-run` – plans two actions:
   register the `rea` MCP server in `~/.claude.json` (backup `~/.claude.json.rea.backup`)
   and install the skill to `~/.claude/skills/reverse-engineer-anything`.
3. `npx rea-agents@latest setup --client claude_code --yes` – applies them.
4. Edit the `rea` entry in `~/.claude.json` (`tools/analysis/edit-rea-entry.mjs` does this):

```json
{
  "rea": {
    "command": "/root/.local/node26/bin/npx",
    "args": ["-y", "rea-agents@6.8.0", "mcp"],
    "env": {
      "PATH": "/root/.local/node26/bin:<rest of your PATH>",
      "REA_APKTOOL_COMMAND": "/root/.local/opt/apktool-3.0.3/apktool",
      "REA_JADX_MCP_JAR": "/root/.local/opt/jadx-headless-mcp-0.7.1/jadx-headless-mcp-0.7.1-all.jar",
      "GHIDRA_INSTALL_DIR": "/root/.local/opt/ghidra_12.1.4_PUBLIC",
      "GHIDRA_HEADLESS_MAXMEM": "8G",
      "REA_GHIDRA_STARTUP_TIMEOUT_MS": "5400000"
    }
  }
}
```

5. `claude mcp list` → `rea: … ✓ Connected`. Provider readiness:
   `npx rea-agents@6.8.0 doctor --provider jadx --json` (and `--provider ghidra`).

## Ghidra settings for `libcocos2dcpp.so`

The 9.7 MB ARM library needs more than REA's defaults: with the default 330 s
startup deadline and Ghidra's 2 GB headless heap, `analyze` times out
(`evidence/03-native/analyze-attempt1-timeout.json`). With
`GHIDRA_HEADLESS_MAXMEM=8G` and `REA_GHIDRA_STARTUP_TIMEOUT_MS=5400000` the import
and analysis take about 7–15 minutes, and `decompile_all` over all 36,355
functions about 23 minutes. In a running MCP session the deadline can also be set
with `update_analysis_settings` (`ghidra.startup_timeout_ms`).

Commands used:

    npx rea-agents@6.8.0 analyze libcocos2dcpp.so --provider ghidra --snapshot libcocos2dcpp.snapshot
    npx rea-agents@6.8.0 decompile-all libcocos2dcpp.so --provider ghidra --snapshot libcocos2dcpp.snapshot --output decompiled-full

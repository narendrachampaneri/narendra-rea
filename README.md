# narendra-rea

Reverse-engineered source stack of the Android game build distributed in release
**v1.0.0** (`Mini.Militia.mod.by.sahadikr.in.apk`, a third-party "mod" of Mini Militia
2.2.23), produced with [REA](https://github.com/morluto/rea) 6.8.0 (Apktool, JADX,
Ghidra) and verified end to end. Starting point for modifying the app.

> The original source code is not in the APK. Everything here is reconstructed:
> `source/apk-project` rebuilds into a working APK; the Java and C++ trees are
> decompiled references. The game is third-party copyrighted software (Appsomniacs /
> Miniclip) – keep this repository private and do not redistribute rebuilt APKs.

## Layout

```
├── source/
│   ├── apk-project/      Apktool project: smali, resources, assets, native lib  ← edit + build
│   ├── java-reference/   JADX Java for all 6,843 classes                         (read-only)
│   ├── native/           Ghidra pseudo-C of libcocos2dcpp.so, one .cpp per class (read-only)
│   └── native-index/     native symbol tables (name ↔ address ↔ size)
├── tools/
│   ├── build.sh          rebuild + sign the APK → build/app-signed.apk
│   └── analysis/         scripts that produced source/ and evidence/
├── evidence/             raw REA outputs and verification artifacts
├── docs/
│   ├── PROJECT-MAP.md    where the game logic, networking and Java⇄C++ bridge are
│   ├── analysis/STATIC-ANALYSIS.md   signature, manifest, package, embedded config
│   ├── setup/TOOLCHAIN.md            tool versions, checksums, REA/Ghidra settings
│   └── VERIFICATION.md   how every part was checked
└── minimilitia.code-workspace       VS Code multi-root workspace
```

## Quick start

1. Open `minimilitia.code-workspace` in VS Code.
2. Read `docs/PROJECT-MAP.md` to find the code for a feature.
3. Make the change in `source/apk-project/` (see "How to change things" in the map).
4. Build:

   ```bash
   APKTOOL=/path/to/apktool ANDROID_BUILD_TOOLS=/path/to/build-tools/37.0.0 tools/build.sh
   ```

   Needs Java 17+, Apktool ≥ 2.7 (tested 3.0.3) and Android build-tools (tested 37.0.0).
   The APK is signed with `tools/dev-key.jks`, created on first run and never committed.
   Uninstall any copy signed with a different key before installing.

## What was verified

- REA MCP and CLI runs reproduce the same Evidence (signature and resource IDs identical).
- Native decompilation is reproducible: two independent Ghidra runs agree byte-for-byte
  on all 8,128 shared functions; 3,228 of 3,244 game functions decompiled (99.5%).
- `source/apk-project` → APK → decode reproduces all 13,149 smali files; native library
  and assets byte-identical; `apksigner verify` passes. Not run on a device.

Details: `docs/VERIFICATION.md`.

## Releases

APKs are never committed (see `.gitignore`); they are attached to GitHub Releases
(`RELEASING.md`). Verify a download against the SHA-256 in the release notes:

```bash
sha256sum Mini.Militia.mod.by.sahadikr.in.apk
# 3e06839f453b58f1fdb70bfc5f72b9db8a419b567205c168f4d190596d441be4
```

# Verification report

Re-run of the whole pipeline on 2026-10-28, this time through the REA MCP server
(rea-agents 6.8.0, "Connected" in `claude mcp list`), compared against the earlier
REA CLI run and the bulk exports in this repository. Raw outputs are in
`evidence/` (see `evidence/README.md`).

## Inputs

| Item | SHA-256 | Check |
|---|---|---|
| APK `Mini.Militia.mod.by.sahadikr.in.apk` (release v1.0.0 asset 685265855) | `3e06839f…1be4` | matches the expected hash |
| Apktool 3.0.3 JAR | `dbf930b0…9423` | GitHub and Bitbucket copies byte-identical (no published checksum) |
| jadx-headless-mcp 0.7.1 JAR | `6e5eacf5…ff75` | matches REA's pinned hash |
| Ghidra 12.1.4 (`ghidra_12.1.4_PUBLIC_20260921.zip`) | `ddac49f9…d4db` | **not verified**: published hash only in GitHub release notes, unreachable from the session |
| Android build-tools 37.0.0 (`build-tools_r37_linux.zip`) | SHA-1 `70954e99…6ebe` | matches Google's repository index |
| Node.js 26.12.1 | `6170b2d4…9bbd` | matches nodejs.org SHASUMS256.txt |

## REA MCP vs earlier REA CLI run

| Step | Tool | Result |
|---|---|---|
| 5a | `inspect_apk_signature` | **identical Evidence ID** `ev_d6be968a…` |
| 5b | `decode_android_resources` | **identical Evidence ID** `ev_1c17bafd…` |
| 5c | `inspect_android_package` | field-level diff: only `engine.heap_limit_mib` differs (4024 MCP vs 3420 CLI); manifest, 28 components, 16 permissions, 6,843 classes, 878 resources identical |
| 5d | `search_android_classes "appsomniacs"` | same 6 classes; only the heap field differs |
| 5d | `inspect_android_method DA2Activity.initializeMopubAdBanner` | text identical to the CLI output and to `source/java-reference/` |

Repeated again on 2026-10-29 after the REA server restarted
(`evidence/04-verification/rea-mcp-evidence-bundle.json`): the signature
(`ev_d6be968a…`), resources (`ev_1c17bafd…`) and rebuilt-APK signature
(`ev_0329e74d…`) Evidence IDs reproduced exactly. JADX-based results had the same
content; their IDs change between runs because REA records its per-run
temporary workspace path (`/tmp/rea-android-…/target.apk`).

## Java reference completeness

REA's full class inventory (`search_android_classes ""`) lists 6,843 top-level
classes. `source/java-reference/` has 6,837 files. The 6 without a file are all
compiler-generated `synthetic` classes (enum switch maps in
`com.applovin.impl.sdk.{az,bx,d,dc}`; `rrrrrr.{cccrrr,crrcrr}` in the Immersion
haptics SDK) that JADX folds into the code using them. All 6 are present as smali
in `source/apk-project/`. JADX reported 0 errors; 6 SDK classes contain a method it
could not fully decompile (none of the game's).

## Rebuild round-trip (apk-project → APK)

1. `apktool b source/apk-project` → succeeded (both dex files, aapt2 resources, assets, lib).
2. `zipalign -c -p 4` → OK. `apksigner verify` → verified (v2 + v3), test key.
3. REA `inspect_android_package` on the rebuilt APK: same package, version, SDKs,
   16 permissions, 28 components (8 exported), manifest length, **6,843 classes**.
4. Entry-by-entry comparison with the original APK:
   - byte-identical: `lib/armeabi-v7a/libcocos2dcpp.so`, every `assets/` and `lib/` file;
   - re-encoded as expected: `classes.dex`, `classes2.dex`, `AndroidManifest.xml`, binary res XML;
   - 45 resource files dropped by aapt2, **every one** a duplicate with a
     version-qualified twin (`-v11`/`-v13`/`-v17`/`-v19`/`-v21`); at minSdk 25 aapt2
     keeps only the variant that applies, so no supported device loses anything.
5. Decoding the rebuilt APK again: **all 13,149 smali files identical** to
   `source/apk-project/`, decoded manifest identical → the code round-trips losslessly.
6. A second, independent build with `tools/build.sh` (new key) has the same 831
   content entries byte-for-byte as the manual rebuild; only the 2 signature files
   differ → the build is deterministic.

Not verified: running the rebuilt APK on a device or emulator (none available in
this session). Anything signed with a new key cannot update an installed copy
signed with the AOSP test key; uninstall first.

## Deep analysis (2026-10-29)

- **Assembly / file offsets**: `source/native/_asm/` covers 3,302 functions in 179 game
  classes. For every function, the first instruction halfword printed by llvm-objdump
  equals the little-endian halfword in `libcocos2dcpp.so` at the stated address used as a
  file offset (3,302 / 3,302), confirming file offset = ELF address for the code.
- **Symbol table**: REA `inspect_native_exports` lists 31,407 exported functions; every
  row of `source/native-index/dynfuncs-addr-demangled.txt` matches one of them by
  address and size (2 addresses carry two aliases with different sizes; both match).
- **Remaining native code**: REA `decompile_all` on `libcrashlytics.so` (677 functions:
  602 written, 74 external, 1 failed) and `libcrashlytics-envelope.so` (271: 237 written,
  33 external, 1 failed); both loaded at Ghidra base `0x10000` like the game library.
- **Embedded web code**: REA `extract_artifact` on `res/raw/amazon_gc_prototype.zip`:
  165 files, containment verified; all 165 SHA-256 values re-checked in
  `source/embedded/amazon_gc_prototype/`.
- **Field names**: `recover-fields.mjs` accepts only accessors whose whole body is a load
  or store of one `this + offset`; 82 fields in 20 classes.
- **Organizer regression**: re-running `organize-pseudocode.mjs` reproduces
  `source/native/` exactly, except that the PLT import stubs file, previously named
  `_libraries/.cpp` (hidden on most systems), is now `_libraries/_plt-imports.cpp`.
- REA `inspect_binary_layout` was not run: it needs a pwntools Python provider
  (`REA_PWNTOOLS_PYTHON`) that is not installed.

## Native library (`libcocos2dcpp.so`, SHA-256 `95a46dfd…7946`)

- REA `analyze` (Ghidra 12.1.4, 8 GB heap, 90-min startup deadline): 36,355
  procedures, 51,579 strings. Default 330 s deadline / 2 GB heap times out on
  this 9.7 MB ARM library.
- REA `decompile_all` over the whole library: 35,957 written, 17 failed
  (16 game functions: "overlapping input varnodes"; 1 library function
  `FUN_007ca5b8`: "error recovering jumptable"), 381 external imports (no body).
- Reproducibility: an earlier independent `decompile_all` over the game address
  block (8,144 functions) and the full run agree on **all 8,128 overlapping
  functions byte-for-byte** (per-function SHA-256 in the decompile index), with
  the same failures and the same analysis profile `386d2baf…`.
- Game coverage: 3,228 of 3,244 game-class function addresses decompiled (99.5%);
  the other 16 are the failures, provided as ARM Thumb disassembly.
- Spot checks: `94.198.81.195` found in `RakNetDelegate::detectNATType` /
  `updateLoop`; `https://appsomniacs.azurewebsites.net` in the `NetworkManager`
  static initialiser `FUN_003909d8`.

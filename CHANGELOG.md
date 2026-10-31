# Changelog

## [Unreleased]
- `docs/reference/ORIGINAL-DEFAULTS.md`: every default, table, price, rule and screen of the original app
  (saved data and first-launch flow, controls, starting soldier, 24 weapon IDs with stats, 14 store items,
  game modes and rules, 21 ranks with EXP thresholds, 15 maps, 99 sounds, UI inventory), generated from the
  decompiled code and the binary's data tables, with a confidence tag per fact.
- Corrections found while writing it, applied to the remake prompt and project docs: physics is **Chipmunk**
  (not Box2D); `gameType` 3 is LAN Deathmatch (teams are a toggle, not a mode); Deathmatch has a 400 s
  countdown clock; the LAN host's player counter starts at 12.
- Deep analysis: patchable assembly with file offsets for all 3,302 game functions
  (`source/native/_asm/`), 82 recovered member names (`source/native/_fields.tsv`),
  Crashlytics NDK libraries decompiled (`source/native-crashlytics/`), GameCircle web
  code extracted (`source/embedded/`), editable game data documented. PLT import stubs
  moved from the hidden `_libraries/.cpp` to `_libraries/_plt-imports.cpp`.
- Reverse-engineered source stack of the v1.0.0 APK: buildable Apktool project
  (`source/apk-project`), JADX Java reference, Ghidra pseudo-C of the native game
  library, symbol index, REA evidence, build script and documentation.

## [1.0.0]
- Initial release: `Mini.Militia.mod.by.sahadikr.in.apk` attached as a release asset
  (SHA-256 `3e06839f453b58f1fdb70bfc5f72b9db8a419b567205c168f4d190596d441be4`).

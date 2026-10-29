# Changelog

## [Unreleased]
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

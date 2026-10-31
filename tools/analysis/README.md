# Analysis scripts

Scripts written during the analysis; with the toolchain in
`docs/setup/TOOLCHAIN.md` they reproduce everything under `source/` and `evidence/`.
They read the APK and the native library as data and never execute them.

| Script | What it does | How it was run |
|---|---|---|
| `ExportJava.java` | Bulk-decompiles every class with the JADX 1.5.6 core bundled in the pinned jadx-headless-mcp JAR and exports an Android Gradle project. `source/java-reference/` is its `app/src/main/java`. | `java -Xmx8g -cp jadx-headless-mcp-0.7.1-all.jar ExportJava.java <apk> <out>` |
| `organize-pseudocode.mjs` | Regroups REA `decompile_all` output (one file per address) into one `.cpp` per C++ class, `_libraries/`, `_unnamed/`, `_free-functions.cpp` and `_not-decompiled.txt`. | `node organize-pseudocode.mjs <decompiled-dir> source/native-index/game-functions.tsv source/native RakNetDelegate,RakNetLAN,RakNetLocalServer` |
| `disassemble-classes.mjs` | Patchable ARM Thumb-2 assembly for every game-class function, one `.s` per class → `source/native/_asm/`. Addresses are file offsets; checks each function's first bytes against the library. | `node disassemble-classes.mjs evidence/03-native/decompile-index-full.json source/native-index/dynfuncs-addr-demangled.txt source/native-index/game-functions.tsv source/apk-project/lib/armeabi-v7a/libcocos2dcpp.so source/native/_asm RakNetDelegate,RakNetLAN,RakNetLocalServer` |
| `recover-fields.mjs` | Names class members from pure getters/setters in the pseudo-C → `source/native/_fields.tsv`. | `node recover-fields.mjs source/native source/native/_fields.tsv` |
| `annotate-constants.mjs` | Annotates pseudo-C with the values of its `DAT_xxxxxxxx` constants (float, int, C string) and inline hex floats, read from the library. | `node annotate-constants.mjs libcocos2dcpp.so < pseudo-c.txt` |
| `extract-defaults.mjs` | Extracts ranks (+EXP table), store items, sounds, team colours and the soldier's initial fields → `docs/reference/data/*.json`. | `node extract-defaults.mjs source/native <libcocos2dcpp.so> docs/reference/data` |
| `weapon-stats.mjs` | Starting stats of every weapon class from its `init()` → `weapons.json`. | `node weapon-stats.mjs source/native <libcocos2dcpp.so> docs/reference/data/weapons.json` |
| `map-summary.mjs` | Size, layers, spawn points and weapon-spawn lists of the 15 Tiled maps → `maps.json`. | `node map-summary.mjs source/apk-project/assets docs/reference/data/maps.json hdr` |
| `render-defaults-doc.mjs` | Renders `docs/reference/ORIGINAL-DEFAULTS.md` from its template and the data files. | `node render-defaults-doc.mjs docs/reference/ORIGINAL-DEFAULTS.template.md docs/reference/data docs/reference/ORIGINAL-DEFAULTS.md` |
| `disassemble-failed.sh` | ARM Thumb disassembly (llvm-objdump) for each function the decompiler failed on → `source/native/_failed-disassembly/`. | `disassemble-failed.sh <decompile-index.json> <libcocos2dcpp.so> source/native/_failed-disassembly` |
| `compact-decompile-index.mjs` | Shrinks a `decompile-index.json` (keeps address, name, status, ranges, failure, SHA-256) → `evidence/03-native/`. | `node compact-decompile-index.mjs <decompile-index.json> <out.json>` |
| `zipdiff.py` | Compares two APKs entry by entry (SHA-256 of contents); used for the rebuild round trip. | `python3 -I zipdiff.py <original.apk> <rebuilt.apk>` |
| `edit-rea-entry.mjs` | Sets the `rea` MCP server entry in `~/.claude.json` (Node 26 `npx`, `PATH`, provider variables). Paths are those of the analysis machine. | `node edit-rea-entry.mjs KEY=VALUE ...` |

`source/native-crashlytics/<lib>/` was produced with the same `organize-pseudocode.mjs`
(empty game-class list) and `disassemble-failed.sh` from REA `decompile_all` on each library.
`source/embedded/amazon_gc_prototype/` is REA `extract_artifact` output.

The native symbol index (`source/native-index/`) was produced with binutils:
`readelf --dyn-syms -W libcocos2dcpp.so` piped through `c++filt`.

# Analysis scripts

Scripts written during the analysis; with the toolchain in
`docs/setup/TOOLCHAIN.md` they reproduce everything under `source/` and `evidence/`.
They read the APK and the native library as data and never execute them.

| Script | What it does | How it was run |
|---|---|---|
| `ExportJava.java` | Bulk-decompiles every class with the JADX 1.5.6 core bundled in the pinned jadx-headless-mcp JAR and exports an Android Gradle project. `source/java-reference/` is its `app/src/main/java`. | `java -Xmx8g -cp jadx-headless-mcp-0.7.1-all.jar ExportJava.java <apk> <out>` |
| `organize-pseudocode.mjs` | Regroups REA `decompile_all` output (one file per address) into one `.cpp` per C++ class, `_libraries/`, `_unnamed/`, `_free-functions.cpp` and `_not-decompiled.txt`. | `node organize-pseudocode.mjs <decompiled-dir> source/native-index/game-functions.tsv source/native RakNetDelegate,RakNetLAN,RakNetLocalServer` |
| `disassemble-failed.sh` | ARM Thumb disassembly (llvm-objdump) for each function the decompiler failed on → `source/native/_failed-disassembly/`. | `disassemble-failed.sh <decompile-index.json> <libcocos2dcpp.so> source/native/_failed-disassembly` |
| `compact-decompile-index.mjs` | Shrinks a `decompile-index.json` (keeps address, name, status, ranges, failure, SHA-256) → `evidence/03-native/`. | `node compact-decompile-index.mjs <decompile-index.json> <out.json>` |
| `zipdiff.py` | Compares two APKs entry by entry (SHA-256 of contents); used for the rebuild round trip. | `python3 -I zipdiff.py <original.apk> <rebuilt.apk>` |
| `edit-rea-entry.mjs` | Sets the `rea` MCP server entry in `~/.claude.json` (Node 26 `npx`, `PATH`, provider variables). Paths are those of the analysis machine. | `node edit-rea-entry.mjs KEY=VALUE ...` |

The native symbol index (`source/native-index/`) was produced with binutils:
`readelf --dyn-syms -W libcocos2dcpp.so` piped through `c++filt`.

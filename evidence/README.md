# Evidence

Raw outputs from REA (rea-agents 6.8.0) and the checks behind `docs/VERIFICATION.md`.
REA results are canonical Evidence JSON: `evidence_id` is derived from the content,
so re-running the same operation on the same file reproduces the same ID (except
JADX results, which also record REA's per-run temporary workspace path).
Absolute paths inside them (`/tmp/claude-0/...`) are from the analysis machine.

## 01-static-analysis – the step-by-step APK analysis (REA CLI)

| File | REA operation | Finding |
|---|---|---|
| `5a-inspect_apk_signature.json` | `inspect_apk_signature` | v1+v2 signed with the public AOSP test key (`CN=Android`, serial `936EACBE07F201DF`) – re-signed build |
| `5b-decode_android_resources.json` | `decode_android_resources` (Apktool 3.0.3) | package `com.appsomniacs.da3` 2.2.23 (100), SDK 25, 78 locales, manifest + strings |
| `5c-inspect_android_package.json` | `inspect_android_package` (JADX) | 6,843 classes, 878 resources, 28 components (8 exported) |
| `5d-search_android_classes-appsomniacs.json` | `search_android_classes` | the 6 developer classes |
| `inspect_android_class/*.json` | `inspect_android_class` | member inventories (`GoogleAnalyticsInfusedApplication` failed in the provider: `cleanup_incomplete`) |
| `inspect_android_method/*` | `inspect_android_method` | decompiled ad, licence and `onCreate` methods (`.json` evidence + extracted `.java`/`.smali`) |
| `AndroidManifest.decoded.xml` | from 5b | readable manifest |
| `apk-file-listing.txt` | `unzip -l` | all 878 APK entries |
| `amazon-api-key.decoded.json` | derived | decoded `assets/api_key.txt` (Amazon login key, bound to `com.appsomniacs.da2`) |

## 02-strings – printable strings (`strings -n 5`)

`classes.dex.txt`, `classes2.dex.txt`, `libcocos2dcpp.so.txt`, `libcrashlytics.so.txt`:
the sweep that found the URLs, hosts, IPs and SDK keys listed in `docs/analysis/STATIC-ANALYSIS.md`.

## 03-native – Ghidra 12.1.4 via REA

| File | What |
|---|---|
| `analyze-attempt1-timeout.json` | first `analyze`: `provider_timeout` at the default 330 s deadline (2 GB heap) |
| `analyze.json` | successful `analyze` (8 GB heap, 90-min deadline): 36,355 procedures, 51,579 strings |
| `libcocos2dcpp.snapshot` | REA analysis snapshot (`--snapshot`) |
| `decompile-all-game-range.json` / `decompile-index-game-range.json` | first `decompile_all`, game address block: 8,144 selected, 8,128 written, 16 failed |
| `decompile-all-full.json` / `decompile-index-full.json` | full `decompile_all`: 36,355 selected, 35,957 written, 17 failed, 381 external |

The indexes are compacted with `tools/analysis/compact-decompile-index.mjs` (per
function: address, name, status, body ranges, failure, SHA-256 of the pseudo-C;
shared limitation text stored once). Comparing them shows all 8,128 functions
common to both runs have identical SHA-256.

## 04-verification

| File | What |
|---|---|
| `rea-mcp-evidence-bundle.json` | REA MCP evidence bundle (13 records): signature, resources, package, class search and method on the original APK; package and signature on the rebuilt APK |
| `rea-mcp-evidence-bundle-first-session.json` | the same checks from the first MCP session (9 records) |
| `rea-search_android_classes-all.json`, `rea-class-inventory.txt` | REA's full class inventory (6,843) |
| `java-reference-files.txt` | classes with a file in `source/java-reference/` (6,837) |
| `method-crosscheck/` | `initializeMopubAdBanner` from REA MCP, REA CLI and the bulk JADX export (identical) |
| `rebuild/zipdiff-original-vs-rebuilt.txt` | entry-by-entry comparison of the original and rebuilt APK |
| `rebuild/dropped-resources.txt` | the 45 resources aapt2 dropped, each with its version-qualified twin |
| `rebuild/smali-roundtrip.txt` | rebuilt APK decoded again: 13,149 smali files, 0 differences |
| `rebuild/apksigner-verify.txt`, `rebuild/zipalign-check.txt` | Android build-tools 37.0.0 checks on the rebuilt APK |

# arm64 port of "Mini Militia mod by sahadikr.in" (plan)

Goal (owner): the same app, same name, same game, same logic, same unlimited-ammo mod
behaviour, **only** made 64-bit so it installs and runs on Android 15/16 phones. No new
features, no redesign. Private use only; the APK is never published.

Why a rebuild is needed: `libcocos2dcpp.so` is ELF32 / armeabi-v7a only. 64-bit-only phones
cannot load it. The Java shell, resources and assets stay as they are in `source/apk-project`.

## How big it really is (measured from `source/`)
| Part of the 31,407 functions | Count | How it gets to arm64 |
|---|---|---|
| Game code: 176 classes, 3,578 functions (`source/native-index/game-functions.tsv`), 343k lines of pseudo-C | ~3.6k | **rewrite** from `source/native/*.cpp` + `_asm/*.s` + `_fields.tsv` |
| cocos2d-x 2.2.5 (+ extensions, CocosDenshion, Box2D, Chipmunk) | ~12.7k symbols | **rebuild from upstream source** (tag `cocos2d-x-2.2.5`), patched for arm64 |
| RakNet | ~10.5k symbols | **rebuild from upstream** (version to be matched from strings) |
| Cricket Audio (`Ck*`) | small | closed-source SDK: need its arm64 build (owner to supply or obtain) |
| libc/STL/other | rest | system |
| Decompile failures | ~16 | by hand from `_failed-disassembly/*.s` |

## Why the result can be trusted: differential testing
The decompiled text is not the spec; the original machine code is. Stage T builds a PC test
harness that runs the **original 32-bit functions in an ARM emulator (Unicorn)** next to the
**new C++ function** with the same inputs and compares results and memory. A class counts as
done only when it agrees on its test cases. Wire formats (RakNet messages, save files, the
HTTP calls to the game's servers) are compared byte for byte.

## Stages (each ends with a CI-built APK or a passing test run, committed to `port/arm64`)
- S0 Skeleton: fetch cocos2d-x 2.2.5, build it for arm64-v8a with the Android NDK, an empty
  `AppDelegate` that shows the splash, packed into the original Java shell (same package,
  name and assets). Proves the toolchain and the JNI bridge (35 native methods).
- S1 Engine glue: JNI exports exactly as the original (`DA2Activity`, `Cocos2dxRenderer`,
  `Cocos2dxHelper`), Cricket Audio, asset loading, ApplicationManager / AppDelegate / scenes.
- S2 Menus and settings, avatar, store layers.
- S3 Core gameplay: Stage, soldiers, weapons (all guns and the mod's six patches, taken
  from the machine code), projectiles, explosions, effects, HUD, joypad, maps/physics.
- S4 Modes: training, survival, co-op, enemies and drones.
- S5 Networking: RakNet LAN first (wire-compatible with the original), then online parts.
- S6 Ads/IAP/Play Games/analytics bridges as the original calls them.
- S7 Remaining classes, decompile failures, `_unnamed` functions.
- S8 Full on-device test (owner), fixes.
- T runs alongside S3-S7: the differential harness.

## Honest limits
- Weeks of work in total; this will be delivered in the stages above, not in one go.
- "Exactly the same" is as good as the tests: any function without an emulator test case is a
  port from reading, and can differ. The harness exists to shrink that.
- Nothing is verified on a phone until the owner runs it.
- Old third-party SDKs in the Java shell (ads, GameCircle, Play Games) may fail on Android 15
  for reasons unrelated to the game library; those get the smallest possible fix only if
  they stop the game from starting.

# Mini Militia by Kadiyafali (remake)

A new Android game (Axmol 2.11.5 / C++) that recreates the game reverse-engineered in this
repository. Spec: `../docs/REMAKE-PROMPT.md`. A new session reads that file and this one, then
continues from the next unfinished milestone. Private project: never publish to a store.

## Decisions made after the M0 report (override the spec where they differ)
- Wi-Fi player cap: chosen by the host, default **12** (original: 2-4). Config: `kDefaultMaxPlayers`.
- Co-op Survival over Wi-Fi earns **no Coins**. Coins only from kills in Wi-Fi Deathmatch / Team Deathmatch.
- Pro Pack costs **3,000 Coins**. Upgrade prices are the original values, 1 BP = 1 Coin.
- Engine: Axmol, pinned in `tools/fetch-axmol.sh`. Use its modern features (shaders, particles,
  lighting-style effects) so the game looks lively; keep gameplay values original.
- Work happens in this repo (code written by Claude sessions); builds and phone tests run in
  Android Studio on the owner's computer or in GitHub Actions. **One branch per milestone**
  (`remake/m1-skeleton`, `remake/m2-assets`, ...), merged to `main` by the owner.

## Milestone status
| | Milestone | Status |
|---|---|---|
| M0 | Report | done, approved |
| M1 | Skeleton + release workflow | **code complete, awaiting CI/Android Studio build confirmation** |
| M2 | Assets | not started |
| M3 | Single-device slice | not started |
| M4 | Full single-device game | not started |
| M5 | Wi-Fi multiplayer | not started |
| M6 | Menus and meta | not started |
| M7 | Performance and polish | not started |
| M8 | Release v1 | not started |

## What works (M1)
- Android project (`proj.android`), package `com.narendra.minimilitia`, minSdk 35, targetSdk 36,
  arm64-v8a, NDK r27c, 16 KB page alignment (`-Wl,-z,max-page-size=16384`), landscape, cutout
  mode short-edges, predictive back enabled, original launcher icon.
- Manifest permissions: INTERNET, ACCESS_NETWORK_STATE, ACCESS_WIFI_STATE,
  CHANGE_WIFI_MULTICAST_STATE, VIBRATE. No ads, analytics, billing or other SDKs.
- An empty scene that runs a fixed-step `GameWorld` (`Source/core`). The controller split mirrors
  the original: `Host` (SoldierController/SoldierHostController), `Remote`
  (SoldierRemoteController), `AI` (SoldierAIController). A `Client` world only steps `Remote`
  controllers, so host-authoritative play is built in from the start.
- `Source/config/GameConfig.h`: single place for tunables, each noted with its source function;
  already holds the 14 original upgrade prices and the Coins constants.
- Host unit tests (`Tests/`, doctest): fixed stepper, world authority rules, upgrade table.

## Build and run
One-time setup (Android Studio > SDK Manager): SDK Platform 36, Build-Tools 36.0.0,
NDK **27.2.12479018 (r27c)**, CMake 3.31.x, JDK 17+ (Android Studio's bundled JBR is fine).

```bash
cd remake
tools/fetch-axmol.sh                 # clones Axmol v2.11.5 into remake/axmol (git-ignored)
cd proj.android
./gradlew assembleDebug              # APK: app/build/outputs/apk/debug/
adb install -r app/build/outputs/apk/debug/app-debug.apk
adb shell am start -n com.narendra.minimilitia/dev.axmol.app.AppActivity
adb logcat | grep -i -E "minimilitia|axmol"
```
Or open `remake/proj.android` in Android Studio and press Run. Unit tests on the computer
(no Android needed): `tools/run-host-tests.sh`.

GitHub Actions `Remake build` runs the host tests and builds a debug APK (artifact) on every push
touching `remake/`.

## Releases
Push a tag such as `v1.0.0`: workflow `Remake release` builds a signed APK and attaches it to
the GitHub Release with its SHA-256. Add these **repository secrets** (Settings > Secrets and
variables > Actions):

| Secret | Value |
|---|---|
| `ANDROID_KEYSTORE_BASE64` | `base64 -w0 release.jks` of your keystore |
| `ANDROID_KEYSTORE_PASSWORD` | keystore password |
| `ANDROID_KEY_ALIAS` | key alias |
| `ANDROID_KEY_PASSWORD` | key password |

Create the key once: `keytool -genkeypair -v -keystore release.jks -alias kadiyafali -keyalg RSA -keysize 4096 -validity 10000`.
Keep the file out of git (it is git-ignored); losing it means future updates cannot install over old ones.

## Known problems / not reproduced yet
- M1 was written without being able to run Gradle in the authoring sandbox (no Android SDK there);
  only the host unit tests were run. First CI / Android Studio build may need small fixes.
- Axmol's profile asks for cmake 4.2+; `.axproj` relaxes it to 3.28+ (SDK Manager's 3.31).
- Android 16+ local-network permission rules to be checked in M5.

## Next step
Confirm `Remake build` is green (or fix what it reports), merge `remake/m1-skeleton`, then start M2
on branch `remake/m2-assets`: maps (`hdr/1outpost_new.tmx` first), atlases, particles, fonts,
music, new CC0 sound set (list in `ASSETS-LICENSES.md`).

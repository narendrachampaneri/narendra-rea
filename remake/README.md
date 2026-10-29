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
| M1 | Skeleton + release workflow | done: `Remake build` green on `remake/m1-skeleton`; awaiting owner merge |
| M2 | Assets | **code complete on `remake/m2-assets` (branched from M1); awaiting green CI and a phone check** |
| M3 | Single-device slice | not started |
| M4 | Full single-device game | not started |
| M5 | Wi-Fi multiplayer | not started |
| M6 | Menus and meta | not started |
| M7 | Performance and polish | not started |
| M8 | Release v1 | not started |

## What works (M2: assets)
- `Content/`: all original art in sd/hd/hdr (15 maps, 4 tilesets, `menuTexture`/`partsTexture`
  atlases, backgrounds, `font02_new.png` bitmap font), the 10 particle effects (`files/`), the 4 original
  fonts and `music/presMix.mp3`, imported unchanged by `tools/import-original-assets.sh`.
- New sound set in `Content/sounds` (46 files, 736 KB): every sound effect of the original has a
  CC0 replacement (real gun recordings for the guns). Built reproducibly by
  `tools/sounds/build_sounds.py` from `tools/sounds/sources.json`; sources and licences are listed
  in `ASSETS-LICENSES.md` (generated). Loops (jet, flame, saw) are WAV so they loop without a click.
- Original coordinate system: 480x320 design points, fixed height; art scale sd 1x / hd 2x / hdr 4x
  chosen by the original rule (`Source/assets/Resolution.h`); 64-point tiles.
- `Source/assets/MapCatalog.h`: the 12 rotation maps + survival + training with background,
  gravity factor and per-map player modifier recovered from the original (gravity floats from
  the ARM assembly). `MapData` reads spawn points, weapon spawns and decorations in points.
- `Source/audio/SoundBank.h`: the original 98 sound ids, names and groups (sound id = the number
  the original code passes to `Sound::playSound`), each mapped to its new file.
- `Source/app/`: `AssetManager` (content scale, search paths, shared atlases, per-map texture
  release, texture-memory readout), `MapView` (tiles + decorations in the original z order; also
  the world layer for M3), `AudioSystem`, and the M2 test scene `AssetViewerScene`.
- Host tests: 13 cases / ~2200 checks, including the real `Content/`: every map in every
  resolution with its tileset and background, atlas textures, decoration frames, particle
  textures, every sound file present and listed with its licence.
- `tools/check-app-syntax.sh` type-checks all Axmol-dependent code against the engine headers in
  seconds (also run in CI), so API mistakes do not wait for the 20-minute Gradle build.

### Findings from the original code (correct the spec where they differ)
- Physics is **Chipmunk** (`cpSpaceNew`, `cpSpaceStep` in `PhysicsManager`), not Box2D. Axmol ships
  Chipmunk (`axmol/3rdparty/chipmunk`); M3 uses it to keep the original physics.
- Map objects are authored in points (identical in sd/hd/hdr), so they are parsed by
  `MapData` (pugixml), not by Axmol's TMX object parser (which would divide them by the content
  scale). Objects are always read from the `sd` file so every device in a Wi-Fi match agrees.
- Data quirks kept as they are: weapon spawn `wp_p_20` lies outside the map in Pyramid and
  Catacombs; the hdr copy of Hunger has one extra weapon spawn.
- "Hunger" (`0hunger_new.tmx`) ships and is named but was never in the original map rotation.
- Lunarcy is a zero-gravity map (gravity factor 0 enables special player modifiers); snow maps
  pass 15 instead of 100 to the soldier each update (meaning to be confirmed in M3).
- The original menus used sound ids 13/14 (named grenade1/grenade2) as button sounds.
- Nothing in the original truly loops audio (`loopSoundVP` plays once).

### Memory budget (4 GB phones)
Texture budget at hdr (RGBA8888): about 175 MB = menu atlas 64 + parts atlas 32 + font 8 + one
map tileset 60 + one background 11; the previous map's textures are released when a
map changes. The test scene shows live texture memory. M7 measures on a phone (`dumpsys meminfo`)
and may use compressed textures or the hd art for the Smooth/Medium presets.

## What works (M1)
- Android project (`proj.android`), package `com.narendra.minimilitia`, minSdk 35, targetSdk 36,
  arm64-v8a, NDK r27c, 16 KB page alignment (`-Wl,-z,max-page-size=16384`), landscape, cutout
  mode short-edges, predictive back enabled, original launcher icon.
- Manifest permissions: INTERNET, ACCESS_NETWORK_STATE, ACCESS_WIFI_STATE,
  CHANGE_WIFI_MULTICAST_STATE, VIBRATE. No ads, analytics, billing or other SDKs.
- A fixed-step `GameWorld` (`Source/core`). The controller split mirrors
  the original: `Host` (SoldierController/SoldierHostController), `Remote`
  (SoldierRemoteController), `AI` (SoldierAIController). A `Client` world only steps `Remote`
  controllers, so host-authoritative play is built in from the start.
- `Source/config/GameConfig.h`: single place for tunables, each noted with its source function;
  already holds the 14 original upgrade prices and the Coins constants.
- Host unit tests (`Tests/`, doctest): fixed stepper, world authority rules, upgrade table.

## Build and run
One-time setup (Android Studio > SDK Manager): SDK Platform 36, Build-Tools 36.0.0,
NDK **27.2.12479018 (r27c)**, CMake **3.31.6** exactly (tick "Show Package Details" to pick it),
JDK 17+ (Android Studio's bundled JBR is fine). Newer CMakes may stay installed; the build
ignores them and uses 3.31.6 (pinned in `.axproj`).

```bash
cd remake
tools/fetch-axmol.sh                 # clones Axmol v2.11.5 into remake/axmol and downloads axslcc
                                     # (shader compiler) into axmol/tools/external/axslcc.
                                     # Needs bash, git, curl, tar/unzip (Git Bash on Windows). Re-run any time.
cd proj.android
./gradlew assembleDebug              # APK: app/build/outputs/apk/debug/
adb install -r app/build/outputs/apk/debug/app-debug.apk
adb shell am start -n com.narendra.minimilitia/dev.axmol.app.AppActivity
adb logcat | grep -i -E "minimilitia|axmol"
```
Or open `remake/proj.android` in Android Studio and press Run. On the computer, no Android
needed: `tools/run-host-tests.sh` (unit + asset tests) and `tools/check-app-syntax.sh`
(type-checks the Axmol code).

GitHub Actions `Remake build` runs both and builds a debug APK (artifact) on every push touching
`remake/`.

Asset tools (only needed when assets change): `tools/import-original-assets.sh` re-imports the
original art; `python3 tools/sounds/build_sounds.py` re-renders the sounds (needs ffmpeg with
libvorbis and the Python packages numpy and py7zr; downloads the CC0 packs once into
`tools/sounds/.cache`, git-ignored).

### On-device check for M2 (debug APK)
The app opens the asset viewer:
1. Outpost appears at the original scale with its background, trees and bushes; drag pans,
   pinch zooms (zoomed out you see the whole map). The top-left title is in the original font.
2. NEXT/PREV go through all 15 maps; each has the right background (moon for Lunarcy, snow for
   Icebox/Snow Blind, desert for Pyramid/Catacombs/Overseer). "textures" stays roughly constant
   while switching (old maps are released).
3. SPAWNS shows green dots (player spawns) and yellow dots (weapon spawns) on platforms/ground.
4. Tap the map: a particle effect appears; FX cycles all 10 (blood, grass, smoke, shells...).
5. SOUND plays each new sound in turn (name shown in green); MUSIC toggles the menu music.
6. Report: fps, the "textures" value on Outpost, and anything misplaced or missing.

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
- The authoring sandbox cannot run Gradle (no Android SDK); builds are verified by GitHub Actions. Not yet run on a phone.
- Spoken lines have no new recordings except "cover me", "ready", "go go go" and "target
  destroyed" (CC0 Kenney voiceover). Sarge's ~40 training lines and the other taunts are silent
  for now (their ids exist with an empty file); decision pending with the owner.
- Predictive back (targetSdk 36) needs an `OnBackInvokedCallback` forwarded to the game (M6);
  until then the system back gesture closes the app.
- Axmol's profile asks for cmake 4.2+; `.axproj` pins CMake 3.31.6 exactly instead.
- Do not run Axmol's own `setup.ps1`: `tools/fetch-axmol.sh` replaces it and changes nothing system-wide.
- Android 16+ local-network permission rules to be checked in M5.

## Next step
Get `Remake build` green on `remake/m2-assets`, run the on-device check above, merge M1 then M2.
Then M3 on branch `remake/m3-slice`: one soldier with the dual joysticks (Joypad,
SoldierController, SoldierView), Chipmunk physics from the map tiles (PhysicsManager,
MapManager::addStaticBodyShape), one weapon (Weapon + AK47), Projectile, Explosion, HUD.

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
| M2 | Assets | done on `remake/m2-assets` (branched from M1): `Remake build` green; awaiting phone check and owner merge |
| M3 | Single-device slice | **done on `remake/m3-slice` (branched from M2): playable from QUICK PLAY; awaiting green `Remake build`, phone check and owner merge** |
| M4 | Full single-device game | **built on `remake/m4-game` (branched from M3); awaiting green `Remake build`, phone check and owner merge. dual wield, gas/proximity grenades and drones are left for M7 (see "What works (M4)")** |
| M12 | Controller and button placement | **on `remake/m12-controls` (from M11): Bluetooth/USB gamepad, button-placement editor** |
| M11 | Allowed weapons in the lobby | **on `remake/m11-weapons`: five pick-up groups the host can switch off** |
| M10 | Final docs and handoff (assumed scope) | **on `remake/m10-final`** |
| M9 | Hardening (assumed scope) | **on `remake/m9-hardening`: fuzz tests for the network decoder and the save parser** |
| M8 | Release docs | **on `remake/m8-release`: TEST-CHECKLIST.md, owner merge/release steps** |
| M7 | Polish and extras | **built on `remake/m7-polish` (from M6): host options, party extras, crosshair; awaiting CI and on-device check** |
| M6 | Menus, Coins, store, avatar, leaderboards, settings, saves | **built on `remake/m6-menus` (branched from M5); awaiting CI and an on-device check** |
| M5 | Wi-Fi multiplayer | **built on `remake/m5-wifi` (branched from M4); protocol in `LAN-PROTOCOL.md`; awaiting CI, a two-phone test and owner merge** |
| M6 | Menus and meta | not started |
| M7 | Performance and polish | not started |
| M8 | Release v1 | not started |

## What works (M12: controls)
- Gamepad (Bluetooth or USB): left stick moves, right stick aims and fires when pushed far, R2/R1 fire, X reload, Y switch weapon, B melee, A pick up, L1 grenade, R3 zoom, Start pauses. The touch pads keep working at the same time. Stick directions are unverified on a real pad.
- Settings > EDIT BUTTON PLACEMENT: drag melee, grenade, zoom, reload and pick-up buttons; SAVE stores the offsets (part of the save file), RESET restores the original places.

### On-device check for M12
1. Pair a controller, start Quick Play: the stick directions are right (up = up) and the buttons do what is listed. 2. Move the buttons, SAVE, start a match: they are where you put them and still respond to touch.

## What works (M7: host options and extras)
- Lobby (host taps a line): respawn time 3-15 s, friendly fire, and four **party options**, all OFF by default: low gravity, unlimited ammo, one-shot kills, melee only. With all off the match plays by the original rules. They travel in the lobby/start messages (`LAN-PROTOCOL.md` HostOptions: respawn, friendlyFire, party bits) and are applied by the host's simulation.
- Settings: crosshair style (off / dot / cross / ring), off by default.
- Records and totals are on the Leaderboards screen.
- Not done yet (listed in "Known problems"): allowed-weapons list, map vote, dual wield / Pro Pack items drawing, QR joining.

### On-device check for M7
1. Host a game, switch each party option on, start: gravity is lower / ammo never ends / one hit kills / fire stick punches. 2. Settings > Crosshair shows a sight in the aim direction. 3. With all options off nothing differs from M6.

## What works (M6: menus and meta)
- First launch asks for a player name and offers Training; Home screen with player card and pill buttons (Quick Play, Multiplayer, Solo Play, Store, Avatar, Leaderboards, Settings, About, What's New).
- Coins: start 100; 10 per kill only in Wi-Fi Deathmatch / Team Deathmatch (Training, Survival, Practice, Quick Play and Co-op earn none). Store sells the original upgrades at the original prices (1 BP = 1 Coin) and the Pro Pack (3,000 Coins). Upgrade effects apply to the soldier (not in Fair mode) and travel in the Wi-Fi Join message.
- Avatar customiser, personal-record and friends leaderboards, settings (volumes, blood, camera, left-handed, auto-fire, sensitivity, vibration, quality, frame rate, quick messages), About/Credits.
- Save file `save.mmsave` (text, CRC32, atomic write + `.bak`), Android Auto Backup, manual export/import via the system file picker (no storage permission).
- Tests: `Tests/SaveTest.cpp` (save round-trip/corruption, store rules, coin rules, upgrade effects).

### On-device check for M6
1. Fresh install: name prompt appears, then Home. 2. Buy an upgrade in the Store; Coins drop by its price; restart the app, it is still owned. 3. Change settings, restart, they persist. 4. Settings > Export save, then Import it back. 5. Play a Wi-Fi Deathmatch kill: +10 Coins at the end; Co-op gives none.

## What works (M5: Wi-Fi multiplayer)
- Home -> MULTIPLAYER: host a game, or see the games on this network and tap one, or type the host's
  IP. Lobby with the host's options (mode, map, 1-8 minutes, 2-12 players, Fair mode), ready flags,
  teams, twelve quick messages; Deathmatch, Team Deathmatch, Co-op Survival; leaderboard at the end
  with Play again / Lobby (host) or waiting (guests). Quick messages also work in the match (chat button).
- `Source/net`: protocol, UDP transport, host and client sessions; `Source/game/MpGame.*` the rules.
  Everything except the sockets' Wi-Fi behaviour is covered by host tests (loopback network, 20 % packet
  loss, timeouts, kicks, a full match with scores, teams, Co-op).
- **Test on two phones** (steps below). Known limits: no client-side prediction (your own movement is
  one round trip behind, fine on a hotspot), no QR joining yet (needs the camera; with the M6 menus).

### On-device check for M5 (two or more phones)
1. Turn on the hotspot on phone A (or put all phones on one Wi-Fi), install the same APK everywhere.
2. Phone A: MULTIPLAYER -> HOST A GAME. The lobby shows "Others can join by IP: 192.168.x.x".
3. Phone B: MULTIPLAYER: A's game should appear within ~2 s; tap it. If the list stays empty (some
   routers block broadcasts), type A's IP and tap JOIN.
4. B taps READY, A taps START. Both should spawn in the same map and see each other move; shooting
   A from B should show blood, damage and a kill on both screens.
5. Try Team Deathmatch (tap TEAM to pick), Co-op, a short length, quick messages, leaving mid-match,
   PLAY AGAIN / LOBBY at the end.
6. Report: does discovery work on the hotspot and on the home Wi-Fi? Lag, jitter, anything that
   differs between the two screens, crashes (`adb logcat | grep -i minimilitia`).

## What works (M4: full single-device game, in progress)
- **Modes** (`Source/game/Modes.*`): QUICK PLAY (home button: random map, 3 bots, 5 min, respawns), SOLO PLAY
  picker (`PlayScene`): Practice (map, 1-7 bots, level), Survival (3 lives, waves of 3, 4, 5... enemies on
  team 1, +100 per kill), Training (11 lessons, the Sarge lines are new text and silent).
- 17 weapons (`Weapons.h`, all stats from the original), pick-ups from the map's `wp_` points (first spawn
  after 10 s, 15 s period, 8 s above 10 weapons), two hands, switch, same-kind ammo top-up, melee dash,
  M16 bursts, zoom levels, frag grenades (2, fuse 1.75 s), rocket launcher, explosion damage
  `max(10, 100 - 0.8 d)` within 125 points.
- Damage and death like the original (range fall-off, headshots x1.5, crouch dodge, ragdoll, 9 s respawn,
  safest spawn point).
- **Bots are new** (`Bot.*`): the original's AI function could not be decompiled. They chase, aim with an error
  that shrinks with the level, fire with a clear line, jump and fly up, and detour when stuck.
- Flamethrower, saw gun and Phasr use fast short-range bullets with their original stats; the EMP charge
  drains the jetpack fuel of soldiers near where it lands (new, approximate).
- **Left for later (M7 polish):** dual wield (two pistols at once), gas / proximity grenades, the flame and saw
  visual effects, Survival's drones (hawk, worm, humanoid; Survival uses bots for now), Sarge's voice.
- The mod patches found in the APK now number six (see the weapon table header in `Weapons.h`).

## What works (M3: single-device slice)
- **QUICK PLAY** opens Outpost with one soldier and the AK47: the original dual joysticks (left
  pad moves / jumps / flies, right pad aims and fires past its edge), jetpack with fuel, health
  regeneration, reload button, bullets with streaks that spark on walls, camera that leads
  towards the aim, HUD (health and jetpack bars, ammo, reload ring), pause (II on the health
  frame, or back) with RESUME / QUIT. A dead soldier (leaving the world) explodes and respawns
  after 3 s at the next spawn (the match rules come in M4).
- `Source/game` is engine-free and host-tested; `Source/game/Rules.h` holds every value with the
  original function it comes from:
  - Physics: Axmol's Chipmunk 7; 2 iterations, two half steps per frame, no space gravity (each
    body brings its own). Chipmunk 5 layers become categories + mask with the same bits.
  - Map collision: MapManager's GID -> tile type -> polygon tables (40 shapes), e 0.8, u 0.5;
    tiles on the outer ring and tiles buried between four solid tiles get no shape.
  - Soldier (SoldierHostController): mass 0.1, box + head circle at player scale 0.4, velocity
    function with 0.5^dt damping, ground braking and a 14 rad/s spin limit; gravity -300
    (walking / idle) or -50 (jetpack) times the map's factor; walk 190, jetpack 325 points/s;
    jump 220; the jetpack starts after 0.5 s in the air with the stick well up; fuel 0.35 per
    step, regenerates from 1 s after release (7/s, up to 21/s after 3 s); health +1/s; leaving
    the world box costs 1 health per step; crouch with the stick down.
  - Joypad: pads at (75, 75) and (width - 75, 75), 40-point knobs, 90-point touch zone, knob
    springs back 20 % per frame, fire past the edge.
  - AK47: damage 10, range 800, 0.1 s between shots, clip 35 + 200 (max 250), reload 2 s, spread
    ±4° from the original fixed pseudo-random sequence, bullets 1300 points/s plus 0.8 of the
    shooter's speed.
  - Bullets are not physics bodies: a pool of 30 tracers ray-casts each step (map layer 0x100;
    host bullets 0x288, which never includes yourself); they fade over the last 100 points.
- `Source/app`: `GameScene` (fixed 60 Hz steps, camera, effects, HUD), `SoldierView` (head,
  body, arms, legs and jetpack flames at the original node positions; the animation is new).

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
- `Source/app/`: `AssetManager` (content scale, search paths, shared atlases loaded in the
  background, per-map texture release, texture-memory readout), `MapView` (tiles + decorations
  in the original z order; also the world layer for M3), `AudioSystem`, and the screens:
  - `SplashScene`: the original title screen at once ("LOADING", then menu music and a blinking
    "TOUCH TO START", like SplashLayer). Android's own splash (app icon) covers the native start.
  - `HomeScene`: preview home screen from the original menu art (title art + blue button panel).
    Quick Play / Multiplayer / Solo Play / Settings say which milestone brings them; ASSET CHECK
    opens the viewer. Replaced by the modern menus in M6.
  - `AssetViewerScene`: M2 asset check (opens on the whole map; the button row always fits).
- Back gesture: predictive back is forwarded to the game only on game screens
  (`AppActivity.setGameHandlesBack`); on the home screen the system back leaves the app.
- Host tests: 13 cases / ~2200 checks, including the real `Content/`: every map in every
  resolution with its tileset and background, atlas textures, decoration frames, particle
  textures, every sound file present and listed with its licence.
- `tools/check-app-syntax.sh` type-checks all Axmol-dependent code against the engine headers in
  seconds (also run in CI), so API mistakes do not wait for the 20-minute Gradle build.

### Findings from the original code (correct the spec where they differ)
- The analysed APK is a **modded build** with two gameplay patches the remake does not copy:
  every weapon's `triggerPull` subtracts 0 rounds per shot (`subs r3, #0`: unlimited ammo), and
  `SoldierHostController::hasPower` computes `power > 0` and then returns 1 anyway (unlimited
  jetpack). The remake spends one round per shot and needs fuel to fly; "unlimited ammo" can
  come back as a host extra (M7), off by default.
- Bullets are ray-cast tracers (`Tracer::checkCollision`), not Chipmunk bodies.
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
needed: `tools/run-host-tests.sh` (unit, asset and gameplay tests; needs a C/C++ compiler and
the zlib headers, e.g. `sudo apt install zlib1g-dev` on Linux, built into macOS) and
`tools/check-app-syntax.sh` (type-checks the Axmol code).

GitHub Actions `Remake build` runs both and builds a debug APK (artifact) on every push touching
`remake/`.

Asset tools (only needed when assets change): `tools/import-original-assets.sh` re-imports the
original art; `python3 tools/sounds/build_sounds.py` re-renders the sounds (needs ffmpeg with
libvorbis and the Python packages numpy and py7zr; downloads the CC0 packs once into
`tools/sounds/.cache`, git-ignored).

### On-device check for M3 (debug APK)
1. Home -> QUICK PLAY: Outpost appears zoomed in on the soldier, who drops from the top spawn
   and lands with a thud. Pads bottom-left and bottom-right; health/jetpack frame and ammo frame
   at the top centre; reload button top right.
2. Left pad: sideways walks (footsteps); push up: jump, then after a moment the jetpack flames
   and he flies; the blue bar drains, and refills a second after letting go; at empty he drops.
3. Right pad: drag inside the ring to aim (arm and gun follow), past the ring to fire: streaks,
   sparks on walls, the clip counts down from 35, at 0 it reloads by itself (ring fills, 2 s).
   The reload button reloads early.
4. The camera leads a little towards where you aim; wider phones see the same width of map.
5. Fly off the side or bottom of the map: health drains fast, he explodes and respawns.
6. II on the health frame or the back gesture pauses (RESUME / QUIT back to the menu).
7. Report: does movement feel like the original (speed, jump height, jetpack lift, fall)?
   Anything that looks wrong (soldier sprite, gun position, flames, HUD placement), fps.

### On-device check for M2 (debug APK)
0. Launch: app icon splash, then the original title screen with "LOADING" within ~1 s; the music
   starts and "TOUCH TO START" blinks; a tap fades to the home screen. The four game buttons
   show a "coming in Mx" message; ASSET CHECK opens the viewer; back gesture returns home.
1. Outpost appears whole, with its background, trees and bushes; pinch in to the in-game scale,
   drag to pan. The top-left title is in the original font; all 7 buttons fit on screen.
2. NEXT/PREV go through all 15 maps; each has the right background (moon for Lunarcy, snow for
   Icebox/Snow Blind, desert for Pyramid/Catacombs/Overseer). "textures" stays roughly constant
   while switching (old maps are released).
3. SPAWNS shows green dots (player spawns) and yellow dots (weapon spawns) on platforms/ground.
4. Tap the map: a particle effect appears; FX cycles all 10 (blood, grass, smoke, shells...).
5. SOUND plays each new sound in turn (name shown in green); MUSIC toggles the menu music.
6. Report: fps, the "textures" value on Outpost, and anything misplaced or missing.

## Assumption about M9 and M10
The original prompt defines M0-M8 only. Because the owner asked for "m9, m10" too, I took M9 = hardening / quality tests and M10 = final documentation and hand-off. Tell me if you meant something else (for example the still-missing features listed under Known problems).

## Merging and releasing (owner steps)
1. Merge the branches in order into `main` (each contains the earlier ones): `remake/m1-skeleton` ... `m5-wifi`, `m6-menus`, `m7-polish`, `m8-release`, `m9-hardening`, `m10-final`. Merging the last one brings everything.
2. Run the checks in `TEST-CHECKLIST.md` on real phones.
3. Add the four signing secrets (below), then push a tag, e.g. `git tag v1.0.0 && git push origin v1.0.0`.
4. Nothing is ever uploaded to an app store; the APK stays a GitHub Release asset.

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
- Still missing from the spec (as of M7): map vote in the lobby, Pro Pack dual-wield drawing and masks, gas/proximity grenades, laser-sight drawing, flame/saw visuals, Survival drones, button-placement editor, Bluetooth controller, QR joining. Each has a place in M9.
- The authoring sandbox cannot run Gradle (no Android SDK); builds are verified by GitHub Actions. Not yet run on a phone.
- Spoken lines have no new recordings except "cover me", "ready", "go go go" and "target
  destroyed" (CC0 Kenney voiceover). Sarge's ~40 training lines and the other taunts are silent
  (their ids exist with an empty file). Owner's decision: leave them silent; the owner will say
  when voice is wanted. Do not ask again.
- The soldier's animation, the gun/muzzle position, the explosion used for a death and the
  HUD placement are new approximations; the original values for those are only in the
  SoldierView / HUD drawing code and will be refined with phone feedback. Shell casings, blood,
  the zoom button and the AK47's zoom levels come in M4.
- Axmol's profile asks for cmake 4.2+; `.axproj` pins CMake 3.31.6 exactly instead.
- Do not run Axmol's own `setup.ps1`: `tools/fetch-axmol.sh` replaces it and changes nothing system-wide.
- Axmol's CMake needs PowerShell at configure time: built into Windows and on GitHub runners;
  on macOS/Linux install it first (`brew install powershell`).
- Android 16+ local-network permission rules: the app declares INTERNET, ACCESS_NETWORK_STATE, ACCESS_WIFI_STATE and CHANGE_WIFI_MULTICAST_STATE and holds a multicast lock while looking for games; if Android 16 asks for or blocks local-network access, report it (the permission to add would be NEARBY_WIFI_DEVICES / ACCESS_LOCAL_NETWORK).

## Next step
1. Wait for CI on each branch (or check the Actions tab); `remake/m10-final` contains everything (M1-M10).
2. Build and run it, follow `TEST-CHECKLIST.md` on 2+ phones, and tell me what fails.
3. Merge the branches in order, add the signing secrets, tag `v1.0.0` (see "Merging and releasing").
4. Open work (see Known problems): allowed-weapons and map vote in the lobby, Pro Pack dual-wield visuals and masks, gas/proximity grenades, laser sight drawing, Survival drones, button-placement editor, Bluetooth controller, QR joining. M7-M10 were done without a phone, so on-device feedback comes first.

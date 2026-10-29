# Remake prompt: "Mini Militia by Kadiyafali"

Recommended: run Claude Code on your own computer (desktop app or CLI), opened in your local
clone of `narendrachampaneri/narendra-rea` (branch `main`), with Android Studio installed and
your phone connected by USB (see "Local setup" below). Then start the session with:

> Read docs/REMAKE-PROMPT.md in this repository and follow it exactly. Start with the M0
> report and wait for my OK.

Or paste everything below the line into the session.

---

Goal: Build "Mini Militia by Kadiyafali", a NEW Android app that recreates the game
reverse-engineered in this repository. It plays like the original but is fully local: no ads,
no online services, "Coins" instead of Battle Points, and Wi-Fi / mobile-hotspot multiplayer
between phones. Android 15+ phones only for now, and it must run smoothly even on 4 GB RAM
phones. Build it from real source code with Gradle. This is a private, personal-use project:
never publish it to any app store.

## Context (read first)
This repo is a verified reverse-engineering of the old APK (Mini Militia 2.2.23 mod, package
com.appsomniacs.da3). Read README.md, docs/PROJECT-MAP.md, docs/analysis/STATIC-ANALYSIS.md
and docs/VERIFICATION.md before writing code.
- The game is C++ (cocos2d-x 2.2.5 + Box2D + RakNet) in the 32-bit-only
  source/apk-project/lib/armeabi-v7a/libcocos2dcpp.so. There is no original source.
- source/native/<Class>.cpp = Ghidra pseudo-C of every game function (179 classes with real
  class/method names). source/native/_asm/<Class>.s = exact ARM assembly per function.
  source/native/_fields.tsv = 82 recovered member names (e.g. Weapon +0x174 AmmoCapacity,
  SoldierController +0x144 HP). source/native/_failed-disassembly/ = 16 functions Ghidra
  could not decompile (incl. SoldierAIController::updateStep, SoldierView::updateStep,
  SoldierRemoteController::updateStep, Weapon::updateRemoteWeaponStep,
  Explosion::applyDamage, TrainingStage::doLesson): reconstruct them from the assembly.
- source/java-reference/ = decompiled Java (Android shell only: ads, billing, sign-in, JNI).
- source/apk-project/assets/ = all original game assets in sd/hd/hdr resolutions:
  15 Tiled maps (*.tmx: orthogonal, 128 px tiles, base64+gzip) + 4 tilesets (*.tsx),
  sprite atlases (menuTexture/partsTexture .plist+.png), 10 particle effects
  (files/*.plist), fonts (fonts/*.ttf), music presMix.mp3. The original sound effects
  (da2sound16.ckb) are NOT used: we use new sounds.

Why the old APK cannot be fixed: 32-bit-only native code (new 64-bit-only CPUs can't run
it), a 4 KB-aligned .so (no 16 KB page support), targetSdk 25, and dead SDKs. The C++
can't be recompiled, so we rebuild.

## Owner's decisions (follow exactly)

### Name, look, devices
- App name "Mini Militia by Kadiyafali"; package ID `com.narendra.minimilitia`; original
  icon and original splash screen for now.
- Menus: new, modern UI with smooth animations and transitions, built from the original
  game graphics. In-game screens keep the original look.
- Landscape only. Fill the whole screen; keep buttons clear of camera cutouts.
- Phones only (no tablet/foldable layouts). English only.
- Android 15+ only (minSdk 35) for now; older Android versions will be added later, device
  by device.

### Home page and menus
- Keep every local item: Quick Play, Multiplayer (Wi-Fi), Solo Play (Training, Survival,
  Practice vs bots), Co-op, Avatar/Customize, Store, Settings, Leaderboards, About/Credits
  (credit the original developers, Appsomniacs).
- Remove: online multiplayer, news ticker, Terms of Service, Google sign-in.
- Add a local "What's new" page.
- Quick Play = instant offline match against bots.

### Player
- Ask for the player name on first launch, editable later in Settings. One profile per phone.
- The first launch must be smooth and attractive for beginners: name, then offer Training.

### Modes (all six now; more modes will be added later)
- Training: the original Sarge tutorial and lines, polished to be smooth and inviting for
  first-time players.
- Survival (solo), Co-op Survival over Wi-Fi, Deathmatch over Wi-Fi, Team Deathmatch over
  Wi-Fi, Practice vs bots (offline).
- No bots in Wi-Fi matches (bots only in offline modes).

### Wi-Fi / hotspot multiplayer
- Max players: the original's maximum (read it from the code); the host chooses the player
  count up to that maximum.
- Joining: automatic list of nearby games, join by IP address, and QR code (camera
  permission requested only when the player opens the scanner).
- Host lobby options: the original ones (map select or vote, teams) plus time limit (maximum
  8 minutes), allowed weapons, respawn time and friendly fire. No kill limit.
- If the host leaves, the match ends for everyone.
- Unlocked Pro Pack items and upgrades are allowed in Wi-Fi matches; the host can switch on
  "Fair mode" (everyone uses base stats).
- After every match: always show the final leaderboard/scoreboard, then a popup with
  "Play again" (same group) and, below it, "Return to lobby".
- Communication: quick messages/emotes only (no free-text chat), with a setting to turn
  them off.

### Economy: Coins
- Rename Battle Points (BP) to "Coins" everywhere.
- Keep the store; everything is bought with Coins. No real money, no "Buy points" button,
  no billing code.
- Pro Pack (dual weapons + Pro avatar items) costs Coins: propose a fair price relative to
  the upgrade prices.
- Upgrade prices: the original values, converted 1 BP = 1 Coin.
- Earning: 10 Coins per kill, only in Wi-Fi multiplayer matches. No Coins from Training,
  Survival, Practice vs bots or Quick Play. ASK ME whether Co-op Survival over Wi-Fi earns
  Coins.
- New players start with 100 Coins. Avatar items are bought with Coins. No daily bonus.

### Progress
- Remove ranks and EXP. The post-match screen shows Coins earned instead.
- Leaderboards: personal records on the phone (best Survival, best Co-op, kills, playtime,
  etc.), a leaderboard of the friends you've played with over Wi-Fi (stats exchanged at the
  end of each match), and the mandatory post-match leaderboard.
- No achievements or award pop-ups.

### Gameplay and controls
- Exact original balance (damage, speed, ammo, physics). Keep every value in one editable
  config file, noting the source function for each.
- Blood on by default, with an off switch and a custom blood-colour option.
- Controls: the original dual joysticks and button-placement editor, plus a sensitivity
  slider, left-handed swap, auto-fire, Bluetooth game controller support and vibration on hit.

### Settings
Sound volume, music volume, blood (on/off + colour), player-centered camera, control layout,
graphics quality, frame rate, quick messages on/off.

### Sound and music
- New sound effects under a free licence (e.g. CC0). List every source and licence in
  remake/ASSETS-LICENSES.md.
- Original menu music (presMix.mp3) for now.

### Graphics and performance
- Up to 120 fps on phones that support it; the player can choose, and the default depends
  on the device.
- Quality presets: Smooth, Medium, High, Extreme. The default depends on the device; presets
  map to asset resolution (sd/hd/hdr) and effects.
- Must stay smooth on 4 GB RAM phones: set a memory budget, use texture atlases, load per
  map, and measure.

### Saving
Local save + Android Auto Backup + manual export/import of the save file (Storage Access
Framework, no storage permission).

### Extras
Propose and add extras (for example host party options such as low gravity, unlimited ammo,
one-shot kills or melee only; a stats screen; crosshair styles). The main game must not
change: every extra is off by default and can be switched off, and with all extras off the
game is exactly the original.

### Releases
APKs are distributed through GitHub Releases of this repository. Set up a GitHub Actions
workflow that builds a signed release APK when a version tag is pushed and attaches it to the
release. The signing key lives only in repository secrets: tell me exactly which secrets to
add. Never commit keys or APKs.

## Engine
Compare Axmol, Unity and Godot on: (1) faithful reuse of the original assets and of the
pseudo-C logic, (2) smooth 60-120 fps and low memory on 4 GB RAM Android 15 phones, (3) APK
size and startup time, (4) native UDP/LAN networking (RakNet/SLikeNet or equivalent), (5)
licence and cost for private use, (6) the Android project builds from the command line with
Gradle (on my computer and on GitHub Actions) and opens in Android Studio for run/debug, (7)
optional desktop build (Windows/macOS/Linux) for fast gameplay iteration. Recommend one with
reasons (Axmol is the expected fit:
C++, a maintained cocos2d-x successor that loads the TMX maps, plist atlases and particle
plists as they are). Wait for my OK.

## Local multiplayer: technical notes
The original uses RakNet over UDP on the local network: discovery by broadcast to
255.255.255.255 (RakNetLAN::findSessions / pingForServer / hostSession, LAN ports 9330,
9331, 9341), a host-side server (RakNetLocalServer), the lobby (PlayerLobbyLocal,
LocalGameLayer, PeerNetworkBridgeLAN, RakNetDelegate::connectToLANServer), messages in
NetworkMessageDispatcher, and host-authoritative play (SoldierHostController on the host,
SoldierRemoteController for remote players; Weapon/ROCKET/SAW::updateRemoteWeaponStep).
- Before writing network code, write remake/docs/LAN-PROTOCOL.md from the pseudo-C:
  discovery, host/join/leave, every message ID with its payload layout, the tick/sync model,
  who is authoritative for what.
- RakNet is open source (check the current licence and a maintained fork such as SLikeNet);
  using it keeps the original message flow. Otherwise justify the replacement.
- Must work when one phone is the mobile hotspot and the others join it (no router), and on
  a normal Wi-Fi router. Handle WifiManager.MulticastLock for receiving broadcasts, hotspot
  subnets that vary per device, the join-by-IP and QR fallbacks, and any local-network
  permission Android 16+ requires (check the current rules).
- Remake-to-remake play only; no compatibility with the old APK is needed.

## Technical requirements
- Android Studio + Gradle project in a NEW top-level folder `remake/`. Never modify source/,
  evidence/ or tools/: they are the reference.
- compileSdk 36, targetSdk 36, minSdk 35; arm64-v8a (plus x86_64 for the emulator); native
  libraries 16 KB page aligned; edge-to-edge, display cutouts, gesture navigation and
  predictive back handled.
- Remove completely: all ads (MoPub, AppLovin, AdMob, Amazon Ads, InMobi, AdColony, Vungle,
  Chartboost), analytics and crash reporting (Google Analytics/Tag Manager, Firebase,
  Crashlytics, New Relic), device-ID collection, Google Play Games, Amazon services, licence
  checks, billing, online servers (appsomniacs.azurewebsites.net, NAT server 94.198.81.195),
  web views.
- Permissions: only what the features above need (network/Wi-Fi state, multicast for LAN
  discovery, camera only for QR, vibration). No location, microphone, phone or storage.
- Keep build outputs and local files out of git (add `.gitignore` entries under remake/ for
  `build/`, `.gradle/`, `.cxx/`, `local.properties`, `.idea/`, keystores, APKs).

## Milestones (one at a time; the build must pass after each; commit and push to main)
M0 Report: engine recommendation, remake/ structure, and from the pseudo-C: the list of
   modes, the max player count, the upgrade list with original prices, Pro Pack contents,
   and the proposed Coins prices. Wait for my OK.
M1 Skeleton: remake/ builds (assembleDebug) and shows an empty scene; the GitHub Actions
   release workflow exists. Design the entity and game loop for host/remote controllers
   from the start, like the original.
M2 Assets: maps (start with hdr/1outpost_new.tmx), atlases, particles, fonts, music, and
   the new sound set.
M3 Single-device slice: one soldier with dual-joystick controls (Joypad, SoldierController,
   SoldierView), Box2D physics (PhysicsManager, MapManager), one weapon (Weapon + AK47),
   Projectile, Explosion, HUD.
M4 Full single-device game: all weapons and items, all 15 maps, Training (polished), Survival,
   Practice vs bots, Quick Play; AI soldiers and drones (SoldierAIController, Enemy,
   HawkDrone, HumanoidDrone, WormDrone).
M5 LAN-PROTOCOL.md, then Wi-Fi/hotspot multiplayer: discovery list, join by IP, QR, lobby
   and host options, Deathmatch, Team Deathmatch, Co-op Survival, Fair mode, quick messages,
   post-match leaderboard + Play again / Return to lobby popup.
M6 Menus and meta: modern smooth UI, first-launch flow, profile, Coins and store, avatar
   customisation, leaderboards, settings, What's new, About/Credits, saves (backup +
   export/import).
M7 Performance and polish: 4 GB RAM phones, quality presets, 120 fps; then the extras (all
   off by default).
M8 Release v1 through GitHub Releases, plus an on-device test checklist (Android 15/16,
   2-6 phones over a hotspot).

## Local setup (my computer)
This session normally runs on my computer, in my local clone of this repository, with
Android Studio installed and Android 15+ phones connected by USB (USB debugging on) or by
wireless debugging.
- At the start, check the toolchain and report what's missing, with exact install steps:
  Java (JDK 17+), Android SDK location (`ANDROID_HOME` / `local.properties`), SDK
  Platform 36, build-tools, NDK and CMake versions (installed via Android Studio's SDK
  Manager), Git, any engine tools, and `adb devices`. Don't install system-wide software or
  change system settings without asking me.
- Build and run loop: build with Gradle from the command line (`./gradlew assembleDebug`),
  install with `adb install -r`, start the app with `adb shell am start`, read crashes with
  `adb logcat` filtered to the app, and check smoothness and memory with
  `adb shell dumpsys gfxinfo` / `meminfo` (the 4 GB RAM target). I can also open the Android
  project in Android Studio and press Run, or use its Profiler.
- Multiplayer tests: install the same build on every phone listed by `adb devices`, turn on
  the hotspot on one phone, and read logs from all of them.
- Use the engine's desktop build (if available) for quick gameplay iteration, but always
  confirm on a phone.
- If no phone is connected, or the session runs in the cloud: keep going with builds and
  unit tests, and give me a short on-device test list for the APK built by GitHub Actions.

## How to work
- Start with the M0 report and wait for my OK.
- Verify every milestone with a Gradle build and unit tests (include tests for the network
  message encoding and the Coins rules), run it on my phone when one is connected, and give
  me a short on-device test list.
- This project spans many sessions. Keep remake/README.md current: milestone status, what
  works, how to build and run, known problems, original behaviour not reproduced yet, and
  the exact next step. A new session must read docs/REMAKE-PROMPT.md and remake/README.md
  and continue from the next unfinished milestone.
- REA (Ghidra/JADX) is optional. The repo already has everything; if you need deeper
  analysis, set it up as in docs/setup/TOOLCHAIN.md (Ghidra needs GHIDRA_HEADLESS_MAXMEM=8G
  and REA_GHIDRA_STARTUP_TIMEOUT_MS=5400000 for this library).
- Small, focused commits on main (the only branch); push after each milestone.

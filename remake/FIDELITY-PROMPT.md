# Fidelity audit prompt (paste into a new Claude Code session)

You are continuing **Mini Militia by Kadiyafali** (package `com.narendra.minimilitia`), an Android 15+ remake in
`remake/` of repository `narendrachampaneri/narendra-rea`, branch **`remake/complete`**
(contains every milestone M1-M20 plus the original-look menus and the mod profile).
Work on a new branch from it, for example `remake/fidelity`. Do not push to `main`, do not open
pull requests unless asked.

## The owner's goal (non-negotiable)
The remake must behave **exactly like the original app the owner plays**:
`Mini.Militia.mod.by.sahadikr.in.apk` (a mod of Mini Militia 2.2.23, package `com.appsomniacs.da3`).
Same game logic, weapons, guns, fire stick, HUD, controls, modes, menus, numbers. No creative
changes, no "improvements". Where the original cannot be recovered, say so and mark it, do not
invent silently. The owner will compare the remake with the old game on a phone.
Sound is optional. Private use only; never publish anything.

## Ground truth: use REA for everything
The original game library is `source/apk-project/lib/armeabi-v7a/libcocos2dcpp.so`
(cocos2d-x 2.2.5, ARM Thumb-2). It has already been reverse engineered with **REA**
(`rea-agents` 6.8.0: Apktool, JADX, Ghidra 12.1.4). Use REA, not memory or guesses:

- Read `docs/PROJECT-MAP.md`, `docs/setup/TOOLCHAIN.md`, `docs/VERIFICATION.md` first.
- Ready-made output, search it first: `source/native/<Class>.cpp` (pseudo-C per class),
  `source/native/_asm/<Class>.s` (assembly; the address is the file offset in the .so),
  `source/native/_fields.tsv` (named member offsets), `source/native/_unnamed/`, `source/native-index/`,
  `source/java-reference/` (JADX Java), `evidence/02-strings/` (strings), `source/apk-project/assets/`
  (maps, atlases, plists).
- When the pseudo-C is unclear, run REA yourself (register the `rea` MCP server as TOOLCHAIN.md
  says, or use `npx rea-agents@6.8.0 ...`): re-decompile a function, disassemble it, list
  cross-references, read float constants and global data (for example `RELOAD_POS`,
  `GRENADE_POS`, `PUNCH_POS`, `ZOOM_POS`), search strings and symbols. Prefer the assembly
  when the decompiler's register handling looks wrong (floats are often shown as hex ints).
- Never modify `source/`, `evidence/` or `tools/` at the repo top level. Do not commit APKs or keys.

## Method: original code side by side with the remake
For each area below do this loop and write the result into a table in
`remake/FIDELITY.md` (columns: area, original function(s) + address, remake file/function,
status `same` / `fixed` / `differs-unrecoverable` / `not-checked`, note):

1. Find the original function(s) with REA (class + address + the pseudo-C and assembly).
2. Find the remake code that implements the same thing (`remake/Source/game`, `Source/app`).
3. Put them side by side. Compare every constant, condition, ordering, timer, unit
   (original coordinates are cocos2d points at 480x320, y up; Chipmunk physics), and edge case.
4. Fix every difference in the remake so it behaves as the original. Keep an address comment
   on each recovered value (the code already does this in `Source/game/Rules.h`).
5. Add or adjust a host test (`remake/tools/run-host-tests.sh`) for what you changed.
6. Mark anything that has no recoverable original (for example the bot AI, whose function could
   not be decompiled) as `differs-unrecoverable` and explain how it was approximated.

Optional but strongest: a differential harness that runs the **original 32-bit function in an
ARM emulator (Unicorn)** next to the remake function with the same inputs and compares the
results; use it for pure functions (damage, spread, timers, collision tables).

## Areas, in this order
1. **Controls**: `Joypad` (move stick, aim/fire stick: positions, radius, dead zone, touch zone,
   fire threshold, auto-aim angle, stick swap), `HUD::onPress*Button` handlers, multi-touch rules.
2. **HUD** (`HUD::init`, `updateStep`, `AmmoMeter`, `HeartMeter`, `Radar`, `ArrowAlert`,
   `PointsLayer`, score and clock): every element's position, size, scale, z-order, text,
   font, show/hide rules; button art and placement (`RELOAD_POS`, `GRENADE_POS`, `PUNCH_POS`,
   `ZOOM_POS`, pick-up and switch areas); pause menu; end-of-match screens.
3. **Weapons**: `Weapon`, `WeaponFactory`, every gun class (AK47 M14 M16 M93BA MP5 UZI DEAGLE
   GDEAGLE MAGNUM SHOTGUN SAWGUN SAW SMAW ROCKET PHASR FLAMETHROWER EMP MACHETE RIOTSHIELD):
   fire interval, clip, ammo, reload, spread (`getRandomFiringAngle`), bullet speed and
   range, damage, falloff, headshots, recoil, muzzle position, zoom levels, burst, melee, sounds.
   `Projectile`, `ProjectileManager`, `Tracer`, `Explosion`, grenades (`FRAGNADE`, `GASNADE`,
   `PROXYNADE`, `ProxyMine`, `GasCloud`), `LaserSight`, `ItemLibrary` upgrade effects.
4. **Soldier**: `SoldierController`, `SoldierHostController`, `SoldierView` (node tree, animation,
   jetpack flames, arm/leg rotation), physics shapes and material, fuel, health regen, crouch,
   melee dash, death and ragdoll, respawn (`SoldierManager`, `PlayerDeath`).
5. **Camera and view**: `Stage::updateView`, zoom scale, view offset, `StageLayer`, effects
   (`EffectsManager`, particle plists, sparks, blood, smoke, shells).
6. **Game modes and maps**: Stage, TrainingStage, SurvivalStage, CoOpStage, MultiplayerStage,
   `MapManager`, spawn rules, scoring (`ScoreKeeper`), timers, kill limits, drones and enemies
   (`HawkDrone`, `HumanoidDrone`, `WormDrone`, `Enemy`, `EnemyManager`).
7. **Menus and flow**: every screen of the original (`MenuLayer`, `MenuScreen`, `SettingsLayer`,
   `ConfigLayer`, `ControlsLayer`, `ControlsPlacementLayer`, `StoreLayer`, `AvatarLayer`, lobby
   and map-select layers): layout, labels, order, transitions, sounds.
8. **Networking (LAN)**: `PeerNetworkBridgeLAN`, `RakNetLAN`, `NetworkMessageDispatcher`,
   lobby messages. The remake uses its own protocol (`remake/LAN-PROTOCOL.md`); note differences.

## The mod's behaviour (already implemented, verify it)
The shipped mod patches (see `source/native/Weapon.cpp`, `SoldierHostController.cpp`, each gun's
`triggerPull`): `Weapon::getReloadTime` returns 0; `Weapon::getRoundsPerFire` returns 2;
`Weapon::isDualWield` and `isDualWieldPrimaryOnly` return 1; `SoldierHostController::hasPower`
returns 1; shots do not consume rounds. They are ON by default in the remake as
`rules::gMod` (`Source/game/Rules.h`). Check the other virtual callers of these functions
(how `roundsPerFire` and dual wield are used in the firing and drawing code) and make the remake
match exactly, including how it looks (two guns drawn, how the two bullets leave the muzzle).
Find out with REA whether the mod changes anything else (compare against the genuine game's
strings and flows; also look for patched constants such as health, speed or costs).

## Decisions already made by the owner (do not re-ask)
- Menus follow the original app's screens (title, main menu, solo, settings, configure,
  controls, rank screen, LAN WIFI, LOCAL GAME, SELECT MAP, lobby with gear panel). No name
  screen at start; one welcome pop-up the first time only.
- Co-op Survival over Wi-Fi earns no Coins; Wi-Fi player cap is chosen by the host (default 12).
- Voice lines stay silent until the owner asks.
- Extras that are not in the original (party options, crosshair, QR join, gamepad, button
  placement, debug log) may stay but must be off or out of the way by default; the main game
  must play exactly like the original with them untouched.

## Rules for the work
- Axmol 2.11.5 is the engine (`remake/tools/fetch-axmol.sh`). Game rules live in engine-free code
  under `remake/Source/{game,core,config,assets,audio,net,save,economy}` with host tests
  (`bash remake/tools/run-host-tests.sh`, takes 2+ minutes, run it in the background); Axmol code
  under `remake/Source/app` is checked with `bash remake/tools/check-app-syntax.sh`.
  Run both before every push. CI (`remake-build.yml`) builds the debug APK; the owner installs it.
- Commit small, with the trailer lines the session asks for; push to your branch; watch CI with the
  GitHub tools. A failing APK build can hide behind passing host tests (it happened once: an
  accidentally empty source file) so read the debug-apk job result.
- The owner tests on a real phone only. Never claim "100% the same"; report the table: how many
  items are `same`, `fixed`, `differs-unrecoverable`, `not-checked`.
- Keep `remake/README.md` and `remake/FIDELITY.md` current. When you finish a chunk, tell the owner
  what changed in plain words and give the artifact link of the green run
  (`MiniMilitia-debug-apk`; uninstall earlier test builds first, their signing keys differ).
- Ask the owner for recordings of the original and of the remake side by side when a visual or
  feel question cannot be settled from the code (HUD positions, stick feel, animation timing).
  Videos from the owner's phone are rotated 90 degrees; rotate them with ffmpeg before viewing.

## First steps
1. Read `remake/README.md`, `remake/Source/game/Rules.h`, `docs/PROJECT-MAP.md`.
2. Create `remake/FIDELITY.md` with the area list above and start with area 1 (controls) and
   area 2 (HUD), since the owner named the fire stick and HUD first.
3. After each area: tests, type-check, push, short report with the table.

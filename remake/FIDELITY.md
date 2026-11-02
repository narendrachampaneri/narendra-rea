# Fidelity table

Original: `libcocos2dcpp.so` of Mini Militia 2.2.23 (see `docs/PROJECT-MAP.md`). Status values:
`same`, `fixed`, `differs-unrecoverable`, `not-checked`. Addresses are file offsets (asm) or Ghidra
addresses (pseudo-C, +0x10000). Nothing here is a claim of "100% the same"; the owner tests on a phone.

## Area 1: Controls
| Area | Original | Remake | Status | Note |
|---|---|---|---|---|
| Pad centres, radius 40, touch zone 90 | `Joypad::init` 0x35d4d4, `beginTouch` 0x35ded8, `AppDelegate::initializePlatformStartupVariables` | `Joypad.cpp`, `Rules.h` | same | LEFT (75,75), RIGHT (W-75,75), scale 1.0 on phones |
| Fire threshold (touch beyond radius fires) | `beginTouch`, `touchMoveHandler` 0x35e1b0 | `Joypad::touchBegan/touchMoved` | same | strict `>` in move, `radius < dist` at begin |
| Knob follow and release (0.2 centre + 0.8 knob) | `updateStep` 0x35db58 | `Joypad::updateStep` | same | |
| Aim angle | `getFireAngle` / `FUN_0035c778` | `toCocosAngle` | not-checked | formula not re-derived this pass |
| Stick swap `InputSwap` | `updateStep` | `Joypad::setSwapped` | same | |
| `InputMoveType`, `InputMoveInvert`, `InputAimInvert`, `disableMovement/Firing` | `Joypad::init`, `getOffset` | none | not-checked | default 0; not exposed in the remake menus |
| One finger on both pads | `touchMoveHandler` | `Joypad::touchMoved` | differs-unrecoverable | pad zones (90) never overlap on 480 wide, no visible effect |
| HUD button default positions | `AppDelegate` 0x2e8468 | `HudLayout.h`, `Rules.h` | fixed | grenade was (W-120,70), now (185,35); punch (W-185,35), reload (W-34,H-34), zoom (34,H-34) |
| `HUD::onPress*Button` handlers, multi-touch rules | `HUD.cpp` | `GameScene.cpp` | not-checked | |
| Pick-up and mine buttons | not in the phone defaults | `GameScene.cpp` | not-checked | remake extras; pick-up placement is NEW |

## Area 2: HUD
Method: `tools/fidelity/armtrace.py` runs a single original function (HUD::init, HeartMeter::init,
AmmoMeter::init, AmmoMeter::setWeaponState) in the Unicorn ARM emulator and prints every call with its
arguments, so the float constants the decompiler loses become visible. Screen 480x320, y up.

| Area | Original | Remake | Status | Note |
|---|---|---|---|---|
| Health meter position and art | `HeartMeter::init` 0x34263c, `HUD::init` 0x34a29c | `GameScene::buildHud` | fixed | healthBar.png centred at (W/2-100, H-25); was a made-up frame at the top edge |
| Health and jetpack bars | `HeartMeter::init`, `setMeters` 0x352930 | `GameScene::updateHud` | fixed | bar.png sprites, 6 points tall, width = percent * 0.73, colours (200,0,200) and (0,0,255), on top of the frame; were green/red/blue drawn rectangles behind it |
| Ammo meter position and art | `AmmoMeter::init` 0x2e3eb0 | `buildHud` | fixed | ammoBar.png centred at (W/2+110, H-25) |
| Ammo meter contents | `AmmoMeter::init`, `updateStep` 0x2f4630, `setWeaponState` 0x2f43c8 | `buildHud`, `updateHud` | fixed | weapon icon scale 0.6 at (-8,1), grenade icon at (54,4), clip and ammo as 3-digit ammoText_new.png atlas at (-35,-10) and (22,-10), state text RELOADING / NO AMMO / LOW AMMO (white, red, yellow) blinking 0.25 s of every 0.4 s; "000" when dead, empty for melee; was "clip / ammo" in a TTF label |
| Menu tap area | `HUD::init` item at the health meter (wepSwitchArea 100x33) | `buttonsAt` | fixed | rectangle 100x33 on the health meter; was a circle of 18 points near the right edge |
| Weapon switch tap area | `HUD::init` wepSwitchArea at (W/2+95, H-25) | `buttonsAt` | fixed | rectangle 100x33; was the ammo frame corner |
| Grenade switch area (nadeSwitchArea 40x33 at (W/2+165, H-25)) and grenade types | `HUD::onGrenadeSwitch` 0x34c5d4 | none | differs-unrecoverable | the remake has separate grenade and mine buttons instead of grenade types; decision for the owner |
| Round buttons (melee, grenade, reload, zoom) | `AppDelegate` 0x2e8468, `HUD::init` | `HudLayout.h` | same | positions fixed in area 1, scale 0.8, order of the HUD children not compared |
| Reload and zoom button visibility rules | `HUD::updateStep` 0x34d844 | `GameScene` | not-checked | original: reload shown only while the clip is not full and the weapon is not reloading; zoom shown while a soldier exists; grenade shown while grenades > 0 |
| Clock "00:00" at (240, 307), scale 0.45 | `HUD::init`, `updateClock` 0x34d15c | none | not-checked | |
| "RESPAWNING: %d" at (240, 55), scale 0.55 | `HUD::updateStep` | `updateModeHud` | not-checked | the remake shows "RESPAWNING..." as a 26 pt banner |
| Message line (TTF Arial-BoldMT 13) at (240, 245) | `HUD::addMessage` 0x34d2c0 | `_status`, `_banner` | not-checked | |
| Radar, ArrowAlert, PointsLayer | `Radar::init` | none | not-checked | |
| Pick-up button (wepChangeBtn, dualBtn), shown by `weaponProxyStart` | `HUD::weaponProxyStart` 0x34ca58 | `_pickUp` | not-checked | the remake places it by its own rule (NEW) |
| Extras not in the original HUD | n/a | KILLS/DEATHS line, status line, hint line, proximity-mine button, quick-chat button | differs-unrecoverable | not in the original HUD; left in place, the owner decides whether to hide them |
| Pause menu, end-of-match screens | `MenuScreen`, `ScoreScreen` | `setPaused`, `showEnd` | not-checked | |

## Areas 3 to 8
All `not-checked` so far: weapons, soldier, camera and effects, modes and maps, menus and flow, LAN networking.

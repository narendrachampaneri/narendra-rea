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

## Areas 2 to 8
All `not-checked` so far: HUD (HUD::init, AmmoMeter, HeartMeter, Radar, ArrowAlert, PointsLayer), weapons,
soldier, camera and effects, modes and maps, menus and flow, LAN networking.

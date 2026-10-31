# Original app: defaults and built-in content

Everything the original app (Mini Militia 2.2.23, package `com.appsomniacs.da3`) contains or
assumes on a **first launch with no saved data**: saved-data keys and defaults, settings,
controls, the starting player, weapons, store, game modes, enemies, scoring and ranks, maps,
screens and their text, audio and networking. It is the checklist for the remake: if a
feature or value is not here, the original did not have it.

This file is **generated**: the tables come from the decompiled code and from data tables
inside `libcocos2dcpp.so` by `tools/analysis/render-defaults-doc.mjs`, from the data files in
`docs/reference/data/`. Edit `ORIGINAL-DEFAULTS.template.md`, not this file's tables.

**Confidence tags**

| Tag | Meaning |
|---|---|
| ✔ | Read directly from the pseudo-C, the assembly, or a data table in the binary. |
| ◐ | Inferred from how the code uses a value (reasoning is given). Check it when you rely on it. |
| ✖ | Not determined from the static analysis. |

The remake owner's decisions (`docs/REMAKE-PROMPT.md`) are marked **→ Remake** where they differ
from the original.

---

## 0. Corrections to earlier notes

These were found while writing this document. Earlier session notes and the first version of
`docs/REMAKE-PROMPT.md` contain the old, wrong statements.

| Earlier statement | What the code shows |
|---|---|
| Physics is Box2D. | ✔ The game logic uses **Chipmunk**: `cpSpaceNew`, `cpBodyNew`, `cpPolyShapeNew`, `cpCircleShapeNew`, `cpSegmentShapeNew`, `cpSpaceAddShape`, `cpSpaceSegmentQueryFirst`, collision handlers (`PhysicsManager::init`). No game class calls a Box2D (`b2*`) function; the `b2*` code in the library is unused engine code. |
| `gameType` 3 = Team Deathmatch. | ✔ `gameType` values are **0 Training, 1 Survival, 2 Co-op (online), 3 Deathmatch over LAN, 4 Deathmatch (online), 5 Co-op over LAN**. Teams are a *toggle inside Deathmatch* (`MapSelectLayer::onTeams`, "TEAM WINS!"), not a separate mode. See §9. |
| Matches are untimed (some earlier notes). | ✔ Deathmatch has a **countdown clock of 400 s (6:40)**: `HUD` initialises `+0x1a0 = 400`, and when the remaining time reaches 0 `MultiplayerStage::updateStep` calls `ScoreScreen::endGame`. No kill or score limit exists in the code. See §9.4. |
| Ranks come from the client. | ✔ The 21 rank names and EXP thresholds are in the client (§11). |

---

## 1. App identity

| Item | Value |
|---|---|
| Package (this mod build) | `com.appsomniacs.da3` (original package `com.appsomniacs.da2`) ✔ |
| Version | 2.2.23, versionCode 100 ✔ |
| Launcher label (this mod) | "Mini Militia mod by sahadikr.in" (resource `app_name` is "Mini Militia") ✔ |
| Orientation | `sensorLandscape` ✔ |
| Engine | cocos2d-x 2.2.5 (C++), physics **Chipmunk**, networking RakNet, audio Cricket Audio ✔ |
| Native code | `armeabi-v7a` only (32-bit ARM, Thumb-2) ✔ |
| Min / target SDK | 25 / 25 ✔ |
| Product IDs (Google Play) | `com.chadtowns.da2.propack` (Pro Pack), `com.chadtowns.da2.battlepack1`…`battlepack4` (Battle Point packs: 3000, 3100, 3200, 3300 BP labels) ✔; other IDs present: `com.chadtowns.dax`, `com.chadtowns.daxfree`, `com.appsomniacs.cc`, `com.appsomniacs.zrr` (cross-promotion of other games) ✔ |

---

## 2. First launch, step by step

| Step | What happens | Source |
|---|---|---|
| 1 | `AppDelegate::applicationDidFinishLaunching` loads the saved flags in §3 with their defaults, chooses the asset set (see §3.5), and runs the platform start-up. | ✔ `AppDelegate.cpp` |
| 2 | **Splash screen**: background `title_ret_new.png`, label **"LOADING"**, then **"TOUCH    START"** (the label has four spaces). Sound and Music flags are read (both default **on**). Menu music `presMix.mp3` starts at volume **0.5**, looping. | ✔ `SplashLayer::init` |
| 3 | Touch → fade (0.2 s) to the **main menu** (`MenuLayer`). | ✔ `SplashLayer::onProceed` |
| 4 | Main menu start-up: if the saved `PlayerName` is empty or longer than 16 characters it is set to **"NOOBIE"**. `PlayerSkin` outside the allowed range is reset to **0**. Online mode is switched off (`setUseHostedServer(false)`, connection type 0). | ✔ `MenuLayer::init` |
| 5 | Nothing asks for a name, an account, a tutorial or a language. The Terms of Service screen is shown **only** when the player starts an online game (`TOS_ACCEPTED` false), then `TOSAccepted` is stored. | ✔ `MenuLayer`, `MultiplayerGameLayer`, `TOSLayer` |

No other first-run state exists: no welcome flow, no default coins other than 0 (§8), no
default rank other than PRIVATE with 0 EXP (§11).

---

## 3. Saved data (`CCUserDefault`)

### 3.1 Keys and defaults

Stored with cocos2d-x `CCUserDefault` (an XML preferences file in app storage). All keys the
code reads, with the default used when the key is missing ✔.

| Key | Type | Default | Meaning |
|---|---|---|---|
| `Sound` | bool | **true** | Sound effects on (Settings → SOUND) |
| `Music` | bool | **true** | Music on (Settings → MUSIC) |
| `Blood` | bool | **true** | Blood effects on (Settings → BLOOD) |
| `RetinaMode` | bool | **true** | "HI-RES GFX": allow the higher-resolution asset sets |
| `ViewMode` | bool | **false** | "2X VIEW": zoomed-in camera (Settings → 2X VIEW) |
| `TOSAccepted` | bool | **false** | Terms of Service accepted (online only) |
| `PlayerName` | string | *(unset)* → **"NOOBIE"** | Display name, max 16 characters |
| `PlayerSkin` | int | **0** | Selected preset skin (0 … skinCount−1, §6.2) |
| `avatarProp0` … `avatarProp18` | string | *(unset → index 0 of each part)* | The 19 custom-avatar part indexes as text (§6.3) |
| `InputSwap` | int | **0** | 1 = swap which stick moves and which aims |
| `InputMoveInvert` | int | **0** | Invert option for the movement stick: 0 NONE, 1, 2, 3 "X, Y" ✔ (1 and 2 are the single-axis options ◐) |
| `InputAimInvert` | int | **0** | Same for the aiming stick |
| `InputMoveType`, `InputAimType` | int | **0** | Read by `Joypad`; no screen changes them ✔ |
| `LeftPadX`, `LeftPadY`, `RightPadX`, `RightPadY`, `GrenadePosX/Y`, `PunchPosX/Y`, `ZoomPosX/Y`, `ReloadPosX/Y` | int | computed (§4.3) | Saved on-screen control positions |
| `FirePadScl`, `MovePadScl`, `GrenadeScl`, `PunchScl`, `ZoomScl`, `ReloadScl` | float | 1.0 / 1.0 / 0.8 / 0.8 / 0.8 / 0.8 (phone, §4.3) | Control sizes |
| `ChatMask` | int | **0** | Chat filter: 0 NONE, 1 SEMI, 2 FULL ✔ (cycles 0→1→2→0) |
| `BEST` | int | **0** | Best Survival score (kills) |
| `BESTCOOP` | int | **0** | Best Co-op Survival score |
| `QuitCount` | int | **0** | Early-quit counter for online matches (§12.3) |
| `FlashNews` | int | **0** | Last news item seen (online) |
| `AdCount2`, `AdCount3`, `AdCount4` | int | **0** | Cross-promotion ad impression counters |
| `CachedPurchasedItems` | string | *(unset)* | Local cache of purchased store items (§8.3) |
| `ClaimedIdentityClear`, `DeviceIdentityClear` | string | *(unset)* | Online identity data |
| per-product purchase flags (key = product id) | bool | **false** | e.g. Pro Pack owned (`IapManager`) ◐ |

### 3.2 What is *not* saved

✔ Battle Points, EXP, rank, kills and deaths totals, achievements and leaderboards are **not**
stored on the device. They come from the online account service (§11). A first-run player
therefore has **0 BP, 0 EXP, rank PRIVATE**. Only `BEST` and `BESTCOOP` are local.

### 3.3 Settings → SOUND / MUSIC / BLOOD

On/off toggles that write `Sound`, `Music`, `Blood` immediately (`ConfigLayer::onSound`,
`onMusic`, `onBlood`). Sound and music each have an internal volume of **1.0** ✔
(`Sound::Sound`).

### 3.4 Settings screen map

| Screen | Entries (original text) | Source |
|---|---|---|
| SETTINGS (`SettingsLayer`) | AVATAR, CONFIGURE, CONTROLS, STORE, BACK | ✔ |
| CONFIGURE (`ConfigLayer`) | SOUND, MUSIC, BLOOD, HI-RES GFX, 2X VIEW, "ADS?", video recording buttons (disabled: "Kamcord has been discontinued."), BACK | ✔ |
| CONTROLS (`ControlsLayer`) | swap sticks, "MOVEMENT" / "AIMING" labels, INVERT: NONE / X / Y / "X, Y" per stick (previous / next), PLACEMENT, DONE | ✔ |

### 3.5 Asset-resolution selection

✔ Three asset sets ship: `sd`, `hd`, `hdr` (`assets/sd`, `assets/hd`, `assets/hdr`; tile size
64 / 128 / 256 px ◐ by the TMX `tilewidth`). At start-up the app compares the screen size with two
thresholds and, if `RetinaMode` is on, picks `hdr` for large screens, `hd` for medium, else `sd`,
and sets the content-scale factor accordingly. ✖ The threshold values are set at run time
(`initializePlatformStartupVariables`) and were not recovered.

---

## 4. Controls

### 4.1 Layout

Two virtual sticks plus four buttons, all repositionable (CONTROLS → PLACEMENT) ✔:

| Control | Sprite | Purpose |
|---|---|---|
| Left pad | `movePad.png` / `moveStick.png` | Move; push up to jump; hold jump for rocket-boots thrust |
| Right pad | `firePad.png` / `fireStick.png` | Aim; pull the stick outward to fire |
| Grenade button | | Throw grenade; the grenade type can be switched |
| Punch (melee) button | | Melee attack |
| Zoom button | | Zoom the sniper/zoomable weapon |
| Reload button | | Reload |

HUD buttons also exist for: pick up weapon, pick up as dual weapon, switch weapon (tap the ammo
display), switch grenade, score board, chat (`HUD.cpp` handlers `onPress…Button`).

### 4.2 Scales ✔

Phone: fire pad 1.0, move pad 1.0, grenade 0.8, punch 0.8, zoom 0.8, reload 0.8.
Tablet with hi-res on: fire pad 0.7, move pad 0.7, others 0.6.

### 4.3 Default positions ✔

Decoded from the float constants in `AppDelegate::initializePlatformStartupVariables`
(assembly). `W`, `H` = screen width and height in the game's design units (✖ the design size
itself is set at run time).

| Control | Phone (x, y) | Tablet with hi-res (x, y) |
|---|---|---|
| Right pad (aim/fire) | (W − 75, 75) | (W − 60, 60) |
| Left pad (move) | (75, 75) | (60, 60) |
| Grenade | (185, 35) | (125, 30) |
| Punch (melee) | (W − 185, 35) | (W − 125, 30) |
| Reload | (W − 34, H − 34) | (W − 30, 125) |
| Zoom | (34, H − 34) | (30, 125) |

Origin is the bottom-left corner.

---

## 5. Display and camera

| Item | Value |
|---|---|
| Player sprite scale | **0.4** (`Stage::init`, `playerScale`) ✔ |
| Camera zoom follows the held weapon's zoom scale, smoothed 70 % old / 30 % new each frame; multiplied by the screen-aspect and view factors | ✔ `SoldierHostController::getViewScale` |
| Zoom levels per weapon | Each zoomable weapon keeps a list of zoom scales and labels (e.g. "1X"); default zoom index 0, scale 1.0 ✔ |
| Background art | `bg_new.png`, `bgSnow_new.png`, `bgDesert_new.png`, `bgMoon_new.png` ✔ |
| Frame rate | ✖ not read (cocos2d default animation interval) |

---

## 6. The player on first launch

### 6.1 Name

"NOOBIE" (also the lobby name shown as "NOOBIE's Game" when hosting without a name) ✔. Max 16
characters. Editable in AVATAR (`AvatarLayer`).

### 6.2 Preset skins

✔ `skinCountMax` starts at **17**; the number actually selectable (`skinCount`) is:

| Condition | Skins available |
|---|---|
| No Pro Pack | **1** |
| Pro Pack owned | **13** |
| + each installed partner game (Crash Cart, Zombie Road Rage, and one more partner) | **+2** each |

Body sprites `body1.png`…`body17.png` with matching `arm1…arm17.png` exist.
**→ Remake:** no partner-game bonuses (cross-promotion removed).

### 6.3 Custom avatar (Customize)

✔ 19 properties, each stored as `avatarProp0…18` (an index into the part's list):

| Part | Options | Notes |
|---|---|---|
| Head | 3 | |
| Body | 2 | |
| Eyes | 17 | |
| Eyebrows | 13 | |
| Mouth | 18 | |
| Hair | 34 | |
| Hair colour | 9 | |
| Back hair | 8 | |
| Beard | 8 | |
| Moustache | 5 | |
| Eye-ware | 6 | |
| Shirt | 11 | |
| Vest | 7 | |
| Legs | 11 | |
| Feet | 5 | |
| Hands | 5 | |
| Burn / damage look | 9 | |
| Skin colour | 4 | |
| Hat | **14**, or **19** when `maskpack1` is owned | |

Custom body types need the Pro Pack ("Upgrade now for more body types!").
The Customize screen has SAVE, BACK and a "Pro Pack Required" prompt (NOT NOW / VIEW UPGRADE).
Player-name and avatar are rendered into head, body, arm and leg textures by `AvatarRenderer`.

### 6.4 Team colours (Deathmatch with teams)

✔ `teamColorCount` is **7**; six RGB values are defined at start-up (the seventh slot's
colour was not found ✖):

{{table:teamColors}}

### 6.5 Starting soldier (every spawn) ✔

`SoldierManager::spawnPlayer` gives, on a fresh life:

1. the **backup starter weapon**: ammo type **3 = Desert Eagle** ◐ (`getBackupStarterWeapon` = 3; the **GOLDEN EAGLE** upgrade replaces it with type 18);
2. one **random start weapon**: **Magnum (4) or Uzi (5)** (`createRandomStartWeapon`, pool {4, 5});
3. **3 frag grenades** (type 2, count 3);
4. if the **GAS GRENADE** upgrade is owned: **1 gas grenade** (type 20, count 1) ◐ (`getBackupNadeWeapon`, default −1 = none).

Health: **MaxPower 100**, current power 100. Respawn delay **9.0 s** (§9). The soldier's
initial field values (`SoldierHostController::init`), unlabelled ones kept so nothing is lost:

{{table:soldierInit}}

Spawn position: one of the map's `sp_p_*` points, chosen by `getRandomSafeSpawnPoint` (each point is rated by `scoreSpawnPoint`; the exact rating rule was not decoded ✖);
if a map has none, a random x in 1600 ± 1500 ✔.

---

## 7. Weapons

### 7.1 IDs, names and flags

"Ammo type" is the numeric ID used everywhere (`WeaponFactory::createWeaponFromAmmoType`).
Maps spawn items by the lowercase token ✔. Pro Pack flags come from
`WeaponFactory::isProPackWeapon`, the off-hand flag from `isDualWeapon` (weapons that can be
carried in the second hand / dual slot ◐). ID 22 is unused. IDs 14 and 15 both create a
power-up.

{{table:weapons}}

Pools ✔ (`WeaponFactory::init`, order of creation; ◐ for which array each belongs to):

| Pool | Ammo types |
|---|---|
| All random weapons | 1 2 3 4 6 5 7 8 9 10 11 16 17 18 19 25 20 21 23 24 |
| Random primary weapons | 3 4 5 6 7 8 9 10 11 (Deagle … SMAW) |
| Random start weapons | 4 5 (Magnum, Uzi) |
| Random secondary weapons | 3 (Desert Eagle) |

Upgrade groups ✔ (`WeaponFactory`): *clip handguns* = Uzi, Desert Eagle, Golden Eagle (5, 3, 18);
*reload handguns* = Desert Eagle, Magnum, Uzi, Golden Eagle (3–5, 18); *clip rifles* = AK47, M16, M14 (7, 8, 16);
*laser sight* = types 3–9 and 18.

### 7.2 Starting stats

Fields set in each class's `init()` (field meanings established from `Weapon::init`,
`Weapon::triggerPull`, `Weapon::getRandomFiringAngle` and the assembly of the `Weapon::get*`
functions). "—" = the class does not set that field. Projectile weapons (SMAW, EMP) store
placeholder damage and range; their projectile classes apply the real damage. Grenades
and power-ups use a separate count mechanism (3 frag grenades per spawn, §6.5).

{{table:weaponStats}}

Formulas ✔:

* Clip size shown = `clip_size + ClipCapacityMod` (the clip-extender upgrades add to the modifier).
* Ammo is added with a cap at "Max ammo" (`Weapon::addAmmo`), and plays sound 17 when positive.
* Reload time = `reload_time_s − ClipReloadMod` (the FASTER RELOAD upgrades add to the modifier).
* Shot spread = `spread × (2 × (r − 0.5)) × accuracy_mod`, where `r` is a deterministic pseudo-random in [0, 1) generated by `x = (x × 41 + 37) mod 100` (`Weapon::getRandomFiringAngle`).
* Default bullet speed (when a class does not set one) = **1300** (`0x514`); weight factor default **1.0**.
* A weapon fires when its timer exceeds `fire_interval_s`, has ammo in the clip, and is not reloading; an empty clip with reserve ammo starts a reload automatically.

### 7.3 Dual wield, melee, grenades

* Pro Pack required to pick up a **second copy** as a dual weapon: message "Duals Require Pro Pack".
* Every firearm has a melee strike (`melee_damage`, `melee_length` columns). The Machete and the Riot shield are melee items.
* Grenade types: frag (2), gas (20), proximity (23); the grenade button throws the selected one, and a switch button cycles them.
* The weapon-weight factor of the carried weapons slows the soldier (`getWeaponWeightFactor`).

---

## 8. Store (original)

### 8.1 Currency

**Battle Points (BP)**. A new player has **0 BP**. BP are earned by playing online/LAN games
(§11) and can be bought with real money in four packs (labels "3000 BP" … "3300 BP", product IDs
`battlepack1`…`4`; prices in money ✖ not in the client).
**→ Remake:** Battle Points are renamed **Coins**; starting balance **100**; no purchase packs.

### 8.2 Items

14 items in `ItemLibrary` ✔. Prices in BP (= Coins in the remake). "Original text" is the exact description.

{{table:items}}

The Pro Pack itself is **not** an item in this table: it is a separate real-money purchase
(`com.chadtowns.da2.propack`) handled by `PurchaseLayer`; **→ Remake: 3,000 Coins**. It unlocks:
Pro weapons (§7.1: Machete, M93BA, SMAW, PHASR, Golden Eagle, Flamethrower, EMP, Saw gun),
dual weapons, 13 skins instead of 1, custom body types, and Pro avatar items (the MASK PACK 1 item
itself needs the Pro Pack). The original text also said the Pro Pack "removes post game popup
ads, but lobby banner ads will remain to fund online servers" (**→ Remake:** no ads at all).

### 8.3 Store behaviour

| Screen / action | Behaviour ✔ |
|---|---|
| STORE (`StoreLayer`) | Shows "BATTLE POINTS: n", an item list with "COST: n", buttons **EQUIP**, **SELL**, **BUY POINTS**, **DONE**. States: "PURCHASED", "MORE POINTS NEEDED", "Pro Pack Required" ("This item is for pro pack players only."). |
| Buying / selling | `ItemPurchase::purchaseItem` and `sellItem`; the owned list is cached in `CachedPurchasedItems` and rebuilt from the online account (`rebuildAndCachePurchases`). |
| PRO PACK / points screens | `PointsLayer`, `PurchaseLayer`: "PURCHASE", "RESTORE", "PURCHASING", "PROCESSING", "STAND BY", "THANK YOU", "Internet Connection Failed". |
| Upgrade effects | Applied when a match starts (`ItemLibrary::applyItems`); descriptions in §8.2. |

---

## 9. Game modes

| `gameType` | Mode | Scene | Players | Lives | Notes |
|---|---|---|---|---|---|
| 0 | **Training** | `TrainingStage` | 1 + Sarge | 1 | Tutorial with voiced lines (§9.1) |
| 1 | **Survival** | `SurvivalStage` | 1 | **3** | Waves of robots (§9.2) |
| 2 | Co-op Survival (online) | `CoOpStage` | **2** (`GameTypeLayer`) | **4** | Removed in the remake |
| 3 | **Deathmatch over LAN / Wi-Fi** | `MultiplayerStage` | host chooses (§9.5) | unlimited | Teams optional; 400 s clock |
| 4 | Deathmatch (online) | `MultiplayerStage` | **4** (`GameTypeLayer`) | unlimited | 400 s clock; set when an online match starts from the menu or an invite |
| 5 | **Co-op Survival over LAN / Wi-Fi** | `CoOpStage` | **2** (`FindGameLayer`) | **4** | |

✔ Value mapping from `StageLayer`, `MultiplayerGameLayer` (LAN switch: 4→3 and 2→5) and
`LocalGameLayer` (0, 1). Unlimited respawn is the `SoldierManager` default (lives −1, flag set);
Survival and Co-op override it.

### Menu path to each mode

* SOLO PLAY → **TRAINING**, **SURVIVAL** (`LocalGameLayer`).
* MULTIPLAYER → **LAN WIFI** (local), ONLINE, BLUETOOTH ("Local play over Bluetooth is still under construction." ✔ not implemented).
* LAN WIFI → **HOST** / **JOIN**, with "LOCAL GAME" (Deathmatch) and "LOCAL COOP"; "FOUND n GAME(S):" list ✔ (`FindGameLayer`).
* Host chooses **map** (SELECT MAP with ◀ ▶), **number of players** (§9.5), **TEAMS** toggle, then **PLAY**. The game is named "<PlayerName>'s Game".
* QUICK PLAY → online auto-match (removed).

### 9.1 Training (`TrainingStage`)

Map `training_new.tmx` (30×20 tiles). Sarge (peer id "S") talks the player through: aiming, jumping, thrust, picking up weapons, switching weapons, zooming on targets, reloading, grenades, melee, and a final fight against **Mecha-Doodle**. The 44 spoken/subtitled lines:

{{include:training-dialogue}}

Completion shows "TRAINING COMPLETE".

### 9.2 Survival (`SurvivalStage`)

✔ from `SurvivalStage::playRound`, `spawnEnemy`, `resetSpawnTime`, `setupStage`:

* Map `survival_new.tmx`, **1 player spawn**.
* **3 lives**; respawn after **9 s** while lives remain; the run ends when lives reach 0 (`MenuScreen::endSurvival`: "GAME OVER", "SCORE: n", "KILLS: n", "NEW BEST: n", RETRY).
* Enemy spawn interval starts at **8.0 s**; every **20 s** of play it shrinks by **0.5 s**, never below **1.0 s**.
* Each spawn picks uniformly between the three enemy types (Hawk, Humanoid, Worm drones) and places it at a random x in [250, 2750], near the top, if that type's pool is not empty.
* Every **60 s** a **frag-grenade pickup** appears next to the player.
* The player's best score is saved in `BEST`.

### 9.3 Co-op Survival (`CoOpStage`)

✔ **4 lives** shared by the team, initial spawn interval **8.0 s**; the host simulates enemies and sends their positions (`sendEnemyPositionData`); the score is saved in `BESTCOOP`.
✖ Its wave progression after the first spawn was not decoded line by line (same structure as Survival).

### 9.4 Deathmatch (LAN)

* Free-for-all, or **teams** when TEAMS is on ("%s TEAM WINS!" / "%s WINS!" / "TIE GAME").
* Unlimited lives; **9 s** respawn countdown ("RESPAWNING: n").
* ✔ **Match clock: a countdown from 400 s (6:40)**, shown as `MM:SS` (`HUD::updateClock`: remaining = max(400 − elapsed, 0)). At 0 the stage calls `ScoreScreen::endGame`, which shows the final scores and then the post-game screen. No kill or score limit exists in the code (searched `MultiplayerStage`, `ScoreKeeper`, `ScoreScreen`).
* **→ Remake:** the host sets the time limit, up to **8 minutes**; no kill limit.
* In-lobby: players are **READY / NOT READY**, "AVAILABLE PLAYERS: n", the host presses START, then "GAME STARTS IN: n" counts down ✔ (`PlayerLobby`).
* Lobby options: **CHAT** filter (NONE / SEMI / FULL), **TEAM** colour (prev / next), **GAME STATS**.

### 9.5 Player count (host setting)

✔ `MapSelectLayer`: the host's player counter is initialised to **12** (`+0x12c = 0xc`) and passed to `NetworkManager::setMaxPlayers` when PLAY is pressed. Pressing **−** lowers it by 1 down to a minimum of **2**; pressing **+** raises it by 1 but is **clamped to 4**, so the first press of + drops 12 to 4. A host who does not touch the counter therefore hosts up to **12** players. Online Deathmatch is fixed at 4, Co-op at 2 (`GameTypeLayer`, `FindGameLayer`). **→ Remake:** host-chosen limit, default 12.

---

## 10. Enemies (Survival and Co-op)

✔ `EnemyManager::initEnemies`: a pool of **3 Worm drones, 5 Hawk drones and 5 Humanoid drones** is created up front.

| Type | Sprite | Health | Other |
|---|---|---|---|
| Hawk drone | `hawkDrone.png`, `flame.png`, `Smoke.plist` | **50** (`+0x1ac`) | flying drone; `lookForTarget` aims at the host player ✔; "fires" ◐ |
| Worm drone | `wormDrone.png`, `wormDroneSaw.png`, `wormDroneT1/T2.png`, `Path.plist` | **75** (`+0x1a8`) | ground saw drone |
| Humanoid drone | a `SoldierView` + `SoldierAIController` | the soldier default **100** ◐ | mass 1.75; same weapons logic as soldiers |

Survival sets field `+0x15c = 2` on every spawned enemy (probably the team id ◐). Points per kill are posted as a `PlayerScored` notification (`EnemyManager::awardPoints`); ✖ the per-type point values are virtual-method results not decoded.
Hawk spawn health, speeds and per-type damage live in the AI classes `HawkDrone`, `WormDrone`, `HumanoidDrone`, `SoldierAIController` (pseudo-C in `source/native/`; `SoldierAIController::updateStep` is only available as assembly).

---

## 11. Scoring, EXP, Battle Points and ranks

### 11.1 After a LAN/online Deathmatch (`PostGameScreen::playerCompletedGame`) ✔

```
net_kills  = max(kills − suicides, 0)
mvp_bonus  = 5 if the player is the match MVP, else 0
EXP earned = mvp_bonus + net_kills + 10          ("+10 GAME FINISHED")
BP earned  = net_kills                            ("BP EARNED: n")
```

Shown lines: "+5 MVP AWARD", "+10 GAME FINISHED", "+n KILL BONUS" (shows raw kills), "−n SUICIDES",
"EXP EARNED: n", "BP EARNED: n", "TOTAL EXP: n", "TOTAL BP: n", and "PROMOTED" / "DEMOTED" when the rank changes.
Quitting early adds a penalty (§12.3).
**→ Remake:** Coins = **10 per kill, Wi-Fi Deathmatch only**; ranks and EXP removed.

### 11.2 Ranks ✔

`calcPlayerExp` → rank index by the table below (`FUN_003be3e4` / `FUN_003be434`; names from the rank-name function); a player is in rank *i* when `EXP ≥ exp_required[i]` and `EXP < exp_required[i+1]`.
New player: **PRIVATE**, 0 EXP.

{{table:ranks}}

### 11.3 Avatar screen statistics

"RANK PROGRESS", "EXP: n", "KILLS: n", "DEATHS: n", "SKILL: n", plus AWARDS (achievements, Google Play). Needs sign-in ("Login Required").

### 11.4 In-match scoreboard

`ScoreKeeper` tracks kills, deaths and suicides per player; the score screen lists them ("FINAL GAME SCORES"). Weapon damage credit uses `SoldierHostController::wasLastKillValid`.

---

## 12. Online and account features (all removed in the remake)

Listed so nothing is lost when they are removed.

### 12.1 Services ✔

* Google Play Games (sign-in, leaderboards "TOP SCORES", "ALL TIME"/"DAILY", achievements "AWARDS", real-time rooms, cloud save).
* Amazon GameCircle, Amazon login, Amazon IAP and ads.
* Game web service `https://appsomniacs.azurewebsites.net` (session, config, purchase validation), NAT/lobby server `94.198.81.195:61111`.
* News ticker (`FlashNews`), in-app Help (e-mail support), About, Credits, Terms of Service.
* Ads: MoPub banners and interstitials, AppLovin, Amazon Ads, and ad-driven features ("QUIT PENALTY AD VIEWED", cross-promotion ad counters).
* Analytics and crash reporting: Google Analytics, Firebase, Crashlytics, New Relic.

### 12.2 Chat

`CHAT` in the lobby and match; filter levels NONE (default) / SEMI / FULL; messages are sent by `NetworkMessageDispatcher` ("InstantMessage").

### 12.3 Quit penalty

`QuitCount` is set to 1 when a player leaves an online match early; the next online Deathmatch shows "Quiting Penalty" until an ad is watched ("Watch an Ad to quit the match early?"). **→ Remake:** none.

---

## 13. Maps

Tiled (`.tmx`) maps in three resolutions. Tile layers `tilebg` and `tile`, an object layer
`objects`, base64 + gzip tile data. Object names ✔: `sp_p_NN` = player spawn, `wp_p_NN` = weapon spawn with a
`weapon` property (comma-separated token list, §7.1), `spritefg` / `spritebg` = decoration with a `sprite`
property, one `period` property exists. World sizes below use the `hdr` set.

{{table:maps}}

Weapon-spawn lists (union of every spawn point's list on the map):

{{table:mapWeapons}}

Notes: the token `shield` (3 uses, Overseer) and `boosttank` / `healthpack` (power-ups, IDs 14/15) are
spawn tokens beyond the weapon list; `saw` and `deagle` never spawn from maps. The map that is
played is chosen by the host in SELECT MAP (the 13 numbered maps), in order of the file number.
Tile sets: `t64_new.tsx` (default), `t64Moon_new.tsx`, `t64Snow_new.tsx`, `t64Desert_new.tsx` with
backgrounds `bg_new.png`, `bgMoon_new.png`, `bgSnow_new.png`, `bgDesert_new.png`.
Per-map gravity is `gravityFactor` (constructor default **1.0**); ✖ whether any map changes it was not determined.

---

## 14. Physics defaults

| Item | Value |
|---|---|
| Engine | Chipmunk (`cpSpace`), active hash 3.14 / 1000, static hash 3.25 / 3000 (`PhysicsManager::init`) ✔ |
| Gravity use | scaled by `gravityFactor`: weapons −400, frag/proximity grenades −250, gas grenades and death debris −300 (× factor) ✔ |
| Soldier body | mass factor 0.1 (`+0x1b0`), humanoid drone mass 1.75, moment 5.23 ✔ |
| Collision types | handled pairs registered in `PhysicsManager::init` (player, weapon, bullet, map and item layers) ✔ |
| Zero gravity | if `gravityFactor == 0` the soldier switches to a floating mode (`updatePlayerModifiers`) ✔ |

For the full movement physics (thrust, jump, friction) read `SoldierHostController::updateStep` in
`source/native/SoldierHostController.cpp` and its assembly in `source/native/_asm/`.

---

## 15. User interface inventory

Every screen of the original with its text (✔ from the string constants of each class).

| Screen | Class | Text and controls |
|---|---|---|
| Splash | `SplashLayer` | LOADING, "TOUCH    START" |
| Main menu | `MenuLayer` | QUICK PLAY, MULTIPLAYER, SOLO PLAY, SETTINGS, INFO, HELP, NEWS, UPGRADE ("THANK YOU" when Pro) |
| Solo | `LocalGameLayer` | TRAINING, SURVIVAL, BACK |
| Multiplayer | `MultiplayerGameLayer` | LAN WIFI, ONLINE, BLUETOOTH, LOGIN / LOGOUT, QUICK PLAY, BACK |
| Find game | `FindGameLayer` | HOST, JOIN, LOCAL GAME, LOCAL COOP, "FOUND n GAME(S):", "Connection Failed" |
| Game type (online) | `GameTypeLayer` | DEATHMATCH, CO-OP, SURVIVAL, SCORES, BACK |
| Map select | `MapSelectLayer` | SELECT MAP, ◀ ▶, players − / +, TEAMS, PLAY, BACK |
| Lobby | `PlayerLobby*`, `LobbyLayer` | READY / NOT READY, INVITE, SEARCH ("SEARCHING…"), AVAILABLE PLAYERS, EXIT ("Confirm Exit"), START, chat |
| Lobby options | `LobbyOptionsLayer` | CHAT (FILTER:NONE/SEMI/FULL), TEAM (colour), GAME STATS, DONE |
| In-game HUD | `HUD` | health, boost meter, ammo, clip, weapon and grenade icons ("X%d"), zoom label ("1X"), lives, countdown clock `MM:SS` (Deathmatch), radar, respawn ("RESPAWNING: n"), score-board button, pause, chat |
| Pause / end | `MenuScreen` | PAUSED, RESUME, RETRY, DONE, "GAME OVER", "SCORE: n", "KILLS: n", "BEST: n", "NEW BEST: n", "TRAINING COMPLETE" |
| Score screen | `ScoreScreen` | scoreboard, "Confirm Quit", QUIT, CANCEL |
| Post game | `PostGameScreen` | §11.1 |
| Avatar | `AvatarLayer` | name, stats (EXP, KILLS, DEATHS, SKILL, RANK PROGRESS), AWARDS, CUSTOMIZE, preset skin selector "n/n" |
| Customize | `CustomAvatarLayer`, `AvatarCreator` | 19 part pickers (§6.3), SAVE, BACK |
| Settings | `SettingsLayer` | AVATAR, CONFIGURE, CONTROLS, STORE, BACK |
| Configure | `ConfigLayer` | §3.4 |
| Controls | `ControlsLayer`, `ControlsPlacementLayer` | §4 |
| Store | `StoreLayer` | §8.3 |
| Purchase | `PurchaseLayer`, `PointsLayer` | §8.3 |
| Info | `AboutLayer`, `CreditsLayer`, `NewsLayer`, `HelpLayer`, `TOSLayer` | text screens, each with BACK; TOS has AGREE; Help has ASK / PROBLEM / QUESTION |
| Ads | `AdLayer` | LATER / NOW cross-promotion prompts |

Fonts: bitmap fonts (`font02_new.png` label atlas) and TrueType `GROBOLD.ttf`, `Marker Felt.ttf`, `arial.ttf`, `digitalix.ttf` (`assets/fonts/`).

---

## 16. Audio

### 16.1 Music

`presMix.mp3` (menu and splash), volume 0.5, looping ✔. ✖ No other music file ships; in-game music was not found.

### 16.2 Sound effects ✔

Loaded by `Sound::loadSoundBuffers` as `<name>.wav` from the Cricket bank `da2sound16.ckb`.
Format: `id name (group)`. Group 2 holds the Training dialogue, group 1 the shared effects and
voice taunts, group 0 weapon/impact effects, group 3 the looping weapon sounds (saw, rocket, flame, gas, laser) ◐.
ID 91 `hoorah` is registered twice (groups 1 and 2). Player voice taunts: `bringit`, `cmonboy`, `piece`, `getsome`, `yeah`, `hoorah`, `readyup`, `moveout`, `coverme`, `niceshot`, `no`, `gotme`, `goodgame` (`Sound::playTaunt`, `getRandomTaunt`).

{{table:sounds}}

---

## 17. Networking defaults

| Item | Value |
|---|---|
| LAN transport | RakNet over UDP; ports 9330, 9331, 9341 (`RakNetLAN` constructor) ✔ |
| Discovery | `RakNetLAN::findSessions` / `pingForServer` (broadcast), `hostSession` ✔; a UPnP multicast address (239.255.255.250:1900) is also present in the library ◐ |
| Host | `RakNetLocalServer::startServer`; host-authoritative simulation: `SoldierHostController` on the host, `SoldierRemoteController` for others ✔ |
| Players | LAN Deathmatch: host-chosen (§9.5); Co-op: 2; online Deathmatch: 4 ✔ |
| Online (removed) | NAT server `94.198.81.195:61111`, web service (§12.1) |
| Chat filter default | NONE (`ChatMask` 0) ✔ |
| Network messages | defined in `NetworkMessageDispatcher` (66 functions) and `NetworkManager` (132); the protocol is to be written up as `LAN-PROTOCOL.md` in the remake |

---

## 18. Feature inventory against the remake decisions

| Original feature | Remake decision |
|---|---|
| Splash, main menu, name "NOOBIE" | Keep (new modern menus; ask for a name on first launch) |
| Training with Sarge | Keep, polished for beginners |
| Survival (3 lives) | Keep |
| Co-op Survival over LAN (4 lives) | Keep (Coins: not earned, owner's answer) |
| Deathmatch over LAN, with teams | Keep (+ Team Deathmatch as the teams toggle, + host options up to 8 min, no kill limit) |
| Online modes, Quick Play (online) | Remove; Quick Play = offline match against bots |
| 15 maps, all weapons, items, enemies | Keep, with original values |
| Pro Pack (real money) | Pro Pack bought with 3,000 Coins |
| Store, 13 upgrade items | Keep, bought with Coins at the original prices |
| Battle Points | Renamed **Coins**; start with 100; 10 per kill in Wi-Fi Deathmatch only |
| Ranks, EXP, PROMOTED/DEMOTED | Remove |
| Leaderboards, awards | Personal records and Wi-Fi friends leaderboard; no awards |
| Avatar presets + 19-part customiser | Keep (custom body types and Pro items bought with Coins) |
| Settings: sound, music, blood, hi-res, 2X view | Keep (+ custom blood colour, quality presets, frame rate) |
| Controls: sticks, inversion, swap, placement | Keep (+ sensitivity, left-hand mode, auto-fire, controller, vibration) |
| Chat | Quick messages only |
| Cross-promotion, ads, analytics, news, help, TOS, sign-in | Remove |
| Quit penalty | Remove |

---

## 19. Known gaps (✖)

* Per-weapon projectile damage for the SMAW rocket, EMP, and grenades (set in `ROCKET`, `SMAW`, `EMP`, `FRAGNADE`, `GASNADE`, `PROXYNADE` classes; read their pseudo-C).
* Enemy point values and drone movement/attack constants (AI classes; `SoldierAIController::updateStep` only in assembly).
* Exact movement physics (thrust force, jump, friction, boost drain/regen) in `SoldierHostController::updateStep`.
* The asset-resolution thresholds, the design resolution, and the 7th team colour.
* Whether a map sets a gravity other than 1.0.
* Real-money prices of the Pro Pack and the BP packs (store-side).
* The online protocol and any server-side data (ranks computed from the account, leaderboards).
* The 16 functions Ghidra could not decompile (`source/native/_failed-disassembly/`).

Everything else in this document was read from the code or binary of the APK analysed in this repository.

# Project map

Where things live in the app and in this repository, and where to start a change.

## The one thing to know first

The **game itself is C++** (cocos2d-x 2.2.5 + Box2D physics + RakNet networking),
compiled into `source/apk-project/lib/armeabi-v7a/libcocos2dcpp.so`. Weapons,
soldiers, AI, maps, lobbies and multiplayer all live there; their pseudo-C is in
`source/native/` (one `.cpp` per class).

The 6,843 Java classes are the **Android shell**: ~99.6% are third-party SDKs
(Google Play Services, Amazon, ads, analytics); only 24 files are game-specific
(`com/appsomniacs/**`, `org/cocos2dx/**`, `org/go3k/**`). Java does ads, billing,
sign-in, and passes lifecycle events to the native code.

## Every piece of code in the APK, and where it is

| Code in the APK | Read it in | Change it in |
|---|---|---|
| Java/Dalvik, `classes.dex` + `classes2.dex` (6,843 classes) | `source/java-reference/` (Java) | `source/apk-project/smali/`, `smali_classes2/` (smali) |
| Game C++, `lib/armeabi-v7a/libcocos2dcpp.so` (36,355 functions) | `source/native/<Class>.cpp` (pseudo-C), `source/native/_asm/<Class>.s` (assembly) | the `.so` bytes in `source/apk-project/lib/armeabi-v7a/` (patch at the file offsets in `_asm/`) |
| Crashlytics NDK, `libcrashlytics.so`, `libcrashlytics-envelope.so` | `source/native-crashlytics/<lib>/` (pseudo-C) | the `.so` bytes (third-party SDK) |
| Amazon GameCircle UI, `res/raw/amazon_gc_prototype.zip` (58 JS, 4 HTML, 3 CSS) | `source/embedded/amazon_gc_prototype/` | edit there, re-zip into `source/apk-project/res/raw/amazon_gc_prototype.zip` |
| Manifest, resources, strings | `source/apk-project/AndroidManifest.xml`, `res/` | same files |

Nothing else in the APK is executable code.

## How to change things

- **Java side** (ads, billing, sign-in, Android behaviour, manifest, resources):
  find the method in `source/java-reference/`, edit the matching
  `source/apk-project/smali*/…/<Class>.smali` (same package path), run `tools/build.sh`.
- **Game data** (no code needed): see "Game data you can edit" below.
- **Game logic** (C++): read the pseudo-C in `source/native/<Class>.cpp`, find the same
  function in `source/native/_asm/<Class>.s`, and patch the bytes of
  `source/apk-project/lib/armeabi-v7a/libcocos2dcpp.so` (see "Patching the game library"),
  or redirect behaviour from the Java side through the JNI bridge below. The pseudo-C
  does not compile.

## Patching the game library

- The address column in `source/native/_asm/*.s` **is the file offset** in
  `libcocos2dcpp.so` (its code segment is mapped at offset 0, address 0; checked for the
  first instruction of every one of the 3,302 functions). Ghidra address = file offset + `0x10000`.
- All game functions are **Thumb-2**: instructions are 2 or 4 bytes, shown as little-endian
  halfwords (`f7e2 fa7c` = bytes `e2 f7 7c fa` in the file).
- A patch must keep every instruction boundary and the function size; words after
  `; --- end of code` are literal-pool constants loaded by `ldr …, [pc, #…]`.
- `source/native/_fields.tsv` names 82 member offsets recovered from the developer's own
  getters/setters (for example `Weapon +0x174 = AmmoCapacity`,
  `SoldierController +0x144 = HP`), to read `this + 0x…` in the pseudo-C.
- After patching, rebuild with `tools/build.sh` (it re-signs the APK).

## Game data you can edit

All under `source/apk-project/assets/`, in three resolutions (`sd/`, `hd/`, `hdr/`):

| Data | Files | Format / editor |
|---|---|---|
| Maps | `0hunger_new.tmx`, `1outpost_new.tmx` … `12overseer_new.tmx`, `survival_new.tmx`, `training_new.tmx` (15 per resolution) | Tiled map XML ([Tiled](https://www.mapeditor.org/)) |
| Tilesets | `t64_new.tsx`, `t64Desert_new.tsx`, `t64Moon_new.tsx`, `t64Snow_new.tsx` + `tile64*_new.png` | Tiled tileset XML + PNG |
| Sprite atlases | `menuTexture.plist/.png`, `partsTexture.plist/.png`, `title_ret*_new.png` | cocos2d plist + PNG |
| Particle effects | `files/{Blood,Grass,HeavySmoke,Ora,Path,Rock,Shell,Shrapnel,Smoke,Stars}.plist` | cocos2d particle plist |
| Sound / music | `da2sound16.ckb` (Cricket audio bank), `presMix.mp3` | Cricket Audio tools / MP3 |
| Fonts | `fonts/*.ttf` | TrueType |

Keep file names and formats; the C++ loads them by name.

## Java ⇄ native bridge (where Android features plug in)

- **Java → native**: 35 `native` methods (JNI exports), 18 on `DA2Activity`
  (`nativeOnActivityCreated`, `nativeInitGPGS`, `nativeRegisterPurchase`,
  `nativeIsPlatformAmazon`, …), the rest in `org.cocos2dx.lib.Cocos2dxRenderer` /
  `Cocos2dxHelper` (render loop, touch, keys).
- **Native → Java** (called on `DA2Activity`): ads `createAdBanner`,
  `removeAdBanner`, `prepareInterstitial`, `showInterstitial`; IAP `purchaseItem`,
  `verifyInventory`, `isBillingPossible`, `getLocalizedPurchasePrice`,
  `startingPurchaseValidation`, `completedPurchaseValidation`; Play Games
  `initGPGS`, `isGpgReady`, `requestIdentity`; misc `isConnected`, `openUri`,
  `requestExit`, `getApplicationVersion`, `isAppInstalled`.
- Native code also calls the Google Play Games SDK directly (real-time and
  turn-based multiplayer, snapshots/cloud save, leaderboards, Nearby Connections).

## Game C++ classes by subsystem (function counts)

- **App / scenes / menus**: AppDelegate(26) ApplicationInterface(62) ApplicationManager(11)
  MenuLayer(26) MenuScreen(24) SplashLayer(16) SettingsLayer(16) ConfigLayer(22)
  ControlsLayer(18) ControlsPlacementLayer(28) HelpLayer(14) AboutLayer(11)
  CreditsLayer(15) NewsLayer(11) TOSLayer(13) MessageBox(9) AMessageBox(21)
- **Game modes / stages**: Stage(33) StageLayer(27) TrainingStage(14) SurvivalStage(21)
  CoOpStage(21) MultiplayerStage(14) MultiplayerGameLayer(26) LocalGameLayer(14)
  GameTypeLayer(18) MapManager(28) MapSelectLayer(19) MapVoteLayer(15)
  MapShapeSquare/Triangle, MapStaticShape, GridSectorizer(13)
- **Soldiers / players**: SoldierController(63) SoldierHostController(63)
  SoldierRemoteController(42) SoldierAIController(46) SoldierView(53)
  SoldierManager(17) PlayerDeath(18) HeartMeter(8) Joypad(29) HUD(57) Radar(12)
  AmmoMeter(14) ArrowAlert(9)
- **Enemies / drones (Survival, Co-op)**: Enemy(38) EnemyManager(38) HawkDrone(39)
  HumanoidDrone(35) WormDrone(34)
- **Weapons**: Weapon(68) WeaponManager(30) WeaponFactory(20) WeaponType(6)
  Projectile(29) ProjectileManager(19) Explosion(9) Tracer(13) LaserSight(8)
  Guns: AK47 M14 M16 M93BA MP5 UZI DEAGLE GDEAGLE MAGNUM SHOTGUN SAWGUN SAW
  SMAW ROCKET PHASR FLAMETHROWER FLAME EMP PlasmaBall PlasmaEnergy Slug
  Melee/other: MACHETE RIOTSHIELD · Grenades: FRAGNADE GASNADE PROXYNADE
  ProxyMine GasCloud · Items: POWERUP Item(46) ItemInfo ItemLibrary Boostie
- **Physics / effects**: PhysicsManager(8) CollisionObject(19) BodyShape
  EffectsManager(31) Sound(22) AudioPlayerController
- **Networking / multiplayer**: NetworkManager(132) NetworkMessageDispatcher(68)
  NetworkManagerBridge(9) PeerNetworkInterface · **Transport**: RakNetDelegate(29)
  (server list, NAT detection, peer connections) · **LAN**: PeerNetworkBridgeLAN(31)
  RakNetLAN(14) RakNetLocalServer(16) PlayerLobbyLocal(21) · **Online (own servers)**: PlayerLobbyOnline(18)
  PlayerLobbyOnlineHosted(38) UDPProxyHandler(11) ServerListObject(8) FindGameLayer(19)
  · **Google Play Games**: PeerNetworkBridgeGP(33) PlayerLobbyOnlineGP(16)
  GPGSRealtimeMultiplayerManager(35) GPGSStateManager(17) GPGSEventObject
  · Lobby UI: PlayerLobby(66) LobbyLayer(20) LobbyOptionsLayer(14) LobbyRow TeamRow SpawnRow
- **Scores**: ScoreKeeper(23) ScoreKeeperRow ScoreList(16) ScoreRow(15) ScoreScreen(18)
  PostGameScreen(15) PointsLayer(23)
- **Avatar customisation**: AvatarCreator(25) AvatarLayer(27) AvatarMenuLayer(16)
  AvatarRenderer(19) CustomAvatarLayer(15) + 19 *TableView part pickers
- **Store / IAP / ads / social**: StoreLayer(31) PurchaseLayer(17) IapManager(14)
  ItemPurchase(11) InAppPurchaseBridge(10) AdLayer(12) AchievementBridge(23)
  LeaderBoardBridge(28) ZYWebView(10)

## "Pure local" starting points

Local play already exists: Training, Survival, Co-op stages (single device) and
LAN multiplayer (`PeerNetworkBridgeLAN`, `PlayerLobbyLocal`, `LocalGameLayer`).
Online play goes through `PlayerLobbyOnline*`, `UDPProxyHandler`, Google Play
Games rooms, and two hard-coded endpoints (confirmed in the pseudo-C):

- `94.198.81.195:61111` (port `0xeeb7`) – RakNet NAT-type detection / punch-through,
  used in `RakNetDelegate::detectNATType` and `RakNetDelegate::updateLoop`
  (also compared in `DetermineConnectionIdentity`, `source/native/_free-functions.cpp`).
- `https://appsomniacs.azurewebsites.net` – `NetworkManager::m_baseUrl`, set in the
  static initialiser `FUN_003909d8` (`source/native/_unnamed/unnamed_0039xxxx.c`), with session
  tokens and a `Authorization: Basic` header. URLs are built by
  `NetworkManager::createAppsomniacsUrl` / `createAppsomniacsRequest`:
  - `GET  /games/doodlearmy2/api/config` – `NetworkManager::updateServerConfig`
  - `POST /games/doodlearmy2/api/session/create` – `NetworkManager::requestWebSession`
  - `/games/doodlearmy2/api/%s/gpg/multiplayer/searchcount`
  - `GET  /games/doodlearmy2/api/%s/%d/%s/payload` – purchase payload
  - `/games/doodlearmy2/api/%s/%d/%s/validate` – purchase validation

LAN entry points: `RakNetLAN::hostSession`, `RakNetLAN::findSessions`,
`RakNetLAN::pingForServer`, `RakNetLocalServer::startServer`, `RakNetDelegate::connectToLANServer`.
The `RakNetLAN` constructor sets its port fields to 9331, 9331, 9331, 9341 and 9330
(`0x2473`, `0x2473`, `0x2473`, `0x247d`, `0x2472`).


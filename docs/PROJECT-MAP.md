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

## How to change things

- **Java side** (ads, billing, sign-in, Android behaviour, manifest, resources):
  find the method in `source/java-reference/`, edit the matching
  `source/apk-project/smali*/…/<Class>.smali` (same package path), run `tools/build.sh`.
- **Assets** (textures, sounds, particle `.plist`s): replace files in
  `source/apk-project/assets/` keeping names and formats, rebuild.
- **Game logic** (C++): read the pseudo-C in `source/native/`, then patch the
  library bytes at the function's address (ELF offset = Ghidra address − `0x10000`;
  every function header in `source/native/` shows its Ghidra address), or redirect
  behaviour from the Java side through the JNI bridge below. The pseudo-C does not compile.

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


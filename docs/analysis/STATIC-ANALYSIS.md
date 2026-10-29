# Static analysis of the v1.0.0 APK

Target: `Mini.Militia.mod.by.sahadikr.in.apk` (GitHub release v1.0.0, asset 685265855),
50,368,012 bytes, SHA-256 `3e06839f453b58f1fdb70bfc5f72b9db8a419b567205c168f4d190596d441be4`.
Static only: nothing was installed or executed. Raw REA output for each step is in
`evidence/01-static-analysis/`.

## 5a – Signature (`inspect_apk_signature`)

- Schemes: v1 (JAR) and v2 present; v3, v3.1 and source stamp absent. v1 and v2
  name the same signer; the v2 content digest matches the file (`self_consistent`).
- Signer: `CN=Android, OU=Android, O=Android, L=Mountain View, ST=California, C=US,
  emailAddress=android@android.com`, serial `936EACBE07F201DF`, valid 2008-02-29 →
  2035-07-17, SHA-256 `a40da80a59d170caa950cf15c18c454d47a39b26989d8b640ecd745ba71bf5dc`,
  MD5 `E8:9B:15:8E:4B:CF:98:8E:BD:09:EB:83:F5:37:8E:87`.
- This is the **public AOSP test key** (its private key ships with the Android
  source). The original developer signature was replaced: the app was decompiled,
  modified and re-signed. `META-INF/MANIFEST.MF` still says
  `Created-By: Android Gradle 1.3.0` while `CERT.SF` says `Created-By: 1.0 (Android)`.
- REA does not cryptographically verify signatures; these are declared identities.

## 5b – Resources and manifest (`decode_android_resources`, Apktool 3.0.3)

- Package `com.appsomniacs.da3`, version **2.2.23** (code 100), min/target SDK 25,
  compiled against platform 23 (6.0-2438415). 1,000 decoded files, 78 locales.
- Label hard-coded to **"Mini Militia mod by sahadikr.in"** (`app_name` is "Mini Militia").
- Package rename: the launcher is still `com.appsomniacs.da2.DA2Activity` and a
  provider authority uses `com.appsomniacs.da2.…`; the original package `…da2` was
  renamed to `…da3` so the mod installs next to the real game.
- Hand-edited binary manifest: provider `…AppMeasurementContentProvid`**`gu`** with
  authority `…google_measurement_service`**`oc`** (no such class exists), and a
  duplicate `READ_EXTERNAL_STORAGE` with a malformed `android:uses-permission` tag.
- Permissions: INTERNET, ACCESS_NETWORK_STATE, ACCESS_WIFI_STATE, **READ_PHONE_STATE**,
  WRITE/READ_EXTERNAL_STORAGE, ACTIVITY_RECOGNITION, BLUETOOTH, **ACCESS_COARSE/FINE_LOCATION**,
  **RECORD_AUDIO**, BILLING, CHECK_LICENSE, C2DM RECEIVE, WAKE_LOCK.
- Strings of note: `app_id` = `351666831778` (Play Games project number),
  `com.crashlytics.android.build_id` = `a0998b36-afc0-4444-a470-481345470895`.
  The other 73 default strings are SDK boilerplate.

## 5c – Package (`inspect_android_package`, JADX via jadx-headless-mcp 0.7.1)

- 6,843 classes, 878 resources; 28 components: 20 activities, 4 receivers,
  3 services, 1 provider. Only 6 classes belong to the developer
  (`com.appsomniacs.core.{GoogleAnalyticsInfusedApplication,InfoHarvester}`,
  `com.appsomniacs.da2.{BuildConfig,DA2Activity,R}`, `com.appsomniacs.da3.R`).
- Exported (8): `DA2Activity` (launcher); InMobi `IMAdTrackerReceiver`
  (exported, no permission: INSTALL_REFERRER, CONNECTIVITY_CHANGE, `com.inmobi.share.id`);
  Amazon IAP `ResponseReceiver` (permission only on the intent-filter action, which
  Android does not enforce); Amazon `AuthorizationActivity` (browsable
  `amzn://com.appsomniacs.da3`); Amazon `PackageIntentReceiver`; GMS App Invite
  `PreviewActivity`; sign-in `RevocationBoundService` (permission-protected);
  `AppMeasurementReceiver`.

## 5d – Embedded configuration

Found with string sweeps (`evidence/02-strings/`), decoded resources and REA
decompilation (`inspect_android_method`, Ghidra pseudo-C in `source/native/`).

### Servers and endpoints

| What | Value | Where |
|---|---|---|
| Game HTTP backend | `https://appsomniacs.azurewebsites.net` | `NetworkManager::m_baseUrl`, set in static initialiser `FUN_003909d8` |
| Backend API (HTTP Basic auth) | `GET /games/doodlearmy2/api/config`, `POST /games/doodlearmy2/api/session/create`, `/games/doodlearmy2/api/%s/gpg/multiplayer/searchcount`, `GET /games/doodlearmy2/api/%s/%d/%s/payload`, `/games/doodlearmy2/api/%s/%d/%s/validate` | `NetworkManager::updateServerConfig`, `requestWebSession`, `createAppsomniacsUrl` |
| NAT detection / punch-through server | `94.198.81.195:61111` | `RakNetDelegate::detectNATType`, `RakNetDelegate::updateLoop` |
| LAN ports | 9330, 9331, 9341 | `RakNetLAN` constructor |
| Web pages | `http://www.appsomniacs.com/static/games/doodlearmy2/{about,news,support}.html`, `/Home/Terms` | native strings |
| Amazon login | authz `https://www.amazon.com/ap/oa`, token `https://api.amazon.com/auth/o2/token` | `assets/api_key.txt` |
| UPnP discovery | `239.255.255.250:1900` | RakNet/miniupnpc in native lib |

The dex files also reference the SDKs' own endpoints (MoPub, AppLovin, InMobi,
Vungle, AdColony, Chartboost, Amazon Ads, Google APIs, Crashlytics/Fabric,
Google Analytics/Tag Manager, New Relic).

### Ad, analytics and platform identifiers

| SDK | Release | Debug build | Where |
|---|---|---|---|
| MoPub banner | phone `e920dac0641b4758a0b2d3e38c2a3448`, tablet `815fbd0e71604d529b39bac95a90433a` | `3f2c1a504f6c4ab9b1fe24a119b05a55`, `b1607fd0620f4213911cd6ba2bc44f16` | `DA2Activity.initializeMopubAdBanner` |
| MoPub interstitial | phone `2ed112180a4e4d8f9b0a2d995d019740`, tablet `9810efc33b5a4855b366a5976be60f40` | `7aab546884a7453eb756f8a55f4a1d49`, `f69388d72eba447d89b2af7f98fd2d47` | `DA2Activity.initializeMopubInterstitial` |
| Amazon Ads app key | `161f45bad9264cc99d03eb2fad19cb21` | | `DA2Activity.initializeAmazonInterstitial` |
| InMobi | `2fbee7e9bcc5474496fb292497a6e0a6` | `d2728786e8244c2bacc592337ce0fe63` | `DA2Activity.onCreate` |
| New Relic token | `AA3f2ddc0c0c2fcb54d2484561ab0776a4ad76718c` | `AAfbeca5a9981874b750bc146f815eea5061fe838c` | `DA2Activity.onCreate` |
| AppLovin SDK key | `8W7iT2gSMRRUZsw0GfivTEgnz0TmGx9ORG6_JoRgDt9ok3p_kVuBkZzgZQRqLbDosJnA6DrK5_6p2vpmPgy7Ev` | | manifest `applovin.sdk.key` |
| Fabric / Crashlytics | API key `8d7b56be8ad769d011fe03a6e51aa5d0382c53f0`; build id `a0998b36-afc0-4444-a470-481345470895` | | manifest, `assets/crashlytics-build.properties` |
| AdColony | app `app2ee04b82f705434aa6`, zone `vza08f3dd12e7e48aaa6` | | dex strings |
| Google Analytics | `UA-40602566-3` | | `res/xml/{app,ecommerce,global}_tracker.xml` |
| Google Play Games | app id `351666831778` | | strings |
| Amazon login | client `amzn1.application-oa2-client.15f214225f4e4bb982fef062e2bc4384`, app `amzn1.application-client.93a38a8899fa43dead878efa92887c7b`, family `amzn1.application.20ae254014ec4be78ee899559fc12b09`, bound to package `com.appsomniacs.da2` and app signature `2A:31:2B:B5:62:6C:B4:F7:E7:A5:EB:BC:03:F5:82:27` | | `assets/api_key.txt` (decoded: `evidence/01-static-analysis/amazon-api-key.decoded.json`) |
| Google Play licensing | RSA-2048 public key | | `DA2Activity.setupGooglePlayLicenceValidation` |

Debug/release selection is `ApplicationInfo.flags & FLAG_DEBUGGABLE`.
SDK versions: Fabric 1.3.10, Crashlytics 2.5.5, MoPub 3.13.0+kit (`fabric/*.properties`).

## 5e – Configuration summary

- **App**: cocos2d-x 2.2.5 game (the `unityplayer` meta-data is a leftover), RakNet
  peer-to-peer multiplayer with an own lobby/NAT server, Box2D physics, Cricket
  audio. Game code is C++ in `libcocos2dcpp.so`; Java is the Android shell.
- **Platforms**: Google Play (Games, billing, licensing) and Amazon (IAP,
  GameCircle, ads, login), chosen at runtime by `nativeIsPlatformAmazon()`.
- **Ads**: MoPub (Google builds), Amazon Ads (Amazon builds), AppLovin
  interstitials (both); AdMob, InMobi, AdColony, Vungle, Chartboost SDKs bundled.
- **Analytics / telemetry**: Google Analytics + Tag Manager, Firebase measurement,
  Crashlytics, New Relic. Advertising-ID collection enabled.
- **Device data**: `ANDROID_ID`, IMEI via `TelephonyManager.getDeviceId()` (as
  `PHONE_ID`), display/system/device report (`InfoHarvester`).
- **Mod changes found**: label, package rename, re-signing with the test key,
  hand-edited manifest. `assets/crashlytics-build.properties` says 2.2.19 (code 88,
  2016-03-08) while the manifest says 2.2.23 (100) – the version may have been edited.
  `setupGooglePlayLicenceValidation` sets `m_hasPassedRLC = true` right after starting
  the asynchronous check, so the licence result never gates it (original or patched:
  undetermined without the genuine APK). The original developer's ad/analytics keys
  are untouched. Amazon login cannot authorise this build (key bound to `…da2` and the
  original signature). No modder-specific code or URLs beyond the label.
- **Not covered here**: runtime behaviour; `GoogleAnalyticsInfusedApplication`
  (REA's JADX provider failed on it with `cleanup_incomplete`).

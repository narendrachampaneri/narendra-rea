#include "doctest/doctest.h"

#include "economy/Economy.h"
#include "save/SaveData.h"

using namespace mm;
using namespace mm::save;
using namespace mm::economy;

TEST_CASE("A fresh save starts with 100 Coins and nothing owned")
{
    SaveData d;
    CHECK(d.coins == 100);
    CHECK(d.upgrades == 0);
    CHECK_FALSE(d.proPack);
    CHECK_FALSE(d.firstLaunchDone);
}

TEST_CASE("Save text round-trips every field")
{
    SaveData d;
    d.name = "Narendra";
    d.firstLaunchDone = true;
    d.coins = 4321;
    d.upgrades = 0x1234 & ((1 << 14) - 1);
    d.proPack = true;
    d.avatar = {3, 17, 5, 16};
    d.settings.soundVolume = 35; d.settings.musicVolume = 0; d.settings.blood = false; d.settings.bloodColour = 2;
    d.settings.centredCamera = true; d.settings.leftHanded = true; d.settings.autoFire = true; d.settings.vibration = false;
    d.settings.sensitivity = 130; d.settings.quickMessages = false; d.settings.quality = Quality::Extreme; d.settings.frameRate = 120; d.settings.qualityAuto = false;
    d.stats = {120, 80, 14, 7, 5600, 4, 22, 123456};
    d.avatar.mask = 3; d.settings.showStats = true; d.settings.crosshair = 2; d.settings.buttonOffset = {-20, 15, 0, 0, 40, -30, 5, 5, -400, 400, 7, -7, 3, 4, -5, 6}; d.settings.hudScale = {80, 120, 100, 150, 100, 100, 70, 200}; d.settings.invertMove = 3; d.settings.invertAim = 1;
    d.friends["Ann"] = {10, 4, 3};
    d.friends["Bo Jr"] = {1, 9, 1};
    d.lastSeenVersion = "0.6.0";
    const auto back = fromText(toText(d));
    REQUIRE(back.has_value());
    CHECK(*back == d);
}

TEST_CASE("Corrupted, truncated, foreign and future saves are refused")
{
    SaveData d;
    d.name = "A";
    std::string t = toText(d);
    CHECK(fromText(t).has_value());
    std::string edited = t;
    edited.replace(edited.find("coins 100"), 9, "coins 999");
    CHECK_FALSE(fromText(edited).has_value());       // checksum catches a hand edit
    CHECK_FALSE(fromText(t.substr(0, t.size() - 6)).has_value());
    CHECK_FALSE(fromText("").has_value());
    CHECK_FALSE(fromText("hello world").has_value());
    // A save from a newer version of the game: refused rather than half understood.
    std::string future = "MMSAVE 99\nname X\n";
    char crc[16];
    std::snprintf(crc, sizeof crc, "%08x", crc32(future));
    CHECK_FALSE(fromText(future + "crc " + crc + "\n").has_value());
}

TEST_CASE("Unknown keys are ignored and values are clamped")
{
    std::string body = "MMSAVE 1\nname   Zed\ncoins -50\nupgrades 65535\navatar 99 99 0 -4\n"
                       "settings 500 -5 1 99 0 0 0 1 1000 1 9 77\nfuture_thing 1 2 3\nfriend 1 2 3 Pat\n";
    char crc[16];
    std::snprintf(crc, sizeof crc, "%08x", crc32(body));
    const auto d = fromText(body + "crc " + crc + "\n");
    REQUIRE(d.has_value());
    CHECK(d->name == "  Zed");
    CHECK(d->coins == 0);
    CHECK(d->upgrades == (1 << 14) - 1);
    CHECK(d->avatar == Avatar{16, 17, 1, 1});
    CHECK(d->settings.soundVolume == 100);
    CHECK(d->settings.musicVolume == 0);
    CHECK(d->settings.bloodColour == 4);
    CHECK(d->settings.sensitivity == 150);
    CHECK(d->settings.quality == Quality::Extreme);
    CHECK(d->settings.frameRate == 60);
    REQUIRE(d->friends.count("Pat"));
}

TEST_CASE("Names are one short line")
{
    SaveData d;
    d.name = "Very long name that goes on and on\nsecond line";
    const auto back = fromText(toText(d));
    REQUIRE(back.has_value());
    CHECK(back->name.size() <= 16);
    CHECK(back->name.find('\n') == std::string::npos);
}

TEST_CASE("The store: prices, ownership, Pro Pack gating")
{
    SaveData d;
    d.coins = 1300;
    CHECK(canBuy(d, GoldenEagle) == BuyResult::Ok);
    CHECK(buyUpgrade(d, GoldenEagle) == BuyResult::Ok);
    CHECK(d.coins == 1050);  // GOLDEN EAGLE is 250
    CHECK(owns(d, GoldenEagle));
    CHECK(buyUpgrade(d, GoldenEagle) == BuyResult::AlreadyOwned);
    CHECK(d.coins == 1050);
    CHECK(buyUpgrade(d, BoostIncrease) == BuyResult::NotEnoughCoins);  // 2000
    CHECK(owns(d, GoldenEagle));
    CHECK_FALSE(owns(d, BoostIncrease));
    CHECK(buyUpgrade(d, BoostRecharge) == BuyResult::NotEnoughCoins);  // 1250
    CHECK(buyUpgrade(d, HealthRecharge) == BuyResult::Ok);             // 1000
    CHECK(d.coins == 50);
    CHECK(buyUpgrade(d, 99) == BuyResult::Unknown);

    // The mask pack needs the Pro Pack (3,000 Coins) first.
    d.coins = 4000;
    CHECK(buyUpgrade(d, MaskPack1) == BuyResult::NeedsProPack);
    CHECK(buyProPack(d) == BuyResult::Ok);
    CHECK(d.coins == 1000);
    CHECK(buyProPack(d) == BuyResult::AlreadyOwned);
    CHECK(buyUpgrade(d, MaskPack1) == BuyResult::Ok);
    CHECK(d.coins == 500);
    CHECK(buyProPack(d) == BuyResult::AlreadyOwned);
}

TEST_CASE("Coins: 10 per kill, only in Wi-Fi Deathmatch and Team Deathmatch")
{
    CHECK(coinsForMatch(MatchKind::WifiDeathmatch, 7) == 70);
    CHECK(coinsForMatch(MatchKind::WifiTeamDeathmatch, 3) == 30);
    CHECK(coinsForMatch(MatchKind::WifiCoop, 50) == 0);
    CHECK(coinsForMatch(MatchKind::Solo, 50) == 0);
    CHECK(coinsForMatch(MatchKind::WifiDeathmatch, 0) == 0);
    CHECK(coinsForMatch(MatchKind::WifiDeathmatch, -3) == 0);
    SaveData d;
    CHECK(awardMatch(d, MatchKind::WifiDeathmatch, 4) == 40);
    CHECK(d.coins == 140);
    CHECK(awardMatch(d, MatchKind::Solo, 4) == 0);
    CHECK(d.coins == 140);
}

TEST_CASE("Upgrade effects are the values ItemLibrary::applyItems writes")
{
    const Boosts none = boostsFor(0);
    CHECK(none.fuelRegen == 1.0f);
    CHECK(none.maxGrenades == 4);
    CHECK_FALSE(none.goldenEagle);
    std::uint16_t all = (1 << kUpgradeCount) - 1;
    const Boosts b = boostsFor(all);
    CHECK(b.fuelRegen == 1.5f);
    CHECK(b.healthRegen == 2.0f);
    CHECK(b.fuelBurn == doctest::Approx(0.8f));
    CHECK(b.spread == doctest::Approx(0.8f));
    CHECK(b.maxGrenades == 5);
    CHECK(b.melee == doctest::Approx(1.1f));
    CHECK(b.handgunClip == 0.25f);
    CHECK(b.rifleClip == 0.25f);
    CHECK(b.handgunReload == doctest::Approx(0.3f));
    CHECK(b.rifleReload == doctest::Approx(0.3f));
    CHECK(b.goldenEagle);
    CHECK(b.laserSight);
    CHECK(b.gasNade);
    CHECK(b.maskPack);
    CHECK(isHandgun(game::WeaponId::Deagle));
    CHECK_FALSE(isHandgun(game::WeaponId::AK47));
    CHECK(isRifle(game::WeaponId::AK47));
}

TEST_CASE("Every upgrade price in the config is the original ItemLibrary value")
{
    const int prices[14] = {1250, 1000, 2000, 250, 2000, 1000, 800, 1250, 1500, 1000, 500, 1000, 1500, 500};
    for (int i = 0; i < 14; ++i)
        CHECK(config::kUpgrades[i].price == prices[i]);
    CHECK(config::kUpgrades[MaskPack1].requiresPro);
    CHECK(config::kProPackPrice == 3000);
}

// ---- upgrades in the game ----
#include <fstream>
#include <sstream>

#include "assets/MapCatalog.h"
#include "game/Match.h"
#include "net/Protocol.h"

namespace
{
mm::assets::MapData loadOutpost()
{
    std::ifstream in(std::string(MM_CONTENT_DIR) + "/sd/1outpost_new.tmx", std::ios::binary);
    std::stringstream ss;
    ss << in.rdbuf();
    mm::assets::MapData d;
    REQUIRE(mm::assets::parseMap(ss.str(), d));
    return d;
}
}  // namespace

TEST_CASE("The shop is gone: an upgrade mask changes nothing")
{
    const auto data = loadOutpost();
    mm::game::Match m(*mm::assets::findMap("outpost"), data);
    mm::game::Match plain(*mm::assets::findMap("outpost"), data);
    m.setUpgrades(0, 0x3fff);
    auto& s = m.player();
    CHECK(s.weapon().clipCapacity() == 35);
    CHECK(s.secondary() == nullptr);
    CHECK(s.grenades() == plain.player().grenades());
}

TEST_CASE("Fair mode ignores upgrades")
{
    const auto data = loadOutpost();
    mm::game::MatchOptions o;
    o.allowBoosts = false;
    mm::game::Match m(*mm::assets::findMap("outpost"), data, 0, o);
    m.setUpgrades(0, 0x3fff);
    CHECK(m.player().weapon().clipCapacity() == 35);
    CHECK(m.player().secondary() == nullptr);
}

TEST_CASE("The upgrade mask travels in Join and the lobby")
{
    const auto j = mm::net::decode(mm::net::encode(mm::net::Join{"A", mm::net::kProtocolVersion, 3, 0x2a5}));
    REQUIRE(j.has_value());
    CHECK(std::get<mm::net::Join>(*j).upgrades == 0x2a5);
    mm::net::LobbyState l;
    l.players.push_back({1, "A", 0, true, false, 0x155});
    const auto back = mm::net::decode(mm::net::encode(l));
    REQUIRE(back.has_value());
    CHECK(std::get<mm::net::LobbyState>(*back).players[0].upgrades == 0x155);
}

TEST_CASE("Two guns by choice: the second pick-up puts a gun in the other hand, both fire, the stronger scope zooms")
{
    using namespace mm::game;
    const auto data = loadOutpost();
    Match m(*mm::assets::findMap("outpost"), data);
    auto& s = m.player();
    CHECK_FALSE(s.dualActive());  // one gun by default
    CHECK(&s.scopeWeapon() == &s.weapon());
    CHECK(mm::economy::networkMask(mm::save::SaveData{}) == 0);

    CHECK(s.takeWeaponDual(std::make_unique<Weapon>(WeaponId::Sniper)) == nullptr);
    REQUIRE(s.dualActive());
    REQUIRE(s.secondary());
    CHECK(s.secondary()->id() == WeaponId::Sniper);
    CHECK(&s.scopeWeapon() == s.secondaryWeapon());  // the sniper has the stronger scope (7X)

    const int clip1 = s.weapon().clip(), clip2 = s.secondary()->clip();
    PadState fire;
    fire.firing = true;
    for (int i = 0; i < 120; ++i)
        m.step(1.0f / 60.0f, fire);
    CHECK(s.weapon().clip() < clip1);
    CHECK(s.secondary()->clip() < clip2);

    PadState zoom;
    zoom.zoom = true;
    m.step(1.0f / 60.0f, zoom);
    CHECK(s.secondary()->zoomIndex() == 1);  // the scope weapon zoomed, not the AK47
    CHECK(s.weapon().zoomIndex() == 0);
}

TEST_CASE("Zoom labels are the original's digits")
{
    using mm::game::WeaponId;
    using mm::game::zoomLabel;
    CHECK(std::string(zoomLabel(WeaponId::AK47, 2)) == "4X");
    CHECK(std::string(zoomLabel(WeaponId::Sniper, 3)) == "7X");
    CHECK(std::string(zoomLabel(WeaponId::M14, 2)) == "6X");
    CHECK(std::string(zoomLabel(WeaponId::Magnum, 1)) == "3X");
    CHECK(std::string(zoomLabel(WeaponId::Machete, 0)) == "1X");
}
TEST_CASE("Proximity mine: arms after a second, hurts an enemy that walks in, never the owner")
{
    using namespace mm::game;
    const auto data = loadOutpost();
    Match m(*mm::assets::findMap("outpost"), data);
    const int bot = m.addBot("Bot");
    m.spawnFighter(bot);
    for (int i = 0; i < 120; ++i)
        m.step(1.0f / 60.0f, {});
    PadState place;
    place.mine = true;
    m.step(1.0f / 60.0f, place);
    REQUIRE(m.mines().size() == 1);
    CHECK(m.player().mines() == 0);
    m.step(1.0f / 60.0f, place);  // no second mine
    CHECK(m.mines().size() == 1);
    // The owner standing on it does not trigger it.
    for (int i = 0; i < 120; ++i)
        m.step(1.0f / 60.0f, {});
    CHECK(m.mines().size() == 1);
    CHECK(m.player().health() >= 99.0f);
    // Put the bot on the mine: it goes off.
    auto* b = m.fighter(bot)->soldier.get();
    cpBodySetPosition(b->body(), cpv(m.mines()[0].pos.x, m.mines()[0].pos.y + 5));
    for (int i = 0; i < 10; ++i)
        m.step(1.0f / 60.0f, {});
    CHECK(m.mines().empty());
}

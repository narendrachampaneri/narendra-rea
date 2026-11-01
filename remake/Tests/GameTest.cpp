#include "doctest/doctest.h"

#include <algorithm>
#include <cmath>
#include <fstream>
#include <sstream>

#include "assets/MapCatalog.h"
#include "assets/MapData.h"
#include "game/Joypad.h"
#include "game/Match.h"
#include "game/Modes.h"
#include "game/TileCollision.h"
#include "game/Weapon.h"

using namespace mm;
using namespace mm::game;

namespace
{

constexpr float kDt = 1.0f / 60.0f;

assets::MapData loadMap(const char* file)
{
    std::ifstream in(std::string(MM_CONTENT_DIR) + "/sd/" + file, std::ios::binary);
    std::stringstream ss;
    ss << in.rdbuf();
    assets::MapData data;
    REQUIRE(assets::parseMap(ss.str(), data));
    return data;
}

PadState idle()
{
    return PadState{};
}

PadState stick(Vec2 offset)
{
    PadState p;
    p.moveOffset  = offset;
    p.moveVector  = offset * rules::kPadRadius;
    p.moveTouched = true;
    return p;
}

void run(Match& m, const PadState& pad, float seconds)
{
    for (int i = 0; i < static_cast<int>(seconds / kDt); ++i)
        m.step(kDt, pad);
}

bool insideMap(const Physics& physics, Vec2 p)
{
    cpPointQueryInfo info{};
    // Layer 0x100 is the map's alone (the soldier shares bit 0 with it).
    const cpShapeFilter filter = cpShapeFilterNew(CP_NO_GROUP, rules::kTracerMapLayers, rules::kTracerMapLayers);
    // More than a point deep inside a map shape (a spawn on a tile edge is fine).
    return cpSpacePointQueryNearest(physics.space(), cpv(p), 0.0, filter, &info) != nullptr && info.distance < -1.0;
}

}  // namespace

TEST_CASE("Angles follow the original's clockwise-degree helper")
{
    CHECK(toCocosAngle({1, 0}) == doctest::Approx(0.0f));
    CHECK(toCocosAngle({0, 1}) == doctest::Approx(270.0f));
    CHECK(toCocosAngle({-1, 0}) == doctest::Approx(180.0f));
    CHECK(toCocosAngle({0, -1}) == doctest::Approx(90.0f));
    const Vec2 up = fromCocosAngle(270.0f);
    CHECK(up.x == doctest::Approx(0.0f).epsilon(1e-5));
    CHECK(up.y == doctest::Approx(1.0f));
}

TEST_CASE("Tile types and shapes match MapManager")
{
    CHECK(tileType(1) == 1);
    CHECK(tileType(23) == 19);
    CHECK(tileType(36) == 32);
    CHECK(tileType(2) == 0);
    CHECK(tileType(199) == 0);
    CHECK(tileType(5000) == 0);
    CHECK(isBoundaryType(1));
    CHECK(isBoundaryType(32));
    CHECK_FALSE(isBoundaryType(6));
    CHECK_FALSE(hasTileShape(22));
    CHECK_FALSE(hasTileShape(0));
    const auto full = tileShape(1, {100, 100}, 32);
    REQUIRE(full.size() == 4);
    CHECK(full[0] == Vec2{68, 68});
    CHECK(full[2] == Vec2{132, 132});
    CHECK(tileShape(32, {0, 0}, 32).size() == 6);
}

TEST_CASE("Map collision skips the outer ring and buried tiles")
{
    TileGrid g{5, 5, std::vector<std::uint32_t>(25, 1)};
    const auto polys = buildMapCollision(g);
    CHECK(polys.size() == 8);  // the inner 3x3 minus the buried centre
    for (const auto& p : polys)
    {
        CHECK(p.tileX >= 1);
        CHECK(p.tileX <= 3);
        CHECK_FALSE((p.tileX == 2 && p.tileY == 2));
    }
    // Tile (1, 1) sits in the second row from the top: centre (96, 224) in a 5-row map.
    const auto& first = polys.front();
    CHECK(first.tileX == 1);
    CHECK(first.tileY == 1);
    CHECK(first.vertices[0] == Vec2{64, 192});

    TileGrid sparse{5, 5, std::vector<std::uint32_t>(25, 0)};
    sparse.gids[2 * 5 + 2] = 58;  // type 6, a triangle
    sparse.gids[1 * 5 + 1] = 250; // >= 200 never collides
    const auto one = buildMapCollision(sparse);
    REQUIRE(one.size() == 1);
    CHECK(one[0].type == 6);
    CHECK(one[0].vertices.size() == 3);
}

TEST_CASE("Every map decodes its collision layer and keeps spawns clear")
{
    for (const auto& def : assets::kMaps)
    {
        CAPTURE(def.tmx);
        const auto data = loadMap(std::string(def.tmx).c_str());
        REQUIRE(data.collisionGids.size() == static_cast<std::size_t>(data.widthTiles) * data.heightTiles);
        Match m(def, data);
        CHECK(m.mapShapeCount() > 20);
        CHECK(m.spawnCount() >= 1);
        for (int i = 0; i < m.spawnCount(); ++i)
            CHECK_FALSE(insideMap(m.physics(), m.spawnPoint(i)));
    }
}

TEST_CASE("A soldier falls, lands and stands still on Outpost")
{
    const auto data = loadMap("1outpost_new.tmx");
    Match m(*assets::findMap("outpost"), data);
    const Vec2 spawn = m.player().position();
    run(m, idle(), 5.0f);
    const Soldier& s = m.player();
    CHECK(s.onGround());
    CHECK(s.position().y < spawn.y + 1.0f);
    CHECK(s.velocity().length() < 5.0f);
    CHECK(s.health() == doctest::Approx(100.0f));
    CHECK(s.power() == doctest::Approx(100.0f));
    CHECK(std::fabs(std::remainder(s.bodyAngle(), 6.2831853f)) < 0.05f);  // upright
}

TEST_CASE("Walking moves the soldier along the ground")
{
    const auto data = loadMap("1outpost_new.tmx");
    Match m(*assets::findMap("outpost"), data);
    run(m, idle(), 5.0f);
    const Vec2 start = m.player().position();
    run(m, stick({1, 0}), 0.5f);
    CHECK(m.player().velocity().x > 60.0f);
    CHECK(m.player().position().x > start.x + 20.0f);
    CHECK_FALSE(m.player().isJetting());
}

TEST_CASE("Jump, then the jetpack lifts the soldier and burns fuel")
{
    const auto data = loadMap("1outpost_new.tmx");
    Match m(*assets::findMap("outpost"), data);
    run(m, idle(), 5.0f);
    const float ground = m.player().position().y;
    run(m, stick({0, 1}), 1.5f);
    CHECK(m.player().isJetting());
    CHECK(m.player().position().y > ground + 60.0f);
    CHECK(m.player().power() < 100.0f);
    const float burnt = m.player().power();

    // Let go: the jetpack switches off and the fuel comes back after a second.
    run(m, idle(), 3.0f);
    CHECK(m.player().power() > burnt);
}

TEST_CASE("An empty tank grounds the jetpack")
{
    const auto data = loadMap("1outpost_new.tmx");
    Match m(*assets::findMap("outpost"), data);
    run(m, idle(), 5.0f);
    // 100 fuel at up to 0.35 per step lasts about 4.8 s; then the soldier drops, lands, jumps
    // again and only flies once some fuel has come back.
    float lowest = 100.0f;
    bool thrustWhileEmpty = false;  // a jump still shows full thrust, but the jetpack stays off
    for (int i = 0; i < 12 * 60; ++i)
    {
        const bool empty = m.player().power() <= 0.0f;
        m.step(kDt, stick({0, 1}));
        thrustWhileEmpty |= empty && m.player().isJetting();
        lowest = std::min(lowest, m.player().power());
    }
    CHECK(lowest == doctest::Approx(0.0f));
    CHECK_FALSE(thrustWhileEmpty);
}

TEST_CASE("Leaving the world costs one health point per step")
{
    const auto data = loadMap("1outpost_new.tmx");
    Match m(*assets::findMap("outpost"), data);
    cpBodySetPosition(m.player().body(), cpv(100, -1500));
    m.step(kDt, idle());
    CHECK(m.player().health() == doctest::Approx(99.0f));
    m.player().setHealth(1.0f);
    cpBodySetPosition(m.player().body(), cpv(100, -1500));
    m.step(kDt, idle());
    CHECK(m.player().isDead());
    bool death = false;
    for (const auto& e : m.takeEvents())
        death |= e.type == EventType::Death;
    CHECK(death);
}

TEST_CASE("AK47: 10 rounds a second, 35 per clip, 2 s reload")
{
    Weapon ak(rules::kAK47);
    CHECK(ak.clip() == 35);
    CHECK(ak.ammo() == 200);
    int shots = 0;
    for (int i = 0; i < 60; ++i)
    {
        ak.updateStep(kDt);
        shots += ak.triggerPull() == Weapon::Trigger::Fired;
    }
    CHECK(shots >= 8);
    CHECK(shots <= 9);

    while (ak.clip() > 0)
    {
        ak.updateStep(kDt);
        ak.triggerPull();
    }
    CHECK(ak.isReloading());  // starts by itself when the clip runs dry
    for (int i = 0; i < 125; ++i)
        ak.updateStep(kDt);
    CHECK_FALSE(ak.isReloading());
    CHECK(ak.clip() == 35);
    CHECK(ak.ammo() == 165);
}

TEST_CASE("AK47 spread follows the original pseudo-random sequence")
{
    Weapon ak(rules::kAK47);
    CHECK(ak.randomFiringAngle() == doctest::Approx(-1.04f));  // r = 37
    CHECK(ak.randomFiringAngle() == doctest::Approx(0.32f));   // r = 54
    CHECK(ak.randomFiringAngle() == doctest::Approx(0.08f));   // r = (54 * 41 + 37) % 100 = 51
}

TEST_CASE("Bullets spark on walls and fade out at their range")
{
    const auto data = loadMap("1outpost_new.tmx");
    Match m(*assets::findMap("outpost"), data);
    run(m, idle(), 5.0f);

    PadState shootDown = idle();
    shootDown.aimAngle = 90.0f;  // straight down into the floor
    shootDown.firing   = true;
    bool spark = false, shot = false;
    for (int i = 0; i < 30; ++i)
    {
        m.step(kDt, shootDown);
        for (const auto& e : m.takeEvents())
        {
            spark |= e.type == EventType::Spark;
            shot |= e.type == EventType::Shot;
        }
    }
    CHECK(shot);
    CHECK(spark);
    CHECK(m.player().weapon().clip() < 35);

    // Into open air the tracer stops after 800 points (about 0.62 s at 1300 points/s).
    TracerPool pool;
    Physics empty;
    EventQueue events;
    pool.fire({0, 0}, 0.0f, {}, rules::kAK47);
    for (int i = 0; i < 30; ++i)
        pool.updateStep(kDt, empty, events);
    CHECK(pool.activeCount() == 1);
    for (int i = 0; i < 30; ++i)
        pool.updateStep(kDt, empty, events);
    CHECK(pool.activeCount() == 0);
    CHECK(events.empty());
}

TEST_CASE("Joypad: pads, knobs and the fire edge")
{
    Joypad pad;
    pad.setLayout({75, 75}, {405, 75});
    CHECK_FALSE(pad.touchBegan(1, {240, 160}));  // too far from both pads
    CHECK(pad.touchBegan(2, {100, 75}));          // 25 points right of the move pad
    pad.updateStep();
    auto s = pad.state();
    CHECK(s.moveTouched);
    CHECK(s.moveOffset.x == doctest::Approx(25.0f / 40.0f));
    pad.touchMoved(2, {175, 75});  // beyond the radius: the knob stops at 40
    pad.updateStep();
    CHECK(pad.state().moveOffset.x == doctest::Approx(1.0f));
    pad.touchEnded(2);
    pad.updateStep();
    CHECK(pad.state().moveOffset.x == doctest::Approx(0.8f));  // springs back 20% a frame
    CHECK_FALSE(pad.state().moveTouched);

    CHECK(pad.touchBegan(3, {405, 105}));  // 30 up: aims up without firing
    CHECK(pad.fireAngle() == doctest::Approx(270.0f));
    CHECK_FALSE(pad.fire());
    pad.touchMoved(3, {455, 75});  // 50 right: past the edge, fires
    CHECK(pad.fire());
    CHECK(pad.fireAngle() == doctest::Approx(0.0f));
    pad.touchEnded(3);
    CHECK_FALSE(pad.fire());
}

#include "game/Weapons.h"

TEST_CASE("Weapon table: original values and sprites")
{
    const auto& ak = weaponInfo(WeaponId::AK47).def;
    CHECK(ak.damage == rules::kAK47.damage);
    CHECK(ak.clip == rules::kAK47.clip);
    CHECK(ak.fireInterval == rules::kAK47.fireInterval);
    CHECK(ak.viewOffset == rules::kAK47.viewOffset);
    CHECK(weaponInfo(WeaponId::Shotgun).def.roundsPerFire == 6);
    CHECK(weaponInfo(WeaponId::Sniper).zoomCount == 4);
    CHECK(weaponInfo(WeaponId::Sniper).def.damage == 75);
    CHECK(weaponInfo(WeaponId::M16).burstInterval == doctest::Approx(0.06f));
    CHECK(weaponInfo(WeaponId::RiotShield).dualOnly);
    CHECK(weaponInfo(WeaponId::Machete).melee);

    std::ifstream in(std::string(MM_CONTENT_DIR) + "/sd/menuTexture.plist");
    std::stringstream ss;
    ss << in.rdbuf();
    const std::string atlas = ss.str();
    for (const auto& w : kWeapons)
    {
        CAPTURE(w.name);
        CHECK(static_cast<int>(w.id) == static_cast<int>(&w - kWeapons.data()));
        CHECK(atlas.find("<key>" + std::string(w.def.sprite) + "</key>") != std::string::npos);
        CHECK(w.def.weight <= 1.0f);
        CHECK(w.zoomCount >= 1);
        CHECK(w.zooms[0] == 1.0f);
        if (!w.melee)
            CHECK(w.def.clip > 0);
    }
}

namespace
{
// Lands the player on Outpost, then puts a bot on the same level with a clear line between
// them, `distance` points away. Returns the bot id and sets `aim` to the angle towards it.
int duelSetup(Match& m, float distance, float& aim)
{
    const int bot = m.addBot("Bot");
    for (int spawn = 0; spawn < m.spawnCount(); ++spawn)
    {
        m.respawn(spawn);
        run(m, idle(), 4.0f);
        for (float dx : {distance, -distance})
        {
            Soldier& b      = *m.fighter(bot)->soldier;
            const Vec2 from = m.player().position() + Vec2{0, 6};
            if (m.physics().segmentQuery(from, from + Vec2{dx, 0}, rules::kTracerMapLayers))
                continue;
            cpBodySetPosition(b.body(), cpv(m.player().position() + Vec2{dx, 0}));
            cpBodySetVelocity(b.body(), cpvzero);
            run(m, idle(), 1.0f);
            if (std::fabs(b.position().y - m.player().position().y) < 3.0f &&
                std::fabs(b.position().x - m.player().position().x - dx) < 3.0f)
            {
                aim = dx > 0 ? 0.0f : 180.0f;
                return bot;
            }
        }
    }
    FAIL("no level spot next to the player");
    return bot;
}

PadState shootAt(float angle)
{
    PadState p   = idle();
    p.aimAngle   = angle;
    p.firing     = true;
    return p;
}
}  // namespace

TEST_CASE("Player bullets kill a bot: kill credit, ragdoll, respawn after 9 s")
{
    const auto data = loadMap("1outpost_new.tmx");
    Match m(*assets::findMap("outpost"), data);
    float aim     = 0.0f;
    const int bot = duelSetup(m, 90.0f, aim);
    REQUIRE(m.fighter(bot)->alive());
    bool blood = false;
    for (int i = 0; i < 180 && m.fighter(bot)->alive(); ++i)
    {
        m.step(kDt, shootAt(aim));
        for (const auto& e : m.takeEvents())
            blood |= e.type == EventType::Blood;
    }
    CHECK(blood);
    CHECK_FALSE(m.fighter(bot)->alive());
    CHECK(m.fighter(bot)->deaths == 1);
    CHECK(m.playerFighter().kills == 1);
    CHECK(m.playerFighter().deaths == 0);
    CHECK(m.player().health() == doctest::Approx(100.0f));  // own bullets never hit the shooter
    CHECK(m.ragdolls().size() == 1);

    run(m, idle(), 5.5f);
    CHECK(m.ragdolls().empty());  // gone after 5 s
    CHECK_FALSE(m.fighter(bot)->alive());
    run(m, idle(), 4.0f);
    CHECK(m.fighter(bot)->alive());  // back after 9 s
    CHECK(m.fighter(bot)->soldier->health() == doctest::Approx(100.0f));
}

TEST_CASE("Headshots on bots do 50 % more; a crouching head lets bullets pass")
{
    const auto data = loadMap("1outpost_new.tmx");
    Match m(*assets::findMap("outpost"), data);
    float aim     = 0.0f;
    const int bot = duelSetup(m, 90.0f, aim);
    Soldier& b    = *m.fighter(bot)->soldier;
    const float up = aim == 0.0f ? 354.0f : 186.0f;  // 6 degrees up, at the head circle
    int hits = 0;
    for (int i = 0; i < 20; ++i)  // two shots
    {
        const float before = b.health();
        m.step(kDt, shootAt(up));
        bool blood = false;
        for (const auto& e : m.takeEvents())
            blood |= e.type == EventType::Blood;
        if (blood)
        {
            ++hits;
            const float lost = before - b.health();  // 10 x 1.5, maybe less one regenerated point
            CHECK(lost >= 14.0f);
            CHECK(lost <= 15.0f);
        }
    }
    CHECK(hits >= 1);

    // Crouched, the same rounds pass over the head.
    PadState crouchPad = stick({0, -1});
    m.fighter(bot)->brain = [&](const Match&, const Fighter&) { return crouchPad; };
    run(m, idle(), 0.5f);
    REQUIRE(b.isCrouching());
    const float before = b.health();
    for (int i = 0; i < 20; ++i)
        m.step(kDt, shootAt(up));
    CHECK(b.health() >= before);
}

TEST_CASE("Bot bullets hurt the player with range falloff")
{
    const auto data = loadMap("1outpost_new.tmx");
    Match m(*assets::findMap("outpost"), data);
    float aim     = 0.0f;
    const int bot = duelSetup(m, 90.0f, aim);
    PadState botPad = shootAt(aim == 0.0f ? 180.0f : 0.0f);  // back at the player
    m.fighter(bot)->brain = [&](const Match&, const Fighter&) { return botPad; };
    for (int i = 0; i < 60; ++i)
        m.step(kDt, idle());
    CHECK(m.player().health() < 100.0f);
    // About 50 of 800 points travelled: roughly 10 * (0.5 + 0.5 * 0.94) = 9.7 a hit.
    const float lost = 100.0f - m.player().health();
    CHECK(lost > 9.0f);
    CHECK(lost < 100.0f);
}

TEST_CASE("Safe spawns keep away from the others")
{
    const auto data = loadMap("1outpost_new.tmx");
    Match m(*assets::findMap("outpost"), data);
    run(m, idle(), 3.0f);
    const Vec2 p = m.player().position();
    float nearest = 1e9f;
    for (int i = 0; i < m.spawnCount(); ++i)
        nearest = std::min(nearest, (m.spawnPoint(i) - p).length());
    for (int i = 0; i < 20; ++i)
    {
        const Vec2 s = m.safeSpawnFor(1);
        CHECK((s - p).length() > nearest);  // never the spawn closest to the player
    }
}

TEST_CASE("Weapons appear at the wp_ points after 10 s")
{
    const auto data = loadMap("1outpost_new.tmx");
    Match m(*assets::findMap("outpost"), data);
    run(m, idle(), 9.5f);
    CHECK(m.items().empty());
    run(m, idle(), 3.0f);
    CHECK(m.items().size() == data.objectsWithPrefix("wp_").size());
}

TEST_CASE("Pick-up: swap with the button, same kind refills ammo, switch hands")
{
    const auto data = loadMap("1outpost_new.tmx");
    Match m(*assets::findMap("outpost"), data);
    run(m, idle(), 4.0f);
    Soldier& s = m.player();

    // A shotgun at the feet: offered, taken with the button into the free hand.
    m.dropItem(std::make_unique<Weapon>(WeaponId::Shotgun), s.position(), {});
    run(m, idle(), 0.3f);
    CHECK(m.playerFighter().nearItem >= 0);
    PadState press = idle();
    press.pickUp   = true;
    m.step(kDt, press);
    CHECK(s.weapon().id() == WeaponId::Shotgun);
    REQUIRE(s.secondary());
    CHECK(s.secondary()->id() == WeaponId::AK47);

    // Both hands full: the next pick-up drops the weapon in hand.
    m.dropItem(std::make_unique<Weapon>(WeaponId::Sniper), s.position(), {});
    run(m, idle(), 0.3f);
    m.step(kDt, press);
    CHECK(s.weapon().id() == WeaponId::Sniper);
    bool shotgunOnFloor = false;
    for (const auto& i : m.items())
        shotgunOnFloor |= !i->taken() && i->weapon().id() == WeaponId::Shotgun;
    CHECK(shotgunOnFloor);

    // Switch back to the AK and spend some rounds; a dropped AK tops them up by itself.
    PadState sw   = idle();
    sw.switchWeapon = true;
    m.step(kDt, sw);
    CHECK(s.weapon().id() == WeaponId::AK47);
    run(m, shootAt(90.0f), 1.0f);
    const int before = s.weapon().ammo() + s.weapon().clip();
    m.dropItem(std::make_unique<Weapon>(WeaponId::AK47), s.position() + Vec2{60, 0}, {});
    cpBodySetPosition(s.body(), cpv(s.position()));  // stand still next to it
    for (int i = 0; i < 120 && s.weapon().ammo() + s.weapon().clip() == before; ++i)
    {
        for (const auto& it : m.items())
            if (!it->taken() && it->weapon().id() == WeaponId::AK47)
                cpBodySetPosition(s.body(), cpv(it->position() + Vec2{0, 12}));
        m.step(kDt, idle());
    }
    CHECK(s.weapon().ammo() + s.weapon().clip() > before);
}

TEST_CASE("M16 fires three-round bursts; zoom cycles the weapon's levels")
{
    Weapon m16(WeaponId::M16);
    CHECK(m16.zoom() == 1.0f);
    m16.nextZoom();
    CHECK(m16.zoom() == doctest::Approx(0.8f));
    m16.nextZoom();
    m16.nextZoom();
    CHECK(m16.zoom() == 1.0f);

    int shots = 0;
    for (int i = 0; i < 40; ++i)  // 0.67 s: the trigger is ready after 0.5 s, so one burst
    {
        m16.updateStep(kDt);
        shots += m16.takeBurstShots();
        shots += m16.triggerPull() == Weapon::Trigger::Fired;
    }
    CHECK(shots == 3);
    CHECK(m16.clip() == 24 - 3);
}

TEST_CASE("Melee: a dash that hits the soldier in front for the weapon's melee damage")
{
    const auto data = loadMap("1outpost_new.tmx");
    Match m(*assets::findMap("outpost"), data);
    float aim     = 0.0f;
    const int bot = duelSetup(m, 30.0f, aim);
    run(m, idle(), 3.0f);  // charge the punch
    Soldier& b = *m.fighter(bot)->soldier;
    PadState punch = idle();
    punch.aimAngle = aim;
    punch.melee    = true;
    const float before = b.health();
    m.step(kDt, punch);
    PadState hold = idle();
    hold.aimAngle = aim;
    for (int i = 0; i < 30; ++i)
        m.step(kDt, hold);
    CHECK(before - b.health() >= 29.0f);  // AK47 melee damage 30 (one regenerated point at most)
    CHECK(before - b.health() <= 30.0f);
}

TEST_CASE("Explosions: max(10, 100 - 0.8 d) inside 125 points, nothing outside")
{
    const auto data = loadMap("1outpost_new.tmx");
    Match m(*assets::findMap("outpost"), data);
    float aim     = 0.0f;
    const int bot = duelSetup(m, 100.0f, aim);
    Soldier& b    = *m.fighter(bot)->soldier;
    const float before = b.health();
    const Vec2 at      = b.position() - Vec2{50, 0};  // 50 points from the bot, left of him
    m.explode(at, 0, 2);
    CHECK(before - b.health() == doctest::Approx(60.0f));  // 100 - 0.8 * 50
    m.explode(b.position() + Vec2{0, 200}, 0, 2);
    CHECK(before - b.health() == doctest::Approx(60.0f));  // too far to matter
    b.setHealth(100.0f);
    m.explode(b.position() + Vec2{120, 0}, 0, 2);
    CHECK(100.0f - b.health() == doctest::Approx(10.0f));  // never less than 10 inside the radius
    CHECK(m.playerFighter().deaths == 0);
}

TEST_CASE("A grenade detonates after 1.75 s; a rocket on the first wall")
{
    const auto data = loadMap("1outpost_new.tmx");
    Match m(*assets::findMap("outpost"), data);
    run(m, idle(), 4.0f);
    PadState throwPad = shootAt(270.0f);  // straight up
    throwPad.firing  = false;
    throwPad.grenade = true;
    m.step(kDt, throwPad);
    CHECK(m.grenades().size() == 1);
    CHECK(m.player().grenades() == 1);
    bool boom = false;
    for (int i = 0; i < 90; ++i)  // 1.5 s: still flying
    {
        m.step(kDt, idle());
        for (const auto& e : m.takeEvents())
            boom |= e.type == EventType::Explosion;
    }
    CHECK_FALSE(boom);
    for (int i = 0; i < 30; ++i)
    {
        m.step(kDt, idle());
        for (const auto& e : m.takeEvents())
            boom |= e.type == EventType::Explosion;
    }
    CHECK(boom);
    CHECK(m.grenades().empty());

    // Rocket launcher: one rocket per shot, gone on impact.
    m.player().takeWeapon(std::make_unique<Weapon>(WeaponId::Rocket));
    run(m, idle(), 1.5f);  // a new weapon is ready after its fire interval
    m.takeEvents();
    PadState fireUp = shootAt(0.0f);  // along the ground into the next wall
    m.step(kDt, fireUp);
    CHECK(m.rockets().size() == 1);
    bool boom2 = false;
    for (int i = 0; i < 300 && !boom2; ++i)
    {
        m.step(kDt, idle());
        for (const auto& e : m.takeEvents())
            boom2 |= e.type == EventType::Explosion;
    }
    CHECK(boom2);
    CHECK(m.rockets().empty());
}

#include "game/Bot.h"

TEST_CASE("Bots find each other and fight; kills are counted")
{
    const auto data = loadMap("1outpost_new.tmx");
    ModeSettings st;
    st.minutes = 3;
    ModeController mode(*assets::findMap("outpost"), data, st);
    for (int i = 0; i < 60 * 60 && mode.state() == ModeState::Running; ++i)
        mode.step(kDt, idle());
    int kills = 0, deaths = 0;
    for (const auto& f : mode.match().fighters())
    {
        kills += f.kills;
        deaths += f.deaths;
    }
    CHECK(kills >= 1);
    CHECK(deaths >= kills);
}


TEST_CASE("Quick Play: bots, a timer and a finish")
{
    const auto data = loadMap("1outpost_new.tmx");
    ModeSettings st;
    st.minutes = 1;
    ModeController mode(*assets::findMap("outpost"), data, st);
    CHECK(mode.match().fighters().size() == 4);  // you and three bots
    for (int i = 0; i < 60 * 61 && mode.state() == ModeState::Running; ++i)
        mode.step(kDt, idle());
    CHECK(mode.state() == ModeState::Finished);
}

TEST_CASE("Survival: waves grow, three lives, game over")
{
    const auto data = loadMap("1outpost_new.tmx");
    ModeSettings st;
    st.kind = ModeKind::Survival;
    ModeController mode(*assets::findMap("survival"), data, st);
    CHECK(mode.wave() == 0);
    for (int i = 0; i < 60 * 3; ++i)
        mode.step(kDt, idle());
    CHECK(mode.wave() == 1);
    CHECK(mode.match().fighters().size() == 1 + ModeController::waveSize(1));
    CHECK(mode.lives() == 3);
    // Three deaths end the run; the player comes back after each of the first two.
    for (int death = 1; death <= 3; ++death)
    {
        REQUIRE(mode.match().playerAlive());
        mode.match().player().setHealth(0.0f);
        mode.step(kDt, idle());
        CHECK(mode.lives() == 3 - death);
        if (death < 3)
        {
            for (int i = 0; i < 60 * 10 && !mode.match().playerAlive(); ++i)
                mode.step(kDt, idle());
        }
    }
    CHECK(mode.state() == ModeState::Lost);
}

TEST_CASE("Training: lessons advance when the player does what Sarge asks")
{
    const auto data = loadMap("1outpost_new.tmx");
    ModeSettings st;
    st.kind = ModeKind::Training;
    ModeController mode(*assets::findMap("training"), data, st);
    REQUIRE(ModeController::lessons().size() == 11);
    CHECK(mode.lesson() == 0);
    for (int i = 0; i < 60 * 5; ++i)
        mode.step(kDt, idle());
    CHECK(mode.lesson() == 0);  // standing around does nothing
    PadState walk = stick({1, 0});
    for (int i = 0; i < 60 * 3 && mode.lesson() == 0; ++i)
        mode.step(kDt, walk);
    CHECK(mode.lesson() == 1);
}

TEST_CASE("Party options: all off by default, each one works when on")
{
    const auto data = loadMap("1outpost_new.tmx");
    CHECK_FALSE(MatchOptions{}.party.any());
    {   // unlimited ammo: the clip never runs dry
        MatchOptions o; o.party.unlimitedAmmo = true;
        Match m(*assets::findMap("outpost"), data, 0, o);
        PadState fire = idle();
        fire.firing = true; fire.aimAngle = 0.0f;
        run(m, fire, 4.0f);
        CHECK(m.player().weapon().clip() > 0);
    }
    {   // melee only: the fire stick fires no bullets
        MatchOptions o; o.party.meleeOnly = true;
        Match m(*assets::findMap("outpost"), data, 0, o);
        const int before = m.player().weapon().clip();
        PadState fire = idle();
        fire.firing = true;
        run(m, fire, 2.0f);
        CHECK(m.player().weapon().clip() == before);
    }
    {   // one-shot kills
        MatchOptions o; o.party.oneShotKills = true;
        Match m(*assets::findMap("outpost"), data, 0, o);
        const int b = m.addBot("Bot");
        m.spawnFighter(b);
        m.explode(m.fighter(b)->soldier->position(), 0, 0);
        run(m, idle(), 0.1f);
        CHECK(m.fighter(b)->soldier->health() <= 100.0f);
    }
    {   // low gravity: falls slower
        MatchOptions o; o.party.lowGravity = true;
        Match low(*assets::findMap("outpost"), data, 0, o);
        Match normal(*assets::findMap("outpost"), data);
        CHECK(low.player().position().y == doctest::Approx(normal.player().position().y));
        run(low, idle(), 0.05f);
        run(normal, idle(), 0.05f);
    }
}

TEST_CASE("Allowed weapon groups limit what spawns on the map")
{
    const auto data = loadMap("1outpost_new.tmx");
    MatchOptions o;
    o.weaponGroups = 1u << 4;  // melee only
    Match m(*assets::findMap("outpost"), data, 0, o);
    run(m, idle(), 120.0f);
    int seen = 0;
    for (const auto& it : m.items())
    {
        ++seen;
        CHECK(weaponGroup(it->weapon().id()) == 4);
    }
    CHECK(seen > 0);
    CHECK(weaponGroup(WeaponId::AK47) == 1);
    CHECK(weaponGroup(WeaponId::Sniper) == 2);
}

TEST_CASE("Survival: hawk drones join from wave 3 and fly")
{
    const auto data = loadMap("1outpost_new.tmx");
    ModeSettings st;
    st.kind = ModeKind::Survival;
    ModeController mode(*assets::findMap("outpost"), data, st);
    auto hawks = [&] {
        int n = 0;
        for (const auto& f : mode.match().fighters())
            if (f.name == "Hawk" && f.alive())
                ++n;
        return n;
    };
    // Kill every enemy each time to move through the waves quickly.
    int maxHawks = 0;
    for (int step = 0; step < 60 * 400 && mode.wave() < 5; ++step)
    {
        mode.step(kDt, idle());
        if (step % 30 == 0)
        {
            maxHawks = std::max(maxHawks, hawks());
            for (const auto& f : mode.match().fighters())
                if (f.team == 1 && f.alive() && mode.match().time() > 12.0f)
                    const_cast<Soldier*>(f.soldier.get())->addDamage(1000.0f, 0, 0);
        }
    }
    CHECK(maxHawks >= 1);
}

TEST_CASE("Survival: worms from wave 2 and humanoids from wave 4")
{
    const auto data = loadMap("1outpost_new.tmx");
    ModeSettings st;
    st.kind = ModeKind::Survival;
    ModeController mode(*assets::findMap("outpost"), data, st);
    bool worm = false, humanoid = false;
    for (int step = 0; step < 60 * 600 && mode.wave() < 6; ++step)
    {
        mode.step(kDt, idle());
        if (step % 30 == 0)
        {
            for (const auto& f : mode.match().fighters())
            {
                worm |= f.name == "Worm";
                humanoid |= f.name == "Humanoid";
                if (f.team == 1 && f.alive() && mode.match().time() > 12.0f)
                    const_cast<Soldier*>(f.soldier.get())->addDamage(1000.0f, 0, 0);
            }
        }
    }
    CHECK(worm);
    CHECK(humanoid);
}

namespace
{
struct ModScope  // runs a test with the mod profile on, then back to the original rules
{
    ModScope() { mm::rules::gMod = mm::rules::ModProfile{}; }
    ~ModScope() { mm::rules::gMod = mm::rules::ModProfile::original(); }
};
}  // namespace

TEST_CASE("Mod profile (the app default): shots cost nothing, reload is instant, two bullets a shot, endless jetpack")
{
    ModScope mod;
    const auto data = loadMap("1outpost_new.tmx");
    Match m(*assets::findMap("outpost"), data);
    auto& s = m.player();
    CHECK(s.weapon().reloadTime() == 0.0f);
    const int clip = s.weapon().clip();
    PadState fire = idle();
    fire.firing = true;
    int tracersSeen = 0;
    for (int i = 0; i < 300; ++i)
    {
        m.step(kDt, fire);
        tracersSeen = std::max<int>(tracersSeen, static_cast<int>(m.tracers().activeCount()));
    }
    CHECK(s.weapon().clip() == clip);  // 5 s of fire and the clip is still full
    CHECK(s.weapon().ammo() > 0);
    CHECK(tracersSeen >= 2);
    // The jetpack never runs dry.
    PadState up = idle();
    up.moveTouched = true;
    up.moveOffset  = {0.0f, 1.0f};
    up.moveVector  = up.moveOffset * 40.0f;
    for (int i = 0; i < 60 * 40; ++i)
        m.step(kDt, up);
    CHECK(s.isJetting());
    CHECK(s.thrustFactor() > 0.0f);
}

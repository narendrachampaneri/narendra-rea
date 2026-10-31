// One single-device match on one map: the physics space, the map collision, the fighters
// (the local player and bots) and the bullets, stepped in the order of Stage::updateStep.
#pragma once

#include <functional>
#include <memory>
#include <random>
#include <string>
#include <vector>

#include "assets/MapCatalog.h"
#include "assets/MapData.h"
#include "game/Events.h"
#include "game/Items.h"
#include "game/Joypad.h"
#include "game/Physics.h"
#include "game/Ragdoll.h"
#include "game/Soldier.h"
#include "game/Tracers.h"

namespace mm::game
{

class Match;
struct Fighter;

// Decides a bot's pad state for this step (M4 AI); a fighter without one stands still.
using Brain = std::function<PadState(const Match&, const Fighter&)>;

struct Fighter
{
    int id = 0;
    std::string name;
    int team = 0;          // 0 = everyone for himself
    bool human = false;    // the local player (collision 0x15); bots are 0x84
    std::unique_ptr<Soldier> soldier;  // empty while dead
    float respawnTimer = 0.0f;
    int kills = 0, deaths = 0;
    Brain brain;
    int nearItem = -1;     // uid of a weapon within reach that would be a swap (pick-up button)

    bool alive() const { return soldier && !soldier->isDead(); }
};

struct MatchOptions
{
    float respawnTime = 9.0f;  // SoldierManager::respawnPlayer: 9 s
    bool respawn      = true;  // unlimited lives (SoldierManager +0x35)
    std::uint32_t seed = 1;
};

class Match
{
public:
    Match(const assets::MapDef& def, const assets::MapData& data, int spawnIndex = 0, MatchOptions options = {});
    ~Match();

    // Adds a bot; returns its id. The local player is fighter 0, created by the constructor.
    int addBot(std::string name, Brain brain = {}, int team = 0);

    // One fixed step. `pad` is the local player's joypad state for this frame.
    void step(float dt, const PadState& pad);

    Soldier& player() { return *_fighters.front().soldier; }
    const Soldier& player() const { return *_fighters.front().soldier; }
    bool playerAlive() const { return _fighters.front().alive(); }
    const Fighter& playerFighter() const { return _fighters.front(); }
    const std::vector<Fighter>& fighters() const { return _fighters; }
    Fighter* fighter(int id);
    const std::vector<std::unique_ptr<Ragdoll>>& ragdolls() const { return _ragdolls; }
    const std::vector<std::unique_ptr<MapItem>>& items() const { return _items; }
    const MapItem* item(int uid) const;

    struct Grenade
    {
        cpBody* body   = nullptr;
        cpShape* shape = nullptr;
        float fuse     = rules::kGrenadeFuse;
        int owner      = -1;
        Vec2 gravity;
    };
    struct Rocket
    {
        Vec2 pos, prev, velocity;
        float life = rules::kRocketLife;
        int owner  = -1;
        bool alive = true;
    };
    const std::vector<std::unique_ptr<Grenade>>& grenades() const { return _grenades; }
    const std::vector<Rocket>& rockets() const { return _rockets; }
    // Explosion::applyDamage around a point: soldiers within 125 points take
    // max(10, 100 - 0.8 d) and a push away from the blast.
    void explode(Vec2 at, int owner, int ammoType);
    // Drops a weapon at a point (tests, and dropped weapons).
    int dropItem(std::unique_ptr<Weapon> weapon, Vec2 at, Vec2 velocity, int spawn = -1);

    const TracerPool& tracers() const { return _tracers; }
    Physics& physics() { return _physics; }
    const Physics& physics() const { return _physics; }
    std::size_t mapShapeCount() const { return _physics.mapShapeCount(); }
    const assets::MapDef& def() const { return _def; }
    float time() const { return _time; }

    // Sounds and effects since the last call.
    EventQueue takeEvents();

    // Puts the player back at a spawn point at once (used by the M3 slice and tests).
    void respawn(int spawnIndex);
    Vec2 spawnPoint(int index) const;
    int spawnCount() const { return static_cast<int>(_spawns.size()); }
    // SoldierManager::getRandomSafeSpawnPoint: spawns scored by their total distance to the
    // other fighters, a random one of the better half.
    Vec2 safeSpawnFor(int fighterId);

private:
    void spawn(Fighter& f, Vec2 at);
    void killFighter(Fighter& f);
    bool onBulletHit(Tracer& t, cpShape* shape, Vec2 point);
    void hitSoldier(Fighter& victim, cpShape* shape, float damage, bool network, int attacker, int ammoType,
                    Vec2 point, Vec2 dir);
    void updateWeaponSpawns(float dt);
    void updatePickUps(Fighter& f, bool pickUpPressed);
    void updateMelee(Fighter& f);
    void fireShots(Fighter& f, int shots);

    struct WeaponSpawn
    {
        Vec2 pos;
        float nextSpawn = 0.0f;  // "NextSpawnElapsed"
        int item        = -1;    // "WeaponInstanceUUID"
    };
    std::vector<WeaponSpawn> _weaponSpawns;
    std::vector<std::unique_ptr<MapItem>> _items;
    std::vector<std::unique_ptr<Grenade>> _grenades;
    std::vector<Rocket> _rockets;
    void throwGrenade(Fighter& f);
    void launchRocket(Fighter& f);
    void updateExplosives(float dt);
    int _nextItemUid    = 1;
    std::size_t _spawnCursor = 0;
    float random11();  // uniform in [-1, 1]

    const assets::MapDef& _def;
    MatchOptions _options;
    Physics _physics;
    EventQueue _events;
    std::vector<Vec2> _spawns;
    std::vector<Fighter> _fighters;
    std::vector<std::unique_ptr<Ragdoll>> _ragdolls;
    TracerPool _tracers;
    std::mt19937 _rng;
    float _time = 0.0f;
};

}  // namespace mm::game

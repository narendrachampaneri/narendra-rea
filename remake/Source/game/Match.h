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
#include "net/Protocol.h"

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
    std::unique_ptr<Soldier> soldier;  // empty until first spawned; dead soldiers stay until respawn
    bool remote = false;     // a person on another phone: steered by netInput (host) or by snapshots (client)
    PadState netInput;       // the latest input of a remote player (host side)
    float respawnTimer = 0.0f;
    int kills = 0, deaths = 0;
    Brain brain;
    economy::Boosts boosts;  // purchased upgrades of this fighter (none in Fair mode)
    int lives = -1;        // -1 = unlimited; a death uses one, at 0 the fighter stays dead
    int nearItem = -1;     // uid of a weapon within reach that would be a swap (pick-up button)

    bool alive() const { return soldier && !soldier->isDead(); }
};

// Host "party" options (M7 extras). Everything is off by default: with all of them off the
// match plays exactly like the original rules.
struct PartyOptions
{
    bool lowGravity     = false;
    bool unlimitedAmmo  = false;
    bool oneShotKills   = false;
    bool meleeOnly      = false;
    bool any() const { return lowGravity || unlimitedAmmo || oneShotKills || meleeOnly; }
};

struct MatchOptions
{
    PartyOptions party;
    float respawnTime = 9.0f;  // SoldierManager::respawnPlayer: 9 s
    bool createLocal  = true;  // false: a client mirror; fighters are added with addFighter()
    int localId       = 0;     // the fighter this phone controls
    bool mirror       = false; // client mirror: no soldier logic, driven by applySnapshot()
    bool allowBoosts   = true;  // purchased upgrades count (off in Fair mode)
    bool weaponPickups = true; // weapons spawn on the map (off in Fair mode)
    std::uint8_t weaponGroups = 0x1f;  // which pick-up groups may spawn (Weapons.h weaponGroup)
    bool friendlyFire  = false; // team mates hurt each other (never, in the original rules)
    bool respawn      = true;  // bots come back (unlimited lives, SoldierManager +0x35)
    bool playerRespawn = true; // the local player comes back
    float damageScale  = 1.0f;  // host stat: damage dealt
    float gravityScale = 1.0f;  // host stat: gravity
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

    Soldier& player() { return *fighter(_options.localId)->soldier; }
    const Soldier& player() const { return *const_cast<Match*>(this)->fighter(_options.localId)->soldier; }
    bool playerAlive() const { return const_cast<Match*>(this)->fighter(_options.localId)->alive(); }
    const Fighter& playerFighter() const { return *const_cast<Match*>(this)->fighter(_options.localId); }
    bool hasPlayer() const { return const_cast<Match*>(this)->fighter(_options.localId) && playerFighter().soldier; }

    // Multiplayer: a person on another phone (host) or any fighter of a client mirror.
    int addFighter(int id, std::string name, int team, bool local, bool remote);
    void setRemoteInput(int id, const PadState& in);
    void spawnFighter(int id);
    void addMirrorSoldier(int id, Vec2 at);          // client: before the first snapshot arrives                       // at the safest spawn point
    void removeFighter(int id);                      // someone left
    void giveWeapon(int id, WeaponId w);
    void setUpgrades(int id, std::uint16_t ownedMask);  // applied at the next spawn, and now if alive
    // What the host sends / what a client mirror applies (see net/Protocol.h).
    void makeSnapshot(net::Snapshot& out) const;
    void applySnapshot(const net::Snapshot& s);
    void makeItemList(net::ItemList& out) const;
    void applyItemList(const net::ItemList& l);
    // A client mirror's step: physics for ragdolls, effects and timers only.
    void stepMirror(float dt, const PadState& localPad);
    void pushEvent(const GameEvent& e) { _events.push_back(e); }
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
        bool gas = false;
    };
    struct GasCloud { Vec2 pos; float life = rules::kGasLife; int owner = -1; };
    const std::vector<GasCloud>& gasClouds() const { return _gas; }
    struct Mine { Vec2 pos; float age = 0.0f; int owner = -1; };
    const std::vector<Mine>& mines() const { return _mines; }
    struct Rocket
    {
        Vec2 pos, prev, velocity;
        float life = rules::kRocketLife;
        int owner  = -1;
        bool alive = true;
        bool emp   = false;
    };
    const std::vector<std::unique_ptr<Grenade>>& grenades() const { return _grenades; }
    struct GrenadeView { Vec2 pos; float angle; };
    std::vector<GrenadeView> grenadeViews() const;
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
    void updatePickUps(Fighter& f, bool pickUpPressed, bool pickUpDualPressed);
    void updateMelee(Fighter& f);
    void fireShots(Fighter& f, int shots, Weapon* gun = nullptr);

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
    std::vector<GasCloud> _gas;
    std::vector<Mine> _mines;
    void placeMine(Fighter& f);
    std::vector<GrenadeView> _netGrenades;  // mirror only
    void throwGrenade(Fighter& f);
    void launchRocket(Fighter& f);
    void empBlast(Vec2 at, int owner);
    void updateExplosives(float dt);
    int _nextItemUid    = 1;
    std::size_t _spawnCursor = 0;
    float gravityFactor() const;
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

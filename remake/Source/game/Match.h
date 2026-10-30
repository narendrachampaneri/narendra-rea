// One single-device match on one map: the physics space, the map collision, the local soldier
// and the bullets, stepped in the order of Stage::updateStep.
#pragma once

#include <memory>

#include "assets/MapCatalog.h"
#include "assets/MapData.h"
#include "game/Events.h"
#include "game/Joypad.h"
#include "game/Physics.h"
#include "game/Soldier.h"
#include "game/Tracers.h"

namespace mm::game
{

class Match
{
public:
    Match(const assets::MapDef& def, const assets::MapData& data, int spawnIndex = 0);
    ~Match();

    // One fixed step. `pad` is the joypad state for this frame.
    void step(float dt, const PadState& pad);

    Soldier& player() { return *_player; }
    const Soldier& player() const { return *_player; }
    const TracerPool& tracers() const { return _tracers; }
    Physics& physics() { return _physics; }
    std::size_t mapShapeCount() const { return _physics.mapShapeCount(); }

    // Sounds and effects since the last call.
    EventQueue takeEvents();

    // Respawn the player at a spawn point (NEW for the slice: the original respawns through
    // the match rules, which arrive in M4).
    void respawn(int spawnIndex);
    Vec2 spawnPoint(int index) const;
    int spawnCount() const { return static_cast<int>(_spawns.size()); }

private:
    const assets::MapDef& _def;
    Physics _physics;
    EventQueue _events;
    std::vector<Vec2> _spawns;
    std::unique_ptr<Soldier> _player;
    TracerPool _tracers;
};

}  // namespace mm::game

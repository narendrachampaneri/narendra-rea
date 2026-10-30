#include "game/Match.h"

#include <algorithm>

namespace mm::game
{

Match::Match(const assets::MapDef& def, const assets::MapData& data, int spawnIndex) : _def(def)
{
    TileGrid grid{data.widthTiles, data.heightTiles, data.collisionGids};
    if (grid.gids.size() == static_cast<std::size_t>(grid.width) * grid.height)
        _physics.addMap(buildMapCollision(grid, assets::kTilePoints));
    Soldier::installCollisionHandlers(_physics.space());

    for (const auto* o : data.objectsWithPrefix("sp_"))  // MapManager::loadMap: objectsNamed("sp_")
        _spawns.push_back({o->x + o->width / 2.0f, o->y + o->height / 2.0f});
    if (_spawns.empty())
        _spawns.push_back({data.widthPoints() / 2.0f, data.heightPoints() / 2.0f});
    respawn(spawnIndex);
}

Match::~Match()
{
    _player.reset();  // the soldier's body leaves the space before the space goes
}

Vec2 Match::spawnPoint(int index) const
{
    const int n = static_cast<int>(_spawns.size());
    return _spawns[static_cast<std::size_t>(((index % n) + n) % n)];
}

void Match::respawn(int spawnIndex)
{
    _player.reset();
    _player = std::make_unique<Soldier>(_physics, spawnPoint(spawnIndex), _def.gravityFactor, _events);
}

void Match::step(float dt, const PadState& pad)
{
    dt = std::min(dt, rules::kMaxFrameDt);
    _physics.step(dt);  // contact callbacks fill the soldier's contact flags

    Soldier& s = *_player;
    s.setFireAngle(pad.aimAngle);
    s.updateStep(dt, pad);
    s.setJoyOffset(pad.moveOffset);

    if (pad.firing && s.fire())
    {
        auto& weapon = s.weapon();
        const Vec2 muzzle = s.muzzlePosition();
        for (int i = 0; i < weapon.def().roundsPerFire; ++i)
            _tracers.fire(muzzle, s.fireAngle() + weapon.randomFiringAngle(), s.velocity(), weapon.def());
        GameEvent e{EventType::Shot};
        e.pos = muzzle;
        e.dir = fromCocosAngle(s.fireAngle());
        _events.push_back(e);
    }
    _tracers.updateStep(dt, _physics, _events);
}

EventQueue Match::takeEvents()
{
    EventQueue out;
    out.swap(_events);
    return out;
}

}  // namespace mm::game

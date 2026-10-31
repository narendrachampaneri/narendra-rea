// Weapons lying on the map (Item / WeaponManager): spawned at the map's wp_ points, dropped
// by soldiers, picked up within 35 points.
#pragma once

#include <memory>
#include <vector>

#include "chipmunk/chipmunk.h"

#include "game/Vec2.h"
#include "game/Weapon.h"

namespace mm::game
{

class Physics;

class MapItem
{
public:
    MapItem(Physics& physics, int uid, std::unique_ptr<Weapon> weapon, Vec2 at, Vec2 velocity, float gravityFactor);
    ~MapItem();
    MapItem(const MapItem&) = delete;
    MapItem& operator=(const MapItem&) = delete;

    int uid() const { return _uid; }
    Weapon& weapon() { return *_weapon; }
    const Weapon& weapon() const { return *_weapon; }
    std::unique_ptr<Weapon> take() { return std::move(_weapon); }
    bool taken() const { return !_weapon; }
    Vec2 position() const;
    float angle() const;

    int spawn = -1;     // index of the wp_ point it came from, -1 when dropped
    float age = 0.0f;

    // Items pass through soldiers (the original's item/soldier handler); once per space.
    static void installCollisionHandlers(cpSpace* space);

private:
    Physics& _physics;
    int _uid;
    std::unique_ptr<Weapon> _weapon;
    cpBody* _body   = nullptr;
    cpShape* _shape = nullptr;
    Vec2 _gravity;
};

}  // namespace mm::game

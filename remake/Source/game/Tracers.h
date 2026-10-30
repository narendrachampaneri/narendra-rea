// Bullets: a pool of 30 tracers (ProjectileManager::addBodyShapeSprite / Tracer). They are not
// physics bodies: each step they move in a straight line and ray-cast from where they were.
#pragma once

#include <array>
#include <functional>

#include "chipmunk/chipmunk.h"

#include "game/Events.h"
#include "game/Rules.h"
#include "game/Vec2.h"

namespace mm::game
{

class Physics;

struct Tracer
{
    bool active = false;
    bool fresh  = false;  // Tracer +0xa0: the step it was fired it does not move
    Vec2 pos, prev, start, velocity;
    float angle     = 0.0f;  // clockwise degrees (sprite rotation)
    float range     = 0.0f;
    float travelled = 0.0f;
    float trail     = 1.0f;    // sprite x scale, grows into a streak
    float opacity   = 255.0f;  // fades over the last 100 points of range
    int damage      = 0;
    int ammoType    = 0;
    int owner       = -1;  // shooter id (Projectile shooter peer id)
    std::uint32_t layers = rules::kHostBulletLayers;  // what it may hit besides the map
    bool headshot   = false;  // Projectile +0x98

    // Projectile::getDamage: full damage at the muzzle, half at the end of the range.
    float falloffDamage() const
    {
        const float left = 1.0f - travelled / range;
        return static_cast<float>(damage) * (left <= 0.0f ? 0.5f : left * 0.5f + 0.5f);
    }
};

// Called for a bullet that reached a shape on its `layers` before any wall. Returns true when
// the bullet is used up (a soldier's hit), false to let it fly on (a crouching head).
using TracerHit = std::function<bool(Tracer&, cpShape*, Vec2 point)>;

class TracerPool
{
public:
    // ProjectileManager::addBullet + Tracer::reset.
    void fire(Vec2 from, float cocosAngle, Vec2 shooterVelocity, const rules::WeaponDef& weapon,
              int owner = -1, std::uint32_t layers = rules::kHostBulletLayers);

    // ProjectileManager::updateStep -> Tracer::updateStep -> Tracer::checkCollision.
    void updateStep(float dt, const Physics& physics, EventQueue& events, const TracerHit& onHit = {});

    const std::array<Tracer, rules::kTracerPool>& tracers() const { return _pool; }
    int activeCount() const;

private:
    std::array<Tracer, rules::kTracerPool> _pool{};
    int _next = 0;
};

}  // namespace mm::game

// Bullets: a pool of 30 tracers (ProjectileManager::addBodyShapeSprite / Tracer). They are not
// physics bodies: each step they move in a straight line and ray-cast from where they were.
#pragma once

#include <array>

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
};

class TracerPool
{
public:
    // ProjectileManager::addBullet + Tracer::reset.
    void fire(Vec2 from, float cocosAngle, Vec2 shooterVelocity, const rules::WeaponDef& weapon);

    // ProjectileManager::updateStep -> Tracer::updateStep -> Tracer::checkCollision.
    void updateStep(float dt, const Physics& physics, EventQueue& events);

    const std::array<Tracer, rules::kTracerPool>& tracers() const { return _pool; }
    int activeCount() const;

private:
    std::array<Tracer, rules::kTracerPool> _pool{};
    int _next = 0;
};

}  // namespace mm::game

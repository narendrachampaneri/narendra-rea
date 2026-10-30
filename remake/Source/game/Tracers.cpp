#include "game/Tracers.h"

#include <algorithm>

#include "game/Physics.h"

namespace mm::game
{

void TracerPool::fire(Vec2 from, float cocosAngle, Vec2 shooterVelocity, const rules::WeaponDef& weapon)
{
    if (_next >= static_cast<int>(_pool.size()))
        _next = 0;
    Tracer& t   = _pool[_next++];
    t           = Tracer{};
    t.active    = true;
    t.fresh     = true;
    t.pos       = t.prev = t.start = from;
    t.angle     = cocosAngle;
    t.range     = weapon.range;
    t.damage    = weapon.damage;
    t.ammoType  = weapon.ammoType;
    t.velocity  = fromCocosAngle(cocosAngle) * weapon.bulletSpeed + shooterVelocity * rules::kTracerInheritVelocity;
}

int TracerPool::activeCount() const
{
    return static_cast<int>(std::count_if(_pool.begin(), _pool.end(), [](const Tracer& t) { return t.active; }));
}

void TracerPool::updateStep(float dt, const Physics& physics, EventQueue& events)
{
    for (Tracer& t : _pool)
    {
        if (!t.active)
            continue;
        if (!t.fresh)
        {
            // Projectile::updateStep: range, fade and streak, then Tracer moves it.
            t.prev      = t.pos;
            t.travelled = (t.pos - t.start).length();
            if (t.travelled <= t.range)
            {
                const float left = t.range - t.travelled;
                if (left < rules::kTracerFade)
                    t.opacity = std::max(0.0f, left / rules::kTracerFade * 255.0f);
            }
            else
            {
                t.active = false;
                continue;
            }
            if (t.ammoType == 7)  // AK47 rounds: the streak grows 45x per second up to 15x
                t.trail = std::min(t.trail + dt * 45.0f, 15.0f);
            t.pos += t.velocity * dt;
        }
        t.fresh = false;

        // Tracer::checkCollision: the map, and what host bullets may hit (nothing yet in M3).
        const auto wall   = physics.segmentQuery(t.prev, t.pos, rules::kTracerMapLayers);
        const auto target = physics.segmentQuery(t.prev, t.pos, rules::kHostBulletLayers);
        const bool targetIsItem = target && cpShapeGetCollisionType(target.shape) == rules::kItemCollision;
        if (wall && (!target || targetIsItem || wall.alpha <= target.alpha))
        {
            // Tracer::onSpark: the bullet stops on the wall and throws sparks.
            t.pos    = wall.point;
            t.active = false;
            GameEvent e{EventType::Spark};
            e.pos = wall.point;
            e.dir = wall.normal;
            events.push_back(e);
        }
    }
}

}  // namespace mm::game

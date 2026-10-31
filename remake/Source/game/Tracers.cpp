#include "game/Tracers.h"

#include <algorithm>
#include <cmath>

#include "game/Physics.h"

namespace mm::game
{

void TracerPool::fire(Vec2 from, float cocosAngle, Vec2 shooterVelocity, const rules::WeaponDef& weapon,
                      int owner, std::uint32_t layers)
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
    t.owner     = owner;
    t.layers    = layers;
    t.velocity  = fromCocosAngle(cocosAngle) * weapon.bulletSpeed + shooterVelocity * rules::kTracerInheritVelocity;
}

int TracerPool::activeCount() const
{
    return static_cast<int>(std::count_if(_pool.begin(), _pool.end(), [](const Tracer& t) { return t.active; }));
}

void TracerPool::updateStep(float dt, const Physics& physics, EventQueue& events, const TracerHit& onHit)
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

        // Tracer::checkCollision: the map, and what this bullet may hit.
        const auto wall   = physics.segmentQuery(t.prev, t.pos, rules::kTracerMapLayers);
        const auto target = physics.segmentQuery(t.prev, t.pos, t.layers);
        const bool targetIsItem = target && cpShapeGetCollisionType(target.shape) == rules::kItemCollision;
        if (target && !targetIsItem && (!wall || target.alpha < wall.alpha) && onHit)
        {
            if (onHit(t, target.shape, target.point))
            {
                t.pos    = target.point;
                t.active = false;
                continue;
            }
        }
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

namespace mm::game
{

void TracerPool::toNet(std::vector<net::TracerState>& out) const
{
    for (const Tracer& t : _pool)
    {
        if (!t.active || t.fresh)
            continue;
        const float deg = std::fmod(std::fmod(t.angle, 360.0f) + 360.0f, 360.0f);
        out.push_back({t.pos.x, t.pos.y, static_cast<std::uint16_t>(deg * 10.0f),
                       static_cast<std::uint8_t>(std::min(t.trail, 15.0f) * 16.0f),
                       static_cast<std::uint8_t>(std::clamp(t.opacity, 0.0f, 255.0f))});
    }
}

void TracerPool::setFromNet(const std::vector<net::TracerState>& states)
{
    for (std::size_t i = 0; i < _pool.size(); ++i)
    {
        Tracer& t = _pool[i];
        if (i < states.size())
        {
            t.active  = true;
            t.fresh   = false;
            t.pos     = {states[i].x, states[i].y};
            t.angle   = states[i].angle / 10.0f;
            t.trail   = states[i].trail / 16.0f;
            t.opacity = states[i].opacity;
        }
        else
            t.active = false;
    }
}

}  // namespace mm::game

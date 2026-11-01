#include "game/Bot.h"

#include <cmath>
#include <memory>
#include <random>

namespace mm::game
{

namespace
{
struct BotState
{
    BotSkill skill;
    std::mt19937 rng;
    int target = -1;
    float seen = 0.0f;   // how long the target has been in view
    float wander = 0.0f; // seconds left of the current wander direction
    float dir = 1.0f;
    float lastTime = 0.0f;
    Vec2 lastPos;
    float stuck = 0.0f;     // seconds without getting anywhere while trying to
    float unstick = 0.0f;   // seconds left of a detour
    float detour = 1.0f;
};
}  // namespace

Brain makeBotBrain(BotSkill skill, std::uint32_t seed)
{
    auto st   = std::make_shared<BotState>();
    st->skill = skill;
    st->rng.seed(seed);
    return [st](const Match& m, const Fighter& me) -> PadState {
        PadState pad;
        if (!me.alive())
            return pad;
        const float dt = std::max(0.0f, m.time() - st->lastTime);
        st->lastTime   = m.time();
        const Soldier& self = *me.soldier;
        const Vec2 p        = self.position();

        // Nearest living enemy (teams: same non-zero team is a friend).
        const Fighter* best = nullptr;
        float bestDist      = 1e9f;
        for (const auto& f : m.fighters())
        {
            if (f.id == me.id || !f.alive() || (me.team != 0 && f.team == me.team))
                continue;
            const float d = (f.soldier->position() - p).length();
            if (d < bestDist)
            {
                bestDist = d;
                best     = &f;
            }
        }
        std::uniform_real_distribution<float> u(-1.0f, 1.0f);
        if (!best)
        {
            st->target = -1;
            st->wander -= dt;
            if (st->wander <= 0.0f)
            {
                st->wander = 1.0f + std::fabs(u(st->rng)) * 3.0f;
                st->dir    = u(st->rng) > 0.0f ? 1.0f : -1.0f;
            }
            pad.moveTouched = true;
            pad.moveOffset  = {st->dir * 0.5f, 0.0f};
            pad.moveVector  = pad.moveOffset * rules::kPadRadius;
            return pad;
        }

        const Vec2 q    = best->soldier->position();
        const Vec2 d    = q - p;
        const bool clear = !m.physics().segmentQuery(p + Vec2{0, 6}, q + Vec2{0, 6}, rules::kTracerMapLayers);
        if (best->id != st->target)
        {
            st->target = best->id;
            st->seen   = 0.0f;
        }
        st->seen = clear ? st->seen + dt : 0.0f;

        // Stuck detection: trying to move but barely going anywhere for a while -> detour.
        if ((p - st->lastPos).length() < 6.0f * std::max(dt, 0.001f) * 60.0f * 0.2f)
            st->stuck += dt;
        else
            st->stuck = 0.0f;
        st->lastPos = p;
        if (st->stuck > 1.2f && st->unstick <= 0.0f)
        {
            st->unstick = 1.5f;
            st->detour  = u(st->rng) > 0.0f ? 1.0f : -1.0f;
            st->stuck   = 0.0f;
        }

        // Move: keep a fighting distance, climb towards a target above.
        float moveX = 0.0f, moveY = 0.0f;
        const float want = st->skill.fireRange * 0.45f;
        if (std::fabs(d.x) > want)
            moveX = d.x > 0 ? 1.0f : -1.0f;
        else if (std::fabs(d.x) < want * 0.4f && clear)
            moveX = d.x > 0 ? -0.6f : 0.6f;
        if (d.y > 40.0f || (!clear && d.y > -20.0f))
            moveY = 1.0f;  // jump, then the jetpack
        else if (d.y < -120.0f && self.onGround())
            moveY = -0.2f;
        if (!clear && d.y > 40.0f && std::fabs(d.x) > 20.0f)
            moveX = d.x > 0 ? 1.0f : -1.0f;  // get under / beside the way up
        if (st->unstick > 0.0f)
        {
            st->unstick -= dt;
            moveX = st->detour;
            moveY = 1.0f;
        }
        if (self.power() < 5.0f)
            moveY = 0.0f;  // let the tank refill
        pad.moveTouched = moveX != 0.0f || moveY != 0.0f;
        pad.moveOffset  = {moveX, moveY};
        pad.moveVector  = pad.moveOffset * rules::kPadRadius;

        // Aim and fire.
        const float error = u(st->rng) * st->skill.aimError;
        pad.aimAngle      = toCocosAngle(d + Vec2{0, 8}) + error;
        pad.firing        = clear && bestDist < st->skill.fireRange && st->seen > st->skill.reaction;
        if (self.weapon().clip() == 0 && self.weapon().ammo() > 0)
            pad.reload = true;
        pad.pickUp = me.nearItem >= 0;
        return pad;
    };
}

Brain makeDroneBrain(std::uint32_t seed)
{
    auto base = makeBotBrain(BotSkill{10.0f, 0.5f, 500.0f}, seed);
    return [base](const Match& m, const Fighter& me) -> PadState {
        PadState pad = base(m, me);
        if (!me.alive())
            return pad;
        const Soldier& self = *me.soldier;
        const Fighter* best = nullptr;
        float bestDist      = 1e9f;
        for (const auto& f : m.fighters())
        {
            if (f.id == me.id || !f.alive() || (me.team != 0 && f.team == me.team))
                continue;
            const float d = (f.soldier->position() - self.position()).length();
            if (d < bestDist)
            {
                bestDist = d;
                best     = &f;
            }
        }
        if (!best)
            return pad;
        const Vec2 d = best->soldier->position() - self.position();
        float moveX  = std::fabs(d.x) > 140.0f ? (d.x > 0 ? 1.0f : -1.0f) : 0.0f;
        const bool up = d.y + 90.0f > 0.0f && self.power() >= 5.0f;  // below the hover height
        pad.moveOffset  = {moveX, up ? 1.0f : 0.0f};
        pad.moveVector  = pad.moveOffset * rules::kPadRadius;
        pad.moveTouched = moveX != 0.0f || up;
        return pad;
    };
}

}  // namespace mm::game

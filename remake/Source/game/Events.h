// What the simulation tells the view each step (sounds, effects). The view drains the queue.
#pragma once

#include <vector>

#include "audio/SoundBank.h"
#include "game/Vec2.h"

namespace mm::game
{

enum class EventType
{
    Sound,      // play `sound`
    Shot,       // muzzle flash at `pos`, direction `dir`
    Spark,      // bullet hit the map at `pos`, surface normal `dir`
    Explosion,  // explosion effect at `pos`
    Death,      // soldier died at `pos`
    Blood,      // a bullet hit a soldier at `pos`, flying along `dir`
};

struct GameEvent
{
    EventType type;
    audio::SoundId sound = audio::SoundId::Dryfire;
    float volume = 1.0f;
    Vec2 pos, dir;
    int fighter = -1;  // who caused it, when it matters (shots)
};

using EventQueue = std::vector<GameEvent>;

}  // namespace mm::game

// NEW: a simple bot brain. The original's SoldierAIController::updateStep could not be
// decompiled (it is thousands of ARM instructions), so bots here are the remake's own:
// they chase the nearest enemy, aim with a little error, fire in range with a clear line,
// jump and fly up to reach a target above, and pick up weapons they stand next to.
// Difficulty only changes aim error and reaction time.
#pragma once

#include "game/Match.h"

namespace mm::game
{

struct BotSkill
{
    float aimError = 6.0f;      // degrees of aim wobble
    float reaction = 0.35f;     // seconds before a spotted enemy is shot at
    float fireRange = 600.0f;
};

// Returns a brain for Match::addBot. Each call makes an independent bot.
Brain makeBotBrain(BotSkill skill, std::uint32_t seed);

}  // namespace mm::game

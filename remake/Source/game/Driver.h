// What the game screen needs from whatever runs the match: a solo mode, a Wi-Fi host, or a
// Wi-Fi client's mirror of the host's match.
#pragma once

#include <string>

#include "game/Match.h"

namespace mm::game
{

enum class ModeState { Running, Won, Lost, Finished };

class GameDriver
{
public:
    virtual ~GameDriver() = default;
    virtual Match& match() = 0;
    // One fixed step with the local player's pad.
    virtual void step(float dt, const PadState& pad) = 0;
    virtual ModeState state() const = 0;
    virtual std::string status() const = 0;                  // top-centre line: timer, wave, lessons
    virtual std::string banner() const { return {}; }        // "WAVE 2", "GO!"
    virtual std::string hint() const { return {}; }          // bottom line (Sarge)
    virtual std::string scoreboard() const { return {}; }    // a few lines of ranking
    virtual bool isNetworked() const { return false; }
    // The end-of-match table, once the match is over (names, kills, deaths, team).
    struct Row { std::string name; int team = 0, kills = 0, deaths = 0; bool me = false; };
    virtual std::vector<Row> results() const { return {}; }
    virtual std::string resultTitle() const { return {}; }
};

}  // namespace mm::game

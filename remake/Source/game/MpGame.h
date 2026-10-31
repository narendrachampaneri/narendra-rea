// The rules of a Wi-Fi match, run on the host: Deathmatch, Team Deathmatch and Co-op
// Survival, with the host's chosen length and kill limit. (Enemy "drones" of Co-op are the
// remake's bots; Deathmatch and Team Deathmatch never have bots.)
#pragma once

#include <memory>
#include <unordered_map>

#include "game/Bot.h"
#include "game/Driver.h"
#include "net/Protocol.h"

namespace mm::game
{

class MultiplayerGame : public GameDriver
{
public:
    // `players`: the lobby's list (id 0 is the host). Teams in Team Deathmatch are balanced
    // here when the lobby left everybody on team 0.
    MultiplayerGame(const assets::MapDef& def, const assets::MapData& data, const net::HostOptions& options,
                    std::vector<net::PlayerInfo> players, std::uint32_t seed);

    Match& match() override { return *_match; }
    const Match& match() const { return *_match; }
    void step(float dt, const PadState& hostPad) override;
    ModeState state() const override { return _state; }
    std::string status() const override;
    std::string banner() const override { return _banner; }
    std::string scoreboard() const override;
    bool isNetworked() const override { return true; }
    std::vector<Row> results() const override;
    std::string resultTitle() const override;

    void setPlayerInput(int id, const PadState& in) { _match->setRemoteInput(id, in); }
    void playerLeft(int id);
    float timeLeft() const { return _timeLeft; }
    int wave() const { return _wave; }
    const net::HostOptions& options() const { return _options; }
    const std::vector<net::PlayerInfo>& players() const { return _players; }
    int winnerTeam() const { return _winnerTeam; }
    net::MatchEnd makeEnd() const;
    int teamOf(int id) const;

private:
    void finish(ModeState s);
    void spawnWave();

    const assets::MapDef& _def;
    net::HostOptions _options;
    std::vector<net::PlayerInfo> _players;
    std::unique_ptr<Match> _match;
    ModeState _state  = ModeState::Running;
    float _timeLeft   = 0.0f;
    int _wave         = 0;
    float _nextWave   = 3.0f;
    int _winnerTeam   = -1;
    std::string _banner;
    float _bannerTime = 0.0f;
    std::uint32_t _seed;
    int _enemySerial  = 0;
};

}  // namespace mm::game

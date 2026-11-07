#include "game/MpGame.h"
#include "game/Modes.h"

#include <algorithm>
#include <cstdio>

namespace mm::game
{

MultiplayerGame::MultiplayerGame(const assets::MapDef& def, const assets::MapData& data, const net::HostOptions& options,
                                 std::vector<net::PlayerInfo> players, std::uint32_t seed)
    : _def(def), _options(options), _players(std::move(players)), _seed(seed)
{
    using net::GameMode;
    _options.minutes = std::clamp<int>(_options.minutes, 1, 30);
    _timeLeft        = _options.minutes * 60.0f;

    // The old lobby's team colours: players who picked the same colour (1-5) are a team, players
    // with no colour (0) play on their own. Co-op puts everybody on one side against the drones.
    if (_options.mode == GameMode::CoopSurvival)
        for (auto& p : _players)
            p.team = 1;
    else
        for (auto& p : _players)
            p.team = std::min<std::uint8_t>(p.team, net::kTeamColours);

    MatchOptions mo;
    mo.seed          = seed;
    mo.respawn       = false;  // Co-op enemies never come back
    mo.playerRespawn = true;
    mo.weaponPickups = !_options.fair;
    mo.respawnTime   = static_cast<float>(_options.respawn);
    mo.friendlyFire  = _options.friendlyFire;
    mo.weaponGroups  = _options.weaponGroups;
    mo.damageScale   = _options.damagePct / 100.0f;
    mo.gravityScale  = _options.gravityPct / 100.0f;
    mo.party.lowGravity    = _options.party & 1;
    mo.party.unlimitedAmmo = _options.party & 2;
    mo.party.oneShotKills  = _options.party & 4;
    mo.party.meleeOnly     = _options.party & 8;
    mo.allowBoosts   = !_options.fair;  // Fair mode: everybody plays with base stats
    _match = std::make_unique<Match>(def, data, 0, mo);
    for (const auto& p : _players)
    {
        if (p.id == 0)
        {
            _match->fighter(0)->name = p.name;
            _match->fighter(0)->team = p.team;
        }
        else
            _match->addFighter(p.id, p.name, p.team, false, true);
    }
    for (const auto& p : _players)
    {
        if (p.id != 0)
            _match->spawnFighter(p.id);
        if (_options.mode == GameMode::CoopSurvival)
            _match->fighter(p.id)->lives = 3;
        _match->setUpgrades(p.id, p.upgrades);
        if (_options.fair)
            _match->giveWeapon(p.id, WeaponId::AK47);
    }
    _banner     = _options.mode == GameMode::CoopSurvival ? "" : "GO!";
    _bannerTime = 2.0f;
}

int MultiplayerGame::teamOf(int id) const
{
    for (const auto& p : _players)
        if (p.id == id)
            return p.team;
    return 0;
}

void MultiplayerGame::playerLeft(int id)
{
    _match->removeFighter(id);
    _players.erase(std::remove_if(_players.begin(), _players.end(), [id](const auto& p) { return p.id == id; }),
                   _players.end());
}

void MultiplayerGame::spawnWave()
{
    ++_wave;
    _banner     = "WAVE " + std::to_string(_wave);
    _bannerTime = 2.5f;
    const int people = static_cast<int>(_players.size());
    const int count  = 1 + _wave + people;
    for (int i = 0; i < count; ++i)
    {
        const int id = _match->addBot("Drone", makeBotBrain(ModeController::skillFor(1, _wave), _seed * 13 + _enemySerial++), 2);
        (void)id;
    }
}

void MultiplayerGame::finish(ModeState s)
{
    _state = s;
    // Winner: most kills for a person, the colour with most kills for a team; _winnerTeam is the
    // winning colour when a team beat every person and every other team, else 0.
    if (_options.mode != net::GameMode::CoopSurvival)
    {
        int kills[net::kTeamColours + 1] = {};
        int bestSolo = 0;
        for (const auto& f : _match->fighters())
        {
            if (f.team >= 1 && f.team <= net::kTeamColours)
                kills[f.team] += f.kills;
            else
                bestSolo = std::max(bestSolo, f.kills);
        }
        int bestTeam = 0, bestColour = 0;
        bool tie     = false;
        for (int c = 1; c <= net::kTeamColours; ++c)
        {
            if (kills[c] > bestTeam)
            {
                bestTeam   = kills[c];
                bestColour = c;
                tie        = false;
            }
            else if (kills[c] == bestTeam && bestTeam > 0)
                tie = true;
        }
        _winnerTeam = (!tie && bestTeam > bestSolo) ? bestColour : 0;
    }
}

void MultiplayerGame::step(float dt, const PadState& hostPad)
{
    using net::GameMode;
    if (_state != ModeState::Running)
        return;
    _match->step(dt, hostPad);
    if (_bannerTime > 0.0f && (_bannerTime -= dt) <= 0.0f)
        _banner.clear();

    if (_options.mode == GameMode::CoopSurvival)
    {
        int enemies = 0, peopleAlive = 0, peopleWithLives = 0;
        for (const auto& f : _match->fighters())
        {
            if (f.team == 2 && f.alive())
                ++enemies;
            if (f.team == 1)
            {
                if (f.alive())
                    ++peopleAlive;
                if (f.alive() || f.lives != 0)
                    ++peopleWithLives;
            }
        }
        if (enemies == 0 && (_wave == 0 || peopleAlive > 0))
        {
            _nextWave -= dt;
            if (_nextWave <= 0.0f)
            {
                _nextWave = 4.0f;
                spawnWave();
            }
        }
        if (peopleWithLives == 0)
            finish(ModeState::Lost);
        return;
    }

    _timeLeft -= dt;
    if (_options.killLimit > 0)
    {
        // Team kills count together; people with no colour count on their own.
        int kills[net::kTeamColours + 1] = {};
        int best = 0;
        for (const auto& f : _match->fighters())
        {
            if (f.team >= 1 && f.team <= net::kTeamColours)
                kills[f.team] += f.kills;
            else
                best = std::max(best, f.kills);
        }
        for (int c = 1; c <= net::kTeamColours; ++c)
            best = std::max(best, kills[c]);
        if (best >= _options.killLimit)
            _timeLeft = 0.0f;
    }
    if (_timeLeft <= 0.0f)
    {
        _timeLeft = 0.0f;
        finish(ModeState::Finished);
    }
}

std::string MultiplayerGame::status() const
{
    char buf[96];
    if (_options.mode == net::GameMode::CoopSurvival)
        std::snprintf(buf, sizeof buf, "WAVE %d", _wave);
    else
        std::snprintf(buf, sizeof buf, "%d:%02d", static_cast<int>(_timeLeft) / 60, static_cast<int>(_timeLeft) % 60);
    return buf;
}

std::vector<GameDriver::Row> MultiplayerGame::results() const
{
    std::vector<Row> rows;
    for (const auto& f : _match->fighters())
        if (f.team != 2 || _options.mode != net::GameMode::CoopSurvival)
            rows.push_back({f.name, f.team, f.kills, f.deaths, f.id == _match->playerFighter().id});
    std::stable_sort(rows.begin(), rows.end(), [](const Row& a, const Row& b) { return a.kills > b.kills; });
    return rows;
}

std::string MultiplayerGame::scoreboard() const
{
    std::string out;
    int shown = 0;
    for (const auto& r : results())
    {
        if (shown++ == 4)
            break;
        out += r.name + "  " + std::to_string(r.kills) + "\n";
    }
    return out;
}

std::string MultiplayerGame::resultTitle() const
{
    if (_options.mode == net::GameMode::CoopSurvival)
        return "GAME OVER  -  WAVE " + std::to_string(_wave);
    if (_winnerTeam > 0)
        return std::string(net::teamColourName(_winnerTeam)) + " TEAM WINS";
    const auto rows = results();
    return rows.empty() ? "MATCH OVER" : rows.front().name + " WINS";
}

net::MatchEnd MultiplayerGame::makeEnd() const
{
    net::MatchEnd e;
    e.options    = _options;
    e.winnerTeam = static_cast<std::uint8_t>(_winnerTeam < 0 ? 255 : _winnerTeam);
    e.won        = _state == ModeState::Finished || _state == ModeState::Won;
    for (const auto& f : _match->fighters())
        if (f.team != 2 || _options.mode != net::GameMode::CoopSurvival)
            e.rows.push_back({static_cast<std::uint8_t>(f.id), f.name, static_cast<std::uint8_t>(f.team),
                              static_cast<std::uint16_t>(f.kills), static_cast<std::uint16_t>(f.deaths)});
    std::stable_sort(e.rows.begin(), e.rows.end(), [](const auto& a, const auto& b) { return a.kills > b.kills; });
    return e;
}

}  // namespace mm::game

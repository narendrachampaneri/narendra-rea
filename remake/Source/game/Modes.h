// Single-device game modes on top of Match. Rules the original gave to Stage / SurvivalStage /
// TrainingStage; where those could not be recovered the values are marked NEW.
#pragma once

#include <memory>
#include <string>
#include <vector>

#include "game/Bot.h"
#include "game/Driver.h"
#include "game/Match.h"

namespace mm::game
{

enum class ModeKind
{
    QuickPlay,  // instant match against bots on a random map
    Practice,   // pick the map and the number of bots
    Survival,   // waves of enemies, three lives
    Training,   // Sarge's lessons
};

struct ModeSettings
{
    ModeKind kind = ModeKind::QuickPlay;
    int botCount  = 3;
    int minutes   = 5;   // match length for Quick Play / Practice (the host cap is 8)
    int difficulty = 1;  // 0 easy, 1 normal, 2 hard
    std::uint32_t seed = 1;
};


// A lesson of the training course: what Sarge says and what the player has to do.
struct Lesson
{
    const char* text;
    enum Goal { Move, Jump, Fly, Aim, Fire, Reload, Pickup, Grenade, Melee, Zoom, Kill } goal;
    float amount;  // seconds, count or points, depending on the goal
};

class ModeController : public GameDriver
{
public:
    ModeController(const assets::MapDef& def, const assets::MapData& data, ModeSettings settings);

    Match& match() override { return *_match; }
    const Match& match() const { return *_match; }
    const ModeSettings& settings() const { return _settings; }

    void step(float dt, const PadState& pad) override;

    ModeState state() const override { return _state; }
    std::string status() const override;
    std::string banner() const override { return _banner; }
    std::string hint() const override;
    std::string scoreboard() const override;
    std::vector<Row> results() const override;
    std::string resultTitle() const override;
    float timeLeft() const { return _timeLeft; }       // Quick Play / Practice
    int wave() const override { return _wave; }       // Survival
    int lives() const { return _lives; }               // Survival
    int score() const override { return _score; }     // Survival points
    int lesson() const { return _lesson; }             // Training: index into lessons()
    const Lesson* currentLesson() const;
    static const std::vector<Lesson>& lessons();

    // Enemies in a Survival wave: count, and the bots' skill.
    static int waveSize(int wave) { return 2 + wave; }
    static BotSkill skillFor(int difficulty, int wave = 0);

private:
    void spawnWave();
    void stepSurvival(float dt);
    void stepTraining(float dt, const PadState& pad);
    void stepTimed(float dt);

    ModeSettings _settings;
    std::unique_ptr<Match> _match;
    ModeState _state = ModeState::Running;
    float _timeLeft  = 0.0f;
    int _wave        = 0;
    int _lives       = 3;
    int _score       = 0;
    int _lesson      = 0;
    float _lessonProgress = 0.0f;
    float _bannerTime = 0.0f;
    float _betweenWaves = 0.0f;
    std::string _banner;
    int _seenKills = 0;
    bool _playerWasAlive = true;
    int _enemyBase = 0;
    int _lastGrenades = 0;
    int _lastClip = 0;
    int _lastAmmo = 0;
    int _ids = 0;
};

}  // namespace mm::game

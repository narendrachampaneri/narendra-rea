#include "game/Modes.h"

#include <algorithm>
#include <cmath>
#include <cstdio>

namespace mm::game
{

const std::vector<Lesson>& ModeController::lessons()
{
    // NEW wording (the original Sarge lines are audio only and stay silent for now).
    static const std::vector<Lesson> kLessons = {
        {"Welcome, recruit. Push the left stick sideways to walk.", Lesson::Move, 2.0f},
        {"Push the stick up to jump. Do it twice.", Lesson::Jump, 2.0f},
        {"Hold the stick up in the air to light the jetpack. Fly for 2 seconds.", Lesson::Fly, 2.0f},
        {"Drag the right stick to aim.", Lesson::Aim, 1.5f},
        {"Push the right stick past its ring to fire. Shoot 10 rounds.", Lesson::Fire, 10.0f},
        {"Out of ammo? Tap the reload button.", Lesson::Reload, 1.0f},
        {"Walk over a weapon and tap the weapon button to take it.", Lesson::Pickup, 1.0f},
        {"Throw a grenade with the grenade button.", Lesson::Grenade, 1.0f},
        {"Get up close and use the melee button.", Lesson::Melee, 1.0f},
        {"Tap the zoom button to see further.", Lesson::Zoom, 1.0f},
        {"Last lesson: take down the target soldier.", Lesson::Kill, 1.0f},
    };
    return kLessons;
}

BotSkill ModeController::skillFor(int difficulty, int wave)
{
    BotSkill s;
    switch (difficulty)
    {
    case 0: s.aimError = 14.0f; s.reaction = 0.8f; s.fireRange = 450.0f; break;
    case 2: s.aimError = 3.0f;  s.reaction = 0.15f; s.fireRange = 700.0f; break;
    default: break;
    }
    s.aimError = std::max(2.0f, s.aimError - static_cast<float>(wave) * 0.5f);
    return s;
}

ModeController::ModeController(const assets::MapDef& def, const assets::MapData& data, ModeSettings settings)
    : _settings(settings)
{
    MatchOptions options;
    options.seed = settings.seed;
    options.respawn = settings.kind == ModeKind::QuickPlay || settings.kind == ModeKind::Practice;
    options.playerRespawn = settings.kind != ModeKind::Training || true;
    _match = std::make_unique<Match>(def, data, 0, options);
    _timeLeft = static_cast<float>(settings.minutes) * 60.0f;
    switch (settings.kind)
    {
    case ModeKind::QuickPlay:
    case ModeKind::Practice:
        for (int i = 0; i < settings.botCount; ++i)
            _match->addBot("Bot " + std::to_string(i + 1), makeBotBrain(skillFor(settings.difficulty), settings.seed * 31 + i));
        _banner = "GO!";
        _bannerTime = 2.0f;
        break;
    case ModeKind::Survival:
        _lives  = 3;
        _betweenWaves = 2.0f;
        break;
    case ModeKind::Training:
        _match->player().setInvincible(false);
        _lastGrenades = _match->player().grenades();
        break;
    }
}

const Lesson* ModeController::currentLesson() const
{
    return _lesson < static_cast<int>(lessons().size()) ? &lessons()[_lesson] : nullptr;
}

void ModeController::spawnWave()
{
    ++_wave;
    _banner     = "WAVE " + std::to_string(_wave);
    _bannerTime = 2.5f;
    for (int i = 0; i < waveSize(_wave); ++i)
        _match->addBot("Enemy", makeBotBrain(skillFor(_settings.difficulty, _wave), _settings.seed * 17 + _ids++), 1);
    // NEW (M16): from wave 3 on, hawk drones join the wave: weaker, armed with an Uzi, hovering.
    const int drones = std::min(4, std::max(0, (_wave - 1) / 2));
    for (int i = 0; i < drones; ++i)
    {
        const int id = _match->addBot("Hawk", makeDroneBrain(_settings.seed * 29 + _ids++), 1);
        _match->giveWeapon(id, WeaponId::Uzi);
        if (Fighter* f = _match->fighter(id); f && f->soldier)
            f->soldier->setHealth(50.0f);
    }
    _enemyBase = static_cast<int>(_match->fighters().size());
}

void ModeController::stepTimed(float dt)
{
    _timeLeft -= dt;
    if (_timeLeft <= 0.0f)
    {
        _timeLeft = 0.0f;
        _state    = ModeState::Finished;
    }
}

void ModeController::stepSurvival(float dt)
{
    // Enemies are on team 1 and never respawn: the wave ends when the last one falls.
    int alive = 0;
    for (const auto& f : _match->fighters())
        if (!f.human && f.alive())
            ++alive;
    int kills = _match->playerFighter().kills;
    _score += (kills - _seenKills) * 100 + 0;
    _seenKills = kills;

    if (_wave > 0 && alive == 0)
    {
        _betweenWaves -= dt;
        if (_betweenWaves <= 0.0f)
        {
            _betweenWaves = 4.0f;
            spawnWave();
        }
    }
    else if (_wave == 0)
    {
        _betweenWaves -= dt;
        if (_betweenWaves <= 0.0f)
            spawnWave();
    }
    const bool playerAlive = _match->playerAlive();
    if (_playerWasAlive && !playerAlive)
    {
        --_lives;
        if (_lives <= 0)
            _state = ModeState::Lost;
    }
    _playerWasAlive = playerAlive;
}

void ModeController::stepTraining(float dt, const PadState& pad)
{
    const Lesson* lesson = currentLesson();
    if (!lesson)
    {
        _state = ModeState::Won;
        return;
    }
    const Soldier& s = _match->player();
    bool progress    = false;
    switch (lesson->goal)
    {
    case Lesson::Move:    _lessonProgress += std::fabs(pad.moveOffset.x) > 0.3f ? dt : 0.0f; break;
    case Lesson::Jump:    _lessonProgress += (pad.moveOffset.y > 0.75f && !s.isJetting() && s.onGround()) ? 1.0f / 30.0f : 0.0f; break;
    case Lesson::Fly:     _lessonProgress += s.isJetting() ? dt : 0.0f; break;
    case Lesson::Aim:     _lessonProgress += pad.aimAngle != 0.0f ? dt : 0.0f; break;
    case Lesson::Fire:
        _lessonProgress += std::max(0, _lastClip - s.weapon().clip());
        break;
    case Lesson::Reload:  progress = s.weapon().isReloading(); break;
    case Lesson::Pickup:  progress = s.secondary() != nullptr; break;
    case Lesson::Grenade: progress = s.grenades() < _lastGrenades; break;
    case Lesson::Melee:   progress = s.meleeActive(); break;
    case Lesson::Zoom:    progress = s.weapon().zoom() != 1.0f; break;
    case Lesson::Kill:    progress = _match->playerFighter().kills > 0; break;
    }
    _lastClip     = s.weapon().clip();
    _lastGrenades = s.grenades();
    if (progress || _lessonProgress >= lesson->amount)
    {
        ++_lesson;
        _lessonProgress = 0.0f;
        _banner         = "GOOD";
        _bannerTime     = 1.5f;
        // Lessons that need something to work with.
        const Lesson* next = currentLesson();
        if (next && next->goal == Lesson::Pickup)
            _match->dropItem(std::make_unique<Weapon>(WeaponId::Shotgun), s.position() + Vec2{80, 40}, {});
        if (next && next->goal == Lesson::Kill)
            _match->addBot("Target", {}, 1);
        if (next && next->goal == Lesson::Reload)
            _match->player().weapon().reload();  // empties nothing: just shows the button
    }
    (void)dt;
}

void ModeController::step(float dt, const PadState& pad)
{
    if (_state != ModeState::Running)
        return;
    _match->step(dt, pad);
    if (_bannerTime > 0.0f && (_bannerTime -= dt) <= 0.0f)
        _banner.clear();
    switch (_settings.kind)
    {
    case ModeKind::QuickPlay:
    case ModeKind::Practice: stepTimed(dt); break;
    case ModeKind::Survival: stepSurvival(dt); break;
    case ModeKind::Training: stepTraining(dt, pad); break;
    }
}

}  // namespace mm::game

namespace mm::game
{

std::string ModeController::status() const
{
    char buf[96];
    switch (_settings.kind)
    {
    case ModeKind::Survival:
        std::snprintf(buf, sizeof buf, "WAVE %d   LIVES %d   SCORE %d", _wave, _lives, _score);
        return buf;
    case ModeKind::Training:
        std::snprintf(buf, sizeof buf, "TRAINING %d / %d", std::min<int>(_lesson + 1, static_cast<int>(lessons().size())),
                      static_cast<int>(lessons().size()));
        return buf;
    default:
        std::snprintf(buf, sizeof buf, "%d:%02d", static_cast<int>(_timeLeft) / 60, static_cast<int>(_timeLeft) % 60);
        return buf;
    }
}

std::string ModeController::hint() const
{
    const Lesson* l = currentLesson();
    return (_settings.kind == ModeKind::Training && l) ? l->text : "";
}

std::string ModeController::scoreboard() const
{
    const auto& f = _match->playerFighter();
    return "KILLS " + std::to_string(f.kills) + "   DEATHS " + std::to_string(f.deaths);
}

std::vector<GameDriver::Row> ModeController::results() const
{
    std::vector<Row> rows;
    for (const auto& f : _match->fighters())
        rows.push_back({f.name, f.team, f.kills, f.deaths, f.human});
    std::stable_sort(rows.begin(), rows.end(), [](const Row& a, const Row& b) { return a.kills > b.kills; });
    return rows;
}

std::string ModeController::resultTitle() const
{
    switch (_state)
    {
    case ModeState::Lost: return "GAME OVER";
    case ModeState::Won: return "COMPLETE";
    default: return "TIME UP";
    }
}

}  // namespace mm::game

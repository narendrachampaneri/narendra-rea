#include "game/Match.h"

#include <algorithm>

namespace mm::game
{

Match::Match(const assets::MapDef& def, const assets::MapData& data, int spawnIndex, MatchOptions options)
    : _def(def), _options(options), _rng(options.seed)
{
    TileGrid grid{data.widthTiles, data.heightTiles, data.collisionGids};
    if (grid.gids.size() == static_cast<std::size_t>(grid.width) * grid.height)
        _physics.addMap(buildMapCollision(grid, assets::kTilePoints));
    Soldier::installCollisionHandlers(_physics.space());

    for (const auto* o : data.objectsWithPrefix("sp_"))  // MapManager::loadMap: objectsNamed("sp_")
        _spawns.push_back({o->x + o->width / 2.0f, o->y + o->height / 2.0f});
    if (_spawns.empty())
        _spawns.push_back({data.widthPoints() / 2.0f, data.heightPoints() / 2.0f});

    Fighter player;
    player.id    = 0;
    player.name  = "You";
    player.human = true;
    _fighters.push_back(std::move(player));
    spawn(_fighters.front(), spawnPoint(spawnIndex));
}

Match::~Match()
{
    // Bodies leave the space before the space goes.
    _ragdolls.clear();
    for (auto& f : _fighters)
        f.soldier.reset();
}

Fighter* Match::fighter(int id)
{
    for (auto& f : _fighters)
        if (f.id == id)
            return &f;
    return nullptr;
}

int Match::addBot(std::string name, Brain brain, int team)
{
    Fighter f;
    f.id    = static_cast<int>(_fighters.size());
    f.name  = std::move(name);
    f.team  = team;
    f.brain = std::move(brain);
    _fighters.push_back(std::move(f));
    Fighter& added = _fighters.back();
    spawn(added, safeSpawnFor(added.id));
    return added.id;
}

Vec2 Match::spawnPoint(int index) const
{
    const int n = static_cast<int>(_spawns.size());
    return _spawns[static_cast<std::size_t>(((index % n) + n) % n)];
}

Vec2 Match::safeSpawnFor(int fighterId)
{
    std::vector<std::pair<float, Vec2>> scored;
    for (const auto& s : _spawns)
    {
        float score = 0.0f;
        for (const auto& f : _fighters)
            if (f.id != fighterId && f.alive())
                score += static_cast<float>(static_cast<int>((s - f.soldier->position()).length()));
        scored.push_back({score, s});
    }
    std::stable_sort(scored.begin(), scored.end(), [](const auto& a, const auto& b) { return a.first > b.first; });
    const int half = std::max(1, static_cast<int>(scored.size()) / 2);
    return scored[std::uniform_int_distribution<int>(0, half - 1)(_rng)].second;
}

void Match::spawn(Fighter& f, Vec2 at)
{
    f.soldier.reset();
    f.soldier = std::make_unique<Soldier>(_physics, at, _def.gravityFactor, _events, f.id,
                                          f.human ? rules::kSoldierCollision : rules::kRemoteCollision);
    f.respawnTimer = 0.0f;
}

void Match::respawn(int spawnIndex)
{
    spawn(_fighters.front(), spawnPoint(spawnIndex));
}

float Match::random11()
{
    return std::uniform_real_distribution<float>(-1.0f, 1.0f)(_rng);
}

void Match::killFighter(Fighter& f)
{
    Soldier& s = *f.soldier;
    ++f.deaths;
    const int killer = s.lastAttacker();
    if (killer >= 0 && killer != f.id)
        if (Fighter* k = fighter(killer))
            ++k->kills;
    _ragdolls.push_back(std::make_unique<Ragdoll>(_physics, s.position(), s.velocity(), _def.gravityFactor,
                                                  s.facingRight(), [this] { return random11(); }));
    s.deactivate();
    f.respawnTimer = _options.respawnTime;
}

bool Match::onBulletHit(Tracer& t, cpShape* shape, Vec2 point)
{
    for (auto& f : _fighters)
    {
        if (!f.alive() || !f.soldier->owns(shape))
            continue;
        Soldier& victim = *f.soldier;
        if (f.id == t.owner)
            return false;  // never your own bullet
        if (victim.isHead(shape))
        {
            if (victim.isCrouching())
                return false;  // a crouching soldier's head lets the bullet pass (isDucked)
            t.headshot = true;
        }
        float damage;
        if (f.human)
        {
            damage = t.falloffDamage();  // Tracer::onHostBulletCollision -> addDamage(getDamage())
        }
        else
        {
            // NetworkMessageDispatcher::updatePeerDamage: the receiving side recomputes the
            // damage with an integer range check (full until the range, then half) and adds
            // 50 % for a headshot.
            damage = static_cast<float>(static_cast<int>(t.damage * (t.travelled < t.range ? 1.0f : 0.5f)));
            if (t.headshot)
                damage = static_cast<float>(static_cast<int>(damage * 1.5f));
        }
        victim.addDamage(damage, t.owner, t.ammoType);
        GameEvent e{EventType::Blood};
        e.pos = point;
        e.dir = t.velocity;
        _events.push_back(e);
        return true;
    }
    return false;  // an item or something without an owner here: fly on
}

void Match::step(float dt, const PadState& pad)
{
    dt = std::min(dt, rules::kMaxFrameDt);
    _time += dt;
    _physics.step(dt);  // contact callbacks fill the soldiers' contact flags

    for (auto& f : _fighters)
    {
        if (!f.soldier)
            continue;
        if (f.soldier->isDead())
        {
            if (_options.respawn && (f.respawnTimer -= dt) <= 0.0f)
                spawn(f, safeSpawnFor(f.id));
            continue;
        }
        const PadState in = f.human ? pad : (f.brain ? f.brain(*this, f) : PadState{});
        Soldier& s        = *f.soldier;
        s.setFireAngle(in.aimAngle);
        s.updateStep(dt, in);
        s.setJoyOffset(in.moveOffset);

        if (in.firing && s.fire())
        {
            auto& weapon      = s.weapon();
            const Vec2 muzzle = s.muzzlePosition();
            // Host bullets hit everyone but the host (0x288); everyone else's bullets hit the
            // host and other remote soldiers (0x198, Tracer::checkCollision).
            const std::uint32_t layers = f.human ? rules::kHostBulletLayers : rules::kRemoteBulletLayers;
            for (int i = 0; i < weapon.def().roundsPerFire; ++i)
                _tracers.fire(muzzle, s.fireAngle() + weapon.randomFiringAngle(), s.velocity(), weapon.def(), f.id,
                              layers);
            GameEvent e{EventType::Shot};
            e.pos     = muzzle;
            e.dir     = fromCocosAngle(s.fireAngle());
            e.fighter = f.id;
            _events.push_back(e);
        }
    }

    _tracers.updateStep(dt, _physics, _events,
                        [this](Tracer& t, cpShape* shape, Vec2 point) { return onBulletHit(t, shape, point); });

    for (auto& f : _fighters)
    {
        if (!f.soldier || f.soldier->isDeactivated())
            continue;
        f.soldier->checkDeath();
        if (f.soldier->isDead())
            killFighter(f);
    }

    for (auto& r : _ragdolls)
        r->updateStep(dt);
    _ragdolls.erase(std::remove_if(_ragdolls.begin(), _ragdolls.end(), [](const auto& r) { return r->expired(); }),
                    _ragdolls.end());
}

EventQueue Match::takeEvents()
{
    EventQueue out;
    out.swap(_events);
    return out;
}

}  // namespace mm::game

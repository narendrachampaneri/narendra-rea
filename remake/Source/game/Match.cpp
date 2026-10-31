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
    MapItem::installCollisionHandlers(_physics.space());
    for (const auto* o : data.objectsWithPrefix("wp_"))  // WeaponManager spawn points
        _weaponSpawns.push_back({{o->x + o->width / 2.0f, o->y + o->height / 2.0f}});

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
    _items.clear();
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

void Match::hitSoldier(Fighter& f, cpShape*, float damage, bool network, int attacker, int ammoType, Vec2 point,
                       Vec2 dir)
{
    (void)network;
    f.soldier->addDamage(damage, attacker, ammoType);
    GameEvent e{EventType::Blood};
    e.pos     = point;
    e.dir     = dir;
    e.fighter = f.id;
    _events.push_back(e);
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
        hitSoldier(f, shape, damage, !f.human, t.owner, t.ammoType, point, t.velocity);
        return true;
    }
    return false;  // an item or something without an owner here: fly on
}

const MapItem* Match::item(int uid) const
{
    for (const auto& i : _items)
        if (i->uid() == uid)
            return i.get();
    return nullptr;
}

int Match::dropItem(std::unique_ptr<Weapon> weapon, Vec2 at, Vec2 velocity, int spawn)
{
    const int uid = _nextItemUid++;
    _items.push_back(std::make_unique<MapItem>(_physics, uid, std::move(weapon), at, velocity, _def.gravityFactor));
    _items.back()->spawn = spawn;
    return uid;
}

void Match::updateWeaponSpawns(float dt)
{
    // WeaponManager::updateStep: one spawn point a step, round robin. A point whose weapon is
    // still lying there restarts its period; an empty one gets a random weapon once its time
    // has come (and never in the first 10 s of the match).
    if (_weaponSpawns.empty())
        return;
    const float period = _items.size() > 10 ? 8.0f : 15.0f;  // +0x40: 8 above 10 weapons, else 15
    _spawnCursor       = (_spawnCursor + 1) % _weaponSpawns.size();
    WeaponSpawn& sp    = _weaponSpawns[_spawnCursor];
    if (sp.item >= 0 && item(sp.item))
    {
        sp.nextSpawn = _time + period;
        return;
    }
    sp.item = -1;
    if (_time > 10.0f && _time >= sp.nextSpawn)
    {
        constexpr int n  = static_cast<int>(std::size(kSpawnWeapons));
        const WeaponId w = kSpawnWeapons[std::uniform_int_distribution<int>(0, n - 1)(_rng)];
        sp.item          = dropItem(std::make_unique<Weapon>(w), sp.pos, {}, static_cast<int>(_spawnCursor));
        sp.nextSpawn     = _time + period;
    }
    (void)dt;
}

void Match::updatePickUps(Fighter& f, bool pickUpPressed)
{
    // WeaponManager::weaponProximity: nothing while moving faster than 200 points/s; the
    // nearest weapon within 35 points. The same kind as one carried tops its ammo up (that
    // never needs a button); anything else waits for the pick-up button.
    f.nearItem = -1;
    Soldier& s = *f.soldier;
    if (s.velocity().length() > 200.0f)
        return;
    MapItem* nearest = nullptr;
    float best       = 35.0f;
    for (auto& i : _items)
    {
        if (i->taken())
            continue;
        const float d = (i->position() - s.position()).length();
        if (d < best)
        {
            best    = d;
            nearest = i.get();
        }
    }
    if (!nearest)
        return;
    Weapon& held = s.weapon();
    for (const Weapon* carried : std::initializer_list<const Weapon*>{&held, s.secondary()})
    {
        if (!carried || carried->id() != nearest->weapon().id() || carried->ammoFull())
            continue;
        Weapon& w        = const_cast<Weapon&>(*carried);
        Weapon& pile     = nearest->weapon();
        const int rounds = pile.clip() + pile.ammo();
        const int taken  = w.addAmmo(rounds);
        if (taken > 0)
        {
            GameEvent e{EventType::Sound};
            e.sound = audio::SoundId::Snatch;  // Weapon::addAmmo
            e.pos   = s.position();
            _events.push_back(e);
            if (taken >= rounds)
                nearest->take();
            else
                nearest->weapon() = Weapon(pile.id(), 0, rounds - taken);
        }
        return;
    }
    f.nearItem = nearest->uid();
    if (pickUpPressed)
    {
        auto dropped = s.takeWeapon(nearest->take());
        if (dropped)
            dropItem(std::move(dropped), s.position() + Vec2{0, 10}, s.velocity() + Vec2{0, 60});
        f.nearItem = -1;
    }
}

void Match::updateMelee(Fighter& f)
{
    // SoldierHostController::checkMeleeCollision: a ray from the body along the aim, growing
    // 25 + 75 per second up to the weapon's melee length; the first soldier on it is hit.
    Soldier& s = *f.soldier;
    if (!s.meleeActive())
        return;
    const auto& w      = s.weapon().def();
    const float length = std::min(w.meleeLength, s.meleeTime() * 75.0f + 25.0f);
    const Vec2 dir     = fromCocosAngle(s.fireAngle());
    const std::uint32_t layers = f.human ? 0x280u : rules::kRemoteBulletLayers;
    const auto hit     = _physics.segmentQuery(s.position(), s.position() + dir * length, layers);
    if (!hit)
        return;
    for (auto& v : _fighters)
    {
        if (v.id == f.id || !v.alive() || !v.soldier->owns(hit.shape))
            continue;
        // endMeleeAttack: the weapon's melee damage, sent like a bullet hit.
        hitSoldier(v, hit.shape, static_cast<float>(w.meleeDamage), true, f.id, w.ammoType, hit.point, dir);
        s.endMelee();
        return;
    }
}

void Match::fireShots(Fighter& f, int shots)
{
    Soldier& s        = *f.soldier;
    auto& weapon      = s.weapon();
    const Vec2 muzzle = s.muzzlePosition();
    // Host bullets hit everyone but the host (0x288); everyone else's bullets hit the host
    // and other remote soldiers (0x198, Tracer::checkCollision).
    const std::uint32_t layers = f.human ? rules::kHostBulletLayers : rules::kRemoteBulletLayers;
    for (int shot = 0; shot < shots; ++shot)
    {
        for (int i = 0; i < weapon.def().roundsPerFire; ++i)
            _tracers.fire(muzzle, s.fireAngle() + weapon.randomFiringAngle(), s.velocity(), weapon.def(), f.id, layers);
        GameEvent e{EventType::Shot};
        e.pos     = muzzle;
        e.dir     = fromCocosAngle(s.fireAngle());
        e.fighter = f.id;
        _events.push_back(e);
    }
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

        if (in.reload && !s.weapon().isReloading() && s.weapon().clip() < s.weapon().def().clip &&
            s.weapon().ammo() > 0)
            s.weapon().reload();
        if (in.switchWeapon)
            s.switchWeapons();
        if (in.zoom)
            s.weapon().nextZoom();
        if (in.melee || (in.firing && s.weapon().info() && s.weapon().info()->melee))
            s.meleeAttack();

        int shots = s.weapon().takeBurstShots();
        if (in.firing && s.fire())
            ++shots;
        if (shots > 0)
            fireShots(f, shots);
        updateMelee(f);
        updatePickUps(f, in.pickUp);
    }
    updateWeaponSpawns(dt);

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

    // Taken weapons leave the world; dropped ones that nobody wants go after 30 s (NEW: keeps
    // the map from filling up) as do any that fell out of the world.
    for (auto& i : _items)
        i->age += dt;
    _items.erase(std::remove_if(_items.begin(), _items.end(),
                                [](const auto& i) {
                                    return i->taken() || (i->spawn < 0 && i->age > 30.0f) || i->position().y < -1000.0f;
                                }),
                 _items.end());
}

EventQueue Match::takeEvents()
{
    EventQueue out;
    out.swap(_events);
    return out;
}

}  // namespace mm::game

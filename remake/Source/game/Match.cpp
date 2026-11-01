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

    if (_options.createLocal)
    {
        addFighter(0, "You", 0, true, false);
        spawn(*fighter(0), spawnPoint(spawnIndex));
    }
}

int Match::addFighter(int id, std::string name, int team, bool local, bool remote)
{
    Fighter f;
    f.id     = id;
    f.name   = std::move(name);
    f.team   = team;
    f.human  = local;
    f.remote = remote;
    _fighters.push_back(std::move(f));
    return id;
}

void Match::spawnFighter(int id)
{
    if (Fighter* f = fighter(id))
        spawn(*f, safeSpawnFor(id));
}

void Match::addMirrorSoldier(int id, Vec2 at)
{
    Fighter* f = fighter(id);
    if (!f || f->soldier)
        return;
    f->soldier = std::make_unique<Soldier>(_physics, at, gravityFactor(), _events, id,
                                           f->human ? rules::kSoldierCollision : rules::kRemoteCollision);
    f->soldier->setMirror();
}

void Match::removeFighter(int id)
{
    for (auto it = _fighters.begin(); it != _fighters.end(); ++it)
        if (it->id == id)
        {
            it->soldier.reset();
            _fighters.erase(it);
            return;
        }
}

void Match::setUpgrades(int id, std::uint16_t mask)
{
    Fighter* f = fighter(id);
    if (!f)
        return;
    f->boosts = _options.allowBoosts ? economy::boostsFor(mask) : economy::Boosts{};
    if (f->soldier && !f->soldier->isMirror())
        f->soldier->setBoosts(f->boosts);
}

void Match::giveWeapon(int id, WeaponId w)
{
    if (Fighter* f = fighter(id); f && f->soldier)
        f->soldier->setWeapon(std::make_unique<Weapon>(w));
}

void Match::setRemoteInput(int id, const PadState& in)
{
    if (Fighter* f = fighter(id))
    {
        // One-shot buttons stay latched until the step that uses them.
        const PadState old = f->netInput;
        f->netInput        = in;
        f->netInput.melee        |= old.melee;
        f->netInput.grenade      |= old.grenade;
        f->netInput.reload       |= old.reload;
        f->netInput.switchWeapon |= old.switchWeapon;
        f->netInput.pickUp       |= old.pickUp;
        f->netInput.zoom         |= old.zoom;
    }
}

Match::~Match()
{
    // Bodies leave the space before the space goes.
    _ragdolls.clear();
    _items.clear();
    for (auto& g : _grenades)
    {
        cpSpaceRemoveShape(_physics.space(), g->shape);
        cpShapeFree(g->shape);
        cpSpaceRemoveBody(_physics.space(), g->body);
        cpBodyFree(g->body);
    }
    _grenades.clear();
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
    f.soldier = std::make_unique<Soldier>(_physics, at, gravityFactor(), _events, f.id,
                                          f.human ? rules::kSoldierCollision : rules::kRemoteCollision);
    f.respawnTimer = 0.0f;
    f.soldier->setBoosts(f.boosts);
}

void Match::respawn(int spawnIndex)
{
    spawn(*fighter(_options.localId), spawnPoint(spawnIndex));
}

float Match::random11()
{
    return std::uniform_real_distribution<float>(-1.0f, 1.0f)(_rng);
}

void Match::killFighter(Fighter& f)
{
    Soldier& s = *f.soldier;
    ++f.deaths;
    if (f.lives > 0)
        --f.lives;
    const int killer = s.lastAttacker();
    if (killer >= 0 && killer != f.id)
        if (Fighter* k = fighter(killer))
            ++k->kills;
    _ragdolls.push_back(std::make_unique<Ragdoll>(_physics, s.position(), s.velocity(), gravityFactor(),
                                                  s.facingRight(), [this] { return random11(); }));
    s.deactivate();
    f.respawnTimer = _options.respawnTime;
}

void Match::hitSoldier(Fighter& f, cpShape*, float damage, bool network, int attacker, int ammoType, Vec2 point,
                       Vec2 dir)
{
    (void)network;
    if (_options.party.oneShotKills)
        damage = 1000.0f;
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
        if (!_options.friendlyFire && f.team != 0)
            if (const Fighter* shooter = fighter(t.owner); shooter && shooter->team == f.team)
                return false;  // team mates fly through each other's bullets
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
    _items.push_back(std::make_unique<MapItem>(_physics, uid, std::move(weapon), at, velocity, gravityFactor()));
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
        std::vector<WeaponId> pool;
        for (WeaponId c : kSpawnWeapons)
            if (_options.weaponGroups & (1u << weaponGroup(c)))
                pool.push_back(c);
        if (pool.empty())
            return;
        const WeaponId w = pool[std::uniform_int_distribution<int>(0, static_cast<int>(pool.size()) - 1)(_rng)];
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
        hitSoldier(v, hit.shape, static_cast<float>(w.meleeDamage) * f.boosts.melee, true, f.id, w.ammoType, hit.point, dir);
        s.endMelee();
        return;
    }
}

void Match::throwGrenade(Fighter& f)
{
    Soldier& s = *f.soldier;
    if (!s.takeGrenade())
        return;
    auto g   = std::make_unique<Grenade>();
    g->owner = f.id;
    g->gas   = f.boosts.gasNade;  // NEW: the Gas Grenade upgrade makes every throw a gas grenade
    g->gravity = Vec2{0.0f, rules::kGrenadeGravity} * gravityFactor();
    g->body  = cpSpaceAddBody(_physics.space(), cpBodyNew(1.0, cpMomentForCircle(1.0, 0, 4, cpvzero)));
    cpBodySetPosition(g->body, cpv(s.muzzlePosition()));
    cpBodySetVelocity(g->body, cpv(fromCocosAngle(s.fireAngle()) * rules::kGrenadeSpeed + s.velocity()));
    cpBodySetUserData(g->body, &g->gravity);
    cpBodySetVelocityUpdateFunc(g->body, [](cpBody* b, cpVect, cpFloat damping, cpFloat dt) {
        cpBodyUpdateVelocity(b, cpv(*static_cast<Vec2*>(cpBodyGetUserData(b))), damping, dt);
    });
    g->shape = cpSpaceAddShape(_physics.space(), cpCircleShapeNew(g->body, 4.0, cpvzero));
    cpShapeSetElasticity(g->shape, 0.6);
    cpShapeSetFriction(g->shape, 0.6);
    // Collides with the map only (layer 0x100; soldiers never block a grenade).
    setLegacyCollision(g->shape, 0x1, 0x100);
    _grenades.push_back(std::move(g));
    GameEvent e{EventType::Throw};
    e.pos = s.position();
    e.sound = audio::SoundId::Throw;
    _events.push_back(e);
    GameEvent snd{EventType::Sound};
    snd.sound = audio::SoundId::Throw;
    snd.pos   = s.position();
    _events.push_back(snd);
}

void Match::launchRocket(Fighter& f)
{
    Soldier& s = *f.soldier;
    Rocket r;
    r.pos = r.prev = s.muzzlePosition();
    r.velocity     = fromCocosAngle(s.fireAngle()) * rules::kRocketSpeed;
    r.owner        = f.id;
    r.emp          = s.weapon().def().ammoType == 21;
    _rockets.push_back(r);
}

void Match::explode(Vec2 at, int owner, int ammoType)
{
    GameEvent fx{EventType::Explosion};
    fx.pos = at;
    _events.push_back(fx);
    GameEvent snd{EventType::Sound};
    snd.sound = audio::SoundId::Explode;
    snd.pos   = at;
    _events.push_back(snd);
    for (auto& f : _fighters)
    {
        if (!f.alive())
            continue;
        if (!_options.friendlyFire && f.team != 0 && f.id != owner)
            if (const Fighter* shooter = fighter(owner); shooter && shooter->team == f.team)
                continue;
        const Vec2 d   = f.soldier->position() - at;
        const float dist = d.length();
        if (dist >= rules::kExplosionRadius)
            continue;
        const float damage = std::max(rules::kExplosionMinDamage, rules::kExplosionDamage - rules::kExplosionFalloff * dist);
        f.soldier->addDamage(damage, owner, ammoType);
        const Vec2 dir = dist > 0.001f ? d * (1.0f / dist) : Vec2{0, 1};
        f.soldier->applyKnockback(dir * (std::min(damage, rules::kExplosionKnockCap) * 10.0f * rules::kSoldierMass));
    }
}

void Match::empBlast(Vec2 at, int owner)
{
    // EMP: no damage; soldiers in range lose their jetpack fuel (NEW: the original's EMP
    // effect is only partly recovered).
    GameEvent fx{EventType::Explosion};
    fx.pos = at;
    _events.push_back(fx);
    for (auto& f : _fighters)
        if (f.alive() && f.id != owner && (f.soldier->position() - at).length() < rules::kExplosionRadius * 1.5f)
            f.soldier->drainPower();
}

void Match::updateExplosives(float dt)
{
    for (auto& g : _grenades)
        g->fuse -= dt;
    for (auto& g : _grenades)
        if (g->fuse <= 0.0f)
        {
            if (g->gas)
            {
                const Vec2 at = toVec(cpBodyGetPosition(g->body));
                _gas.push_back({at, rules::kGasLife, g->owner});
                GameEvent e{EventType::Gas};
                e.pos = at;
                _events.push_back(e);
            }
            else
                explode(toVec(cpBodyGetPosition(g->body)), g->owner, 2);
            g->fuse = -1000.0f;  // removed below
        }
    _grenades.erase(std::remove_if(_grenades.begin(), _grenades.end(),
                                   [this](auto& g) {
                                       if (g->fuse > -999.0f)
                                           return false;
                                       cpSpaceRemoveShape(_physics.space(), g->shape);
                                       cpShapeFree(g->shape);
                                       cpSpaceRemoveBody(_physics.space(), g->body);
                                       cpBodyFree(g->body);
                                       return true;
                                   }),
                    _grenades.end());

    for (auto& c : _gas)
    {
        c.life -= dt;
        for (auto& f : _fighters)
        {
            if (!f.alive() || f.id == c.owner)
                continue;
            if (!_options.friendlyFire && f.team != 0)
                if (const Fighter* owner = fighter(c.owner); owner && owner->team == f.team)
                    continue;
            if ((f.soldier->position() - c.pos).length() < rules::kGasRadius)
                f.soldier->addDamage(rules::kGasDamage * dt, c.owner, 2);
        }
    }
    _gas.erase(std::remove_if(_gas.begin(), _gas.end(), [](const GasCloud& c) { return c.life <= 0.0f; }), _gas.end());

    for (auto& r : _rockets)
    {
        r.prev = r.pos;
        r.pos += r.velocity * dt;
        r.life -= dt;
        bool boom = r.life <= 0.0f;
        if (!boom)
            if (_physics.segmentQuery(r.prev, r.pos, rules::kTracerMapLayers))
                boom = true;
        if (!boom)
        {
            const auto hit = _physics.segmentQuery(r.prev, r.pos, rules::kHostBulletLayers | rules::kRemoteBulletLayers);
            for (auto& f : _fighters)
                if (hit && f.alive() && f.id != r.owner && f.soldier->owns(hit.shape))
                    boom = true;
        }
        if (boom)
        {
            if (r.emp)
                empBlast(r.pos, r.owner);
            else
                explode(r.pos, r.owner, 11);
            r.alive = false;
        }
    }
    _rockets.erase(std::remove_if(_rockets.begin(), _rockets.end(), [](const Rocket& r) { return !r.alive; }),
                   _rockets.end());
}

void Match::fireShots(Fighter& f, int shots, Weapon* gun)
{
    Soldier& s        = *f.soldier;
    auto& weapon      = gun ? *gun : s.weapon();
    if (weapon.def().ammoType == 11 || weapon.def().ammoType == 21)  // SMAW rocket, EMP charge
    {
        for (int i = 0; i < shots; ++i)
            launchRocket(f);
        return;
    }
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

float Match::gravityFactor() const
{
    return _def.gravityFactor * (_options.party.lowGravity ? rules::kPartyLowGravity : 1.0f);
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
            if ((f.human || f.remote ? _options.playerRespawn : _options.respawn) && f.lives != 0 &&
                (f.respawnTimer -= dt) <= 0.0f)
                spawn(f, safeSpawnFor(f.id));
            continue;
        }
        PadState in = f.human ? pad : (f.remote ? f.netInput : (f.brain ? f.brain(*this, f) : PadState{}));
        if (f.remote)
        {
            f.netInput.melee = f.netInput.grenade = f.netInput.reload = f.netInput.switchWeapon = false;
            f.netInput.pickUp = f.netInput.zoom = false;
        }
        Soldier& s        = *f.soldier;
        if (_options.party.meleeOnly && !(s.weapon().info() && s.weapon().info()->melee))
        {
            if (in.firing)
                in.melee = true;  // the fire stick punches instead
            in.firing = false;
        }
        s.setFireAngle(in.aimAngle);
        s.updateStep(dt, in);
        s.setJoyOffset(in.moveOffset);

        if (in.reload && !s.weapon().isReloading() && s.weapon().clip() < s.weapon().clipCapacity() &&
            s.weapon().ammo() > 0)
            s.weapon().reload();
        if (in.reload && s.dualActive() && !s.secondaryWeapon()->isReloading() && s.secondaryWeapon()->ammo() > 0)
            s.secondaryWeapon()->reload();
        if (in.switchWeapon)
            s.switchWeapons();
        if (in.grenade)
            throwGrenade(f);
        if (in.zoom)
            s.weapon().nextZoom();
        if (in.melee || (in.firing && s.weapon().info() && s.weapon().info()->melee))
            s.meleeAttack();

        int shots = s.weapon().takeBurstShots();
        if (in.firing && s.fire())
            ++shots;
        if (shots > 0)
            fireShots(f, shots);
        if (in.firing && s.fireSecondary())
            fireShots(f, 1, s.secondaryWeapon());
        if (_options.party.unlimitedAmmo && !_options.mirror)
            s.weapon().refill();
        updateMelee(f);
        updatePickUps(f, in.pickUp);
    }
    if (_options.weaponPickups)
        updateWeaponSpawns(dt);
    updateExplosives(dt);

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

namespace mm::game
{

std::vector<Match::GrenadeView> Match::grenadeViews() const
{
    if (_options.mirror)
        return _netGrenades;
    std::vector<GrenadeView> out;
    for (const auto& g : _grenades)
        out.push_back({toVec(cpBodyGetPosition(g->body)), static_cast<float>(cpBodyGetAngle(g->body))});
    return out;
}

void Match::makeSnapshot(net::Snapshot& out) const
{
    for (const auto& f : _fighters)
        if (f.soldier)
            out.fighters.push_back(f.soldier->netState());
    _tracers.toNet(out.tracers);
    for (const auto& g : grenadeViews())
        out.grenades.push_back({g.pos.x, g.pos.y, g.angle});
    for (const auto& r : _rockets)
    {
        const float deg = std::fmod(std::fmod(toCocosAngle(r.velocity), 360.0f) + 360.0f, 360.0f);
        out.rockets.push_back({r.pos.x, r.pos.y, static_cast<std::uint16_t>(deg * 10.0f)});
    }
    for (const auto& f : _fighters)
        out.scores.push_back({static_cast<std::uint8_t>(f.id), static_cast<std::uint16_t>(f.kills),
                              static_cast<std::uint16_t>(f.deaths)});
}

void Match::applySnapshot(const net::Snapshot& s)
{
    for (const auto& fs : s.fighters)
    {
        Fighter* f = fighter(fs.id);
        if (!f)  // an enemy of Co-op Survival
        {
            addFighter(fs.id, "Drone", 2, false, true);
            f = fighter(fs.id);
        }
        const bool alive = fs.flags & 1;
        if (!f->soldier)
        {
            f->soldier = std::make_unique<Soldier>(_physics, Vec2{fs.x, fs.y}, gravityFactor(), _events, f->id,
                                                   f->human ? rules::kSoldierCollision : rules::kRemoteCollision);
            f->soldier->setMirror();
        }
        Soldier& sol = *f->soldier;
        const bool wasAlive = !sol.isDead();
        sol.applyNet(fs);
        if (wasAlive && !alive)
        {
            // Dies here: the same ragdoll and death effect as on the host.
            _ragdolls.push_back(std::make_unique<Ragdoll>(_physics, sol.position(), sol.velocity(), gravityFactor(),
                                                          sol.facingRight(), [this] { return random11(); }));
            sol.deactivate();
        }
        else if (!wasAlive && alive)
        {
            // Respawn: a fresh mirror soldier.
            f->soldier = std::make_unique<Soldier>(_physics, Vec2{fs.x, fs.y}, gravityFactor(), _events, f->id,
                                                   f->human ? rules::kSoldierCollision : rules::kRemoteCollision);
            f->soldier->setMirror();
            f->soldier->applyNet(fs);
        }
    }
    for (const auto& sc : s.scores)
        if (Fighter* f = fighter(sc.id))
        {
            f->kills  = sc.kills;
            f->deaths = sc.deaths;
        }
    _tracers.setFromNet(s.tracers);
    _netGrenades.clear();
    for (const auto& g : s.grenades)
        _netGrenades.push_back({{g.x, g.y}, g.angle});
    _rockets.clear();
    for (const auto& r : s.rockets)
    {
        Rocket k;
        k.pos      = {r.x, r.y};
        k.prev     = k.pos;
        k.velocity = fromCocosAngle(r.angle / 10.0f) * rules::kRocketSpeed;
        _rockets.push_back(k);
    }
    _time = static_cast<float>(s.tick) / 60.0f;
}

void Match::makeItemList(net::ItemList& out) const
{
    for (const auto& i : _items)
        if (!i->taken())
            out.items.push_back({static_cast<std::uint16_t>(i->uid()), static_cast<std::uint8_t>(i->weapon().id()),
                                 i->position().x, i->position().y, i->angle()});
}

void Match::applyItemList(const net::ItemList& l)
{
    std::vector<std::unique_ptr<MapItem>> kept;
    for (const auto& st : l.items)
    {
        std::unique_ptr<MapItem> item;
        for (auto& i : _items)
            if (i && i->uid() == st.uid)
            {
                item = std::move(i);
                break;
            }
        if (!item)
            item = std::make_unique<MapItem>(
                _physics, st.uid,
                std::make_unique<Weapon>(static_cast<WeaponId>(std::min<int>(st.weapon, static_cast<int>(WeaponId::Count) - 1))),
                Vec2{st.x, st.y}, Vec2{}, gravityFactor());
        item->setMirrorPose({st.x, st.y}, st.angle);
        kept.push_back(std::move(item));
    }
    _items.swap(kept);  // whatever the host no longer lists is gone
}

void Match::stepMirror(float dt, const PadState& localPad)
{
    dt = std::min(dt, rules::kMaxFrameDt);
    _physics.step(dt);  // ragdolls only; mirror bodies are kinematic
    for (auto& r : _ragdolls)
        r->updateStep(dt);
    _ragdolls.erase(std::remove_if(_ragdolls.begin(), _ragdolls.end(), [](const auto& r) { return r->expired(); }),
                    _ragdolls.end());
    // Soldiers glide on the last velocity between snapshots (kinematic integration is Chipmunk's).
    if (hasPlayer() && playerAlive())
    {
        Fighter& me = *fighter(_options.localId);
        me.soldier->setFireAngle(localPad.aimAngle);  // the aim reacts at once
        // Pick-up prompt, like the host's rule (the host decides the actual pick-up).
        me.nearItem = -1;
        if (me.soldier->velocity().length() <= 200.0f)
        {
            float best = 35.0f;
            for (const auto& i : _items)
            {
                const float d = (i->position() - me.soldier->position()).length();
                if (d < best)
                {
                    best        = d;
                    me.nearItem = i->uid();
                }
            }
        }
    }
    _time += dt;
}

}  // namespace mm::game

#include "game/Soldier.h"

#include <algorithm>
#include <cmath>

#include "game/Physics.h"

namespace mm::game
{

using audio::SoundId;

namespace
{
constexpr float kScale = rules::kPlayerScale;

// Where the AK47's muzzle sits relative to the body centre (NEW: the original takes it from
// the arm and weapon sprites, Weapon::getDesignFiringPoint; these match those sprites).
constexpr Vec2 kShoulder{2.0f, 6.0f};
constexpr float kMuzzleDistance = 36.0f;  // barrel tip of ak47.png at playerScale
}  // namespace

// Chipmunk callbacks with access to the soldier's private state.
struct SoldierCallbacks
{
    // The soldier's velocity function (initBody: body->velocity_func).
    static void velocity(cpBody* body, cpVect, cpFloat, cpFloat dt)
    {
        auto* s              = static_cast<Soldier*>(cpBodyGetUserData(body));
        const cpFloat damping = std::pow(1.0 - rules::kSoldierDamping, dt);
        const cpFloat invMass = 1.0 / cpBodyGetMass(body);
        cpVect v = cpvadd(cpvmult(cpBodyGetVelocity(body), damping),
                          cpvmult(cpvadd(cpv(s->_gravity), cpvmult(cpBodyGetForce(body), invMass)), dt));
        if (s->_footContactPrev && !s->_touching && !s->_jetting)
        {
            // Ground braking: stops a soldier standing still on the ground quickly.
            const float speed = static_cast<float>(cpvlength(v));
            const float k     = std::clamp(1.5f - speed / rules::kBrakeSpeed, 0.0f, 1.0f);
            const float brake = std::clamp(static_cast<float>(-dt * rules::kBrakeRate) * k, -1.0f, 0.0f);
            v = cpvadd(v, cpvmult(v, brake));
        }
        cpFloat w = cpBodyGetAngularVelocity(body) * damping +
                    cpBodyGetTorque(body) / cpBodyGetMoment(body) * dt;
        w = std::clamp<cpFloat>(w, -rules::kSoldierMaxSpin, rules::kSoldierMaxSpin);
        cpBodySetVelocity(body, v);
        cpBodySetAngularVelocity(body, w);
        cpBodySetForce(body, cpvzero);
        cpBodySetTorque(body, 0.0);
    }

    static Soldier* soldierOf(cpArbiter* arb, cpShape** soldierShape)
    {
        CP_ARBITER_GET_SHAPES(arb, map, shape);
        (void)map;
        *soldierShape = shape;
        return static_cast<Soldier*>(cpShapeGetUserData(shape));
    }

    static cpBool begin(cpArbiter* arb, cpSpace*, cpDataPointer)
    {
        cpShape* shape = nullptr;
        Soldier* s     = soldierOf(arb, &shape);
        if (!s)
            return cpTrue;
        if (cpBodyGetVelocity(s->_body).y < 0.0)
            s->_jumpUsed = false;  // landing while falling re-arms the jump
        return !(s->_crouch && shape == s->_head);  // a crouching soldier's head passes under
    }

    static cpBool preSolve(cpArbiter* arb, cpSpace*, cpDataPointer)
    {
        cpShape* shape = nullptr;
        Soldier* s     = soldierOf(arb, &shape);
        return !(s && s->_crouch && shape == s->_head);
    }

    static void postSolve(cpArbiter* arb, cpSpace*, cpDataPointer)
    {
        cpShape* shape = nullptr;
        Soldier* s     = soldierOf(arb, &shape);
        if (!s)
            return;
        const cpContactPointSet set = cpArbiterGetContactPointSet(arb);
        if (set.count < 1)
            return;
        if (s->_landTimer > rules::kLandSoundInterval)
        {
            // Penetration depth of the first contact tells a hard landing from a soft one.
            const float depth = std::fabs(static_cast<float>(set.points[0].distance));
            if (depth > rules::kLandHeavyNormal)
                s->emitSound(SoundId::Impact2);
            else if (depth > rules::kLandLightNormal)
                s->emitSound(SoundId::Impact);
            s->_landTimer = 0.0f;
        }
        if (shape != s->_box)
            return;
        const Vec2 d = toVec(set.points[0].pointA) - s->position();
        if (d.y < 0.0f && std::fabs(d.y) > std::fabs(d.x))
            s->_footContact = true;
        s->_contact = true;
    }
};

void Soldier::installCollisionHandlers(cpSpace* space)
{
    // The local player (0x15) and everyone else (0x84) follow the same map rules.
    for (std::uint32_t type : {rules::kSoldierCollision, rules::kRemoteCollision})
    {
        cpCollisionHandler* h = cpSpaceAddCollisionHandler(space, rules::kMapCollision, type);
        h->beginFunc     = SoldierCallbacks::begin;
        h->preSolveFunc  = SoldierCallbacks::preSolve;
        h->postSolveFunc = SoldierCallbacks::postSolve;
    }
}

Soldier::Soldier(Physics& physics, Vec2 spawn, float gravityFactor, EventQueue& events, int id,
                 std::uint32_t collision, WeaponId weapon)
    : _physics(physics), _events(events), _gravityFactor(gravityFactor), _id(id), _collision(collision),
      _weapon(std::make_unique<Weapon>(weapon))
{
    cpSpace* space = physics.space();
    _body = cpSpaceAddBody(space, cpBodyNew(rules::kSoldierMass, rules::kSoldierMoment));
    cpBodySetPosition(_body, cpv(spawn));
    cpBodySetUserData(_body, this);
    cpBodySetVelocityUpdateFunc(_body, SoldierCallbacks::velocity);

    const float hw = rules::kBodyHalfWidth * kScale, hh = rules::kBodyHalfHeight * kScale;
    const cpVect box[4] = {::cpv(-hw, -hh + rules::kBodyYOffset), ::cpv(-hw, hh + rules::kBodyYOffset),
                           ::cpv(hw, hh + rules::kBodyYOffset), ::cpv(hw, -hh + rules::kBodyYOffset)};
    _box = cpSpaceAddShape(space, cpPolyShapeNew(_body, 4, box, cpTransformIdentity, 0.0));
    cpShapeSetElasticity(_box, rules::kBodyElasticity);
    cpShapeSetFriction(_box, rules::kBodyFriction);
    cpShapeSetUserData(_box, this);
    const std::uint32_t layers = _collision == rules::kRemoteCollision ? rules::kBotLayers : _collision;
    setLegacyCollision(_box, _collision, layers);

    _head = cpSpaceAddShape(space, cpCircleShapeNew(_body, rules::kHeadRadius * kScale, ::cpv(0, rules::kHeadY * kScale)));
    cpShapeSetElasticity(_head, rules::kHeadElasticity);
    cpShapeSetFriction(_head, rules::kHeadFriction);
    cpShapeSetUserData(_head, this);
    setLegacyCollision(_head, _collision, layers);

    _gravity = Vec2{0.0f, rules::kGravityIdle} * _gravityFactor;
}

Soldier::~Soldier()
{
    cpSpace* space = _physics.space();
    for (cpShape* shape : {_box, _head})
    {
        cpSpaceRemoveShape(space, shape);
        cpShapeFree(shape);
    }
    cpSpaceRemoveBody(space, _body);
    cpBodyFree(_body);
}

Vec2 Soldier::position() const { return toVec(cpBodyGetPosition(_body)); }
Vec2 Soldier::velocity() const { return toVec(cpBodyGetVelocity(_body)); }
float Soldier::bodyAngle() const { return static_cast<float>(cpBodyGetAngle(_body)); }

bool Soldier::facingRight() const
{
    // SoldierController::isRight: aiming into the right half of the circle.
    return _fireAngle < 90.0f || _fireAngle >= 270.0f;
}

Vec2 Soldier::muzzlePosition() const
{
    const Vec2 shoulder{facingRight() ? kShoulder.x : -kShoulder.x, kShoulder.y};
    return position() + shoulder + fromCocosAngle(_fireAngle) * kMuzzleDistance;
}

void Soldier::addDamage(float amount, int attacker, int ammoType)
{
    if (_invincible || _dead)
        return;
    if (_health > 0.0f)
    {
        _lastAttacker = attacker;
        _lastAmmoType = ammoType;
        // Hit sound louder for bigger hits: 0.75 + damage / 120, between 1.25 and 2 (x the
        // effects volume, so it is capped at full volume here).
        const float loud = amount * 0.25f / 30.0f;
        const float volume = loud >= 0.5f ? std::min(loud + 0.75f, 2.0f) : 1.25f;
        emitSound(SoundId::Impale, std::min(volume / 2.0f, 1.0f));
    }
    _health = std::max(0.0f, _health - amount);
}

void Soldier::checkDeath()
{
    if (_health > 0.0f)
        return;
    if (!_dead)
    {
        _dead = true;
        GameEvent e{EventType::Death};
        e.pos     = position();
        e.dir     = velocity();
        e.fighter = _id;
        _events.push_back(e);
        emitSound(static_cast<SoundId>(static_cast<int>(SoundId::Death1) + (_id % 5)));
    }
    _touching = _jetting = false;
    _thrustFactor = 0.0f;
}

void Soldier::deactivate()
{
    if (_deactivated)
        return;
    _deactivated = true;
    for (cpShape* shape : {_box, _head})
        cpShapeSetFilter(shape, CP_SHAPE_FILTER_NONE);
    cpBodySetVelocity(_body, cpvzero);
    cpBodySetAngularVelocity(_body, 0.0);
    cpBodySetType(_body, CP_BODY_TYPE_KINEMATIC);
    // No more gravity or steering: the ragdoll took over.
    cpBodySetVelocityUpdateFunc(_body, [](cpBody*, cpVect, cpFloat, cpFloat) {});
}

void Soldier::emitSound(SoundId id, float volume)
{
    GameEvent e{EventType::Sound};
    e.sound  = id;
    e.volume = volume;
    e.pos    = position();
    _events.push_back(e);
}

void Soldier::setMaterial(float gravity, float elasticity, float friction)
{
    _gravity = Vec2{0.0f, gravity} * _gravityFactor;
    cpShapeSetElasticity(_box, elasticity);
    cpShapeSetFriction(_box, friction);
}

void Soldier::applyImpulseAlong(Vec2 dir, float response, float target, float dt)
{
    // The original's "speed up towards a target speed" impulse: never brakes, only pushes.
    const float along = velocity().dot(dir);
    const float diff  = std::max(0.0001f, target - along);
    const Vec2 j      = dir * (response * dt * diff * rules::kSoldierMass);
    cpBodyApplyImpulseAtLocalPoint(_body, cpv(j), cpvzero);
}

void Soldier::tiltBody()
{
    // The body leans into the jetpack thrust: the node's rotation (= -body angle) is blended
    // towards the thrust direction (93/7 while flying) or back upright (60/40).
    const float rotation = -bodyAngle() * kRadToDeg;  // the synced CCNode rotation
    const Vec2 current{std::cos(rotation * kDegToRad), std::sin(rotation * kDegToRad)};
    const Vec2 thrust = Vec2{-_joy.x, _joy.y} * (_thrustFactor + _thrustFactor);
    const Vec2 rotated{thrust.y, -thrust.x};  // rotated by -90 degrees
    Vec2 blended;
    if (_jetting)
    {
        const Vec2 dir = (rotated + Vec2{1.0f, 0.0f}).normalized();
        blended        = current * 0.93f + dir * 0.07f;
    }
    else
    {
        blended = current * 0.6f + Vec2{1.0f, 0.0f} * 0.4f;
    }
    cpBodySetAngle(_body, toCocosAngle(blended) * kDegToRad);
}

void Soldier::updateStep(float dt, const PadState& pad)
{
    _touching = pad.moveTouched;  // Stage copies Joypad +0x12f before calling updateStep

    _jetDelay += dt;
    _jetSoundTimer += dt;
    _landTimer += dt;
    _regenTimer += dt;
    _stepTimer += dt;

    // SoldierHostController::hasPower computes power > 0; the analysed APK then returns 1
    // anyway (an unlimited-jetpack mod patch). The remake keeps the genuine rule.
    auto hasPower = [this] { return rules::gMod.unlimitedFuel || _power > 0.0f; };
    _thrustFactor = (hasPower() && _jetting && _touching) ? std::max(0.0f, _joy.y * 0.5f + 0.5f) : 0.0f;

    tiltBody();

    // Taking off: a while in the air with the stick pushed well up turns the jetpack on.
    if (_contact)
    {
        _airTime = 0.0f;
    }
    else
    {
        _airTime += dt;
        if (_joy.length() > rules::kJetStartStick && _joy.y > rules::kJetStartStickY && _airTime > rules::kJetStartAir)
            _jetting = true;
    }
    if (_contact && (!_touching || (_joy.y < 0.0f && velocity().length() < rules::kJetStopSpeed)))
        _jetting = false;

    // Leaving the world costs one health point per step.
    const Vec2 p = position();
    if (p.y < rules::kWorldMinY || p.y >= rules::kWorldMaxY || p.x >= rules::kWorldMaxX || p.x < rules::kWorldMinX)
        _health -= 1.0f;
    checkDeath();

    if (_regenTimer >= rules::kRegenRate && !_dead)
    {
        _regenTimer = 0.0f;
        _health     = std::min(_health + 1.0f * _boosts.healthRegen, static_cast<float>(rules::kMaxHealth));
    }

    // Jetpack fuel comes back once the jetpack has been off for a second, faster after three.
    if ((!_jetting || !_touching) && _jetDelay > 0.0f)
    {
        const float boost = std::clamp((_jetDelay * _jetDelay - 9.0f) / 2.0f, 0.0f, rules::kFuelRegenBoostMax);
        _power = std::min(static_cast<float>(rules::kMaxPower), _power + (_boosts.fuelRegen * rules::kFuelRegenBase + boost) * dt);
    }
    if (_jetting && hasPower())
    {
        if (_touching)
        {
            _jetDelay = -rules::kFuelRegenDelay;
            if (_jetSoundTimer >= rules::kJetSoundInterval)
            {
                emitSound(SoundId::Jet);
                _jetSoundTimer = 0.0f;
            }
        }
    }
    else
    {
        _jetting       = false;
        _jetSoundTimer = 0.75f;
    }

    // getWeaponWeightFactor: the weapon in hand, and half the burden of the other one.
    float weight = _weapon ? _weapon->def().weight : 1.0f;
    if (_secondary)
        weight = (_secondary->def().weight + 1.0f) * weight / 2.0f;
    if (!_touching)
    {
        setMaterial(rules::kGravityIdle, rules::kIdleElasticity, rules::kIdleFriction);
    }
    else if (_jetting && hasPower())
    {
        setMaterial(rules::kGravityJetting, rules::kJetElasticity, rules::kJetFriction);
        Vec2 dir;
        if (pad.moveVector.length() != 0.0f)
            dir = pad.moveVector.normalized();
        const float target = rules::kJetSpeed * weight;
        _power    = std::max(0.0f, _power - _thrustFactor * rules::kJetFuelPerStep * _boosts.fuelBurn);
        _jumpUsed = true;
        if ((dir * target).length() != 0.0f)
            applyImpulseAlong(dir, weight * rules::kJetResponse * pad.moveOffset.length(), target, dt);
    }
    else
    {
        setMaterial(rules::kGravityWalking, rules::kWalkElasticity, rules::kWalkFriction);
        const float x = pad.moveOffset.x;  // Joypad::getXOffset
        const float target = std::fabs(rules::kWalkSpeed * x * weight);
        if (x != 0.0f)
        {
            const Vec2 dir{x > 0.0f ? 1.0f : -1.0f, 0.0f};
            applyImpulseAlong(dir, weight * rules::kWalkResponse, target, dt);
            if (_stepTimer > rules::kFootstepDistance / target && _contact && !_crouch)
            {
                _stepTimer = 0.0f;
                emitSound(SoundId::Impact, 0.75f);
            }
        }
        if (_joy.y > rules::kJumpStickY && !_jumpUsed)
        {
            // Jump: straight up, body upright, full thrust.
            _jumpUsed = true;
            emitSound(SoundId::Impact2);
            cpBodySetAngle(_body, 0.0);
            cpBodyApplyImpulseAtLocalPoint(_body, ::cpv(0, rules::kSoldierMass * rules::kJumpSpeed), cpvzero);
            _thrustFactor = 1.0f;
        }
        else if (_contact && (_crouch ? _joy.y < rules::kCrouchHoldY : _joy.y < rules::kCrouchStickY))
        {
            _crouch      = true;
            _crouchTimer = 0.0f;
        }
    }

    _crouchTimer += dt;
    if (_crouchTimer > rules::kCrouchHold)
    {
        _crouch      = false;
        _crouchTimer = 0.0f;
    }

    if (_weapon)
        _weapon->updateStep(dt);
    if (dualActive())
        _secondary->updateStep(dt);

    // Punch charge and the punch itself (updateStep +0x1e4 / +0x166 / +0x178).
    if (!_melee)
    {
        if (_meleeCharge < 125.0f)
            _meleeCharge += 0.6f;
    }
    else
    {
        _meleeTime += dt;
        if (_meleeTime > 0.35f)
            endMelee();
    }

    _contactPrev     = _contact;
    _contact         = false;
    _footContactPrev = _footContact;
    _footContact     = false;
}

bool Soldier::dualActive() const
{
    return _boosts.dualWield && !_dead && _weapon && _secondary && economy::isHandgun(_weapon->id()) &&
           economy::isHandgun(_secondary->id());
}

bool Soldier::fireSecondary()
{
    if (!dualActive())
        return false;
    return _secondary->triggerPull() == Weapon::Trigger::Fired;
}

bool Soldier::fire()
{
    if (!_weapon || _dead)
        return false;
    if (_weapon->info() && _weapon->info()->melee)
        return false;  // a machete or shield swings with the melee button instead
    switch (_weapon->triggerPull())
    {
    case Weapon::Trigger::Fired:
        emitSound(fireSound(_weapon->id()));
        return true;
    case Weapon::Trigger::Empty:
        emitSound(SoundId::Dryfire);
        return false;
    case Weapon::Trigger::None:
        return false;
    }
    return false;
}

}  // namespace mm::game

namespace mm::game
{

void Soldier::switchWeapons()
{
    if (_secondary)
    {
        std::swap(_weapon, _secondary);
        emitSound(SoundId::Reload);
    }
}

std::unique_ptr<Weapon> Soldier::takeWeapon(std::unique_ptr<Weapon> weapon)
{
    emitSound(SoundId::Reload);
    struct Reapply { Soldier* s; ~Reapply() { s->applyWeaponBoosts(); } } reapply{this};
    if (weapon)
        weapon->setMods(0, 0, 1);  // a weapon off the floor takes the new owner's upgrades below
    if (!_secondary)
    {
        _secondary = std::move(_weapon);
        _weapon    = std::move(weapon);
        return nullptr;
    }
    std::swap(_weapon, weapon);
    return weapon;
}

bool Soldier::meleeAttack()
{
    if (_melee || _dead)
        return false;
    const Vec2 dir = fromCocosAngle(_fireAngle);
    cpBodyApplyImpulseAtLocalPoint(_body, cpv(dir * (_meleeCharge * rules::kSoldierMass)), cpvzero);
    emitSound(SoundId::Swipe);
    _melee       = true;
    _meleeTime   = 0.0f;
    _meleeCharge = std::max(0.0f, _meleeCharge - 35.0f);
    return true;
}

}  // namespace mm::game

namespace mm::game
{
void Soldier::applyKnockback(Vec2 impulse)
{
    cpBodyApplyImpulseAtLocalPoint(_body, cpv(impulse), cpvzero);
}
}  // namespace mm::game

namespace mm::game
{

void Soldier::setMirror()
{
    _mirror = true;
    cpBodySetType(_body, CP_BODY_TYPE_KINEMATIC);
    cpBodySetVelocityUpdateFunc(_body, [](cpBody*, cpVect, cpFloat, cpFloat) {});
}

net::FighterState Soldier::netState() const
{
    net::FighterState f;
    f.id        = static_cast<std::uint8_t>(_id);
    const Vec2 p = position(), v = velocity();
    f.x = p.x; f.y = p.y; f.vx = v.x; f.vy = v.y;
    f.angle     = bodyAngle();
    f.aim       = static_cast<std::uint16_t>(std::fmod(_fireAngle + 360.0f, 360.0f) * 10.0f);
    f.health    = static_cast<std::uint8_t>(std::clamp(_health, 0.0f, 255.0f));
    f.power     = static_cast<std::uint8_t>(std::clamp(_power, 0.0f, 255.0f));
    f.weapon    = static_cast<std::uint8_t>(_weapon->id());
    f.secondary = _secondary ? static_cast<std::uint8_t>(_secondary->id()) : 255;
    f.clip      = static_cast<std::uint8_t>(std::min(_weapon->clip(), 255));
    f.ammo      = static_cast<std::uint16_t>(std::min(_weapon->ammo(), 65535));
    f.grenades  = static_cast<std::uint8_t>(_grenades);
    f.flags     = static_cast<std::uint8_t>((_dead ? 0 : 1) | (_crouch ? 2 : 0) | (_jetting ? 4 : 0) |
                                            (_footContactPrev ? 8 : 0) | (_weapon->isReloading() ? 16 : 0) |
                                            (static_cast<int>(std::clamp(_thrustFactor, 0.0f, 1.0f) * 7.0f) << 5));
    f.reloadPct = static_cast<std::uint8_t>(_weapon->reloadProgress() * 255.0f);
    return f;
}

void Soldier::applyNet(const net::FighterState& s)
{
    cpBodySetPosition(_body, ::cpv(s.x, s.y));
    cpBodySetVelocity(_body, ::cpv(s.vx, s.vy));
    cpBodySetAngle(_body, s.angle);
    _fireAngle    = s.aim / 10.0f;
    _health       = s.health;
    _power        = s.power;
    _dead         = !(s.flags & 1);
    _crouch       = s.flags & 2;
    _jetting      = s.flags & 4;
    _onGroundNet  = s.flags & 8;
    _thrustFactor = ((s.flags >> 5) & 7) / 7.0f;
    _grenades     = s.grenades;
    const auto id = static_cast<WeaponId>(std::min<int>(s.weapon, static_cast<int>(WeaponId::Count) - 1));
    if (!_weapon || _weapon->id() != id)
        _weapon = std::make_unique<Weapon>(id);
    _weapon->setNetState(s.clip, s.ammo, s.flags & 16, s.reloadPct / 255.0f);
    if (s.secondary == 255)
        _secondary.reset();
    else if (const auto sid = static_cast<WeaponId>(std::min<int>(s.secondary, static_cast<int>(WeaponId::Count) - 1));
             !_secondary || _secondary->id() != sid)
        _secondary = std::make_unique<Weapon>(sid);
}

}  // namespace mm::game

namespace mm::game
{

void Soldier::applyWeaponBoosts()
{
    for (Weapon* w : {_weapon.get(), _secondary.get()})
    {
        if (!w)
            continue;
        const WeaponId id = w->id();
        const bool hand   = economy::isHandgun(id);
        const bool rifle  = economy::isRifle(id);
        w->setMods(hand ? _boosts.handgunClip : (rifle ? _boosts.rifleClip : 0.0f),
                   hand ? _boosts.handgunReload : (rifle ? _boosts.rifleReload : 0.0f), _boosts.spread);
    }
}

void Soldier::setBoosts(const economy::Boosts& b)
{
    _boosts = b;
    _grenades = rules::kStartGrenades + (b.maxGrenades > 4 ? 1 : 0);
    // The Golden Eagle upgrade: a second weapon from the start (SoldierHostController backup starter).
    if (b.goldenEagle && !_secondary)
        _secondary = std::make_unique<Weapon>(WeaponId::GoldDeagle);
    applyWeaponBoosts();
}

}  // namespace mm::game

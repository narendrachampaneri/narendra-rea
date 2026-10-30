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
constexpr float kMuzzleDistance = 22.0f;
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
    cpCollisionHandler* h = cpSpaceAddCollisionHandler(space, rules::kMapCollision, rules::kSoldierCollision);
    h->beginFunc     = SoldierCallbacks::begin;
    h->preSolveFunc  = SoldierCallbacks::preSolve;
    h->postSolveFunc = SoldierCallbacks::postSolve;
}

Soldier::Soldier(Physics& physics, Vec2 spawn, float gravityFactor, EventQueue& events)
    : _physics(physics), _events(events), _gravityFactor(gravityFactor),
      _weapon(std::make_unique<Weapon>(rules::kAK47))
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
    setLegacyCollision(_box, rules::kSoldierCollision);

    _head = cpSpaceAddShape(space, cpCircleShapeNew(_body, rules::kHeadRadius * kScale, ::cpv(0, rules::kHeadY * kScale)));
    cpShapeSetElasticity(_head, rules::kHeadElasticity);
    cpShapeSetFriction(_head, rules::kHeadFriction);
    cpShapeSetUserData(_head, this);
    setLegacyCollision(_head, rules::kSoldierCollision);

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
    auto hasPower = [this] { return _power > 0.0f; };
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
    if (_health <= 0.0f)
    {
        if (!_dead)
        {
            _dead = true;
            GameEvent e{EventType::Death};
            e.pos = p;
            _events.push_back(e);
            emitSound(SoundId::Death1);
        }
        _touching = _jetting = false;
        _thrustFactor = 0.0f;
    }

    if (_regenTimer >= rules::kRegenRate && !_dead)
    {
        _regenTimer = 0.0f;
        _health     = std::min(_health + 1.0f, static_cast<float>(rules::kMaxHealth));
    }

    // Jetpack fuel comes back once the jetpack has been off for a second, faster after three.
    if ((!_jetting || !_touching) && _jetDelay > 0.0f)
    {
        const float boost = std::clamp((_jetDelay * _jetDelay - 9.0f) / 2.0f, 0.0f, rules::kFuelRegenBoostMax);
        _power = std::min(static_cast<float>(rules::kMaxPower), _power + (1.0f * rules::kFuelRegenBase + boost) * dt);
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

    const float weight = _weapon ? _weapon->def().weight : 1.0f;  // getWeaponWeightFactor
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
        _power    = std::max(0.0f, _power - _thrustFactor * rules::kJetFuelPerStep * 1.0f);
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

    _contactPrev     = _contact;
    _contact         = false;
    _footContactPrev = _footContact;
    _footContact     = false;
}

bool Soldier::fire()
{
    if (!_weapon || _dead)
        return false;
    switch (_weapon->triggerPull())
    {
    case Weapon::Trigger::Fired:
        emitSound(SoundId::Ak47);
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

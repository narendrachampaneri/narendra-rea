// The local player's soldier: SoldierHostController (body, shapes, velocity function, the
// per-step movement rules) plus the map collision callbacks that feed it.
#pragma once

#include <memory>

#include "chipmunk/chipmunk.h"

#include "game/Events.h"
#include "game/Joypad.h"
#include "game/Weapon.h"

namespace mm::game
{

class Physics;

class Soldier
{
public:
    Soldier(Physics& physics, Vec2 spawn, float gravityFactor, EventQueue& events);
    ~Soldier();
    Soldier(const Soldier&) = delete;
    Soldier& operator=(const Soldier&) = delete;

    // Map <-> soldier collision handlers (PhysicsManager::init); once per space.
    static void installCollisionHandlers(cpSpace* space);

    // SoldierHostController::updateStep(dt, direction vector, offset, x offset).
    void updateStep(float dt, const PadState& pad);
    // Stage::updateStep calls these after updateStep, so the soldier reads them a step late.
    void setJoyOffset(Vec2 offset) { _joy = offset; }
    void setFireAngle(float cocosDegrees) { _fireAngle = cocosDegrees; }

    // SoldierHostController::fire: pulls the trigger; true when a shot left the barrel.
    bool fire();

    // ---- state for the view and the HUD ----
    Vec2 position() const;
    Vec2 velocity() const;
    float bodyAngle() const;  // radians, counter-clockwise (Chipmunk)
    float fireAngle() const { return _fireAngle; }
    Vec2 muzzlePosition() const;
    float health() const { return _health; }
    float power() const { return _power; }
    float thrustFactor() const { return _thrustFactor; }
    bool isJetting() const { return _jetting; }
    bool isCrouching() const { return _crouch; }
    bool isDead() const { return _dead; }
    bool onGround() const { return _footContactPrev; }
    bool facingRight() const;
    Weapon& weapon() { return *_weapon; }
    const Weapon& weapon() const { return *_weapon; }
    Vec2 joyOffset() const { return _joy; }

    // Test hooks.
    cpBody* body() const { return _body; }
    void setHealth(float hp) { _health = hp; }

private:
    friend struct SoldierCallbacks;

    void tiltBody();
    void applyImpulseAlong(Vec2 dir, float response, float target, float dt);
    void setMaterial(float gravity, float elasticity, float friction);
    void emitSound(audio::SoundId id, float volume = 1.0f);

    Physics& _physics;
    EventQueue& _events;
    float _gravityFactor;

    cpBody* _body   = nullptr;
    cpShape* _box   = nullptr;  // +0x13c
    cpShape* _head  = nullptr;  // +0x140
    Vec2 _gravity;              // +0x128

    std::unique_ptr<Weapon> _weapon;  // primary (+0x148)

    Vec2 _joy;                   // +0x114: last pad offset
    float _fireAngle = 0.0f;     // +0x118 of the weapon / getFireAngle
    bool _touching = false;      // +0x11c: move stick held
    bool _jetting = false;       // +0x104
    bool _jumpUsed = false;      // +0x11d: cleared when landing while falling
    bool _crouch = false;        // +0x15a
    bool _dead = false;          // +0x159
    float _thrustFactor = 0.0f;  // +0x10c
    float _health = 100.0f;      // +0x144
    float _power = 100.0f;       // +0x198
    float _jetDelay = 0.0f;      // +0x184
    float _jetSoundTimer = 0.75f;  // +0x108
    float _landTimer = 0.0f;     // +0x1ac
    float _regenTimer = 0.0f;    // +0x188
    float _stepTimer = 0.0f;     // +0x1bc
    float _airTime = 0.0f;       // +0x190
    float _crouchTimer = 0.0f;   // +0x15c

    // Contact flags: set by the collision callbacks during the physics step, copied to the
    // "previous" pair and cleared at the end of updateStep (CollisionObject +0xe6..+0xe9).
    bool _contact = false, _footContact = false;
    bool _contactPrev = false, _footContactPrev = false;
};

}  // namespace mm::game

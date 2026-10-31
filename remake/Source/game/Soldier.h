// The local player's soldier: SoldierHostController (body, shapes, velocity function, the
// per-step movement rules) plus the map collision callbacks that feed it.
#pragma once

#include <memory>

#include "chipmunk/chipmunk.h"

#include "game/Events.h"
#include "game/Joypad.h"
#include "game/Weapon.h"
#include "economy/Economy.h"
#include "game/Weapons.h"
#include "net/Protocol.h"

namespace mm::game
{

class Physics;

class Soldier
{
public:
    // `collision` is the original's type/group/layers value: 0x15 for the local player,
    // 0x84 for everyone else (remote players, and the remake's bots).
    Soldier(Physics& physics, Vec2 spawn, float gravityFactor, EventQueue& events, int id = 0,
            std::uint32_t collision = rules::kSoldierCollision, WeaponId weapon = WeaponId::AK47);
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

    // SoldierController::addDamage: health never goes below 0; the last attacker gets the kill.
    void addDamage(float amount, int attacker, int ammoType);
    void setInvincible(bool on) { _invincible = on; }  // +0x15b (Sarge in Training)
    int lastAttacker() const { return _lastAttacker; }
    int lastAmmoType() const { return _lastAmmoType; }

    // Notices a fatal hit at once (updateStep does it too) and emits the Death event.
    void checkDeath();
    // After death: the body stops colliding and stays where it is (the ragdoll takes over).
    void deactivate();
    bool isDeactivated() const { return _deactivated; }

    int id() const { return _id; }
    std::uint32_t collision() const { return _collision; }
    bool owns(const cpShape* shape) const { return shape == _box || shape == _head; }
    bool isHead(const cpShape* shape) const { return shape == _head; }

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
    bool onGround() const { return _mirror ? _onGroundNet : _footContactPrev; }
    bool facingRight() const;
    void setWeapon(std::unique_ptr<Weapon> w) { _weapon = std::move(w); applyWeaponBoosts(); }
    Weapon& weapon() { return *_weapon; }
    const Weapon& weapon() const { return *_weapon; }
    const Weapon* secondary() const { return _secondary.get(); }

    // SoldierHostController::switchWeapons.
    void switchWeapons();
    // Picks up a weapon: into the free hand if there is one, else in place of the one held,
    // which is returned to be dropped.
    std::unique_ptr<Weapon> takeWeapon(std::unique_ptr<Weapon> weapon);

    // SoldierHostController::meleeAttack: a dash along the aim; the charge (+0x1e4) grows by
    // 0.6 a step up to 125 and each punch spends 35. Returns false while one is under way.
    bool meleeAttack();
    bool meleeActive() const { return _melee; }
    float meleeTime() const { return _meleeTime; }
    float meleeCharge() const { return _meleeCharge; }
    void endMelee() { _melee = false; _meleeTime = 0.0f; }

    int grenades() const { return _grenades; }
    void addGrenades(int n) { _grenades += n; }
    bool takeGrenade()
    {
        if (_grenades <= 0 || _dead)
            return false;
        --_grenades;
        return true;
    }
    void applyKnockback(Vec2 impulse);

    // Multiplayer. A mirror soldier on a client does no simulation of its own: its body is
    // moved by the host's snapshots (kinematic, so it glides on the reported velocity).
    void setMirror();
    bool isMirror() const { return _mirror; }
    void applyNet(const net::FighterState& s);
    net::FighterState netState() const;
    void drainPower() { _power = 0.0f; }

    // Purchased upgrades (ItemLibrary::applyItems): regen rates, fuel burn, melee, grenades,
    // weapon clip / reload / accuracy, the Golden Eagle as a second weapon.
    void setBoosts(const economy::Boosts& b);
    const economy::Boosts& boosts() const { return _boosts; }
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
    int _id;
    std::uint32_t _collision;
    bool _invincible  = false;
    bool _deactivated = false;
    int _lastAttacker = -1;
    int _lastAmmoType = 0;

    cpBody* _body   = nullptr;
    cpShape* _box   = nullptr;  // +0x13c
    cpShape* _head  = nullptr;  // +0x140
    Vec2 _gravity;              // +0x128

    std::unique_ptr<Weapon> _weapon;     // in hand (+0x148)
    std::unique_ptr<Weapon> _secondary;  // the other one (+0x14c)
    economy::Boosts _boosts;
    void applyWeaponBoosts();
    bool _mirror        = false;
    bool _onGroundNet   = false;
    bool _melee         = false;         // +0x166
    float _meleeTime    = 0.0f;          // +0x178
    float _meleeCharge  = 0.0f;          // +0x1e4
    int _grenades       = rules::kStartGrenades;

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

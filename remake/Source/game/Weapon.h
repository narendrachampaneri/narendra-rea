// Weapon + AK47 (Weapon::init/updateStep, AK47::init/triggerPull/updateItemStep).
#pragma once

#include "game/Rules.h"

namespace mm::game
{

class Weapon
{
public:
    explicit Weapon(const rules::WeaponDef& def);

    const rules::WeaponDef& def() const { return *_def; }

    enum class Trigger
    {
        None,   // still waiting for the next shot
        Fired,  // one shot: spawn `roundsPerFire` tracers
        Empty,  // dry fire click
    };
    // AK47::triggerPull, called every step while the fire stick is pushed past its edge.
    Trigger triggerPull();

    // Weapon::updateStep + AK47::updateItemStep: shot timer and reload.
    void updateStep(float dt);

    // Weapon::reloadWeapon (the reload button).
    void reload();

    // Weapon::getRandomFiringAngle: a fixed pseudo-random sequence, in degrees.
    float randomFiringAngle();

    int clip() const { return _clip; }
    int ammo() const { return _ammo; }
    bool isReloading() const { return _reloading; }
    float reloadProgress() const;  // 0..1 while reloading
    bool flareVisible() const { return _flare; }

private:
    const rules::WeaponDef* _def;
    int _clip;
    int _ammo;
    float _shotTimer   = 0.0f;   // +0x110
    float _reloadTimer = 0.0f;   // +0x158
    float _random      = 0.0f;   // +0x1c0
    bool _reloading    = false;  // +0x181
    bool _flare        = false;  // +0x180
};

}  // namespace mm::game

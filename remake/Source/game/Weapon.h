// Weapon + AK47 (Weapon::init/updateStep, AK47::init/triggerPull/updateItemStep).
#pragma once

#include "game/Rules.h"
#include "game/Weapons.h"

namespace mm::game
{

class Weapon
{
public:
    explicit Weapon(const rules::WeaponDef& def);
    explicit Weapon(WeaponId id);  // with the weapon's starting clip and spare ammo
    Weapon(WeaponId id, int clip, int ammo);

    // The weapon table entry, or nullptr for a bare WeaponDef (tests).
    const WeaponInfo* info() const { return _info; }
    WeaponId id() const { return _info ? _info->id : WeaponId::AK47; }

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

    // WeaponManager::transferAmmo: takes rounds from a dropped weapon of the same kind, up to
    // the maximum; returns how many were taken.
    int addAmmo(int rounds);
    bool ammoFull() const { return _ammo >= _def->maxAmmo; }

    // M16: the two shots that follow a burst's first one, 0.06 s apart (M16::updateItemStep).
    // Returns how many burst shots are due this step.
    int takeBurstShots();

    // Upgrades (Weapon::setClipCapacityMod / setClipReloadMod / setAccuracyMod).
    void setMods(float clipExtra, float reloadFaster, float spreadFactor)
    {
        _clipExtra = clipExtra; _reloadFaster = reloadFaster; _spreadFactor = spreadFactor;
    }
    int clipCapacity() const { return static_cast<int>(_def->clip * (1.0f + _clipExtra) + 0.5f); }
    float reloadTime() const { return _def->reloadTime * (1.0f - _reloadFaster); }

    // Client mirror: take over what the host reports.
    void setNetState(int clip, int ammo, bool reloading, float reloadFraction)
    {
        _clip = clip; _ammo = ammo; _reloading = reloading;
        _reloadTimer = reloadFraction * reloadTime();
    }

    // Zoom (Weapon::changeZoomLevel): cycles the weapon's zoom levels.
    void nextZoom();
    float zoom() const { return _info ? _info->zooms[_zoom] : 1.0f; }

    // Weapon::getRandomFiringAngle: a fixed pseudo-random sequence, in degrees.
    float randomFiringAngle();

    int clip() const { return _clip; }
    int ammo() const { return _ammo; }
    bool isReloading() const { return _reloading; }
    float reloadProgress() const;  // 0..1 while reloading
    bool flareVisible() const { return _flare; }

private:
    const rules::WeaponDef* _def;
    const WeaponInfo* _info = nullptr;
    float _clipExtra = 0.0f, _reloadFaster = 0.0f, _spreadFactor = 1.0f;
    int _zoom          = 0;
    int _burstLeft     = 0;
    float _burstTimer  = 0.0f;
    int _burstDue      = 0;
    int _clip;
    int _ammo;
    float _shotTimer   = 0.0f;   // +0x110
    float _reloadTimer = 0.0f;   // +0x158
    float _random      = 0.0f;   // +0x1c0
    bool _reloading    = false;  // +0x181
    bool _flare        = false;  // +0x180
};

}  // namespace mm::game

#include "game/Weapon.h"

#include <algorithm>

namespace mm::game
{

Weapon::Weapon(const rules::WeaponDef& def) : _def(&def), _clip(def.clip), _ammo(def.startAmmo) {}

Weapon::Weapon(WeaponId id) : Weapon(id, weaponInfo(id).def.clip, weaponInfo(id).def.startAmmo) {}

Weapon::Weapon(WeaponId id, int clip, int ammo) : _def(&weaponInfo(id).def), _info(&weaponInfo(id)), _clip(clip), _ammo(ammo) {}

int Weapon::addAmmo(int rounds)
{
    const int taken = std::clamp(_def->maxAmmo - _ammo, 0, rounds);
    _ammo += taken;
    return taken;
}

int Weapon::takeBurstShots()
{
    const int due = _burstDue;
    _burstDue     = 0;
    return due;
}

void Weapon::nextZoom()
{
    if (_info)
        _zoom = (_zoom + 1) % _info->zoomCount;
}

Weapon::Trigger Weapon::triggerPull()
{
    Trigger result = Trigger::None;
    if (_def->fireInterval < _shotTimer)
    {
        if (_clip >= 1 && !_reloading)
        {
            _flare = true;
            // The analysed APK subtracts 0 here in every weapon (an unlimited-ammo mod patch);
            // the original game spends one round per shot.
            _clip -= 1;
            result = Trigger::Fired;
            if (_info && _info->burstInterval > 0.0f)
            {
                _burstLeft  = 2;  // a three-round burst
                _burstTimer = 0.0f;
            }
        }
        else if (!_reloading)
        {
            result = Trigger::Empty;
        }
        _shotTimer = 0.0f;
    }
    if (!_reloading && _clip == 0 && _ammo >= 1)
        reload();
    return result;
}

void Weapon::updateStep(float dt)
{
    _reloadTimer += dt;
    _shotTimer += dt;  // Weapon::updateStep (also hides the muzzle flare)
    _flare = false;
    if (_burstLeft > 0)
    {
        _burstTimer += dt;
        while (_burstLeft > 0 && _burstTimer >= _info->burstInterval && _clip > 0)
        {
            _burstTimer -= _info->burstInterval;
            --_burstLeft;
            --_clip;
            ++_burstDue;
            _flare = true;
        }
        if (_clip <= 0)
            _burstLeft = 0;
    }
    if (_reloading && reloadTime() < _reloadTimer)
    {
        _reloading     = false;
        _shotTimer     = 0.0f;
        const int need = clipCapacity() - _clip;
        _ammo -= need;
        _clip += need + std::min(_ammo, 0);
        _ammo = std::max(_ammo, 0);
    }
}

void Weapon::reload()
{
    _reloading   = true;
    _reloadTimer = 0.0f;
}

float Weapon::randomFiringAngle()
{
    _random = static_cast<float>(static_cast<int>(_random * 41.0f + 37.0f) % 100);
    const float r = _random / 100.0f - 0.5f;
    return _def->spread * (r + r) * _spreadFactor;  // accuracy modifier +0x168
}

float Weapon::reloadProgress() const
{
    return _reloading ? std::clamp(_reloadTimer / std::max(reloadTime(), 0.001f), 0.0f, 1.0f) : 0.0f;
}

}  // namespace mm::game

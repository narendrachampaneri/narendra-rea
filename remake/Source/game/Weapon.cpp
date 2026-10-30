#include "game/Weapon.h"

#include <algorithm>

namespace mm::game
{

Weapon::Weapon(const rules::WeaponDef& def) : _def(&def), _clip(def.clip), _ammo(def.startAmmo) {}

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
    if (_reloading && _def->reloadTime < _reloadTimer)
    {
        _reloading     = false;
        _shotTimer     = 0.0f;
        const int need = _def->clip - _clip;
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
    return _def->spread * (r + r) * 1.0f;  // * accuracy modifier (+0x168, 1 without upgrades)
}

float Weapon::reloadProgress() const
{
    return _reloading ? std::clamp(_reloadTimer / _def->reloadTime, 0.0f, 1.0f) : 0.0f;
}

}  // namespace mm::game

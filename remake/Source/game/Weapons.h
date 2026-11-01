// Every weapon of the original, from each class's ::init (source/native/<CLASS>.cpp) and the
// Weapon getters. Fields are WeaponDef (Rules.h) plus the flags below.
//
// The analysed APK is a modded build; these getters were patched and are NOT copied:
//   Weapon::getRoundsPerFire      returns 2 instead of +0x1b4 (every gun fired two bullets)
//   Weapon::getReloadTime         returns 0 instead of +0x160 - +0x17c (instant reload)
//   Weapon::isDualWield           returns 1 instead of +0x183 (anything could be dual-wielded)
//   Weapon::isDualWieldPrimaryOnly returns 1 instead of +0x184
//   <weapon>::triggerPull         clip -= 0 instead of 1 (unlimited ammo)
//   SoldierHostController::hasPower returns 1 instead of power > 0 (unlimited jetpack)
#pragma once

#include <array>
#include <string_view>

#include "audio/SoundBank.h"
#include "game/Rules.h"

namespace mm::game
{

enum class WeaponId : std::uint8_t
{
    AK47,
    Deagle,       // DEAGLE "desertEagle.png"
    GoldDeagle,   // GDEAGLE
    Magnum,
    Uzi,
    MP5,
    M16,          // three-round burst
    M14,          // "hunting.png"
    Sniper,       // M93BA
    Shotgun,
    Rocket,       // SMAW
    Phasr,        // laser
    Flamethrower,
    SawGun,
    EMP,
    Machete,      // melee only
    RiotShield,   // melee + shield
    Count,
};

struct WeaponInfo
{
    WeaponId id;
    std::string_view key;   // WeaponFactory name where the original has one
    std::string_view name;  // shown in the HUD / pick-up message
    rules::WeaponDef def;
    float recoil;           // +0x16c: kick applied to the arm when firing
    float armAngle;         // +0x1b8: resting arm angle offset (heavy weapons point down)
    float burstInterval;    // M16 +0x1f4: time between the shots of one burst (0 = none)
    bool dualWield;         // +0x183: may be held in both hands
    bool dualOnly;          // +0x182: only as the second-hand item (riot shield)
    bool primaryOnly;       // +0x184
    bool melee;             // +0x1b0: isMeleeWeapon
    std::array<float, 4> zooms;  // +0x150: zoom levels (scale of the view; < 1 sees more)
    int zoomCount;
};

// clang-format off
// def: sprite, damage, range, fireInterval, reloadTime, spread, clip, startAmmo, maxAmmo,
//      bulletSpeed, roundsPerFire, weight, meleeDamage, meleeLength, ammoType, viewOffset
inline constexpr std::array<WeaponInfo, static_cast<int>(WeaponId::Count)> kWeapons{{
    {WeaponId::AK47, "ak47", "AK-47",
     {"ak47.png", 10, 800, 0.1f, 2.0f, 4.0f, 35, 200, 250, 1300, 1, 1.0f, 30, 40, 7, 90},
     10, 0, 0, false, false, false, false, {1.0f, 0.9f, 0.7f}, 3},
    {WeaponId::Deagle, "deagle", "Desert Eagle",
     {"desertEagle.png", 8, 500, 0.25f, 1.25f, 2.0f, 15, 50, 75, 1300, 1, 1.0f, 15, 35, 3, 50},
     15, 0, 0, true, false, false, false, {1.0f}, 1},
    {WeaponId::GoldDeagle, "gdeagle", "Golden Eagle",
     {"gDesertEagle.png", 10, 600, 0.2f, 1.25f, 2.0f, 15, 50, 75, 1300, 1, 1.0f, 25, 35, 18, 50},
     15, 0, 0, true, false, false, false, {1.0f, 0.8f}, 2},
    {WeaponId::Magnum, "magnum", "Magnum",
     {"magnum.png", 30, 650, 0.6f, 2.0f, 1.0f, 6, 36, 36, 1300, 1, 1.0f, 25, 35, 4, 60},
     25, 0, 0, true, false, false, false, {1.0f, 0.8f}, 2},
    {WeaponId::Uzi, "uzi", "Uzi",
     {"uzi.png", 7, 500, 0.1f, 1.5f, 6.0f, 40, 250, 400, 1300, 1, 1.0f, 20, 35, 5, 75},
     10, 0, 0, true, false, false, false, {1.0f, 0.8f}, 2},
    {WeaponId::MP5, "mp5", "MP5",
     {"mp5.png", 7, 700, 0.06f, 1.75f, 5.0f, 50, 250, 400, 1400, 1, 1.0f, 30, 35, 6, 80},
     8, 0, 0, false, false, false, false, {1.0f, 0.8f}, 2},
    {WeaponId::M16, "m16", "M16",
     {"m16.png", 14, 1000, 0.5f, 2.0f, 2.0f, 24, 150, 300, 1600, 1, 1.0f, 30, 40, 8, 110},
     8, 0, 0.06f, false, false, false, false, {1.0f, 0.8f, 0.6f}, 3},
    {WeaponId::M14, "m14", "M14",
     {"hunting.png", 36, 1200, 0.55f, 2.25f, 0.0f, 6, 36, 36, 2000, 1, 1.0f, 35, 40, 16, 120},
     25, 0, 0, false, false, false, false, {1.0f, 0.7f, 0.5f}, 3},
    {WeaponId::Sniper, "m93ba", "Sniper",
     {"sniper.png", 75, 1500, 0.8f, 2.5f, 0.0f, 4, 20, 20, 10000, 1, 0.95f, 35, 50, 10, 150},
     30, 0, 0, false, false, false, false, {1.0f, 0.8f, 0.6f, 0.4f}, 4},
    {WeaponId::Shotgun, "shotgun", "Shotgun",
     {"shotgun.png", 20, 275, 0.75f, 2.5f, 10.0f, 5, 30, 30, 1300, 6, 0.9f, 40, 50, 9, 90},
     20, -25, 0, false, false, false, false, {1.0f, 0.9f}, 2},
    {WeaponId::Rocket, "rocket", "Rocket Launcher",
     {"smaw.png", 1, 1, 1.25f, 4.0f, 0.0f, 3, 6, 6, 1, 1, 0.9f, 35, 35, 11, 130},
     25, -40, 0, false, false, false, false, {1.0f, 0.7f, 0.5f}, 3},
    {WeaponId::Phasr, "phasr", "Phasr",
     {"laser.png", 6, 1300, 0.15f, 0.0f, 0.0f, 50, 150, 150, 10000, 1, 0.98f, 40, 40, 17, 125},
     0, 0, 0, false, false, false, false, {1.0f, 0.8f, 0.6f}, 3},
    {WeaponId::Flamethrower, "flame", "Flamethrower",
     {"flamethrower.png", 20, 150, 0.15f, 0.0f, 5.0f, 25, 100, 100, 500, 1, 0.85f, 40, 50, 19, 90},
     3, -25, 0, false, false, false, false, {1.0f, 0.9f}, 2},
    {WeaponId::SawGun, "sawgun", "Saw Gun",
     {"sawgun.png", 20, 150, 1.0f, 2.5f, 0.0f, 1, 6, 12, 500, 1, 0.85f, 40, 50, 25, 90},
     3, 0, 0, false, false, false, false, {1.0f, 0.9f, 0.7f}, 3},
    {WeaponId::EMP, "emp", "EMP",
     {"emp.png", 1, 1, 1.5f, 3.0f, 0.0f, 1, 8, 16, 1, 1, 0.9f, 50, 35, 21, 125},
     0, -25, 0, false, false, false, false, {1.0f, 0.9f, 0.7f}, 3},
    {WeaponId::Machete, "machete", "Machete",
     {"machete.png", 0, 0, 0.6f, 2.0f, 1.0f, 0, 1, 0, 1300, 1, 0.9f, 100, 40, 1, 40},
     25, 0, 0, true, false, true, true, {1.0f}, 1},
    {WeaponId::RiotShield, "shield", "Riot Shield",
     {"shield.png", 0, 0, 0.6f, 2.0f, 1.0f, 0, 1, 0, 1300, 1, 0.85f, 100, 40, 13, 40},
     25, 0, 0, true, true, false, true, {1.0f}, 1},
}};
// clang-format on

constexpr const WeaponInfo& weaponInfo(WeaponId id) { return kWeapons[static_cast<int>(id)]; }

// <CLASS>::playSound: the sound id each weapon fires with.
constexpr audio::SoundId fireSound(WeaponId id)
{
    using S = audio::SoundId;
    constexpr S kSounds[] = {S::Ak47, S::Deagle, S::Silencer, S::Magnum, S::Uzi,    S::Mp5,   S::M16,   S::M14, S::M93ba,
                             S::Shotgun, S::Rocket, S::Laser, S::Flame,    S::Saw, S::Laser, S::Swipe, S::Swipe};
    return kSounds[static_cast<int>(id)];
}

// WeaponFactory::init (+0x14): the ammo types WeaponManager draws from at a weapon spawn,
// as the remake's weapon ids. Grenade pick-ups (frag 2, gas 20, proximity 23) and the saw
// blade item (24) arrive with the grenades.
// NEW (M11): lobby "allowed weapons" groups for the map pick-ups. Bit set = may spawn.
// bit0 pistols, bit1 SMGs and rifles, bit2 shotgun and sniper, bit3 heavy (rocket, laser,
// flame, saw, EMP), bit4 melee.
inline constexpr int kWeaponGroups = 5;
inline constexpr std::uint8_t kAllWeaponGroups = 0x1f;
constexpr int weaponGroup(WeaponId w)
{
    switch (w)
    {
    case WeaponId::Deagle: case WeaponId::GoldDeagle: case WeaponId::Magnum: return 0;
    case WeaponId::MP5: case WeaponId::Uzi: case WeaponId::AK47: case WeaponId::M16: case WeaponId::M14: return 1;
    case WeaponId::Shotgun: case WeaponId::Sniper: return 2;
    case WeaponId::Machete: case WeaponId::RiotShield: return 4;
    default: return 3;
    }
}

inline constexpr WeaponId kSpawnWeapons[] = {
    WeaponId::Machete, WeaponId::Deagle, WeaponId::Magnum, WeaponId::MP5,        WeaponId::Uzi,
    WeaponId::AK47,    WeaponId::M16,    WeaponId::Shotgun, WeaponId::Sniper,    WeaponId::Rocket,
    WeaponId::M14,     WeaponId::Phasr,  WeaponId::GoldDeagle, WeaponId::Flamethrower, WeaponId::SawGun,
    WeaponId::EMP,
};

}  // namespace mm::game

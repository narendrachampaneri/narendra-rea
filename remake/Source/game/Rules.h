// Gameplay values recovered from the original binary (libcocos2dcpp.so, armeabi-v7a).
// Addresses are the ones in source/native/*.cpp (Ghidra image base 0x10000). Distances are in
// design points (480x320 at FIXED_HEIGHT), times in seconds, angles as noted.
// Values marked NEW are not in the original.
#pragma once

#include <array>
#include <cstdint>

namespace mm::rules
{

// ---- Physics (PhysicsManager::init / updateStep) -------------------------------------------------
constexpr int kSpaceIterations  = 2;      // cpSpaceSetIterations
constexpr int kSubsteps         = 2;      // two cpSpaceStep(dt / 2) per frame
// The behaviour of the shipped "Mini Militia mod by sahadikr.in" (the app the owner plays):
// its native library patches these functions of the game, checked in the decompiled code:
//   Weapon::getReloadTime        -> 0     (instant reload)
//   Weapon::getRoundsPerFire     -> 2     (owner: a single gun fires its own bullets, so OFF here)
//   Weapon::isDualWield          -> 1 and isDualWieldPrimaryOnly -> 1 (owner: no automatic second gun;
//                                          two guns are carried only by choice, see takeWeaponDual)
//   SoldierHostController::hasPower -> 1  (the jetpack never runs dry)
//   every gun's triggerPull stores the round count back unchanged (shots cost nothing)
// They are ON by default. The host tests of the original rules switch them off first.
struct ModProfile
{
    bool unlimitedAmmo = true;
    bool unlimitedFuel = true;
    bool instantReload = true;
    bool dualWield     = false;  // a second gun is drawn/fired only after the dual pick-up
    int roundsPerFire  = 0;      // 0 = each weapon's own value
    static ModProfile original() { return {false, false, false, false, 0}; }
};
inline ModProfile gMod;

constexpr float kMaxFrameDt     = 0.25f;  // the original clamps its frame time
constexpr float kPartyLowGravity = 0.35f; // NEW (M7 party option): gravity multiplier

// Chipmunk 5 collision types / groups / layers. The remake maps "layers" to Chipmunk 7
// categories and mask (collide when the layers share a bit), "group" stays a group.
constexpr std::uint32_t kMapCollision     = 0x143;  // MapManager::addStaticBodyShape (type, group, layers)
constexpr std::uint32_t kSoldierCollision = 0x15;   // SoldierHostController::setCollision(0x15)
constexpr std::uint32_t kRemoteCollision  = 0x84;   // remote players (M5)
// NEW: the remake's bots are 0x84 soldiers that also stand on the map. Remote players never
// needed map collision (their positions came over the network), so 0x84 shares no layer
// with the map (0x143); bots add the map's bit 0, which the local player (0x15) has too.
constexpr std::uint32_t kBotLayers        = kRemoteCollision | 0x01;
constexpr std::uint32_t kEnemyCollision   = 0x241;  // drones / enemies (M4)
constexpr std::uint32_t kItemCollision    = 0x0d;   // weapons lying on the map (M4)

// ---- Map collision (MapManager::loadMap / addStaticBodyShape / isBoundryTile) ------------------
constexpr float kMapElasticity = 0.8f;
constexpr float kMapFriction   = 0.5f;
constexpr int kMaxCollisionGid = 200;  // MapManager +0x4c: GIDs >= 200 never collide

// ---- Soldier (SoldierHostController::init / initBody / initShape) ---------------------------------
constexpr float kPlayerScale    = 0.4f;   // Stage::init: playerScale
constexpr float kSoldierMass    = 0.1f;   // +0x1b0 (also the impulse "mass factor")
constexpr float kSoldierMoment  = kSoldierMass * 200.0f;
constexpr float kSoldierMaxSpin = 14.0f;  // body w_limit
constexpr float kSoldierDamping = 0.5f;   // +0x120: velocity *= (1 - 0.5)^dt in the velocity function
// Box from (-30s, -25s - 5) to (30s, 25s - 5) and a head circle at (0, 35s) of radius 35s * 0.75.
constexpr float kBodyHalfWidth  = 30.0f;
constexpr float kBodyHalfHeight = 25.0f;
constexpr float kBodyYOffset    = -5.0f;
constexpr float kHeadY          = 35.0f;
constexpr float kHeadRadius     = 35.0f * 0.75f;
constexpr float kBodyElasticity = 0.8f, kBodyFriction = 0.1f;  // replaced every step, see below
constexpr float kHeadElasticity = 0.5f, kHeadFriction = 0.1f;

constexpr int kMaxHealth   = 100;     // +0x180
constexpr int kMaxPower    = 100;     // jetpack fuel (+0x198 starts at 100)
constexpr float kRegenRate = 1.0f;    // +0x1c4: health +1 every second (timer +0x188)
constexpr float kWalkSpeed = 190.0f;  // +0x1a0
constexpr float kJetSpeed  = 325.0f;  // +0x19c

// Gravity vector per state, multiplied by the map's gravity factor (updateStep).
constexpr float kGravityJetting  = -50.0f;   // jetpack on: e 0.5, u 0.1
constexpr float kGravityWalking  = -300.0f;  // move stick held: e 0.2, u 0.99
constexpr float kGravityIdle     = -300.0f;  // move stick released: e 0.3, u 0.99
constexpr float kJetElasticity = 0.5f, kJetFriction = 0.1f;
constexpr float kWalkElasticity = 0.2f, kWalkFriction = 0.99f;
constexpr float kIdleElasticity = 0.3f, kIdleFriction = 0.99f;

// Acceleration: velocity along the push direction approaches the target speed at this rate
// per second (impulse = dir * rate * weight * dt * max(1e-4, target - v·dir) * mass).
constexpr float kWalkResponse = 3.0f;
constexpr float kJetResponse  = 1.5f;     // also scaled by the stick offset length
constexpr float kJetFuelPerStep = 0.35f;  // power -= thrustFactor * 0.35 * modifier, per step
constexpr float kFuelRegenBase  = 7.0f;   // power += (7 * modifier + clamp((t*t - 9) / 2, 0, 14)) * dt
constexpr float kFuelRegenBoostMax = 14.0f;
constexpr float kFuelRegenDelay = 1.0f;   // timer +0x184 is set to -1 while the jetpack burns

constexpr float kJetStartStick  = 0.75f;  // |stick| > 0.75 ...
constexpr float kJetStartStickY = 0.5f;   // ... and stick y > 0.5 ...
constexpr float kJetStartAir    = 0.5f;   // ... after more than 0.5 s without contact
constexpr float kJetStopSpeed   = 75.0f;  // on contact, stick pushed down and |v| < 75 stops the jetpack
constexpr float kJumpStickY     = 0.75f;
constexpr float kJumpSpeed      = 220.0f;  // impulse (0, 220 * mass)
constexpr float kCrouchStickY   = -0.75f, kCrouchHoldY = -0.5f, kCrouchHold = 0.2f;
constexpr float kFootstepDistance = 50.0f;  // a step sound every 50 / speed seconds
constexpr float kJetSoundInterval = 0.6f;   // timer +0x108 (starts at 0.75)

// Ground braking in the velocity function (foot contact, stick released, no jetpack):
// v += v * clamp(-dt * 50 * clamp(1.5 - |v| / 40, 0, 1), -1, 0).
constexpr float kBrakeRate = 50.0f, kBrakeSpeed = 40.0f;

// Leaving the world (updateStep): -1 health per step outside this box.
constexpr float kWorldMinX = -2000.0f, kWorldMaxX = 6000.0f;
constexpr float kWorldMinY = -1000.0f, kWorldMaxY = 5000.0f;

// Landing sound (map/soldier postSolve): contact normal |y| > 0.8 -> heavy, > 0.3 -> light,
// at most once a second.
constexpr float kLandHeavyNormal = 0.8f, kLandLightNormal = 0.3f, kLandSoundInterval = 1.0f;

// ---- Joypad (Joypad::init / beginTouch / updateStep, AppDelegate defaults for phones) ------------
constexpr float kPadRadius      = 40.0f;  // FIRE_PAD_SCL / MOVE_PAD_SCL (1.0 on phones) * 40
constexpr float kPadTouchRadius = 90.0f;  // a touch within 90 points of a pad takes it
constexpr float kPadInset       = 75.0f;  // LEFT_PAD (75, 75), RIGHT_PAD (width - 75, 75)
constexpr float kKnobReturn     = 0.8f;   // released move knob: knob = 0.8 knob + 0.2 centre, per frame

// ---- Camera (SoldierHostController::getViewScale, ApplicationInterface) ---------------------------
constexpr float kViewScaleSmoothing = 0.7f;     // scale = 0.7 scale + 0.3 weapon zoom
constexpr float kReferenceAspect    = 16.0f / 9.0f;  // aspectCorrection = (w / h) / 1.7777778
constexpr float kViewLeadSmoothing  = 0.025f;   // Stage::updateView
constexpr int kMinViewLead          = 40;       // Stage::updateView uses the offset only above 40

// ---- Weapons (Weapon::init, AK47::init, .data 0x943014 / 0x943018) -------------------------------
struct WeaponDef
{
    const char* sprite;
    int damage;
    float range;           // a bullet fades over its last 100 points and stops at the range
    float fireInterval;    // seconds between shots (+0x15c)
    float reloadTime;      // +0x160
    float spread;          // +0x164, degrees: angle += spread * 2 * (r / 100 - 0.5)
    int clip;              // +0x170 and the starting clip
    int startAmmo;         // +0x1e8
    int maxAmmo;           // +0x174
    float bulletSpeed;     // +0x1bc (Weapon::init default 1300)
    int roundsPerFire;     // +0x1b4
    float weight;          // +0x1cc (getWeightFactor)
    int meleeDamage;       // +0x19c
    float meleeLength;     // +0x1a0
    int ammoType;          // +0x188, picks the tracer trail
    int viewOffset;        // +0x18c, how far the camera leads towards the aim (getViewOffset)
};

constexpr WeaponDef kAK47{"ak47.png", 10, 800.0f, 0.1f, 2.0f, 4.0f, 35, 200, 250, 1300.0f, 1, 1.0f, 30, 40.0f, 7, 90};

constexpr int kTracerPool             = 30;    // ProjectileManager::addBodyShapeSprite
constexpr float kTracerInheritVelocity = 0.8f;  // Tracer::reset: v = dir * speed + shooter v * 0.8
constexpr float kTracerFade           = 100.0f;
// Segment-query layers (Tracer::checkCollision): the map, then what host bullets can hit.
constexpr std::uint32_t kTracerMapLayers  = 0x100;
constexpr std::uint32_t kHostBulletLayers = 0x288;  // remote players, enemies, items; never yourself
constexpr std::uint32_t kRemoteBulletLayers = 0x198; // bullets of type 0x104: the host and remote players

// ---- Explosion (Explosion::reset / updateStep) ------------------------------------------------
constexpr float kExplosionFlashTime = 0.15f;
constexpr float kExplosionLifetime  = 5.0f;

// ---- Explosives (FRAGNADE, Explosion::applyDamage, ProjectileManager) -------------------
constexpr float kGrenadeFuse      = 1.75f;    // FRAGNADE::updateItemStep
constexpr float kGrenadeGravity   = -250.0f;  // FRAGNADE::initBody
// Proximity mine (NEW in M18; the original has a proximity grenade pick-up, id 23, whose
// numbers were not recovered): one per life, armed after 1 s, goes off when an enemy
// comes within 50 points.
constexpr int kStartMines      = 1;
constexpr float kMineArm       = 1.0f;
constexpr float kMineRadius    = 50.0f;
constexpr float kMineLife      = 90.0f;
constexpr int kStartGrenades      = 2;        // FRAGNADE +0x1e8 starting count
constexpr float kExplosionRadius  = 125.0f;   // Explosion::applyDamage: soldiers closer than this
constexpr float kExplosionDamage  = 100.0f;   // damage = max(10, 100 - 0.8 * distance)
constexpr float kExplosionFalloff = 0.8f;
constexpr float kExplosionMinDamage = 10.0f;
constexpr float kExplosionKnockCap = 40.0f;   // impulse = min(damage, 40) * 10 * mass
// NEW: launch speeds (ProjectileManager::addGrenade / addRocket are only partly recovered).
constexpr float kGrenadeSpeed     = 420.0f;
constexpr float kRocketSpeed      = 650.0f;
// Gas grenade (NEW in M13; the original only has the "gasnade" upgrade flag): a cloud that
// hurts everyone inside, except the thrower and his team mates, for a few seconds.
constexpr float kGasRadius   = 80.0f;
constexpr float kGasLife     = 6.0f;
constexpr float kGasDamage   = 14.0f;  // per second
constexpr float kRocketLife       = 4.0f;

}  // namespace mm::rules

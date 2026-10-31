// Coins, the store and what the purchased upgrades do. Prices come from config::kUpgrades (the
// original ItemLibrary values, 1 BP = 1 Coin); the effects are what ItemLibrary::applyItems
// writes into the soldier in the original.
#pragma once

#include "game/Weapons.h"
#include "save/SaveData.h"

namespace mm::economy
{

enum Upgrade : int
{
    BoostRecharge, HealthRecharge, BoostIncrease, GoldenEagle, Accuracy, GrenadePlus, MeleePlus,
    PistolClip, RifleClip, LaserSight, GasNade, PistolReload, RifleReload, MaskPack1,
    kUpgradeCount,
};
static_assert(kUpgradeCount == config::kUpgrades.size());

enum class BuyResult { Ok, NotEnoughCoins, AlreadyOwned, NeedsProPack, Unknown };

inline bool owns(const save::SaveData& s, int upgrade) { return upgrade >= 0 && upgrade < kUpgradeCount && (s.upgrades >> upgrade) & 1; }
BuyResult canBuy(const save::SaveData& s, int upgrade);
BuyResult buyUpgrade(save::SaveData& s, int upgrade);
BuyResult buyProPack(save::SaveData& s);

// Coins from a Wi-Fi Deathmatch / Team Deathmatch match: 10 per kill. Nothing for anything else.
enum class MatchKind { Solo, WifiDeathmatch, WifiTeamDeathmatch, WifiCoop };
int coinsForMatch(MatchKind kind, int kills);
// Adds the coins and returns how many.
int awardMatch(save::SaveData& s, MatchKind kind, int kills);

// What the owned upgrades change (ItemLibrary::applyItems writes these into SoldierHostController).
struct Boosts
{
    float fuelRegen    = 1.0f;  // +0x1c8: jetpack fuel comes back x1.5 faster
    float healthRegen  = 1.0f;  // +0x1c4: health regenerates x2
    float fuelBurn     = 1.0f;  // +0x1d0: the jetpack burns x0.8
    float spread       = 1.0f;  // +0x1c0: accuracy, spread x0.8
    float melee        = 1.0f;  // +0x1cc: melee damage x1.1
    int maxGrenades    = 4;     // +0x1b8: 5 with GRENADE +1
    float handgunClip  = 0.0f;  // +0x1d4: +25 % rounds in a handgun clip
    float rifleClip    = 0.0f;  // +0x1d8: +25 % in a rifle clip
    float handgunReload = 0.0f; // +0x1dc: reloads 30 % faster
    float rifleReload  = 0.0f;  // +0x1e0: reloads 30 % faster
    bool goldenEagle   = false; // +0x1f4 backup starter weapon = Golden Eagle
    bool laserSight    = false;
    bool gasNade       = false; // +0x1f8 backup grenade = gas
    bool maskPack      = false;
};
Boosts boostsFor(std::uint16_t ownedMask);

// Which upgrade class a weapon belongs to (WeaponFactory::isClipHandgun / isReloadHandgun /
// isClipRifle / isLaserSight; the range checks there are only partly recovered).
bool isHandgun(game::WeaponId w);
bool isRifle(game::WeaponId w);
bool hasLaserSightSupport(game::WeaponId w);


}  // namespace mm::economy
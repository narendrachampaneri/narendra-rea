#include "economy/Economy.h"

#include <algorithm>

namespace mm::economy
{

BuyResult canBuy(const save::SaveData& s, int upgrade)
{
    if (upgrade < 0 || upgrade >= kUpgradeCount)
        return BuyResult::Unknown;
    if (owns(s, upgrade))
        return BuyResult::AlreadyOwned;
    const auto& def = config::kUpgrades[upgrade];
    if (def.requiresPro && !s.proPack)
        return BuyResult::NeedsProPack;
    return s.coins >= def.price ? BuyResult::Ok : BuyResult::NotEnoughCoins;
}

BuyResult buyUpgrade(save::SaveData& s, int upgrade)
{
    const BuyResult r = canBuy(s, upgrade);
    if (r == BuyResult::Ok)
    {
        s.coins -= config::kUpgrades[upgrade].price;
        s.upgrades = static_cast<std::uint16_t>(s.upgrades | (1u << upgrade));
    }
    return r;
}

BuyResult buyProPack(save::SaveData& s)
{
    if (s.proPack)
        return BuyResult::AlreadyOwned;
    if (s.coins < config::kProPackPrice)
        return BuyResult::NotEnoughCoins;
    s.coins -= config::kProPackPrice;
    s.proPack = true;
    return BuyResult::Ok;
}

int coinsForMatch(MatchKind kind, int kills)
{
    // Only kills in Wi-Fi Deathmatch / Team Deathmatch pay (owner decision: Co-op Survival over
    // Wi-Fi earns nothing, and neither do Training, Survival, Practice or Quick Play).
    if (kind != MatchKind::WifiDeathmatch && kind != MatchKind::WifiTeamDeathmatch)
        return 0;
    return kills > 0 ? kills * config::kCoinsPerKill : 0;
}

int awardMatch(save::SaveData& s, MatchKind kind, int kills)
{
    const int coins = coinsForMatch(kind, kills);
    s.coins = std::min(s.coins + coins, 99999999);
    return coins;
}

Boosts boostsFor(std::uint16_t m)
{
    auto has = [m](int u) { return (m >> u) & 1; };
    Boosts b;
    if (has(BoostRecharge)) b.fuelRegen = 1.5f;
    if (has(HealthRecharge)) b.healthRegen = 2.0f;
    if (has(BoostIncrease)) b.fuelBurn = 0.8f;
    if (has(Accuracy)) b.spread = 0.8f;
    if (has(GrenadePlus)) b.maxGrenades = 5;
    if (has(MeleePlus)) b.melee = 1.1f;
    if (has(PistolClip)) b.handgunClip = 0.25f;
    if (has(RifleClip)) b.rifleClip = 0.25f;
    if (has(PistolReload)) b.handgunReload = 0.3f;
    if (has(RifleReload)) b.rifleReload = 0.3f;
    b.goldenEagle = has(GoldenEagle);
    b.laserSight  = has(LaserSight);
    b.gasNade     = has(GasNade);
    b.maskPack    = has(MaskPack1);
    b.dualWield   = has(kProBit);
    return b;
}

bool isHandgun(game::WeaponId w)
{
    using game::WeaponId;
    return w == WeaponId::Deagle || w == WeaponId::GoldDeagle || w == WeaponId::Magnum || w == WeaponId::Uzi;
}
bool isRifle(game::WeaponId w)
{
    using game::WeaponId;
    return w == WeaponId::AK47 || w == WeaponId::M16 || w == WeaponId::M14 || w == WeaponId::MP5;
}
bool hasLaserSightSupport(game::WeaponId w)
{
    using game::WeaponId;
    return w == WeaponId::AK47 || w == WeaponId::M16 || w == WeaponId::Shotgun || w == WeaponId::GoldDeagle ||
           w == WeaponId::Sniper;
}

}  // namespace mm::economy

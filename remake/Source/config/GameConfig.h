// Every tunable value of the game lives here, with the original function it came from.
// Values are the original 2.2.23 values (source/native/<Class>.cpp) unless marked NEW.
#pragma once

#include <array>
#include <cstdint>

namespace mm::config
{

// ---- Build ------------------------------------------------------------------------------
constexpr const char* kVersionLabel = "v1.0.0-rc11 (store crash fix)";  // shown on the title screen

// ---- Simulation -------------------------------------------------------------------------
constexpr float kPhysicsStep = 1.0f / 60.0f;  // NEW: fixed step; the original steps Box2D per frame
constexpr int kMaxStepsPerFrame = 5;          // NEW: spiral-of-death guard

// ---- Multiplayer ------------------------------------------------------------------------
constexpr int kDefaultMaxPlayers = 12;     // NEW (owner): host-chosen cap, default 12.
                                           // Original: 2..4, MapSelectLayer::onMorePlayers/onLessPlayers
constexpr int kAbsoluteMaxPlayers = 12;    // NEW: upper bound for the host's choice
constexpr int kMaxMatchMinutes = 8;        // NEW (owner)
constexpr std::uint16_t kLanDiscoveryPort = 9330;  // RakNetLAN::RakNetLAN
constexpr std::uint16_t kLanGamePort = 9331;       // RakNetLAN::RakNetLAN

// ---- Economy (Coins; 1 BP = 1 Coin) -----------------------------------------------------
constexpr int kStartingCoins = 100;   // NEW (owner)
constexpr int kCoinsPerKill = 10;     // NEW (owner): Wi-Fi Deathmatch / Team Deathmatch only
constexpr int kProPackPrice = 3000;   // NEW (owner-approved)

struct UpgradeDef
{
    const char* id;    // ItemLibrary::ItemLibrary item id string
    const char* name;  // ItemInfo name
    int price;         // ItemInfo +0xc
    bool requiresPro;  // ItemInfo +0x18
};

// ItemLibrary::ItemLibrary @ 0x359... ; order is the original item id order (0..13).
constexpr std::array<UpgradeDef, 14> kUpgrades{{
    {"boostrecharge", "BOOST REGEN", 1250, false},
    {"healthrecharge", "HEALTH REGEN", 1000, false},
    {"boostincrease", "BOOST INCREASE", 2000, false},
    {"gdeagle", "GOLDEN EAGLE", 250, false},
    {"accuracy", "INCREASE ACCURACY", 2000, false},
    {"grenade1", "GRENADE +1", 1000, false},
    {"meleeplus", "MELEE +10", 800, false},
    {"pistolclip", "HANDGUN CLIP EXTENDER", 1250, false},
    {"rifleclip", "RIFLE CLIP EXTENDER", 1500, false},
    {"lasersight", "LASER SIGHT", 1000, false},
    {"gasnade", "GAS GRENADE", 500, false},
    {"pistolreload", "FASTER RELOAD (PISTOLS)", 1000, false},
    {"riflereload", "FASTER RELOAD (RIFLES)", 1500, false},
    {"maskpack1", "MASK PACK 1", 500, true},
}};

}  // namespace mm::config

// The maps of the original game and their per-map settings.
#pragma once

#include <array>
#include <string_view>

namespace mm::assets
{

enum class MapKind : unsigned char
{
    Multiplayer,  // Deathmatch / Team Deathmatch / Practice / Quick Play rotation
    Survival,     // MapManager::init, mapType 2
    Training,     // MapManager::init, mapType 1
};

struct MapDef
{
    std::string_view id;          // stable id used in saves and the network protocol
    std::string_view name;        // display name (AppDelegate mapNames)
    std::string_view tmx;         // file in Content/{sd,hd,hdr}
    std::string_view background;  // full-screen background image
    float gravityFactor;          // MapManager +0x5c; 0 = zero-gravity map (updatePlayerModifiers)
    int playerModifier;           // MapManager +0x60, passed to the host soldier every update
    bool inOriginalRotation;      // false: file shipped but never registered by the original
    MapKind kind;
};

// Order and values: AppDelegate::applicationDidFinishLaunching (mapNames + multiplayerMaps;
// the gravity floats are only visible in the assembly, r0 before CCFloat::create) and
// MapManager::init defaults (bg_new.png, 1.0, 100) for survival and training.
inline constexpr std::array<MapDef, 15> kMaps{{
    {"outpost", "Outpost", "1outpost_new.tmx", "bg_new.png", 1.0f, 100, true, MapKind::Multiplayer},
    {"high_tower", "High Tower", "2highTower_new.tmx", "bg_new.png", 1.0f, 100, true, MapKind::Multiplayer},
    {"subdivision", "Subdivision", "3subdivision_new.tmx", "bg_new.png", 1.0f, 100, true, MapKind::Multiplayer},
    {"bottle_neck", "Bottle Neck", "4bottleNeck_new.tmx", "bg_new.png", 1.0f, 100, true, MapKind::Multiplayer},
    {"no_escape", "No Escape", "5noEscape_new.tmx", "bg_new.png", 1.0f, 100, true, MapKind::Multiplayer},
    {"so_long", "So Long", "6solong_new.tmx", "bg_new.png", 1.0f, 100, true, MapKind::Multiplayer},
    {"lunarcy", "Lunarcy", "7lunarcy_new.tmx", "bgMoon_new.png", 0.0f, 100, true, MapKind::Multiplayer},
    {"icebox", "Icebox", "8icebox_new.tmx", "bgSnow_new.png", 1.0f, 15, true, MapKind::Multiplayer},
    {"snow_blind", "Snow Blind", "9snowblind_new.tmx", "bgSnow_new.png", 1.0f, 15, true, MapKind::Multiplayer},
    {"pyramid", "Pyramid", "10pyramid_new.tmx", "bgDesert_new.png", 1.0f, 100, true, MapKind::Multiplayer},
    {"catacombs", "Catacombs", "11catacombs_new.tmx", "bgDesert_new.png", 1.0f, 100, true, MapKind::Multiplayer},
    {"overseer", "Overseer", "12overseer_new.tmx", "bgDesert_new.png", 1.0f, 100, true, MapKind::Multiplayer},
    // "Hunger" is in mapNames and its .tmx ships, but it has no multiplayerMaps entry.
    {"hunger", "Hunger", "0hunger_new.tmx", "bg_new.png", 1.0f, 100, false, MapKind::Multiplayer},
    {"survival", "Survival", "survival_new.tmx", "bg_new.png", 1.0f, 100, true, MapKind::Survival},
    {"training", "Training", "training_new.tmx", "bg_new.png", 1.0f, 100, true, MapKind::Training},
}};

constexpr const MapDef* findMap(std::string_view id)
{
    for (const auto& m : kMaps)
        if (m.id == id)
            return &m;
    return nullptr;
}

}  // namespace mm::assets

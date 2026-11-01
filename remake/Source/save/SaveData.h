// Everything the game remembers about the player, as one value that can be written to a text
// file, restored from one, backed up by Android and exported / imported by the player.
#pragma once

#include <array>
#include <cstdint>
#include <map>
#include <optional>
#include <string>
#include <string_view>

#include "config/GameConfig.h"

namespace mm::save
{

constexpr int kSaveVersion = 1;

struct Avatar
{
    // Indices into the original menuTexture skin quads (head1..16, body1..17, arm1..17, leg1..16).
    int head = 1, body = 1, arm = 1, leg = 1;
    int mask = 0;  // NEW (M18): 0 none, 1..4 = faceType1..4 (Mask Pack upgrade)
    bool operator==(const Avatar&) const = default;
};
constexpr int kMasks = 4;
constexpr int kHeads = 16, kBodies = 17, kArms = 17, kLegs = 16;

enum class Quality : std::uint8_t { Smooth, Medium, High, Extreme };

struct Settings
{
    int soundVolume = 80;   // 0..100
    int musicVolume = 60;
    bool blood = true;
    int bloodColour = 0;    // index into kBloodColours
    bool centredCamera = false;  // "player-centered camera": no lead towards the aim
    bool leftHanded = false;     // swaps the two sticks
    bool autoFire = false;       // fire while the aim stick is touched
    bool vibration = true;
    int sensitivity = 100;       // aim / move stick travel, 50..150 %
    bool quickMessages = true;
    bool qualityAuto = true;     // true: pick the art resolution from the screen (the original rule)
    Quality quality = Quality::Medium;  // used when qualityAuto is off: Smooth sd, Medium hd, High / Extreme hdr
    int crosshair = 0;           // NEW (M7 extra): 0 none (original look), 1 dot, 2 cross, 3 ring
    int frameRate = 60;          // 30, 60, 90, 120
    // NEW (M12): button-placement editor. Offsets in points from the default place of
    // melee, grenade, zoom, reload, pick-up (x then y each); 0 = original placement.
    std::array<int, 10> buttonOffset{};
    bool showStats = false;  // NEW (M18): FPS / draw-call counters on screen (for the 4 GB phone checks)
    bool operator==(const Settings&) const = default;
};
constexpr std::array<std::array<std::uint8_t, 3>, 5> kBloodColours{{{200, 20, 20}, {40, 200, 60}, {60, 120, 255}, {240, 200, 40}, {255, 255, 255}}};

struct Stats
{
    int kills = 0, deaths = 0, matches = 0;
    int bestSurvivalWave = 0, bestSurvivalScore = 0, bestCoopWave = 0;
    int bestDeathmatchKills = 0;
    std::int64_t playSeconds = 0;
    bool operator==(const Stats&) const = default;
};

// A person met over Wi-Fi: totals from the leaderboards of matches played together.
struct Friend
{
    int kills = 0, deaths = 0, matches = 0;
    bool operator==(const Friend&) const = default;
};

struct SaveData
{
    int version = kSaveVersion;
    std::string name;
    bool firstLaunchDone = false;
    int coins = config::kStartingCoins;
    std::uint16_t upgrades = 0;     // bit n = config::kUpgrades[n] owned
    bool proPack = false;
    Avatar avatar;
    Settings settings;
    Stats stats;
    std::map<std::string, Friend> friends;
    std::string lastSeenVersion;    // for the What's new page
    bool operator==(const SaveData&) const = default;
};

// Text form: "MMSAVE 1", then "key value" lines, then "crc <hex>" over everything before it.
std::string toText(const SaveData& data);
// Returns nothing when the text is not a save, is from a newer version, or fails its checksum.
// Unknown keys are ignored and values are clamped to what the game accepts.
std::optional<SaveData> fromText(std::string_view text);

std::uint32_t crc32(std::string_view bytes);

}  // namespace mm::save

// Art resolution (sd / hd / hdr folders) and the coordinate system of the original game.
#pragma once

#include <algorithm>
#include <cstdint>
#include <string_view>

namespace mm::assets
{

// Design resolution: every position, speed and size in the game is in these points.
// Original: designResolutionSize = 480x320 in the static initialiser FUN_002f931c, applied
// with kResolutionFixedHeight on phones (AppDelegate::applicationDidFinishLaunching).
constexpr float kDesignWidth  = 480.0f;
constexpr float kDesignHeight = 320.0f;

enum class Resolution : std::uint8_t
{
    SD,   // 1x art, 64 px tiles
    HD,   // 2x art, 128 px tiles
    HDR,  // 4x art, 256 px tiles
};

constexpr std::string_view folder(Resolution r)
{
    switch (r)
    {
    case Resolution::SD:
        return "sd";
    case Resolution::HD:
        return "hd";
    default:
        return "hdr";
    }
}

// Pixels per point. Original: 2*640/320, 640/320 and 320/320 in applicationDidFinishLaunching.
constexpr float contentScale(Resolution r)
{
    switch (r)
    {
    case Resolution::SD:
        return 1.0f;
    case Resolution::HD:
        return 2.0f;
    default:
        return 4.0f;
    }
}

// The original choice (applicationDidFinishLaunching): hdr when the shorter frame side is
// above 768 px (largeResource height), hd when the frame height is above 320 px
// (smallResource height), sd otherwise. `retina` is the original "RetinaMode" setting.
constexpr Resolution chooseOriginal(float frameWidth, float frameHeight, bool retina = true)
{
    if (retina && std::min(frameWidth, frameHeight) > 768.0f)
        return Resolution::HDR;
    if (retina && frameHeight > 320.0f)
        return Resolution::HD;
    return Resolution::SD;
}

}  // namespace mm::assets

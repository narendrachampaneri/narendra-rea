// Where the HUD elements sit by default and the offsets / scales from the placement screen
// (CONTROLS > PLACEMENT). Positions are in the 320-point-high game space, like the original's.
// The defaults follow the original's placement screen: zoom top left, reload top right, the
// grenade button next to the movement stick, the punch button next to the aim stick.
#pragma once

#include "axmol.h"

#include "save/SaveData.h"

namespace mm::app::hud
{

enum ButtonIndex { kMelee = 0, kGrenade, kZoom, kReload, kPickUp, kUnused5, kMovePad, kAimPad, kCount };

inline ax::Vec2 defaultPos(int index, ax::Size visible)
{
    switch (index)
    {
    case kMelee: return {visible.width - 185, 35};    // PUNCH_POS
    case kGrenade: return {178, 32};                  // next to the movement stick
    case kZoom: return {34, visible.height - 34};     // ZOOM_POS
    case kReload: return {visible.width - 34, visible.height - 34};
    case kMovePad: return {75, 75};                   // Joypad: left pad centre
    case kAimPad: return {visible.width - 75, 75};    // Joypad: right pad centre
    default: return {visible.width - 120, 130};       // pick-up pop-up
    }
}

inline ax::Vec2 pos(int index, ax::Size visible, const save::Settings& s)
{
    return defaultPos(index, visible) + ax::Vec2(static_cast<float>(s.buttonOffset[index * 2]),
                                                 static_cast<float>(s.buttonOffset[index * 2 + 1]));
}

inline float scale(int index, const save::Settings& s) { return static_cast<float>(s.hudScale[index]) / 100.0f; }

}  // namespace mm::app::hud

// Where the round HUD buttons sit by default (the original's positions, see GameScene) and
// the saved offsets from the button-placement editor.
#pragma once

#include "axmol.h"

#include "save/SaveData.h"

namespace mm::app::hud
{

enum ButtonIndex { kMelee = 0, kGrenade, kZoom, kReload, kPickUp, kMine, kCount };

inline ax::Vec2 defaultPos(int index, ax::Size visible)
{
    switch (index)
    {
    case kMelee: return {visible.width - 185, 35};
    case kGrenade: return {visible.width - 120, 70};
    case kZoom: return {34, visible.height - 34};
    case kReload: return {visible.width - 34, visible.height - 34};
    case kMine: return {visible.width - 55, 105};
    default: return {visible.width - 120, 130};
    }
}

inline ax::Vec2 pos(int index, ax::Size visible, const save::Settings& s)
{
    return defaultPos(index, visible) + ax::Vec2(static_cast<float>(s.buttonOffset[index * 2]),
                                                 static_cast<float>(s.buttonOffset[index * 2 + 1]));
}

}  // namespace mm::app::hud

// Where the round HUD buttons sit by default (the original's positions, see GameScene) and
// the saved offsets from the button-placement editor.
#pragma once

#include "axmol.h"

#include "game/Rules.h"

#include "save/SaveData.h"

namespace mm::app::hud
{

enum ButtonIndex { kMelee = 0, kGrenade, kZoom, kReload, kPickUp, kMine, kCount };

inline ax::Vec2 defaultPos(int index, ax::Size visible)
{
    switch (index)
    {
    case kMelee: return {visible.width - rules::kPunchFromRight, rules::kPunchY};
    case kGrenade: return {rules::kGrenadeX, rules::kGrenadeY};
    case kZoom: return {rules::kZoomInset, visible.height - rules::kZoomInset};
    case kReload: return {visible.width - rules::kReloadInset, visible.height - rules::kReloadInset};
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

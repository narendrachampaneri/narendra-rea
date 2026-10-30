// Shared look for the screens built from the original graphics (until the M6 menus).
#pragma once

#include <string_view>

#include "axmol.h"

namespace mm::app::ui
{

// The original bitmap font (font02_new.png, 32x32 point cells from ' ', like CCLabelAtlas).
ax::LabelAtlas* atlasLabel(std::string_view text);

// Full-screen title art: the picture fitted to the screen height, over a darkened, enlarged copy
// that fills the rest of a wide phone screen. centerX is the picture's centre in points.
ax::Node* titleArt(std::string_view file, float centerX);

// One piece of the original blue button panel (b03_top/mid/bot.png) with a label.
ax::MenuItemSprite* panelButton(std::string_view frame, std::string_view text, const ax::ccMenuCallback& onTap);

// Short message at the bottom of the screen that fades away.
void toast(ax::Node* scene, std::string_view text);

}  // namespace mm::app::ui

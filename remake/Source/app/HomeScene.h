// Home screen for the preview builds, made from the original menu graphics (MenuLayer: title
// art and the blue button panel). The modern animated menus replace it in M6.
#pragma once

#include "axmol.h"

namespace mm::app
{

class HomeScene : public ax::Scene
{
public:
    bool init() override;
    void onEnter() override;
};

}  // namespace mm::app

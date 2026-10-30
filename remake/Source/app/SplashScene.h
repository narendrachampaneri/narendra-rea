// Title screen, like the original SplashLayer: the title art, "LOADING" while the atlases and
// sounds load in the background, then the menu music and a blinking "TOUCH TO START".
#pragma once

#include "axmol.h"

namespace mm::app
{

class SplashScene : public ax::Scene
{
public:
    bool init() override;
    void onEnter() override;

private:
    void startLoading();
    void onLoaded();
    void proceed();

    ax::LabelAtlas* _status = nullptr;
    int _pending            = 0;
    bool _loaded            = false;
    bool _leaving           = false;
};

}  // namespace mm::app

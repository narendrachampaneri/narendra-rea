// The home screen: player card, the main buttons, What's new badge.
#pragma once

#include "axmol.h"

namespace mm::app
{

class HomeScene : public ax::Scene
{
public:
    bool init() override;
    void onEnter() override;

private:
    void showWelcome();
};

}  // namespace mm::app

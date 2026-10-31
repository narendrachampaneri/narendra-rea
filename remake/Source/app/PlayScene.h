// Solo Play picker: mode, map, bots and difficulty, then start. (Plain placeholder styling
// until the M6 menus; QUICK PLAY on the home screen skips it.)
#pragma once

#include "axmol.h"

#include "game/Modes.h"

namespace mm::app
{

class PlayScene : public ax::Scene
{
public:
    bool init() override;
    void onEnter() override;

private:
    void refresh();
    void start();
    void goHome();

    game::ModeSettings _settings;
    int _map = 0;
    ax::Label* _lines[5] = {};
};

}  // namespace mm::app

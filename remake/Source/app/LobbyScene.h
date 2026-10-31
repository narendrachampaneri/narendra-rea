// The Wi-Fi lobby, for the host and for guests: who is here, the match options (host only),
// ready / start, quick messages. Placeholder styling until the M6 menus.
#pragma once

#include "axmol.h"

namespace mm::app
{

class LobbyScene : public ax::Scene
{
public:
    bool init() override;
    void onEnter() override;
    void update(float dt) override;

private:
    void refresh();
    void leave();
    bool isHost() const;

    ax::Label* _title = nullptr;
    ax::Label* _options[5] = {};
    ax::Label* _players = nullptr;
    ax::Label* _chat = nullptr;
    ax::Label* _action = nullptr;
    ax::Label* _address = nullptr;
    bool _leaving = false;
    bool _ready = false;
    int _team = 0;
};

}  // namespace mm::app

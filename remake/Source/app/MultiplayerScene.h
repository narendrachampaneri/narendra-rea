// Multiplayer start: host a game, or find one on this Wi-Fi / hotspot, or join by IP address.
#pragma once

#include "axmol.h"

namespace mm::app
{

class MultiplayerScene : public ax::Scene
{
public:
    bool init() override;
    void onEnter() override;
    void onExit() override;
    void update(float dt) override;

private:
    void rebuildList();
    void goHome();
    void hostGame();
    void joinHost(const ax::Vec2&);

    ax::Menu* _list = nullptr;
    ax::Label* _status = nullptr;
    ax::Label* _nameLabel = nullptr;
    ax::Node* _ipBox = nullptr;
    std::string _ip = "192.168.";
    std::size_t _shown = 0;
    bool _leaving = false;
};

}  // namespace mm::app

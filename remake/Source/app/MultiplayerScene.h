// Multiplayer start: host a game, or find one on this Wi-Fi / hotspot, or join by IP address.
#pragma once

#include <memory>

#include "axmol.h"

namespace mm::app
{

class MultiplayerScene : public ax::Scene
{
public:
    ~MultiplayerScene() override { *_alive = false; }
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
    ax::LabelAtlas* _foundLabel = nullptr;
    ax::LabelAtlas* _gameLabel = nullptr;
    int _sel = 0;
    int _count = 0;
    ax::Label* _nameLabel = nullptr;
    ax::Node* _ipBox = nullptr;
    std::string _ip = "192.168.";
    std::size_t _shown = 0;
    bool _leaving = false;
    std::shared_ptr<bool> _alive = std::make_shared<bool>(true);  // read by the QR scan callback
};

}  // namespace mm::app

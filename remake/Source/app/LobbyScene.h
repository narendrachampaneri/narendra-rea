// The Wi-Fi lobby, for the host and for guests: who is here, the match options (host only),
// ready / start, quick messages. Placeholder styling until the M6 menus.
#pragma once

#include <string>
#include <vector>

#include "axmol.h"

#include "net/Protocol.h"
#include "save/SaveData.h"

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
    ax::DrawNode* _qrBox = nullptr;
    ax::Menu* _optionsMenu = nullptr;
    ax::Menu* _mainColumn = nullptr;
    ax::Menu* _gearColumn = nullptr;
    ax::Menu* _chatMenu = nullptr;
    ax::Label* _waiting = nullptr;
    ax::Node* _teamRow = nullptr;
    ax::DrawNode* _teamPiece = nullptr;
    ax::Node* _rowsNode = nullptr;
    ax::Node* _statsPanel = nullptr;
    ax::Node* _lastPanel = nullptr;
    void showLastMatch(bool show);
    std::string _rowsSig;
    void drawTeamPiece();
    void rebuildRows(const std::vector<net::PlayerInfo>& players);
    static constexpr int kOptionRows = 19;
    ax::Label* _options[kOptionRows] = {};
    ax::Label* _players = nullptr;
    ax::Label* _chat = nullptr;
    ax::Label* _action = nullptr;
    ax::Label* _address = nullptr;
    bool _leaving = false;
    bool _ready = false;
    int _team = 0;
    int _page = 0;  // GAME STATS page: 0 match, 1 party and pick-ups
    void applyPage();
};

}  // namespace mm::app

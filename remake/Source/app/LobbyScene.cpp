#include "app/LobbyScene.h"

#include <algorithm>

#include "app/AudioSystem.h"
#include "app/GameScene.h"
#include "app/HomeScene.h"
#include "app/NetContext.h"
#include "app/Platform.h"
#include "app/Ui.h"
#include "net/JoinCode.h"
#include "assets/MapCatalog.h"

using namespace ax;
using namespace mm::net;

namespace mm::app
{

namespace
{
// The old lobby's team colours: pink, cyan, orange, blue, yellow (0 = no colour).
Color4F teamColour(int team)
{
    static const Color4F kColours[] = {{0, 0, 0, 0},       {1.0f, 0.50f, 1.0f, 1}, {0.12f, 0.88f, 0.94f, 1},
                                       {1.0f, 0.63f, 0.04f, 1}, {0.06f, 0.14f, 1.0f, 1}, {1.0f, 0.90f, 0.04f, 1}};
    return kColours[std::clamp(team, 0, 5)];
}

const char* kModes[] = {"DEATHMATCH", "TEAM DEATHMATCH", "CO-OP SURVIVAL"};

// The maps a Wi-Fi match can use (the 12 of the original rotation) and Co-op's survival map.
std::vector<int> mapsFor(GameMode mode)
{
    std::vector<int> out;
    for (int i = 0; i < static_cast<int>(assets::kMaps.size()); ++i)
    {
        const auto& m = assets::kMaps[i];
        if (mode == GameMode::CoopSurvival ? m.kind == assets::MapKind::Survival : (m.kind == assets::MapKind::Multiplayer && m.inOriginalRotation))
            out.push_back(i);
    }
    return out;
}
}  // namespace

bool LobbyScene::isHost() const { return NetContext::get().host() != nullptr; }

bool LobbyScene::init()
{
    if (!Scene::init())
        return false;
    const auto visible = _director->getVisibleSize();
    const auto origin  = _director->getVisibleOrigin();

    // The original's lobby: the dimmed title art, the players on the left, "WAITING FOR PLAYERS
    // TO JOIN...", and START / gear / EXIT at the bottom right. The match options sit behind the
    // gear (GAME STATS), for the host to change and for guests to read.
    addChild(ui::titleArt("title_ret2_new.png", origin.x + visible.width / 2, Color3B(95, 95, 105)), 0);
    _title = Label::createWithTTF("", "fonts/arial.ttf", 18);
    addChild(_title, 5);

    auto* menu = Menu::create();
    menu->setPosition(Vec2::ZERO);
    menu->setVisible(false);
    _optionsMenu = menu;
    addChild(menu, 7);

    // Left: the options. The host taps a line to change it; guests just read them.
    for (int i = 0; i < kOptionRows; ++i)
    {
        auto* label = Label::createWithTTF("", "fonts/arial.ttf", 10);
        label->setAnchorPoint({0, 0.5f});
        _options[i] = label;
        auto* item  = MenuItemLabel::create(label, [this, i](Object*) {
            auto* host = NetContext::get().host();
            if (!host)
                return;
            AudioSystem::get().play(audio::SoundId::Grenade1);
            auto o = host->options();
            const auto maps = mapsFor(o.mode);
            switch (i)
            {
            case 0:
                o.mode = static_cast<GameMode>((static_cast<int>(o.mode) + 1) % 3);
                o.map  = static_cast<std::uint8_t>(mapsFor(o.mode).front());
                break;
            case 1:
            {
                // Cycles the maps, then "RANDOM", then back to the first.
                if (o.map == assets::kRandomMap)
                    o.map = static_cast<std::uint8_t>(maps.front());
                else
                {
                    auto it = std::find(maps.begin(), maps.end(), static_cast<int>(o.map));
                    o.map   = (it == maps.end() || it + 1 == maps.end()) ? assets::kRandomMap
                                                                           : static_cast<std::uint8_t>(*(it + 1));
                }
                break;
            }
            case 2: o.minutes = o.minutes % 8 + 1; break;
            case 3: o.maxPlayers = o.maxPlayers >= 12 ? 2 : o.maxPlayers + 1; break;
            case 4: o.fair = !o.fair; break;
            case 5: o.respawn = o.respawn >= 15 ? 3 : o.respawn + 2; break;
            case 6: o.friendlyFire = !o.friendlyFire; break;
            case 11: case 12: case 13: case 14: case 15:
                o.weaponGroups ^= static_cast<std::uint8_t>(1u << (i - 11));
                if ((o.weaponGroups & 0x1f) == 0)
                    o.weaponGroups = 0x1f;  // never an empty pool
                break;
            case 7: case 8: case 9: case 10: o.party ^= static_cast<std::uint8_t>(1u << (i - 7)); break;
            }
            host->setOptions(o);
            refresh();
        });
        item->setAnchorPoint({0, 0.5f});
        item->setPosition(origin.x + 14, origin.y + visible.height - 40 - i * 17);
        menu->addChild(item);
    }

    _players = Label::createWithTTF("", "fonts/arial.ttf", 11);
    _players->setAnchorPoint({0, 1});
    _players->setPosition(origin.x + 20, origin.y + visible.height - 24);
    addChild(_players, 5);

    _address = Label::createWithTTF("", "fonts/arial.ttf", 9);
    _address->setAnchorPoint({0, 0.5f});
    _address->setPosition(origin.x + 14, origin.y + visible.height - 40 - kOptionRows * 17);
    addChild(_address, 5);

    if (isHost())
    {
        auto* qr = ui::panelButton("b03_mid.png", "SHOW QR", [this](Object*) {
            if (_qrBox)
            {
                _qrBox->removeFromParent();
                _qrBox = nullptr;
                return;
            }
            const std::string ip = NetContext::get().localAddress();
            if (ip.empty())
            {
                ui::toast(this, "Connect to Wi-Fi or start a hotspot first");
                return;
            }
            const auto code = platform::qrMatrix(net::makeJoinCode(ip));
            if (code.size == 0)
            {
                ui::toast(this, "QR code not available here");
                return;
            }
            const auto vis = _director->getVisibleSize();
            const auto org = _director->getVisibleOrigin();
            _qrBox = ax::DrawNode::create();
            const float cell = std::floor(std::min(vis.height - 40.0f, 200.0f) / (code.size + 4));
            const float side = cell * (code.size + 4);
            const Vec2 c0(org.x + vis.width / 2 - side / 2, org.y + vis.height / 2 - side / 2);
            _qrBox->drawSolidRect(c0, c0 + Vec2(side, side), ax::Color4F::WHITE);  // quiet zone
            for (int y = 0; y < code.size; ++y)
                for (int x = 0; x < code.size; ++x)
                    if (code.bits[y * code.size + x] == '1')
                    {
                        const Vec2 p = c0 + Vec2((x + 2) * cell, side - (y + 3) * cell);
                        _qrBox->drawSolidRect(p, p + Vec2(cell, cell), ax::Color4F::BLACK);
                    }
            addChild(_qrBox, 20);
        });
        auto* qrMenu = Menu::create(qr, nullptr);
        qrMenu->setScale(0.6f);
        qrMenu->setPosition(origin.x + 70, origin.y + 24);
        addChild(qrMenu, 5);
    }

    _chat = Label::createWithTTF("", "fonts/arial.ttf", 10);
    _chat->setAnchorPoint({0, 0.5f});
    _chat->setPosition(origin.x + 14, origin.y + 70);
    addChild(_chat, 5);
    _address->setVisible(false);

    _waiting = Label::createWithTTF("", "fonts/arial.ttf", 9);
    _waiting->setAnchorPoint({0.5f, 0.5f});
    _waiting->setPosition(origin.x + visible.width / 2, origin.y + 12);
    addChild(_waiting, 5);

    // Bottom right: START (READY for guests), the gear, EXIT, and a chat bubble.
    auto* action = ui::panelButton("b03_top.png", isHost() ? "START" : "READY", [this](Object*) {
        AudioSystem::get().play(audio::SoundId::Grenade1);
        if (auto* host = NetContext::get().host())
        {
            if (!host->startMatch())
                ui::toast(this, "Everybody must be ready (two people needed)");
        }
        else if (auto* client = NetContext::get().client())
        {
            _ready = !_ready;
            client->setReady(_ready, _team);
            refresh();
        }
    });
    auto* gear = ui::panelButton("b03_mid.png", " ", [this](Object*) {
        AudioSystem::get().play(audio::SoundId::Grenade1);
        _mainColumn->setVisible(false);
        _gearColumn->setVisible(true);
        _teamRow->setVisible(true);
    });
    if (auto* cog = Sprite::createWithSpriteFrameName("cog.png"))
    {
        cog->setPosition(gear->getContentSize() / 2);
        gear->addChild(cog);
    }
    auto* exitBtn = ui::panelButton("b03_bot.png", "EXIT", [this](Object*) { leave(); });
    _mainColumn   = Menu::create(action, gear, exitBtn, nullptr);
    _mainColumn->alignItemsVerticallyWithPadding(0);
    const auto safe = _director->getSafeAreaRect();
    _mainColumn->setPosition(safe.getMaxX() - 12 - action->getContentSize().width / 2,
                             safe.getMinY() + 12 + 1.5f * action->getContentSize().height);
    addChild(_mainColumn, 5);
    auto* chat     = ui::panelButton("b03_left.png", " ", [this](Object*) {
        addChild(ui::quickChatGrid([](int m) { NetContext::get().sendChat(m); }), 20);
    });
    if (auto* bubble = Sprite::createWithSpriteFrameName("msg.png"))
    {
        bubble->setPosition(chat->getContentSize() / 2);
        chat->addChild(bubble);
    }
    _chatMenu = Menu::create(chat, nullptr);
    _chatMenu->setPosition(_mainColumn->getPositionX() - action->getContentSize().width / 2 - chat->getContentSize().width / 2 - 4,
                           safe.getMinY() + 12 + chat->getContentSize().height / 2);
    addChild(_chatMenu, 5);

    // The gear's panel as in the old game: the TEAM colour between two arrows (same colour = a
    // team, no colour = on your own), CHAT FILTER, GAME STATS (the options), DONE.
    auto stepTeam = [this](int d) {
        _team = (_team + d + (net::kTeamColours + 1)) % (net::kTeamColours + 1);
        if (auto* host = NetContext::get().host())
            host->setHostTeam(_team);
        else if (auto* client = NetContext::get().client())
            client->setReady(_ready, _team);
        drawTeamPiece();
        refresh();
    };
    auto* prevTeam = ui::panelButton("b03_left.png", " ", [stepTeam](Object*) { AudioSystem::get().play(audio::SoundId::Grenade1); stepTeam(-1); });
    auto* nextTeam = ui::panelButton("b03_right.png", " ", [stepTeam](Object*) { AudioSystem::get().play(audio::SoundId::Grenade1); stepTeam(1); });
    auto* chatFilter = ui::panelButton("b03_top.png", "CHAT FILTER: NONE", [](Object*) {});
    auto* statsBtn   = ui::panelButton("b03_mid.png", "GAME STATS", [this](Object*) {
        _optionsMenu->setVisible(!_optionsMenu->isVisible());
        _address->setVisible(_optionsMenu->isVisible());
    });
    auto* doneBtn = ui::panelButton("b03_bot.png", "DONE", [this](Object*) {
        _optionsMenu->setVisible(false);
        _address->setVisible(false);
        _gearColumn->setVisible(false);
        _teamRow->setVisible(false);
        _mainColumn->setVisible(true);
    });
    _gearColumn = Menu::create(chatFilter, statsBtn, doneBtn, nullptr);
    _gearColumn->alignItemsVerticallyWithPadding(0);
    _gearColumn->setPosition(_mainColumn->getPosition());
    _gearColumn->setVisible(false);
    addChild(_gearColumn, 5);
    // The TEAM piece: a six-sided plate in the team colour with the word on it.
    _teamRow = Node::create();
    _teamRow->setPosition(_mainColumn->getPositionX(), _mainColumn->getPositionY() + 2.5f * chatFilter->getContentSize().height + 2);
    _teamRow->setVisible(false);
    addChild(_teamRow, 5);
    _teamPiece = DrawNode::create();
    _teamRow->addChild(_teamPiece, 0);
    auto* teamLabel = ui::atlasLabel("TEAM");
    teamLabel->setScale(0.32f);
    teamLabel->setAnchorPoint(Vec2::ANCHOR_MIDDLE);
    _teamRow->addChild(teamLabel, 2);
    auto* teamArrows = Menu::create(prevTeam, nextTeam, nullptr);
    teamArrows->setPosition(Vec2::ZERO);
    prevTeam->setPosition(-chatFilter->getContentSize().width / 2 + 20, 0);
    nextTeam->setPosition(chatFilter->getContentSize().width / 2 - 20, 0);
    _teamRow->addChild(teamArrows, 1);
    drawTeamPiece();
    // The player rows (name, READY state, a bar in the team colour) are built in refresh().
    _rowsNode = Node::create();
    addChild(_rowsNode, 5);

    auto* keys          = EventListenerKeyboard::create();
    keys->onKeyReleased = [this](EventKeyboard::KeyCode code, ax::Event*) {
        if (code == EventKeyboard::KeyCode::KEY_BACK || code == EventKeyboard::KeyCode::KEY_ESCAPE)
            leave();
    };
    _eventDispatcher->addEventListenerWithSceneGraphPriority(keys, this);
    scheduleUpdate();
    refresh();
    return true;
}

void LobbyScene::onEnter()
{
    Scene::onEnter();
    platform::setGameHandlesBack(true);
    _ready = false;
}

void LobbyScene::drawTeamPiece()
{
    _teamPiece->clear();
    if (_team == 0)
        return;  // no colour: you play on your own
    const Vec2 plate[] = {{-57, 23}, {57, 23}, {57, -8}, {40, -23}, {-57, -23}};
    _teamPiece->drawSolidPoly(plate, 5, teamColour(_team));
}

// One row per player as in the old lobby: rank chevron, head, name, READY / NOT READY, and a bar
// in the team colour under it (players with the same colour are a team).
void LobbyScene::rebuildRows(const std::vector<net::PlayerInfo>& players)
{
    std::string sig;
    for (const auto& p : players)
        sig += fmt::format("{}|{}|{}|{};", p.name, p.ready || p.host, static_cast<int>(p.team), p.id);
    if (sig == _rowsSig)
        return;
    _rowsSig = sig;
    _rowsNode->removeAllChildren();
    const auto visible = _director->getVisibleSize();
    const auto origin  = _director->getVisibleOrigin();
    const auto safe    = _director->getSafeAreaRect();
    float y            = origin.y + visible.height - 60;
    for (const auto& p : players)
    {
        auto* row = Node::create();
        row->setPosition(safe.getMinX() + 4, y);
        _rowsNode->addChild(row);
        if (p.team != 0)
        {
            auto* bar = DrawNode::create();
            const Vec2 blade[] = {{0, 0}, {5, 26}, {15, 21}, {26, 0}};
            bar->drawSolidPoly(blade, 4, teamColour(p.team));
            bar->drawSolidRect({0, 0}, {200, 3}, teamColour(p.team));
            row->addChild(bar, 0);
        }
        if (auto* chevron = Sprite::createWithSpriteFrameName("rank1.png"))
        {
            chevron->setPosition(12, 14);
            row->addChild(chevron, 1);
        }
        if (auto* head = Sprite::createWithSpriteFrameName("head" + std::to_string(1 + (p.id * 5) % save::kHeads) + ".png"))
        {
            head->setScale(0.75f);
            head->setPosition(54, 16);
            row->addChild(head, 1);
        }
        auto* name = Label::createWithTTF(p.name, "fonts/arial.ttf", 13);
        name->setAnchorPoint({0, 0.5f});
        name->setPosition(72, 20);
        row->addChild(name, 1);
        auto* state = ui::atlasLabel((p.ready || p.host) ? "READY" : "NOT READY");
        state->setScale(0.20f);
        state->setAnchorPoint({0, 0.5f});
        state->setPosition(72, 7);
        state->setColor((p.ready || p.host) ? Color3B(90, 230, 90) : Color3B(240, 40, 40));
        row->addChild(state, 1);
        y -= 38;
    }
}

void LobbyScene::leave()
{
    if (_leaving)
        return;
    _leaving = true;
    NetContext::get().close();
    _director->replaceScene(TransitionFade::create(0.3f, utils::createInstance<HomeScene>()));
}

void LobbyScene::refresh()
{
    auto& ctx = NetContext::get();
    HostOptions o;
    std::vector<PlayerInfo> players;
    if (auto* h = ctx.host())
    {
        o       = h->options();
        players = h->players();
    }
    else if (auto* c = ctx.client())
    {
        o       = c->lobby().options;
        players = c->lobby().players;
    }
    const int mapIndex = std::min<int>(o.map, assets::kMaps.size() - 1);
    _options[0]->setString(std::string("MODE: ") + kModes[std::min<int>(static_cast<int>(o.mode), 2)]);
    _options[1]->setString(std::string("MAP: ") +
                           (o.map == assets::kRandomMap ? std::string("RANDOM") : std::string(assets::kMaps[mapIndex].name)));
    _options[2]->setString(o.mode == GameMode::CoopSurvival ? "LENGTH: until everyone is out" : fmt::format("LENGTH: {} MIN", o.minutes));
    _options[3]->setString(fmt::format("MAX PLAYERS: {}", o.maxPlayers));
    _options[4]->setString(std::string("FAIR MODE: ") + (o.fair ? "ON (same gun, no pick-ups)" : "OFF"));
    auto onoff = [](bool b) { return b ? "ON" : "OFF"; };
    _options[5]->setString(fmt::format("RESPAWN TIME: {} S", o.respawn));
    _options[6]->setString(std::string("FRIENDLY FIRE: ") + onoff(o.friendlyFire));
    _options[7]->setString(std::string("PARTY: LOW GRAVITY ") + onoff(o.party & 1));
    _options[8]->setString(std::string("PARTY: UNLIMITED AMMO ") + onoff(o.party & 2));
    _options[9]->setString(std::string("PARTY: ONE-SHOT KILLS ") + onoff(o.party & 4));
    _options[10]->setString(std::string("PARTY: MELEE ONLY ") + onoff(o.party & 8));
    static const char* kGroupNames[] = {"PISTOLS", "SMGS + RIFLES", "SHOTGUN + SNIPER", "HEAVY", "MELEE"};
    for (int g = 0; g < 5; ++g)
        _options[11 + g]->setString(std::string("PICK-UPS: ") + kGroupNames[g] + " " + onoff(o.weaponGroups & (1 << g)));

    rebuildRows(players);
    _players->setVisible(false);
    _waiting->setString(isHost() ? (players.size() < 2 ? "WAITING FOR PLAYERS TO JOIN..." : "")
                                 : "WAITING FOR THE HOST TO START...");
    const auto address = ctx.localAddress();
    _address->setString(isHost() && !address.empty() ? "Others can join by IP: " + address : "");
}

void LobbyScene::update(float dt)
{
    auto& ctx = NetContext::get();
    ctx.update(dt);
    for (const auto& [from, message] : ctx.takeChat())
    {
        std::string who = "Host";
        if (auto* h = ctx.host())
            for (const auto& p : h->players())
                if (p.id == from)
                    who = p.name;
        if (auto* c = ctx.client())
            for (const auto& p : c->lobby().players)
                if (p.id == from)
                    who = p.name;
        _chat->setString(who + ": " + kQuickMessages[message]);
    }
    refresh();

    if (auto* c = ctx.client())
    {
        if (c->clientState() == ClientState::Disconnected || c->clientState() == ClientState::Idle)
        {
            ctx.close();
            _director->replaceScene(TransitionFade::create(0.3f, utils::createInstance<HomeScene>()));
            return;
        }
        if (c->clientState() == ClientState::Playing && c->hasMatch())
        {
            if (auto* scene = GameScene::createNetworked(c->match().def()))
                _director->replaceScene(TransitionFade::create(0.4f, scene));
            return;
        }
    }
    if (auto* h = ctx.host(); h && h->state() == HostState::Playing && h->driver())
    {
        if (auto* scene = GameScene::createNetworked(h->driver()->match().def()))
            _director->replaceScene(TransitionFade::create(0.4f, scene));
    }
}

}  // namespace mm::app

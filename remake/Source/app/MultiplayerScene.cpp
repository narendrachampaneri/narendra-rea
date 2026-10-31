#include "app/MultiplayerScene.h"

#include "app/AudioSystem.h"
#include "app/HomeScene.h"
#include "app/LobbyScene.h"
#include "app/NetContext.h"
#include "app/Platform.h"
#include "app/Ui.h"
#include "ui/axmol-ui.h"

using namespace ax;
using namespace mm::net;

namespace mm::app
{

bool MultiplayerScene::init()
{
    if (!Scene::init())
        return false;
    const auto visible = _director->getVisibleSize();
    const auto origin  = _director->getVisibleOrigin();

    auto* title = ui::atlasLabel("MULTIPLAYER");
    title->setAnchorPoint({0.5f, 1.0f});
    title->setScale(0.5f);
    title->setPosition(origin.x + visible.width / 2, origin.y + visible.height - 6);
    addChild(title, 5);

    // Left column: your name, host, back.
    _nameLabel = Label::createWithTTF("", "fonts/arial.ttf", 12);
    _nameLabel->setAnchorPoint({0, 0.5f});
    _nameLabel->setPosition(origin.x + 14, origin.y + visible.height - 52);
    addChild(_nameLabel, 5);

    auto* nameField = ax::ui::TextField::create("your name", "fonts/arial.ttf", 12);
    nameField->setMaxLength(16);
    nameField->setMaxLengthEnabled(true);
    nameField->setString(NetContext::get().playerName());
    nameField->setAnchorPoint({0, 0.5f});
    nameField->setPosition({origin.x + 14, origin.y + visible.height - 72});
    nameField->addEventListener([nameField](Object*, ax::ui::TextField::EventType type) {
        if (type == ax::ui::TextField::EventType::DETACH_WITH_IME)
            NetContext::get().setPlayerName(std::string(nameField->getString()));
    });
    addChild(nameField, 5);
    _nameLabel->setString("YOUR NAME (tap to edit):");

    auto* host = ui::panelButton("b03_top.png", "HOST A GAME", [this](Object*) {
        AudioSystem::get().play(audio::SoundId::Grenade1);
        hostGame();
    });
    auto* back = ui::panelButton("b03_bot.png", "BACK", [this](Object*) { goHome(); });
    auto* left = Menu::create(host, back, nullptr);
    left->alignItemsVerticallyWithPadding(0);
    left->setScale(0.85f);
    left->setPosition(origin.x + 95, origin.y + 70);
    addChild(left, 5);

    // Right: games found on this network, and joining by IP.
    auto* header = Label::createWithTTF("GAMES ON THIS NETWORK", "fonts/arial.ttf", 11);
    header->setAnchorPoint({0, 0.5f});
    header->setPosition(origin.x + visible.width * 0.45f, origin.y + visible.height - 34);
    addChild(header, 5);
    _status = Label::createWithTTF("Searching...", "fonts/arial.ttf", 10);
    _status->setAnchorPoint({0, 0.5f});
    _status->setPosition(origin.x + visible.width * 0.45f, origin.y + visible.height - 52);
    addChild(_status, 5);
    _list = Menu::create();
    _list->setPosition(Vec2::ZERO);
    addChild(_list, 5);

    auto* ipLabel = Label::createWithTTF("OR JOIN BY IP:", "fonts/arial.ttf", 10);
    ipLabel->setAnchorPoint({0, 0.5f});
    ipLabel->setPosition(origin.x + visible.width * 0.45f, origin.y + 62);
    addChild(ipLabel, 5);
    auto* ipField = ax::ui::TextField::create("192.168.43.1", "fonts/arial.ttf", 13);
    ipField->setMaxLength(21);
    ipField->setMaxLengthEnabled(true);
    ipField->setAnchorPoint({0, 0.5f});
    ipField->setPosition({origin.x + visible.width * 0.45f, origin.y + 40});
    ipField->addEventListener([this, ipField](Object*, ax::ui::TextField::EventType) { _ip = std::string(ipField->getString()); });
    addChild(ipField, 5);
    auto* join = ui::panelButton("b03_mid.png", "JOIN", [this, ipField](Object*) {
        Endpoint ep;
        if (!Endpoint::parse(std::string(ipField->getString()), kGamePort, ep))
        {
            ui::toast(this, "Type the host's address, like 192.168.43.1");
            return;
        }
        if (auto* c = NetContext::get().client())
        {
            c->join(ep);
            ui::toast(this, "Joining...");
        }
    });
    auto* joinMenu = Menu::create(join, nullptr);
    joinMenu->setScale(0.7f);
    joinMenu->setPosition(origin.x + visible.width - 70, origin.y + 40);
    addChild(joinMenu, 5);

    auto* keys          = EventListenerKeyboard::create();
    keys->onKeyReleased = [this](EventKeyboard::KeyCode code, ax::Event*) {
        if (code == EventKeyboard::KeyCode::KEY_BACK || code == EventKeyboard::KeyCode::KEY_ESCAPE)
            goHome();
    };
    _eventDispatcher->addEventListenerWithSceneGraphPriority(keys, this);
    scheduleUpdate();
    return true;
}

void MultiplayerScene::onEnter()
{
    Scene::onEnter();
    platform::setGameHandlesBack(true);
    auto& ctx = NetContext::get();
    if (!ctx.startClient())
        _status->setString("Wi-Fi is not available.");
    else if (auto* c = ctx.client())
        c->startSearch();
}

void MultiplayerScene::onExit()
{
    Scene::onExit();
    if (auto* c = NetContext::get().client(); c && c->clientState() == ClientState::Searching)
        c->stopSearch();
}

void MultiplayerScene::goHome()
{
    if (_leaving)
        return;
    _leaving = true;
    NetContext::get().close();
    _director->replaceScene(TransitionFade::create(0.3f, utils::createInstance<HomeScene>()));
}

void MultiplayerScene::hostGame()
{
    if (_leaving)
        return;
    auto& ctx = NetContext::get();
    if (!ctx.startHosting())
    {
        ui::toast(this, "Could not open the game port. Close other copies of the game.");
        return;
    }
    _leaving = true;
    _director->replaceScene(TransitionFade::create(0.3f, utils::createInstance<LobbyScene>()));
}

void MultiplayerScene::rebuildList()
{
    _list->removeAllChildren();
    auto* c = NetContext::get().client();
    if (!c)
        return;
    const auto visible = _director->getVisibleSize();
    const auto origin  = _director->getVisibleOrigin();
    static const char* kModeShort[] = {"Deathmatch", "Team DM", "Co-op"};
    float y = origin.y + visible.height - 76;
    int n   = 0;
    for (const auto& h : c->hosts())
    {
        if (++n > 5)
            break;
        const auto text = fmt::format("{}  {}  {}/{}  {}", h.info.hostName, kModeShort[std::min<int>(static_cast<int>(h.info.mode), 2)],
                                      h.info.players, h.info.maxPlayers, h.info.state == HostState::Lobby ? "" : "(playing)");
        auto* label = Label::createWithTTF(text, "fonts/arial.ttf", 12);
        label->setAnchorPoint({0, 0.5f});
        const Endpoint ep = h.ep;
        auto* item        = MenuItemLabel::create(label, [this, ep](Object*) {
            if (auto* cl = NetContext::get().client())
            {
                AudioSystem::get().play(audio::SoundId::Grenade1);
                cl->join(ep);
            }
        });
        item->setAnchorPoint({0, 0.5f});
        item->setPosition(origin.x + visible.width * 0.45f, y);
        _list->addChild(item);
        y -= 22;
    }
    _status->setString(c->hosts().empty() ? "Searching... (is the host on the same Wi-Fi or hotspot?)" : "Tap a game to join:");
}

void MultiplayerScene::update(float dt)
{
    auto* c = NetContext::get().client();
    if (!c || _leaving)
        return;
    c->update(dt);
    if (c->hosts().size() != _shown || (c->hosts().size() && static_cast<int>(_director->getTotalFrames()) % 30 == 0))
    {
        _shown = c->hosts().size();
        rebuildList();
    }
    switch (c->clientState())
    {
    case ClientState::InLobby:
        _leaving = true;
        _director->replaceScene(TransitionFade::create(0.3f, utils::createInstance<LobbyScene>()));
        break;
    case ClientState::Disconnected:
    {
        const char* why = "Could not reach that game.";
        switch (c->lastJoinResult())
        {
        case JoinResult::Full: why = "That game is full."; break;
        case JoinResult::Started: why = "That game has already started."; break;
        case JoinResult::WrongVersion: why = "That phone runs a different version."; break;
        case JoinResult::Kicked: why = "The host removed you."; break;
        default: break;
        }
        ui::toast(this, why);
        NetContext::get().startClient();
        if (auto* fresh = NetContext::get().client())
            fresh->startSearch();
        break;
    }
    default: break;
    }
}

}  // namespace mm::app

#include "app/MultiplayerScene.h"

#include <algorithm>
#include <cctype>

#include "app/AudioSystem.h"
#include "app/HomeScene.h"
#include "app/LobbyScene.h"
#include "app/NetContext.h"
#include "app/OriginalMenu.h"
#include "app/Platform.h"
#include "app/Ui.h"
#include "net/JoinCode.h"
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
    const auto safe    = _director->getSafeAreaRect();

    // The original's LOCAL GAME screen: the title, "FOUND n GAMES:", the game to pick between two
    // arrows, JOIN, HOST (top right) and BACK. The dimmed title art is the backdrop.
    auto* art = ui::titleArt("title_ret2_new.png", origin.x + visible.width / 2, Color3B(95, 95, 105));
    addChild(art, 0);

    auto* title = ui::atlasLabel("LOCAL GAME");
    title->setScale(0.6f);
    title->setAnchorPoint(Vec2::ANCHOR_MIDDLE);
    title->setPosition(origin.x + visible.width / 2, origin.y + visible.height - 44);
    addChild(title, 6);

    _foundLabel = ui::atlasLabel("FOUND 0 GAMES:");
    _foundLabel->setScale(0.30f);
    _foundLabel->setAnchorPoint(Vec2::ANCHOR_MIDDLE);
    _foundLabel->setPosition(origin.x + visible.width / 2, origin.y + visible.height / 2 + 36);
    addChild(_foundLabel, 6);
    _gameLabel = ui::atlasLabel("[SEARCHING...]");
    _gameLabel->setScale(0.26f);
    _gameLabel->setAnchorPoint(Vec2::ANCHOR_MIDDLE);
    _gameLabel->setPosition(origin.x + visible.width / 2, origin.y + visible.height / 2 + 6);
    addChild(_gameLabel, 6);

    _status = Label::createWithTTF("", "fonts/arial.ttf", 9);
    _status->setPosition(origin.x + visible.width / 2, origin.y + visible.height / 2 - 52);
    addChild(_status, 6);

    auto* prev = ui::panelButton("b03_left.png", " ", [this](Object*) {
        if (_count > 0)
        {
            _sel = (_sel + _count - 1) % _count;
            rebuildList();
        }
    });
    auto* next = ui::panelButton("b03_right.png", " ", [this](Object*) {
        if (_count > 0)
        {
            _sel = (_sel + 1) % _count;
            rebuildList();
        }
    });
    auto* join = ui::panelButton("b03_sml.png", "JOIN", [this](Object*) {
        auto* c = NetContext::get().client();
        if (!c || _count <= 0)
            return;
        int n = 0;
        for (const auto& h : c->hosts())
            if (n++ == _sel)
            {
                AudioSystem::get().play(audio::SoundId::Grenade1);
                c->join(h.ep);
                return;
            }
    });
    auto* host = ui::panelButton("b03_sml.png", "HOST", [this](Object*) {
        AudioSystem::get().play(audio::SoundId::Grenade1);
        hostGame();
    });
    auto* back = ui::panelButton("b03_sml.png", "BACK", [this](Object*) {
        AudioSystem::get().play(audio::SoundId::Grenade1);
        goHome();
    });
    auto* mid  = Menu::create(prev, next, join, nullptr);
    mid->setPosition(Vec2::ZERO);
    const float cx = origin.x + visible.width / 2, cy = origin.y + visible.height / 2;
    prev->setPosition(cx - 150, cy + 6);
    next->setPosition(cx + 150, cy + 6);
    join->setPosition(cx, cy - 26);
    addChild(mid, 6);
    auto* hostMenu = Menu::create(host, nullptr);
    hostMenu->setPosition(safe.getMaxX() - 12 - host->getContentSize().width / 2, safe.getMaxY() - 12 - host->getContentSize().height / 2);
    addChild(hostMenu, 6);
    auto* backMenu = Menu::create(back, nullptr);
    backMenu->setPosition(safe.getMinX() + 12 + back->getContentSize().width / 2, safe.getMinY() + 12 + back->getContentSize().height / 2);
    addChild(backMenu, 6);

    // Extras the original did not have: joining by IP address and by QR code, small, at the bottom.
    auto* ipField = ax::ui::TextField::create("or type the host's IP", "fonts/arial.ttf", 11);
    ipField->setMaxLength(21);
    ipField->setMaxLengthEnabled(true);
    ipField->setPosition({cx - 40, origin.y + 26});
    ipField->addEventListener([this, ipField](Object*, ax::ui::TextField::EventType) { _ip = std::string(ipField->getString()); });
    addChild(ipField, 6);
    auto* go = ui::panelButton("b03_sml.png", "GO", [this, ipField](Object*) {
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
    auto* scan = ui::panelButton("b03_sml.png", "QR", [this](Object*) {
        auto alive = _alive;
        platform::scanQr([this, alive](const std::string& text) {
            if (!*alive || text.empty())
                return;
            const auto ep = net::parseJoinCode(text);
            if (!ep)
            {
                ui::toast(this, "That is not a Mini Militia join code");
                return;
            }
            if (auto* c = NetContext::get().client())
            {
                c->join(*ep);
                ui::toast(this, "Joining...");
            }
        });
    });
    auto* extra = Menu::create(go, scan, nullptr);
    extra->setPosition(Vec2::ZERO);
    go->setScale(0.7f);
    scan->setScale(0.7f);
    go->setPosition(cx + 70, origin.y + 26);
    scan->setPosition(cx + 130, origin.y + 26);
    addChild(extra, 6);

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
    _director->replaceScene(TransitionFade::create(0.3f, utils::createInstance<MultiplayerMenuScene>()));
}

void MultiplayerScene::hostGame()
{
    if (_leaving)
        return;
    _leaving = true;
    NetContext::get().close();  // SELECT MAP opens the host session when PLAY is pressed
    _director->replaceScene(TransitionFade::create(0.3f, SelectMapScene::create(SelectMapScene::Purpose::HostWifi)));
}

void MultiplayerScene::rebuildList()
{
    auto* c = NetContext::get().client();
    if (!c)
        return;
    static const char* kModeShort[] = {"DEATHMATCH", "TEAM DM", "CO-OP"};
    _count = static_cast<int>(c->hosts().size());
    if (_sel >= _count)
        _sel = 0;
    _foundLabel->setString(_count == 1 ? "FOUND 1 GAME:" : "FOUND " + std::to_string(_count) + " GAMES:");
    if (_count == 0)
    {
        _gameLabel->setString("[SEARCHING...]");
        _status->setString("Is the host on the same Wi-Fi or hotspot?");
        return;
    }
    int n = 0;
    for (const auto& h : c->hosts())
        if (n++ == _sel)
        {
            std::string name = h.info.hostName;
            std::transform(name.begin(), name.end(), name.begin(), [](unsigned char ch) { return std::toupper(ch); });
            _gameLabel->setString(name.substr(0, 14) + " " + kModeShort[std::min<int>(static_cast<int>(h.info.mode), 2)] + " " +
                                  std::to_string(h.info.players) + "/" + std::to_string(h.info.maxPlayers));
            break;
        }
    _status->setString("");
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

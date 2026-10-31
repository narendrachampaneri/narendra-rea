#include "app/LobbyScene.h"

#include <algorithm>

#include "app/AudioSystem.h"
#include "app/GameScene.h"
#include "app/HomeScene.h"
#include "app/NetContext.h"
#include "app/Platform.h"
#include "app/Ui.h"
#include "assets/MapCatalog.h"

using namespace ax;
using namespace mm::net;

namespace mm::app
{

namespace
{
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

    _title = Label::createWithTTF(isHost() ? "YOUR GAME" : "LOBBY", "fonts/arial.ttf", 18);
    _title->setPosition(origin.x + visible.width / 2, origin.y + visible.height - 18);
    addChild(_title, 5);

    auto* menu = Menu::create();
    menu->setPosition(Vec2::ZERO);
    addChild(menu, 5);

    // Left: the options. The host taps a line to change it; guests just read them.
    for (int i = 0; i < 5; ++i)
    {
        auto* label = Label::createWithTTF("", "fonts/arial.ttf", 12);
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
                auto it = std::find(maps.begin(), maps.end(), static_cast<int>(o.map));
                o.map   = static_cast<std::uint8_t>(maps[(it == maps.end() ? 0 : (it - maps.begin() + 1)) % maps.size()]);
                break;
            }
            case 2: o.minutes = o.minutes % 8 + 1; break;
            case 3: o.maxPlayers = o.maxPlayers >= 12 ? 2 : o.maxPlayers + 1; break;
            case 4: o.fair = !o.fair; break;
            }
            host->setOptions(o);
            refresh();
        });
        item->setAnchorPoint({0, 0.5f});
        item->setPosition(origin.x + 14, origin.y + visible.height - 48 - i * 24);
        menu->addChild(item);
    }

    _players = Label::createWithTTF("", "fonts/arial.ttf", 11);
    _players->setAnchorPoint({0, 1});
    _players->setPosition(origin.x + visible.width * 0.52f, origin.y + visible.height - 40);
    addChild(_players, 5);

    _address = Label::createWithTTF("", "fonts/arial.ttf", 9);
    _address->setAnchorPoint({0, 0.5f});
    _address->setPosition(origin.x + 14, origin.y + visible.height - 48 - 5 * 24);
    addChild(_address, 5);

    _chat = Label::createWithTTF("", "fonts/arial.ttf", 10);
    _chat->setAnchorPoint({0, 0.5f});
    _chat->setPosition(origin.x + 14, origin.y + 70);
    addChild(_chat, 5);

    // Bottom row: ready / start, quick messages, leave.
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
    auto* msg = ui::panelButton("b03_mid.png", "MESSAGES", [this](Object*) {
        addChild(ui::quickChatGrid([](int m) { NetContext::get().sendChat(m); }), 20);
    });
    auto* team = ui::panelButton("b03_mid.png", "TEAM", [this](Object*) {
        _team = (_team + 1) % 3;
        if (auto* host = NetContext::get().host())
            host->setHostTeam(_team);
        else if (auto* client = NetContext::get().client())
            client->setReady(_ready, _team);
        refresh();
    });
    auto* back = ui::panelButton("b03_bot.png", "LEAVE", [this](Object*) { leave(); });
    auto* bottom = Menu::create(action, msg, team, back, nullptr);
    bottom->alignItemsHorizontallyWithPadding(-6);
    bottom->setScale(std::min(1.0f, visible.width / (bottom->getContentSize().width + 40)));
    bottom->setPosition(origin.x + visible.width / 2, origin.y + 30);
    addChild(bottom, 5);

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
    _options[1]->setString(std::string("MAP: ") + std::string(assets::kMaps[mapIndex].name));
    _options[2]->setString(o.mode == GameMode::CoopSurvival ? "LENGTH: until everyone is out" : fmt::format("LENGTH: {} MIN", o.minutes));
    _options[3]->setString(fmt::format("MAX PLAYERS: {}", o.maxPlayers));
    _options[4]->setString(std::string("FAIR MODE: ") + (o.fair ? "ON (same gun, no pick-ups)" : "OFF"));

    std::string list = "PLAYERS\n";
    for (const auto& p : players)
    {
        list += fmt::format("{}{}{}{}\n", p.host ? "* " : "  ", p.name, p.team ? fmt::format("   [team {}]", p.team) : "",
                            p.ready ? "   READY" : "");
    }
    _players->setString(list);
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

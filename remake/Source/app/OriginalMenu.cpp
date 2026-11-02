#include "app/OriginalMenu.h"

#include <algorithm>
#include <cctype>
#include <random>

#include "app/AudioSystem.h"
#include "app/GameScene.h"
#include "app/HomeScene.h"
#include "app/Menus.h"
#include "app/LobbyScene.h"
#include "app/MultiplayerScene.h"
#include "app/NetContext.h"
#include "app/Platform.h"
#include "app/PlayScene.h"
#include "app/SaveStore.h"
#include "app/SoldierView.h"
#include "app/Style.h"
#include "app/Ui.h"
#include "assets/MapCatalog.h"

using namespace ax;

namespace mm::app
{

namespace
{
void go(Scene* scene)
{
    if (scene)
        Director::getInstance()->replaceScene(TransitionFade::create(0.3f, scene));
}
void goHome() { go(utils::createInstance<HomeScene>()); }
void goSettings() { go(utils::createInstance<SettingsMenuScene>()); }
void goSolo() { go(utils::createInstance<SoloMenuScene>()); }

MenuEntry button(std::string text, std::function<void()> tap, bool enabled = true)
{
    MenuEntry e;
    e.label   = [text] { return text; };
    e.onTap   = std::move(tap);
    e.enabled = enabled;
    return e;
}

MenuEntry toggle(std::string text, std::function<bool()> get, std::function<void()> flip)
{
    MenuEntry e;
    e.label = [text] { return text; };
    e.lit   = std::move(get);
    e.onTap = std::move(flip);
    return e;
}

constexpr const char* kRanks[21] = {
    "PRIVATE", "PRIVATE 1ST CLASS", "CORPORAL", "SERGEANT", "STAFF SERGEANT", "SERGEANT 1ST CLASS", "MASTER SERGEANT",
    "1ST SERGEANT", "SERGEANT MAJOR", "2ND LIEUTENANT", "1ST LIEUTENANT", "CAPTAIN", "MAJOR", "LIEUTENANT COLONEL",
    "COLONEL", "BRIGADIER GENERAL", "MAJOR GENERAL", "LIEUTENANT GENERAL", "GENERAL", "ARMY GENERAL", "COMMANDER IN CHIEF"};
}  // namespace

const char* rankName(int rank) { return kRanks[std::clamp(rank, 1, 21) - 1]; }

// NEW: the original's experience table was not recovered; one rank per 100 experience points
// (experience = 10 per kill) keeps the original's "x / 100" progress bar.
int rankFromExperience(int exp) { return std::clamp(1 + exp / 100, 1, 21); }

void buildListMenu(Scene* scene, std::vector<MenuEntry> entries, bool home, std::function<void()> onBack)
{
    auto* director     = Director::getInstance();
    const auto visible = director->getVisibleSize();
    const auto origin  = director->getVisibleOrigin();
    const auto safe    = director->getSafeAreaRect();

    // The original's dimmed title art behind the menus.
    auto* art = ui::titleArt("title_ret2_new.png", origin.x + visible.width / 2, Color3B(95, 95, 105));
    art->setTag(-99);
    scene->addChild(art, 0);

    // The stacked column: first piece chamfered at the top, last at the bottom.
    auto* menu = Menu::create();
    auto items = std::make_shared<std::vector<std::pair<MenuItemSprite*, MenuEntry>>>();
    auto refresh = [items] {
        for (auto& [item, e] : *items)
        {
            if (auto* l = dynamic_cast<LabelAtlas*>(item->getChildren().front()))
                l->setString(e.label());
            const bool lit = e.enabled && (!e.lit || e.lit());
            item->setColor(lit ? Color3B::WHITE : Color3B(110, 110, 130));
        }
    };
    for (std::size_t i = 0; i < entries.size(); ++i)
    {
        const char* frame = entries.size() == 1 ? "b03_mid.png" : (i == 0 ? "b03_top.png" : (i + 1 == entries.size() ? "b03_bot.png" : "b03_mid.png"));
        MenuEntry e       = entries[i];
        auto* item        = ui::panelButton(frame, e.label(), [e, refresh](Object*) {
            if (!e.enabled || !e.onTap)
                return;
            AudioSystem::get().play(audio::SoundId::Grenade1);
            e.onTap();
            refresh();
        });
        items->push_back({item, e});
        menu->addChild(item);
    }
    menu->alignItemsVerticallyWithPadding(0);
    menu->setPosition(origin.x + visible.width / 2, origin.y + visible.height / 2);
    scene->addChild(menu, 5);
    refresh();

    // BACK, bottom left (b03_sml).
    if (onBack)
    {
        auto* back     = ui::panelButton("b03_sml.png", "BACK", [onBack](Object*) {
            AudioSystem::get().play(audio::SoundId::Grenade1);
            onBack();
        });
        auto* backMenu = Menu::create(back, nullptr);
        backMenu->setPosition(safe.getMinX() + 12 + back->getContentSize().width / 2, safe.getMinY() + 12 + back->getContentSize().height / 2);
        scene->addChild(backMenu, 5);
    }

    // The right-hand column.
    auto* ad = Sprite::createWithSpriteFrameName("DAad.png");
    if (ad)
    {
        ad->setScale(0.62f);
        ad->setPosition(safe.getMaxX() - 40, origin.y + visible.height / 2 + (home ? 70 : 0));
        scene->addChild(ad, 5);
    }
    if (home)
    {
        auto* info = ui::panelButton("b03_sml.png", "INFO", [](Object*) { go(TextPageScene::create(TextPageScene::Page::About)); });
        auto* news = ui::panelButton("b03_sml.png", "NEWS", [](Object*) { go(TextPageScene::create(TextPageScene::Page::WhatsNew)); });
        auto* help = ui::panelButton("b03_sml.png", "HELP", [](Object*) { go(utils::createInstance<HelpScene>()); });
        auto* side = Menu::create(info, news, help, nullptr);
        side->alignItemsVerticallyWithPadding(6);
        side->setPosition(safe.getMaxX() - 52, origin.y + visible.height / 2 - 40);
        scene->addChild(side, 5);
    }
    style::onBack(scene, onBack ? onBack : std::function<void()>([] {}));
}

// ---------------------------------------------------------------------------------------------
bool MultiplayerMenuScene::init()
{
    if (!Scene::init())
        return false;
    buildListMenu(this,
                  {button("SIGNING IN", nullptr, false), button("QUICK PLAY", nullptr, false),
                   button("LAN WIFI", [] { go(utils::createInstance<MultiplayerScene>()); })},
                  false, goHome);
    return true;
}
void MultiplayerMenuScene::onEnter()
{
    Scene::onEnter();
    platform::setGameHandlesBack(true);
}

// ---------------------------------------------------------------------------------------------
SelectMapScene* SelectMapScene::create(Purpose purpose)
{
    auto* s = new SelectMapScene();
    if (s->Scene::init() && s->initMap(purpose))
    {
        s->autorelease();
        return s;
    }
    delete s;
    return nullptr;
}

bool SelectMapScene::initMap(Purpose purpose)
{
    _purpose = purpose;
    _maps    = assets::wifiMaps(false);
    if (_maps.empty())
        return false;
    auto* director     = Director::getInstance();
    const auto visible = director->getVisibleSize();
    const auto origin  = director->getVisibleOrigin();
    const auto safe    = director->getSafeAreaRect();
    auto back          = [purpose] {
        if (purpose == Purpose::HostWifi)
        {
            NetContext::get().close();
            go(utils::createInstance<MultiplayerScene>());
        }
        else
            goSolo();
    };
    buildListMenu(this, {}, false, back);

    auto* title = ui::atlasLabel("SELECT MAP");
    title->setScale(0.6f);
    title->setAnchorPoint(Vec2::ANCHOR_MIDDLE);
    title->setPosition(origin.x + visible.width / 2, origin.y + visible.height - 44);
    addChild(title, 6);

    // [<]  MAP NAME  [>]
    auto* left  = ui::panelButton("b03_left.png", " ", [this](Object*) {
        _index = (_index + static_cast<int>(_maps.size()) - 1) % static_cast<int>(_maps.size());
        showMap();
    });
    auto* right = ui::panelButton("b03_right.png", " ", [this](Object*) {
        _index = (_index + 1) % static_cast<int>(_maps.size());
        showMap();
    });
    auto* box   = Sprite::createWithSpriteFrameName("b03_big.png");
    _name       = ui::atlasLabel("");
    _name->setAnchorPoint(Vec2::ANCHOR_MIDDLE);
    box->addChild(_name);
    box->setPosition(origin.x + visible.width / 2, origin.y + visible.height / 2);
    addChild(box, 6);
    auto* arrows = Menu::create(left, right, nullptr);
    arrows->setPosition(Vec2::ZERO);
    left->setPosition(box->getPositionX() - box->getContentSize().width / 2 - 30, box->getPositionY());
    right->setPosition(box->getPositionX() + box->getContentSize().width / 2 + 30, box->getPositionY());
    addChild(arrows, 6);
    _name->setPosition(box->getContentSize() / 2);

    auto* playBtn  = ui::panelButton("b03_sml.png", "PLAY", [this](Object*) {
        AudioSystem::get().play(audio::SoundId::Grenade1);
        play();
    });
    auto* playMenu = Menu::create(playBtn, nullptr);
    playMenu->setPosition(safe.getMaxX() - 12 - playBtn->getContentSize().width / 2, safe.getMinY() + 12 + playBtn->getContentSize().height / 2);
    addChild(playMenu, 6);
    showMap();
    return true;
}

void SelectMapScene::showMap()
{
    std::string name(assets::kMaps[_maps[_index]].name);
    std::transform(name.begin(), name.end(), name.begin(), [](unsigned char c) { return std::toupper(c); });
    _name->setString(name);
    const float w = _name->getContentSize().width;
    _name->setScale(std::min(0.42f, 190.0f / std::max(w, 1.0f)));
}

void SelectMapScene::onEnter()
{
    Scene::onEnter();
    platform::setGameHandlesBack(true);
}

void SelectMapScene::play()
{
    const auto& def = assets::kMaps[_maps[_index]];
    if (_purpose == Purpose::SoloDeathmatch)
    {
        game::ModeSettings st;
        st.kind = game::ModeKind::QuickPlay;
        std::random_device rd;
        st.seed = rd();
        if (auto* s = GameScene::create(def, st))
            go(s);
        return;
    }
    auto& ctx = NetContext::get();
    if (!ctx.startHosting())
    {
        ui::toast(this, "Could not open the game port. Close other copies of the game.");
        return;
    }
    if (auto* host = ctx.host())
    {
        auto o = host->options();
        o.mode = net::GameMode::Deathmatch;
        o.map  = static_cast<std::uint8_t>(_maps[_index]);
        host->setOptions(o);
    }
    go(utils::createInstance<LobbyScene>());
}

bool SoloMenuScene::init()
{
    if (!Scene::init())
        return false;
    buildListMenu(this,
                  {button("SURVIVAL (CO-OP)",
                          [] {
                              game::ModeSettings st;
                              st.kind = game::ModeKind::Survival;
                              std::random_device rd;
                              st.seed = rd();
                              if (auto* s = GameScene::create(*assets::findMap("survival"), st))
                                  go(s);
                          }),
                   button("DEATHMATCH", [] { go(SelectMapScene::create(SelectMapScene::Purpose::SoloDeathmatch)); }),
                   button("SCORES", [] { go(utils::createInstance<LeaderboardsScene>()); })},
                  false, goHome);
    return true;
}
void SoloMenuScene::onEnter()
{
    Scene::onEnter();
    platform::setGameHandlesBack(true);
}

bool SettingsMenuScene::init()
{
    if (!Scene::init())
        return false;
    buildListMenu(this,
                  {button("STORE", [] { go(utils::createInstance<StoreScene>()); }),
                   button("AVATAR", [] { go(utils::createInstance<RankScene>()); }),
                   button("CONFIGURE", [] { go(utils::createInstance<ConfigureScene>()); }),
                   button("CONTROLS", [] { go(utils::createInstance<ControlsScene>()); })},
                  false, goHome);
    return true;
}
void SettingsMenuScene::onEnter()
{
    Scene::onEnter();
    platform::setGameHandlesBack(true);
}

bool ConfigureScene::init()
{
    if (!Scene::init())
        return false;
    auto& store = SaveStore::get();
    auto save   = [] { SaveStore::get().commit(); SaveStore::get().applySettings(); };
    auto& cfg   = store.data().settings;
    MenuEntry twoX = button("2X VIEW", nullptr, false);
    buildListMenu(this,
                  {toggle("MUSIC", [&cfg] { return cfg.musicVolume > 0; },
                          [&cfg, save] { cfg.musicVolume = cfg.musicVolume > 0 ? 0 : 60; save(); }),
                   toggle("SOUND", [&cfg] { return cfg.soundVolume > 0; },
                          [&cfg, save] { cfg.soundVolume = cfg.soundVolume > 0 ? 0 : 80; save(); }),
                   toggle("BLOOD", [&cfg] { return cfg.blood; }, [&cfg, save] { cfg.blood = !cfg.blood; save(); }),
                   toggle("HI-RES GFX", [&cfg] { return cfg.qualityAuto || cfg.quality >= save::Quality::High; },
                          [this, &cfg, save] {
                              if (cfg.qualityAuto || cfg.quality >= save::Quality::High)
                              {
                                  cfg.qualityAuto = false;
                                  cfg.quality     = save::Quality::Smooth;
                              }
                              else
                                  cfg.qualityAuto = true;
                              save();
                              ui::toast(this, "Graphics change after you restart the game");
                          }),
                   twoX},
                  false, goSettings);
    // My extra options (volumes, frame rate, name, save export ...) as a small button, bottom right.
    auto* more     = ui::panelButton("b03_sml.png", "OPTIONS", [](Object*) { go(utils::createInstance<SettingsScene>()); });
    auto* moreMenu = Menu::create(more, nullptr);
    const auto safe = Director::getInstance()->getSafeAreaRect();
    moreMenu->setPosition(safe.getMaxX() - 12 - more->getContentSize().width / 2, safe.getMinY() + 12 + more->getContentSize().height / 2);
    addChild(moreMenu, 6);
    return true;
}
void ConfigureScene::onEnter()
{
    Scene::onEnter();
    platform::setGameHandlesBack(true);
}

bool ControlsScene::init()
{
    if (!Scene::init())
        return false;
    auto& cfg = SaveStore::get().data().settings;
    auto save = [] { SaveStore::get().commit(); SaveStore::get().applySettings(); };
    buildListMenu(this,
                  {toggle("SWAP STICKS", [&cfg] { return cfg.leftHanded; }, [&cfg, save] { cfg.leftHanded = !cfg.leftHanded; save(); }),
                   toggle("AUTO FIRE", [&cfg] { return cfg.autoFire; }, [&cfg, save] { cfg.autoFire = !cfg.autoFire; save(); }),
                   button("PLACEMENT", [] {
                       Director::getInstance()->pushScene(TransitionFade::create(0.2f, utils::createInstance<ButtonEditorScene>()));
                   })},
                  false, goSettings);
    return true;
}
void ControlsScene::onEnter()
{
    Scene::onEnter();
    platform::setGameHandlesBack(true);
}

bool HelpScene::init()
{
    if (!Scene::init())
        return false;
    buildListMenu(this,
                  {button("TRAINING", [] {
                       game::ModeSettings st;
                       st.kind = game::ModeKind::Training;
                       if (auto* s = GameScene::create(*assets::findMap("training"), st))
                           go(s);
                   })},
                  false, goHome);
    return true;
}
void HelpScene::onEnter()
{
    Scene::onEnter();
    platform::setGameHandlesBack(true);
}

// ---------------------------------------------------------------------------------------------
bool RankScene::init()
{
    if (!Scene::init())
        return false;
    auto* director     = Director::getInstance();
    const auto visible = director->getVisibleSize();
    const auto origin  = director->getVisibleOrigin();
    const auto& d      = SaveStore::get().data();

    // Same backdrop as the other menus; BACK goes to the settings menu.
    buildListMenu(this, {}, false, goSettings);

    const int exp  = d.stats.kills * 10;
    const int rank = rankFromExperience(exp);
    const float cx = origin.x + visible.width / 2;
    auto text      = [&](const std::string& s, float scale, Vec2 pos, Vec2 anchor = Vec2::ANCHOR_MIDDLE) {
        auto* l = ui::atlasLabel(s);
        l->setScale(scale);
        l->setAnchorPoint(anchor);
        l->setPosition(pos);
        addChild(l, 6);
    };
    text(rankName(rank), 0.38f, {cx, origin.y + visible.height - 28});
    if (auto* icon = Sprite::createWithSpriteFrameName("rank" + std::to_string(rank) + ".png"))
    {
        icon->setPosition(cx - 120, origin.y + visible.height - 28);
        addChild(icon, 6);
    }
    // Name box (the name is changed in OPTIONS on the configure screen).
    auto* nameBox = Sprite::createWithSpriteFrameName("b03_big.png");
    nameBox->setScale(0.8f);
    nameBox->setPosition(cx, origin.y + visible.height - 70);
    addChild(nameBox, 6);
    std::string name = d.name.empty() ? "NOOBIE" : d.name;
    std::transform(name.begin(), name.end(), name.begin(), [](unsigned char c) { return std::toupper(c); });
    auto* nameLabel = ui::atlasLabel(name.substr(0, 14));
    nameLabel->setScale(0.30f);
    nameLabel->setAnchorPoint(Vec2::ANCHOR_MIDDLE);
    nameLabel->setPosition(nameBox->getContentSize() / 2);
    nameBox->addChild(nameLabel);

    auto* view = SoldierView::create(d.avatar);
    view->setScale(2.2f);
    view->setPosition(cx, origin.y + visible.height / 2 - 20);
    addChild(view, 6);

    text("SKILL: 0", 0.26f, {origin.x + 24, origin.y + visible.height - 120}, Vec2::ANCHOR_MIDDLE_LEFT);
    text("KILLS:  " + std::to_string(d.stats.kills), 0.26f, {origin.x + 24, origin.y + visible.height - 140}, Vec2::ANCHOR_MIDDLE_LEFT);
    text("DEATHS: " + std::to_string(d.stats.deaths), 0.26f, {origin.x + 24, origin.y + visible.height - 160}, Vec2::ANCHOR_MIDDLE_LEFT);
    text("EXP: " + std::to_string(exp), 0.26f, {origin.x + visible.width - 24, origin.y + visible.height - 120}, Vec2::ANCHOR_MIDDLE_RIGHT);
    text("RANK PROGRESS:", 0.20f, {origin.x + visible.width - 24, origin.y + visible.height - 140}, Vec2::ANCHOR_MIDDLE_RIGHT);
    text(std::to_string(exp % 100) + "/100", 0.22f, {origin.x + visible.width - 24, origin.y + visible.height - 158}, Vec2::ANCHOR_MIDDLE_RIGHT);

    auto* custom = ui::panelButton("b03_mid.png", "CUSTOMIZE", [](Object*) { go(utils::createInstance<AvatarScene>()); });
    auto* awards = ui::panelButton("b03_sml.png", "AWARDS", [](Object*) { go(utils::createInstance<LeaderboardsScene>()); });
    auto* menu   = Menu::create(custom, awards, nullptr);
    menu->setPosition(Vec2::ZERO);
    custom->setPosition(cx, origin.y + 34);
    awards->setPosition(origin.x + visible.width - 70, origin.y + 34);
    addChild(menu, 6);
    return true;
}
void RankScene::onEnter()
{
    Scene::onEnter();
    platform::setGameHandlesBack(true);
}

}  // namespace mm::app

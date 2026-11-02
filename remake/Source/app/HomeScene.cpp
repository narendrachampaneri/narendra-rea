#include "app/HomeScene.h"

#include <random>

#include "app/AudioSystem.h"
#include "app/GameScene.h"
#include "app/OriginalMenu.h"
#include "app/MultiplayerScene.h"
#include "app/Platform.h"
#include "app/SaveStore.h"
#include "app/Ui.h"
#include "assets/MapCatalog.h"
#include "config/GameConfig.h"

using namespace ax;

namespace mm::app
{

bool HomeScene::init()
{
    if (!Scene::init())
        return false;
    auto go = [](Scene* s) { Director::getInstance()->replaceScene(TransitionFade::create(0.3f, s)); };
    std::vector<MenuEntry> entries;
    auto add = [&](const char* text, std::function<void()> tap, bool enabled = true) {
        MenuEntry e;
        e.label   = [text] { return std::string(text); };
        e.onTap   = std::move(tap);
        e.enabled = enabled;
        entries.push_back(std::move(e));
    };
    // As in the original build: UPGRADE is shown but greyed out.
    add("UPGRADE", nullptr, false);
    add("QUICK PLAY", [go] {
        std::vector<const assets::MapDef*> pool;
        for (const auto& m : assets::kMaps)
            if (m.kind == assets::MapKind::Multiplayer && m.inOriginalRotation)
                pool.push_back(&m);
        std::random_device rd;
        game::ModeSettings settings;
        settings.kind = game::ModeKind::QuickPlay;
        settings.seed = rd();
        if (auto* scene = GameScene::create(*pool[settings.seed % pool.size()], settings))
            go(scene);
    });
    add("MULTIPLAYER", [go] { go(utils::createInstance<MultiplayerMenuScene>()); });
    add("SOLO PLAY", [go] { go(utils::createInstance<SoloMenuScene>()); });
    add("SETTINGS", [go] { go(utils::createInstance<SettingsMenuScene>()); });
    buildListMenu(this, std::move(entries), true, nullptr);
    return true;
}

void HomeScene::onEnter()
{
    Scene::onEnter();
    // Back on the main menu leaves the app (system back animation).
    platform::setGameHandlesBack(false);
    auto& audio = AudioSystem::get();
    if (!audio.isMusicPlaying())
        audio.playMusic();

    // One welcome pop-up, the first time only (like the original's single start-up message).
    auto& save = SaveStore::get();
    if (!save.data().firstLaunchDone)
    {
        save.data().firstLaunchDone = true;
        if (save.data().name.empty())
            save.data().name = "Player";
        save.commit();
        showWelcome();
    }
}

void HomeScene::showWelcome()
{
    const auto visible = _director->getVisibleSize();
    const auto origin  = _director->getVisibleOrigin();
    auto* layer        = Node::create();  // no colour layer: the panel alone, over the menu
    auto* panel        = Sprite::create("dialog.png");
    if (panel)
    {
        panel->setScale(2.9f, 1.55f);
        panel->setPosition(origin + visible / 2);
        layer->addChild(panel, 0);
    }
    auto* title = Label::createWithTTF("WELCOME TO NOSTALGIA", "fonts/digitalix.ttf", 15);
    title->setPosition(origin + visible / 2 + Vec2(0, 34));
    layer->addChild(title, 1);
    auto* text = Label::createWithTTF("Enjoy the old Mini Militia.", "fonts/digitalix.ttf", 10);
    text->setPosition(origin + visible / 2 + Vec2(0, 8));
    layer->addChild(text, 1);
    auto* ok   = ui::panelButton("b03_sml.png", "OK", [layer](Object*) { layer->removeFromParent(); });
    auto* menu = Menu::create(ok, nullptr);
    menu->setPosition(origin + visible / 2 + Vec2(0, -34));
    layer->addChild(menu, 2);
    addChild(layer, 50);
}

}  // namespace mm::app

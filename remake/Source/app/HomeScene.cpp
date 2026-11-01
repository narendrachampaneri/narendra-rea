#include "app/HomeScene.h"

#include <random>

#include "app/AudioSystem.h"
#include "app/GameScene.h"
#include "app/OriginalMenu.h"
#include "app/MultiplayerScene.h"
#include "app/Platform.h"
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
    add("MULTIPLAYER", [go] { go(utils::createInstance<MultiplayerScene>()); });
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
}

}  // namespace mm::app

#include "app/HomeScene.h"

#include "app/AssetViewerScene.h"
#include "app/AudioSystem.h"
#include "app/GameScene.h"
#include "app/Platform.h"
#include "app/Ui.h"
#include "config/GameConfig.h"

using namespace ax;

namespace mm::app
{

bool HomeScene::init()
{
    if (!Scene::init())
        return false;

    const auto visible = _director->getVisibleSize();
    const auto origin  = _director->getVisibleOrigin();
    const auto safe    = _director->getSafeAreaRect();

    auto click   = [] { AudioSystem::get().play(audio::SoundId::Grenade1); };
    auto comingIn = [this, click](const char* what) {
        return [this, click, what](Object*) {
            click();
            ui::toast(this, what);
        };
    };

    // Button panel on the right, like the original menu (b03_top / mid / bot pieces).
    auto* menu = Menu::create(
        // M3 slice: Outpost with the AK47 (the full Quick Play rules arrive in M4).
        ui::panelButton("b03_top.png", "QUICK PLAY",
                        [this, click](Object*) {
                            click();
                            if (auto* scene = GameScene::create(*assets::findMap("outpost")))
                                _director->replaceScene(TransitionFade::create(0.4f, scene));
                        }),
        ui::panelButton("b03_mid.png", "MULTIPLAYER", comingIn("Wi-Fi multiplayer arrives in M5")),
        ui::panelButton("b03_mid.png", "SOLO PLAY", comingIn("Training, Survival and Practice arrive in M4")),
        ui::panelButton("b03_mid.png", "SETTINGS", comingIn("Settings arrive in M6")),
        ui::panelButton("b03_bot.png", "ASSET CHECK",
                        [this, click](Object*) {
                            click();
                            _director->replaceScene(
                                TransitionFade::create(0.4f, utils::createInstance<AssetViewerScene>()));
                        }),
        nullptr);
    menu->alignItemsVerticallyWithPadding(0);
    const float panelWidth = menu->getChildren().front()->getContentSize().width;
    menu->setPosition(safe.getMaxX() - 12 - panelWidth / 2, origin.y + visible.height / 2);
    addChild(menu, 5);

    // Title art in the space left of the panel.
    const float artCenter = origin.x + (safe.getMaxX() - 24 - panelWidth - origin.x) / 2 + 6;
    addChild(ui::titleArt("title_ret2_new.png", artCenter), 0);

    auto* note = Label::createWithTTF(std::string(config::kVersionLabel) + "  -  menus and gameplay are being built",
                                      "fonts/arial.ttf", 9);
    note->setAnchorPoint(Vec2::ANCHOR_BOTTOM_LEFT);
    note->setPosition(safe.getMinX() + 6, safe.getMinY() + 4);
    note->setOpacity(190);
    addChild(note, 5);
    return true;
}

void HomeScene::onEnter()
{
    Scene::onEnter();
    // Back on the home screen leaves the app (system back animation).
    platform::setGameHandlesBack(false);
    auto& audio = AudioSystem::get();
    if (!audio.isMusicPlaying())
        audio.playMusic();
}

}  // namespace mm::app

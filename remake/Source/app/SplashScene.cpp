#include "app/SplashScene.h"

#include "app/AssetManager.h"
#include "app/AudioSystem.h"
#include "app/HomeScene.h"
#include "app/Menus.h"
#include "app/SaveStore.h"
#include "app/Platform.h"
#include "app/Ui.h"
#include "config/GameConfig.h"

using namespace ax;

namespace mm::app
{

bool SplashScene::init()
{
    if (!Scene::init())
        return false;

    const auto visible = _director->getVisibleSize();
    const auto origin  = _director->getVisibleOrigin();
    const auto safe    = _director->getSafeAreaRect();

    addChild(ui::titleArt("title_ret_new.png", origin.x + visible.width / 2), 0);

    _status = ui::atlasLabel("LOADING");
    _status->setScale(0.5f);
    _status->setAnchorPoint(Vec2::ANCHOR_MIDDLE);
    _status->setPosition(origin.x + visible.width / 2, safe.getMinY() + 22);
    addChild(_status, 5);

    auto* version = Label::createWithTTF(config::kVersionLabel, "fonts/arial.ttf", 9);
    version->setAnchorPoint(Vec2::ANCHOR_BOTTOM_RIGHT);
    version->setPosition(safe.getMaxX() - 6, safe.getMinY() + 4);
    version->setOpacity(180);
    addChild(version, 5);

    // Tap anywhere once loading is done (the original's full-screen title button).
    auto* touch           = EventListenerTouchOneByOne::create();
    touch->onTouchBegan   = [](Touch*, Event*) { return true; };
    touch->onTouchEnded   = [this](Touch*, Event*) { proceed(); };
    _eventDispatcher->addEventListenerWithSceneGraphPriority(touch, this);
    return true;
}

void SplashScene::onEnter()
{
    Scene::onEnter();
    platform::setGameHandlesBack(false);
    // Let the first frame (the title art) reach the screen before loading starts.
    scheduleOnce([this](float) { startLoading(); }, 0.0f, "load");
}

void SplashScene::startLoading()
{
    _pending = 2;
    AssetManager::get().loadSharedAtlasesAsync([this] {
        if (--_pending == 0)
            onLoaded();
    });
    AudioSystem::get().preloadEffectsAsync([this] {
        if (--_pending == 0)
            onLoaded();
    });
}

void SplashScene::onLoaded()
{
    _loaded = true;
    // SplashLayer::updateStep: the menu music starts at half volume once the sounds are ready.
    if (!AudioSystem::get().isMusicPlaying())
    {
        AudioSystem::get().setMusicVolume(0.5f);
        AudioSystem::get().playMusic();
    }
    _status->setString("TOUCH TO START");
    _status->runAction(RepeatForever::create(
        Sequence::create(FadeTo::create(0.7f, 70), FadeTo::create(0.7f, 255), nullptr)));
}

void SplashScene::proceed()
{
    if (!_loaded || _leaving)
        return;
    _leaving = true;
    AudioSystem::get().play(audio::SoundId::Grenade1);  // the original's button sound (id 13)
    if (SaveStore::get().data().firstLaunchDone)
        _director->replaceScene(TransitionFade::create(0.5f, utils::createInstance<HomeScene>()));
    else
        _director->replaceScene(TransitionFade::create(0.5f, utils::createInstance<FirstLaunchScene>()));
}

}  // namespace mm::app

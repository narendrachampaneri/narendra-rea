#include "MainScene.h"

#include "config/GameConfig.h"

using namespace ax;

MainScene::MainScene() : _world(mm::NetRole::Offline, mm::config::kPhysicsStep, mm::config::kMaxStepsPerFrame) {}

bool MainScene::init()
{
    if (!Scene::init())
        return false;

    const auto visibleSize = _director->getVisibleSize();
    const auto origin      = _director->getVisibleOrigin();
    const auto safe        = _director->getSafeAreaRect();

    addChild(LayerColor::create(Color4B(18, 24, 20, 255)), -1);

    auto title = Label::createWithSystemFont("Mini Militia by Kadiyafali", "sans-serif", 48);
    title->setPosition(origin.x + visibleSize.width / 2, origin.y + visibleSize.height / 2 + 24);
    addChild(title);

    // Kept inside the safe area so it never hides under a camera cutout.
    _status = Label::createWithSystemFont("", "sans-serif", 22);
    _status->setAnchorPoint(Vec2::ANCHOR_BOTTOM_LEFT);
    _status->setPosition(safe.origin.x + 12, safe.origin.y + 12);
    addChild(_status);

    scheduleUpdate();
    return true;
}

void MainScene::update(float delta)
{
    _world.update(delta);
    _status->setString(fmt::format("M1 skeleton - world ticks: {}", _world.ticks()));
}

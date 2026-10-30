#include "app/GameScene.h"

#include <algorithm>
#include <cmath>

#include "app/AssetManager.h"
#include "app/AudioSystem.h"
#include "app/HomeScene.h"
#include "app/MapView.h"
#include "app/Platform.h"
#include "app/SoldierView.h"
#include "app/Ui.h"
#include "game/Rules.h"

using namespace ax;

namespace mm::app
{

namespace
{
constexpr int kZBackground = -10;
constexpr int kZWorld      = 0;
constexpr int kZHud        = 10;
constexpr int kZPause      = 20;
constexpr int kTracerZ     = MapView::kZEntities + 1;
constexpr float kRespawnDelay = 3.0f;  // NEW: the slice respawns by itself

Vec2 toAx(game::Vec2 v) { return {v.x, v.y}; }

// Explosion::reset / updateStep: a white flash that settles, a grey smoke puff that grows,
// spins and fades, and a burst of Shrapnel.plist.
class ExplosionEffect : public Node
{
public:
    static ExplosionEffect* create()
    {
        auto* e = new ExplosionEffect();
        e->init();
        e->autorelease();
        return e;
    }

    bool init() override
    {
        Node::init();
        _smoke = Sprite::createWithSpriteFrameName("smoke.png");
        _smoke->setColor(Color3B(0x50, 0x50, 0x50));
        _smoke->setScale(0.0f);
        addChild(_smoke);
        _flash = Sprite::createWithSpriteFrameName("explosion.png");
        _flash->setScale(0.01f);
        addChild(_flash);
        if (auto* shrapnel = ParticleSystemQuad::create("Shrapnel.plist"))
        {
            shrapnel->setPositionType(ParticleSystem::PositionType::GROUPED);
            shrapnel->setAutoRemoveOnFinish(true);
            addChild(shrapnel);
        }
        _smoke->setRotation(random(-180.0f, 180.0f));
        scheduleUpdate();
        return true;
    }

    void update(float dt) override
    {
        _time += dt;
        if (_time > rules::kExplosionLifetime)
        {
            removeFromParent();
            return;
        }
        if (_time <= rules::kExplosionFlashTime)
        {
            _smoke->setScale(std::min(_smoke->getScale() + dt * 10.0f, 1.2f));
            _flash->setScale(_flash->getScale() * 0.3f + 0.6f);
        }
        else
        {
            _flash->setVisible(false);
            _smoke->setScale(_smoke->getScale() + dt * 0.25f);
            _smoke->setRotation(_smoke->getRotation() + dt * 20.0f);
            _smoke->setOpacity(static_cast<uint8_t>(std::max(0, _smoke->getOpacity() - 1)));
        }
    }

private:
    Sprite* _smoke = nullptr;
    Sprite* _flash = nullptr;
    float _time    = 0.0f;
};

}  // namespace

GameScene* GameScene::create(const assets::MapDef& def)
{
    auto* scene = new GameScene();
    if (scene->init(def))
    {
        scene->autorelease();
        return scene;
    }
    delete scene;
    return nullptr;
}

bool GameScene::init(const assets::MapDef& def)
{
    if (!Scene::init())
        return false;
    _def = &def;

    const auto visible = _director->getVisibleSize();
    const auto origin  = _director->getVisibleOrigin();

    // Full-screen background stretched like Stage::setupStage (width/480, height/320).
    auto* background = Sprite::create(def.background);
    if (background)
    {
        background->setScale(visible.width / assets::kDesignWidth, visible.height / assets::kDesignHeight);
        background->setPosition(origin + visible / 2);
        addChild(background, kZBackground);
    }

    _scaleLayer = Node::create();
    _scaleLayer->setPosition(origin + visible / 2);
    addChild(_scaleLayer, kZWorld);

    _map = MapView::create(def);
    if (!_map)
        return false;
    _scaleLayer->addChild(_map);

    _match = std::make_unique<game::Match>(def, AssetManager::get().mapData(def), 0);

    _soldier = SoldierView::create();
    _map->addChild(_soldier, MapView::kZEntities);

    // ProjectileManager: 30 tracers drawn from bullet_new.png, stretched into streaks.
    for (int i = 0; i < rules::kTracerPool; ++i)
    {
        auto* t = Sprite::create("bullet_new.png");
        if (!t)
            t = Sprite::create();
        t->setAnchorPoint({1.0f, 0.5f});
        t->setVisible(false);
        _map->addChild(t, kTracerZ);
        _tracers.push_back(t);
    }
    for (int i = 0; i < 12; ++i)
    {
        auto* s = Sprite::create("spark_new.png");
        if (!s)
            s = Sprite::create();
        s->setAnchorPoint({0.0f, 0.5f});
        s->setBlendFunc(BlendFunc::ADDITIVE);
        s->setVisible(false);
        _map->addChild(s, kTracerZ);
        _sparks.push_back(s);
    }

    buildHud();

    auto* touch           = EventListenerTouchAllAtOnce::create();
    touch->onTouchesBegan = AX_CALLBACK_2(GameScene::onTouchesBegan, this);
    touch->onTouchesMoved = AX_CALLBACK_2(GameScene::onTouchesMoved, this);
    touch->onTouchesEnded = AX_CALLBACK_2(GameScene::onTouchesEnded, this);
    touch->onTouchesCancelled = AX_CALLBACK_2(GameScene::onTouchesEnded, this);
    _eventDispatcher->addEventListenerWithSceneGraphPriority(touch, this);

    auto* keys          = EventListenerKeyboard::create();
    keys->onKeyReleased = [this](EventKeyboard::KeyCode code, Event*) {
        if (code == EventKeyboard::KeyCode::KEY_BACK || code == EventKeyboard::KeyCode::KEY_ESCAPE)
            setPaused(!_paused);
    };
    _eventDispatcher->addEventListenerWithSceneGraphPriority(keys, this);

    updateCamera(0.0f);
    scheduleUpdate();
    return true;
}

void GameScene::onEnter()
{
    Scene::onEnter();
    platform::setGameHandlesBack(true);
    AudioSystem::get().stopMusic();
}

void GameScene::onExit()
{
    Scene::onExit();
    _pad.cancel();
}

void GameScene::buildHud()
{
    const auto visible = _director->getVisibleSize();
    _hud = Node::create();
    _hud->setPosition(_director->getVisibleOrigin());
    addChild(_hud, kZHud);

    // Joypad sprites: pads (movePad/firePad) and knobs (moveStick/fireStick), scale 1 on phones.
    _movePad   = Sprite::createWithSpriteFrameName("movePad.png");
    _firePad   = Sprite::createWithSpriteFrameName("firePad.png");
    _moveStick = Sprite::createWithSpriteFrameName("moveStick.png");
    _fireStick = Sprite::createWithSpriteFrameName("fireStick.png");
    for (auto* s : {_movePad, _firePad})
    {
        s->setOpacity(160);
        _hud->addChild(s, 0);
    }
    for (auto* s : {_moveStick, _fireStick})
        _hud->addChild(s, 1);
    layoutPads();

    // Health and jetpack frame (healthBar.png) and the weapon frame (ammoBar.png), side by
    // side at the top centre; the reload button in the top right corner (RELOAD_POS).
    const float top = visible.height - 4;
    _healthFrame    = Sprite::createWithSpriteFrameName("healthBar.png");
    _healthFrame->setAnchorPoint(Vec2::ANCHOR_TOP_RIGHT);
    _healthFrame->setPosition(visible.width / 2 - 2, top);
    _hud->addChild(_healthFrame, 1);
    _bars = DrawNode::create();
    _healthFrame->addChild(_bars, -1);
    const auto frame = _healthFrame->getContentSize();
    _pauseButton     = Vec2(visible.width / 2 - 2 - frame.width, top - frame.height) + Vec2(108, 28.5f);

    auto* ammoFrame = Sprite::createWithSpriteFrameName("ammoBar.png");
    ammoFrame->setAnchorPoint(Vec2::ANCHOR_TOP_LEFT);
    ammoFrame->setPosition(visible.width / 2 + 2, top);
    _hud->addChild(ammoFrame, 1);
    if (auto* icon = Sprite::createWithSpriteFrameName("ak47.png"))
    {
        icon->setScale(0.42f);
        icon->setPosition(42, ammoFrame->getContentSize().height / 2 + 2);
        ammoFrame->addChild(icon);
    }
    _ammo = Label::createWithTTF("", "fonts/arial.ttf", 12);
    _ammo->setPosition(ammoFrame->getContentSize().width - 24, ammoFrame->getContentSize().height / 2 + 2);
    _ammo->enableOutline(Color4B::BLACK, 1);
    ammoFrame->addChild(_ammo);

    _reload = Sprite::createWithSpriteFrameName("ammoBtn.png");
    _reload->setScale(0.8f);  // defaultReloadScl on phones
    _reload->setPosition(visible.width - 34, visible.height - 34);
    _hud->addChild(_reload, 1);
    if (auto* ring = Sprite::createWithSpriteFrameName("ammoBtn.png"))
    {
        _reloadRing = ProgressTimer::create(ring);
        _reloadRing->setType(ProgressTimer::Type::RADIAL);
        _reloadRing->setColor(Color3B(255, 200, 60));
        _reloadRing->setOpacity(150);
        _reloadRing->setPosition(_reload->getContentSize() / 2);
        _reload->addChild(_reloadRing);
    }
}

void GameScene::layoutPads()
{
    const auto visible = _director->getVisibleSize();
    _pad.setLayout({rules::kPadInset, rules::kPadInset},
                   {visible.width - rules::kPadInset, rules::kPadInset});
    _movePad->setPosition(toAx(_pad.moveCentre()));
    _firePad->setPosition(toAx(_pad.aimCentre()));
}

Vec2 GameScene::hudPoint(const Touch* touch) const
{
    return touch->getLocation() - _director->getVisibleOrigin();
}

void GameScene::onTouchesBegan(const std::vector<Touch*>& touches, Event*)
{
    for (auto* t : touches)
    {
        const Vec2 p = hudPoint(t);
        if (_paused)
            continue;
        if (p.distance(_pauseButton) < 18)
        {
            _buttonTouches[t->getID()] = 2;
            continue;
        }
        if (p.distance(_reload->getPosition()) < 28)
        {
            _buttonTouches[t->getID()] = 1;
            continue;
        }
        _pad.touchBegan(t->getID(), {p.x, p.y});
    }
}

void GameScene::onTouchesMoved(const std::vector<Touch*>& touches, Event*)
{
    for (auto* t : touches)
    {
        if (_buttonTouches.count(t->getID()))
            continue;
        const Vec2 p = hudPoint(t);
        _pad.touchMoved(t->getID(), {p.x, p.y});
    }
}

void GameScene::onTouchesEnded(const std::vector<Touch*>& touches, Event*)
{
    for (auto* t : touches)
    {
        auto it = _buttonTouches.find(t->getID());
        if (it != _buttonTouches.end())
        {
            const int button = it->second;
            _buttonTouches.erase(it);
            if (button == 2)
            {
                setPaused(true);
            }
            else if (button == 1 && _match)
            {
                auto& weapon = _match->player().weapon();
                if (!weapon.isReloading() && weapon.clip() < weapon.def().clip && weapon.ammo() > 0)
                {
                    weapon.reload();
                    AudioSystem::get().play(audio::SoundId::Reload);
                }
            }
            continue;
        }
        _pad.touchEnded(t->getID());
    }
}

void GameScene::update(float dt)
{
    if (_paused || _leaving)
        return;

    const int steps = _stepper.advance(dt);
    for (int i = 0; i < steps; ++i)
    {
        _pad.updateStep();
        _match->step(_stepper.step(), _pad.state());
        // Camera smoothing runs per step like Stage::updateView did per frame at 60 fps.
        const float zoom = 1.0f;  // AK47 zoom level 1 (Weapon::getZoomScale)
        _viewScale       = _viewScale * rules::kViewScaleSmoothing + (1.0f - rules::kViewScaleSmoothing) * zoom;
        // getViewOffset: one point per step towards the weapon's offset * (2 - zoom).
        const int target = static_cast<int>(_match->player().weapon().def().viewOffset * (2.0f - zoom));
        if (_viewOffset - target < -1)
            ++_viewOffset;
        else if (_viewOffset - target > 1)
            --_viewOffset;
        const float radius     = static_cast<float>(std::max(_viewOffset, rules::kMinViewLead));
        const game::Vec2 aimAt = game::fromCocosAngle(_match->player().fireAngle()) * radius;
        _lead += (aimAt - _lead) * rules::kViewLeadSmoothing;
    }
    handleEvents();

    auto& player = _match->player();
    if (player.isDead())
    {
        if (_respawnTimer < 0.0f)
            _respawnTimer = kRespawnDelay;
        _respawnTimer -= dt;
        if (_respawnTimer <= 0.0f)
        {
            _respawnTimer = -1.0f;
            _match->respawn(_nextSpawn++);
            _pad.cancel();
        }
    }

    _soldier->sync(_match->player(), dt);

    const auto& tracers = _match->tracers().tracers();
    for (std::size_t i = 0; i < tracers.size(); ++i)
    {
        const auto& t = tracers[i];
        auto* s       = _tracers[i];
        s->setVisible(t.active && !t.fresh);
        if (!s->isVisible())
            continue;
        s->setPosition(toAx(t.pos));
        s->setRotation(t.angle);
        s->setScaleX(t.trail);
        s->setOpacity(static_cast<uint8_t>(t.opacity));
    }

    _moveStick->setPosition(toAx(_pad.moveKnob()));
    _fireStick->setPosition(toAx(_pad.aimKnob()));
    _firePad->setColor(_pad.fire() ? Color3B(255, 150, 150) : Color3B::WHITE);
    updateCamera(dt);
    updateHud();
}

void GameScene::handleEvents()
{
    for (const auto& e : _match->takeEvents())
    {
        switch (e.type)
        {
        case game::EventType::Sound:
            AudioSystem::get().play(e.sound, e.volume);
            break;
        case game::EventType::Shot:
            _soldier->showShot();
            break;
        case game::EventType::Spark:
            spawnSpark(e.pos, e.dir);
            break;
        case game::EventType::Explosion:
        case game::EventType::Death:
            spawnExplosion(e.pos);
            break;
        }
    }
}

void GameScene::spawnSpark(const game::Vec2& pos, const game::Vec2& normal)
{
    auto* s = _sparks[_nextSpark++ % _sparks.size()];
    s->stopAllActions();
    s->setPosition(toAx(pos));
    s->setRotation(game::toCocosAngle(normal) + random(-35.0f, 35.0f));
    s->setScale(0.5f);
    s->setOpacity(255);
    s->setVisible(true);
    s->runAction(Sequence::create(Spawn::create(ScaleTo::create(0.12f, 0.9f), FadeOut::create(0.12f), nullptr),
                                  Hide::create(), nullptr));
}

void GameScene::spawnExplosion(const game::Vec2& pos)
{
    auto* e = ExplosionEffect::create();
    e->setPosition(toAx(pos));
    _map->addChild(e, MapView::kZFrontDecor);
}

void GameScene::updateCamera(float)
{
    // scaleLayer scale = view scale * aspect correction (w/h / 16:9) * view factor (1).
    const auto frame  = _director->getRenderView()->getFrameSize();
    const float scale = std::max(_viewScale, 0.05f) * (frame.width / frame.height) / rules::kReferenceAspect;
    _scaleLayer->setScale(scale);
    const game::Vec2 focus = _match->player().position() + _lead;
    _map->setPosition(-focus.x, -focus.y);
}

void GameScene::updateHud()
{
    const auto& p = _match->player();
    // Bar slots inside healthBar.png (health on the heart row, jetpack fuel on the rocket row).
    _bars->clear();
    const float x0 = 23, x1 = 96;
    const float hp   = std::clamp(p.health() / rules::kMaxHealth, 0.0f, 1.0f);
    const float fuel = std::clamp(p.power() / rules::kMaxPower, 0.0f, 1.0f);
    const Color4F hpColor = hp > 0.3f ? Color4F(0.35f, 0.85f, 0.25f, 1) : Color4F(0.95f, 0.25f, 0.2f, 1);
    _bars->drawSolidRect({x0, 26}, {x0 + (x1 - x0) * hp, 32}, hpColor);
    _bars->drawSolidRect({x0, 11}, {x0 + (x1 - x0) * fuel, 17}, Color4F(0.25f, 0.6f, 1.0f, 1));

    const auto& w = p.weapon();
    _ammo->setString(w.isReloading() ? "RELOAD" : fmt::format("{} / {}", w.clip(), w.ammo()));
    if (_reloadRing)
        _reloadRing->setPercentage(w.reloadProgress() * 100.0f);
}

void GameScene::setPaused(bool paused)
{
    if (_leaving || paused == _paused)
        return;
    _paused = paused;
    _pad.cancel();
    _buttonTouches.clear();
    if (!paused)
    {
        if (_pauseMenu)
            _pauseMenu->removeFromParent();
        _pauseMenu = nullptr;
        AudioSystem::get().resumeAll();
        return;
    }
    AudioSystem::get().pauseAll();
    const auto visible = _director->getVisibleSize();
    const auto origin  = _director->getVisibleOrigin();
    _pauseMenu         = LayerColor::create(Color4B(0, 0, 0, 150));
    auto* menu         = Menu::create(ui::panelButton("b03_top.png", "RESUME", [this](Object*) { setPaused(false); }),
                                      ui::panelButton("b03_bot.png", "QUIT", [this](Object*) { quit(); }), nullptr);
    menu->alignItemsVerticallyWithPadding(0);
    menu->setPosition(origin + visible / 2);
    _pauseMenu->addChild(menu);
    addChild(_pauseMenu, kZPause);
}

void GameScene::quit()
{
    if (_leaving)
        return;
    _leaving = true;
    AudioSystem::get().resumeAll();
    _director->replaceScene(TransitionFade::create(0.4f, utils::createInstance<HomeScene>()));
}

}  // namespace mm::app

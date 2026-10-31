#include "app/GameScene.h"

#include <algorithm>
#include <cmath>
#include <utility>

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
    _ammoFrame = ammoFrame;  // tapping it switches weapons (wepSwitchArea)
    _hudWeapon = Sprite::createWithSpriteFrameName("ak47.png");
    _hudWeapon->setScale(0.42f);
    _hudWeapon->setPosition(42, ammoFrame->getContentSize().height / 2 + 2);
    ammoFrame->addChild(_hudWeapon);

    // Melee at PUNCH_POS (width - 185, 35), zoom at ZOOM_POS (34, height - 34), scale 0.8.
    _melee = Sprite::createWithSpriteFrameName("meleeBtn.png");
    _melee->setScale(0.8f);
    _melee->setPosition(visible.width - 185, 35);
    _hud->addChild(_melee, 1);
    _zoom = Sprite::createWithSpriteFrameName("zoomBtn.png");
    _zoom->setScale(0.8f);
    _zoom->setPosition(34, visible.height - 34);
    _hud->addChild(_zoom, 1);
    // NEW placement: the weapon within reach, tap to take it (the original showed it on a
    // pop-up button next to the soldier).
    _pickUp = Sprite::createWithSpriteFrameName("wepChangeBtn.png");
    _pickUp->setPosition(visible.width - 120, 130);
    _pickUp->setVisible(false);
    if (auto* icon = Sprite::createWithSpriteFrameName("ak47.png"))
    {
        icon->setName("icon");
        icon->setScale(0.45f);
        icon->setPosition(_pickUp->getContentSize() / 2);
        _pickUp->addChild(icon);
    }
    _hud->addChild(_pickUp, 1);
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
        bool button = false;
        for (const auto& [id, centre] : buttonsAt())
        {
            if (p.distance(centre) < (id == kPause ? 18.0f : 28.0f))
            {
                _buttonTouches[t->getID()] = id;
                button                     = true;
                break;
            }
        }
        if (!button)
            _pad.touchBegan(t->getID(), {p.x, p.y});
    }
}

std::vector<std::pair<int, Vec2>> GameScene::buttonsAt() const
{
    std::vector<std::pair<int, Vec2>> out{{kPause, _pauseButton},
                                          {kReload, _reload->getPosition()},
                                          {kMelee, _melee->getPosition()},
                                          {kZoom, _zoom->getPosition()},
                                          {kSwitch, _ammoFrame->getPosition() + Vec2(_ammoFrame->getContentSize().width / 2,
                                                                                    -_ammoFrame->getContentSize().height / 2)}};
    if (_pickUp->isVisible())
        out.push_back({kPickUp, _pickUp->getPosition()});
    return out;
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
            switch (button)
            {
            case kPause: setPaused(true); break;
            case kReload: _pressed.reload = true; break;
            case kMelee: _pressed.melee = true; break;
            case kZoom: _pressed.zoom = true; break;
            case kSwitch: _pressed.switchWeapon = true; break;
            case kPickUp: _pressed.pickUp = true; break;
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
        game::PadState in = _pad.state();
        in.melee        = std::exchange(_pressed.melee, false);
        in.zoom         = std::exchange(_pressed.zoom, false);
        in.reload       = std::exchange(_pressed.reload, false);
        in.switchWeapon = std::exchange(_pressed.switchWeapon, false);
        in.pickUp       = std::exchange(_pressed.pickUp, false);
        _match->step(_stepper.step(), in);
        // Camera smoothing runs per step like Stage::updateView did per frame at 60 fps.
        const float zoom = _match->player().weapon().zoom();  // Weapon::getZoomScale
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

    if (!_match->playerAlive())
        _pad.cancel();
    syncFighters(dt);
    syncRagdolls();

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
            if (const float v = e.volume * soundVolumeAt(e.pos); v > 0.02f)
                AudioSystem::get().play(e.sound, v);
            break;
        case game::EventType::Shot:
            if (e.fighter <= 0)
                _soldier->showShot();
            else if (auto it = _bots.find(e.fighter); it != _bots.end())
                it->second->showShot();
            break;
        case game::EventType::Spark:
            spawnSpark(e.pos, e.dir);
            break;
        case game::EventType::Explosion:
            spawnExplosion(e.pos);
            break;
        case game::EventType::Death:
            spawnBlood(e.pos, 3);
            break;
        case game::EventType::Blood:
            spawnBlood(e.pos, 1);
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

float GameScene::soundVolumeAt(const game::Vec2& pos) const
{
    // NEW approximation of Sound::playSoundPosition: fades out with distance from the player.
    const float d = (pos - _match->player().position()).length();
    return std::clamp(1.0f - (d - 150.0f) / 650.0f, 0.0f, 1.0f);
}

void GameScene::spawnBlood(const game::Vec2& pos, int amount)
{
    // Blood.plist, the original's blood burst (blood on by default; the switch arrives in M6).
    for (int i = 0; i < amount; ++i)
    {
        auto* blood = ParticleSystemQuad::create("Blood.plist");
        if (!blood)
            return;
        blood->setPosition(toAx(pos));
        blood->setAutoRemoveOnFinish(true);
        _map->addChild(blood, MapView::kZEntities + 1);
    }
}

void GameScene::syncFighters(float dt)
{
    for (const auto& f : _match->fighters())
    {
        if (f.human)
        {
            _soldier->sync(*f.soldier, dt);
            continue;
        }
        auto it = _bots.find(f.id);
        if (it == _bots.end())
        {
            auto* view = SoldierView::create(1 + (f.id * 5) % 16);  // a different skin per bot
            _map->addChild(view, MapView::kZEntities);
            it = _bots.emplace(f.id, view).first;
        }
        if (f.soldier)
            it->second->sync(*f.soldier, dt);
        else
            it->second->setVisible(false);
    }
}

void GameScene::syncRagdolls()
{
    static constexpr const char* kParts[game::Ragdoll::kParts] = {"head1.png", "body1.png", "arm1.png",
                                                                  "arm1.png",  "leg1.png",  "leg1.png"};
    std::unordered_map<const game::Ragdoll*, Node*> alive;
    for (const auto& r : _match->ragdolls())
    {
        Node* node = nullptr;
        if (auto it = _ragdollViews.find(r.get()); it != _ragdollViews.end())
        {
            node = it->second;
            _ragdollViews.erase(it);
        }
        else
        {
            node = Node::create();
            for (const char* frame : kParts)
            {
                auto* part = Sprite::createWithSpriteFrameName(frame);
                if (!part)
                    part = Sprite::create();
                part->setScale(rules::kPlayerScale);
                node->addChild(part);
            }
            _map->addChild(node, MapView::kZEntities);
        }
        const auto& parts = node->getChildren();
        for (int i = 0; i < game::Ragdoll::kParts && i < static_cast<int>(parts.size()); ++i)
        {
            parts.at(i)->setPosition(toAx(r->partPosition(i)));
            parts.at(i)->setRotation(-r->partAngle(i) * game::kRadToDeg);
        }
        // Fade over the last second of the five.
        const float fade = std::clamp(game::Ragdoll::kLifetime - r->age(), 0.0f, 1.0f);
        for (auto* part : parts)
            part->setOpacity(static_cast<uint8_t>(255 * fade));
        alive.emplace(r.get(), node);
    }
    for (auto& [ragdoll, node] : _ragdollViews)
        node->removeFromParent();
    _ragdollViews.swap(alive);
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
    const auto& w0 = _match->player().weapon();
    if (auto* frame = SpriteFrameCache::getInstance()->findFrame(w0.def().sprite); frame && _hudWeapon->getSpriteFrame() != frame)
        _hudWeapon->setSpriteFrame(frame);
    const int near = _match->playerFighter().nearItem;
    const auto* item = near >= 0 ? _match->item(near) : nullptr;
    _pickUp->setVisible(item && !item->taken() && _match->playerAlive());
    if (_pickUp->isVisible())
        if (auto* icon = static_cast<Sprite*>(_pickUp->getChildByName("icon")))
            if (auto* frame = SpriteFrameCache::getInstance()->findFrame(item->weapon().def().sprite))
                icon->setSpriteFrame(frame);
    // Map weapons.
    std::unordered_map<int, Sprite*> seen;
    for (const auto& i : _match->items())
    {
        if (i->taken())
            continue;
        Sprite* s = nullptr;
        if (auto it = _itemViews.find(i->uid()); it != _itemViews.end())
        {
            s = it->second;
            _itemViews.erase(it);
        }
        else
        {
            s = Sprite::createWithSpriteFrameName(i->weapon().def().sprite);
            if (!s)
                s = Sprite::create();
            s->setScale(rules::kPlayerScale);
            _map->addChild(s, MapView::kZEntities - 1);
        }
        s->setPosition(toAx(i->position()));
        s->setRotation(-i->angle() * game::kRadToDeg);
        seen.emplace(i->uid(), s);
    }
    for (auto& [uid, sprite] : _itemViews)
        sprite->removeFromParent();
    _itemViews.swap(seen);

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

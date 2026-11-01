#include "app/GameScene.h"

#include <algorithm>
#include <cmath>
#include <utility>

#include "app/AssetManager.h"
#include "app/AudioSystem.h"
#include "app/HomeScene.h"
#include "app/LobbyScene.h"
#include "app/NetContext.h"
#include "app/SaveStore.h"
#include "app/MapView.h"
#include "app/Platform.h"
#include "app/SoldierView.h"
#include "app/Ui.h"
#include "app/HudLayout.h"
#include "game/Rules.h"

using namespace ax;

namespace mm::app
{

// Effect detail from the quality setting: 0 Smooth, 1 Medium (and Auto), 2 High / Extreme.
static int effectsLevel()
{
    const auto& c = SaveStore::get().data().settings;
    if (c.qualityAuto)
        return 1;
    return c.quality == save::Quality::Smooth ? 0 : c.quality == save::Quality::Medium ? 1 : 2;
}


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
        if (effectsLevel() >= 1)
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

GameScene* GameScene::createNetworked(const assets::MapDef& def)
{
    auto* driver = NetContext::get().driver();
    if (!driver)
        return nullptr;
    auto* scene       = new GameScene();
    scene->_networked = true;
    if (scene->init(def, nullptr, driver))
    {
        scene->autorelease();
        return scene;
    }
    delete scene;
    return nullptr;
}

GameScene* GameScene::create(const assets::MapDef& def, game::ModeSettings settings)
{
    auto* scene = new GameScene();
    auto mode   = std::make_unique<game::ModeController>(def, AssetManager::get().mapData(def), settings);
    auto* raw   = mode.get();
    if (scene->init(def, std::move(mode), raw))
    {
        scene->autorelease();
        return scene;
    }
    delete scene;
    return nullptr;
}

bool GameScene::init(const assets::MapDef& def, std::unique_ptr<game::GameDriver> owned, game::GameDriver* driver)
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

    _ownedDriver = std::move(owned);
    _driver      = driver;
    _match       = &_driver->match();
    if (!_networked)
        _match->setUpgrades(0, SaveStore::get().data().upgrades);

    _soldier = SoldierView::create(SaveStore::get().data().avatar);
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
    if (!_controllerAttached)
    {
        _controllerAttached = true;
        _controller.attach(this, [this] {
            if (!_networked && !_ended)
                setPaused(!_paused);
        });
    }
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
    _melee->setPosition(hud::pos(hud::kMelee, visible, SaveStore::get().data().settings));
    _hud->addChild(_melee, 1);
    // Grenade at GRENADE_POS, above the melee button.
    _grenadeBtn = Sprite::createWithSpriteFrameName("grenadeBtn.png");
    _grenadeBtn->setScale(0.8f);
    _grenadeBtn->setPosition(hud::pos(hud::kGrenade, visible, SaveStore::get().data().settings));
    _hud->addChild(_grenadeBtn, 1);
    _grenadeCount = Label::createWithTTF("2", "fonts/arial.ttf", 11);
    _grenadeCount->setPosition(_grenadeBtn->getContentSize().width - 8, 8);
    _grenadeCount->enableOutline(Color4B::BLACK, 1);
    _grenadeBtn->addChild(_grenadeCount);
    if (_networked && SaveStore::get().data().settings.quickMessages)
    {
        _chatBtn = Sprite::createWithSpriteFrameName("msg.png");
        _chatBtn->setPosition(34, visible.height - 80);
        _hud->addChild(_chatBtn, 1);
    }
    _zoom = Sprite::createWithSpriteFrameName("zoomBtn.png");
    _zoom->setScale(0.8f);
    _zoom->setPosition(hud::pos(hud::kZoom, visible, SaveStore::get().data().settings));
    _hud->addChild(_zoom, 1);
    // NEW placement: the weapon within reach, tap to take it (the original showed it on a
    // pop-up button next to the soldier).
    _pickUp = Sprite::createWithSpriteFrameName("wepChangeBtn.png");
    _pickUp->setPosition(hud::pos(hud::kPickUp, visible, SaveStore::get().data().settings));
    _pickUp->setVisible(false);
    if (auto* icon = Sprite::createWithSpriteFrameName("ak47.png"))
    {
        icon->setName("icon");
        icon->setScale(0.45f);
        icon->setPosition(_pickUp->getContentSize() / 2);
        _pickUp->addChild(icon);
    }
    _hud->addChild(_pickUp, 1);

    auto text = [&](float size, Vec2 pos, TextHAlignment align) {
        auto* l = Label::createWithTTF("", "fonts/arial.ttf", size);
        l->setPosition(pos);
        l->setHorizontalAlignment(align);
        l->enableOutline(Color4B::BLACK, 1);
        _hud->addChild(l, 2);
        return l;
    };
    _status = text(12, {visible.width / 2, visible.height - 62}, TextHAlignment::CENTER);
    _score  = text(10, {visible.width / 2, visible.height - 76}, TextHAlignment::CENTER);
    _banner = text(26, {visible.width / 2, visible.height * 0.68f}, TextHAlignment::CENTER);
    _sarge  = text(12, {visible.width / 2, 22}, TextHAlignment::CENTER);
    _sarge->setMaxLineWidth(visible.width - 120);
    _chatLine = text(11, {visible.width / 2, visible.height * 0.5f}, TextHAlignment::CENTER);
    _ammo = Label::createWithTTF("", "fonts/arial.ttf", 12);
    _ammo->setPosition(ammoFrame->getContentSize().width - 24, ammoFrame->getContentSize().height / 2 + 2);
    _ammo->enableOutline(Color4B::BLACK, 1);
    ammoFrame->addChild(_ammo);

    _reload = Sprite::createWithSpriteFrameName("ammoBtn.png");
    _reload->setScale(0.8f);  // defaultReloadScl on phones
    _reload->setPosition(hud::pos(hud::kReload, visible, SaveStore::get().data().settings));
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
    const auto& cfg    = SaveStore::get().data().settings;
    _pad.setSwapped(cfg.leftHanded);
    // Sensitivity: a bigger stick travel needs more finger movement for the same push.
    _pad.setLayout({rules::kPadInset, rules::kPadInset}, {visible.width - rules::kPadInset, rules::kPadInset},
                   rules::kPadRadius * 100.0f / static_cast<float>(cfg.sensitivity));
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
                                          {kGrenade, _grenadeBtn->getPosition()},
                                          {kZoom, _zoom->getPosition()},
                                          {kSwitch, _ammoFrame->getPosition() + Vec2(_ammoFrame->getContentSize().width / 2,
                                                                                    -_ammoFrame->getContentSize().height / 2)}};
    if (_pickUp->isVisible())
        out.push_back({kPickUp, _pickUp->getPosition()});
    if (_chatBtn)
        out.push_back({kChat, _chatBtn->getPosition()});
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
            case kGrenade: _pressed.grenade = true; break;
            case kChat:
                addChild(ui::quickChatGrid([](int m) { NetContext::get().sendChat(m); }), kZPause);
                break;
            }
            continue;
        }
        _pad.touchEnded(t->getID());
    }
}

void GameScene::update(float dt)
{
    if (_leaving)
        return;
    if (_networked)
    {
        // The match goes on for the others whatever this phone shows.
        NetContext::get().update(dt);
        if (auto* c = NetContext::get().client();
            c && (c->clientState() == net::ClientState::Disconnected || c->clientState() == net::ClientState::Idle))
        {
            quit();
            return;
        }
        if (auto* c = NetContext::get().client(); c && c->clientState() == net::ClientState::InLobby)
        {
            _leaving = true;
            _director->replaceScene(TransitionFade::create(0.3f, utils::createInstance<LobbyScene>()));
            return;
        }
        if (auto* h = NetContext::get().host(); h && h->state() == net::HostState::Lobby)
        {
            _leaving = true;
            _director->replaceScene(TransitionFade::create(0.3f, utils::createInstance<LobbyScene>()));
            return;
        }
        if (NetContext::get().driver() != _driver)
        {
            quit();
            return;
        }
    }
    else if (_paused)
        return;

    _playTime += dt;
    const int steps = _stepper.advance(dt);
    for (int i = 0; i < steps; ++i)
    {
        _pad.updateStep();
        game::PadState in = _pad.state();
        if (SaveStore::get().data().settings.autoFire && _pad.aimTouched())
            in.firing = true;
        in.melee        = std::exchange(_pressed.melee, false);
        in.zoom         = std::exchange(_pressed.zoom, false);
        in.reload       = std::exchange(_pressed.reload, false);
        in.switchWeapon = std::exchange(_pressed.switchWeapon, false);
        in.pickUp       = std::exchange(_pressed.pickUp, false);
        in.grenade      = std::exchange(_pressed.grenade, false);
        _controller.apply(in);
        _driver->step(_stepper.step(), in);
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
        if (SaveStore::get().data().settings.centredCamera)
            _lead = {};
        else
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
    updateCrosshair();
    updateHud();
    updateModeHud();
}

// NEW (M7 extra, off by default): a sight in the aim direction, styles from the settings.
void GameScene::updateCrosshair()
{
    const int style = SaveStore::get().data().settings.crosshair;
    if (!_cross)
    {
        _cross = DrawNode::create();
        _map->addChild(_cross, MapView::kZEntities + 2);
    }
    _cross->clear();
    if (!_match || !_match->playerAlive())
        return;
    const auto& s   = _match->player();
    const float a   = s.fireAngle() * 3.14159265f / 180.0f;
    const auto p    = s.position();
    // Laser Sight upgrade: a thin red beam from the muzzle to the first wall (drawing is NEW).
    const bool laser = (s.isMirror() ? SaveStore::get().boosts().laserSight : s.boosts().laserSight) &&
                       economy::hasLaserSightSupport(s.weapon().id()) && !s.weapon().isReloading();
    if (laser)
    {
        const game::Vec2 from = s.muzzlePosition();
        const game::Vec2 to   = from + game::Vec2{std::cos(a), -std::sin(a)} * 700.0f;
        const auto hit        = _match->physics().segmentQuery(from, to, rules::kTracerMapLayers);
        const game::Vec2 end  = hit ? hit.point : to;
        _cross->drawLine(toAx(from), toAx(end), Color4F(1.0f, 0.1f, 0.1f, 0.55f));
        if (hit)
            _cross->drawSolidCircle(toAx(end), 2.0f, 0, 8, Color4F(1.0f, 0.2f, 0.2f, 0.9f));
    }
    if (style == 0)
        return;
    const Vec2 c(p.x + std::cos(a) * 90.0f, p.y - std::sin(a) * 90.0f);
    const Color4F col(1.0f, 0.95f, 0.4f, 0.85f);
    if (style == 1)
        _cross->drawSolidCircle(c, 2.5f, 0, 12, col);
    else if (style == 2)
    {
        _cross->drawLine(c + Vec2(-7, 0), c + Vec2(7, 0), col);
        _cross->drawLine(c + Vec2(0, -7), c + Vec2(0, 7), col);
    }
    else
        _cross->drawCircle(c, 6.0f, 0, 16, false, col);
}

void GameScene::updateModeHud()
{
    using game::ModeState;
    if (_networked)
        for (const auto& [from, message] : NetContext::get().takeChat())
        {
            if (!SaveStore::get().data().settings.quickMessages)
                continue;
            const auto* f = _match->fighter(from);
            _chatLine->setString((f ? f->name : std::string("Host")) + ": " + net::kQuickMessages[message]);
            _chatLine->stopAllActions();
            _chatLine->setOpacity(255);
            _chatLine->runAction(Sequence::create(DelayTime::create(3.0f), FadeOut::create(0.5f), nullptr));
        }
    _status->setString(_driver->status());
    const auto& f = _match->playerFighter();
    const auto board = _driver->scoreboard();
    _score->setString(_networked ? board : fmt::format("KILLS {}   DEATHS {}", f.kills, f.deaths));
    _banner->setString(_driver->banner());
    _sarge->setString(_driver->hint());
    if (!_match->playerAlive() && _driver->state() == ModeState::Running)
        _banner->setString("RESPAWNING...");
    if (_driver->state() != ModeState::Running && !_ended)
        showEnd();
}

void GameScene::record()
{
    if (_recorded)
        return;
    _recorded = true;
    using economy::MatchKind;
    MatchKind kind = MatchKind::Solo;
    if (_networked)
    {
        auto mode = net::GameMode::Deathmatch;
        if (auto* h = NetContext::get().host())
            mode = h->options().mode;
        else if (auto* c = NetContext::get().client())
            mode = c->options().mode;
        kind = mode == net::GameMode::CoopSurvival ? MatchKind::WifiCoop
               : mode == net::GameMode::TeamDeathmatch ? MatchKind::WifiTeamDeathmatch : MatchKind::WifiDeathmatch;
    }
    const auto summary = SaveStore::get().recordMatch(kind, *_driver, _playTime, _driver->wave(), _driver->score());
    _coinsEarned       = summary.coins;
}

void GameScene::showEnd()
{
    _ended = true;
    record();
    if (!_networked)
        setPaused(true);
    const auto visible = _director->getVisibleSize();
    const auto origin  = _director->getVisibleOrigin();
    _endPanel          = LayerColor::create(Color4B(0, 0, 0, 190));
    addChild(_endPanel, kZPause);

    auto* title = Label::createWithTTF(_driver->resultTitle(), "fonts/arial.ttf", 24);
    title->setPosition(origin + Vec2(visible.width / 2, visible.height - 34));
    title->enableOutline(Color4B::BLACK, 2);
    _endPanel->addChild(title);

    // The leaderboard: rank, name, kills, deaths (the original's post-match table).
    float y = visible.height - 62;
    int rank = 0;
    for (const auto& r : _driver->results())
    {
        if (++rank > 12)
            break;
        const std::string team = r.team ? fmt::format("[{}] ", r.team) : "";
        auto* row = Label::createWithTTF(fmt::format("{}. {}{}", rank, team, r.name), "fonts/arial.ttf", 12);
        row->setAnchorPoint({0, 0.5f});
        row->setPosition(origin.x + visible.width * 0.2f, y);
        row->setColor(r.me ? Color3B(255, 220, 80) : Color3B::WHITE);
        _endPanel->addChild(row);
        auto* stat = Label::createWithTTF(fmt::format("{:>3}   {:>3}", r.kills, r.deaths), "fonts/arial.ttf", 12);
        stat->setAnchorPoint({1, 0.5f});
        stat->setPosition(origin.x + visible.width * 0.8f, y);
        stat->setColor(r.me ? Color3B(255, 220, 80) : Color3B::WHITE);
        _endPanel->addChild(stat);
        y -= 15;
    }
    auto* head = Label::createWithTTF("KILLS   DEATHS", "fonts/arial.ttf", 9);
    head->setAnchorPoint({1, 0.5f});
    head->setPosition(origin.x + visible.width * 0.8f, visible.height - 50);
    _endPanel->addChild(head);

    if (_coinsEarned > 0)
    {
        auto* coins = Label::createWithTTF(fmt::format("+{} COINS", _coinsEarned), "fonts/arial.ttf", 14);
        coins->setColor(Color3B(255, 220, 80));
        coins->setPosition(origin + Vec2(visible.width * 0.5f, 52));
        _endPanel->addChild(coins);
    }
    auto* menu = Menu::create();
    menu->setPosition(Vec2::ZERO);
    _endPanel->addChild(menu);
    auto addButton = [&](const char* text, float x, std::function<void()> fn) {
        auto* b = ui::panelButton("b03_mid.png", text, [fn](Object*) { fn(); });
        b->setScale(0.8f);
        b->setPosition(origin.x + x, origin.y + 28);
        menu->addChild(b);
    };
    if (_networked && NetContext::get().host())
    {
        addButton("PLAY AGAIN", visible.width * 0.3f, [this] {
            if (auto* h = NetContext::get().host())
                h->returnToLobby(true);
        });
        addButton("LOBBY", visible.width * 0.55f, [this] {
            if (auto* h = NetContext::get().host())
                h->returnToLobby(false);
        });
        addButton("LEAVE", visible.width * 0.8f, [this] { quit(); });
    }
    else if (_networked)
    {
        auto* wait = Label::createWithTTF("Waiting for the host...", "fonts/arial.ttf", 11);
        wait->setPosition(origin + Vec2(visible.width * 0.35f, 28));
        _endPanel->addChild(wait);
        addButton("LEAVE", visible.width * 0.8f, [this] { quit(); });
    }
    else
        addButton("HOME", visible.width / 2, [this] { quit(); });
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
        case game::EventType::Gas:
        {
            // NEW (M13): a green cloud that swells, then fades over its lifetime.
            auto* cloud = DrawNode::create();
            for (int i = 0; i < 6; ++i)
                cloud->drawSolidCircle(Vec2(ax::random(-30.0f, 30.0f), ax::random(-20.0f, 20.0f)),
                                       rules::kGasRadius * ax::random(0.45f, 0.8f), 0, 20, Color4F(0.4f, 0.9f, 0.3f, 0.16f));
            cloud->setPosition(toAx(e.pos));
            cloud->setScale(0.3f);
            cloud->runAction(Sequence::create(Spawn::create(ScaleTo::create(0.6f, 1.0f), nullptr),
                                              DelayTime::create(rules::kGasLife - 2.6f), FadeOut::create(2.0f),
                                              RemoveSelf::create(), nullptr));
            _map->addChild(cloud, MapView::kZFrontDecor);
            break;
        }
        case game::EventType::Death:
            spawnBlood(e.pos, 3);
            break;
        case game::EventType::Blood:
            spawnBlood(e.pos, 1);
            if (e.fighter == _match->playerFighter().id && SaveStore::get().data().settings.vibration)
                platform::vibrate(25);
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
    const auto& cfg = SaveStore::get().data().settings;
    if (!cfg.blood)
        return;
    const auto& c = save::kBloodColours[cfg.bloodColour];
    // Quality presets (M14): Smooth skips the small bursts; every level caps the live bursts.
    if (effectsLevel() == 0 && amount < 2)
        return;
    if (_bloodLive > (effectsLevel() == 0 ? 8 : effectsLevel() == 1 ? 20 : 40))
        return;
    for (int i = 0; i < amount; ++i)
    {
        auto* blood = ParticleSystemQuad::create("Blood.plist");
        if (!blood)
            return;
        if (cfg.bloodColour != 0)
        {
            blood->setStartColor(Color4F(c[0] / 255.0f, c[1] / 255.0f, c[2] / 255.0f, 1.0f));
            blood->setEndColor(Color4F(c[0] / 255.0f, c[1] / 255.0f, c[2] / 255.0f, 0.0f));
        }
        blood->setPosition(toAx(pos));
        blood->setAutoRemoveOnFinish(true);
        ++_bloodLive;
        blood->runAction(Sequence::create(DelayTime::create(blood->getLife() + blood->getLifeVar() + 0.2f),
                                          CallFunc::create([this] { --_bloodLive; }), nullptr));
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
    _grenadeCount->setString(std::to_string(_match->player().grenades()));
    // Grenades and rockets in flight.
    auto sync = [this](std::vector<Sprite*>& views, const char* frame, std::size_t n, auto&& place) {
        while (views.size() < n)
        {
            auto* s = Sprite::createWithSpriteFrameName(frame);
            if (!s)
                s = Sprite::create();
            s->setScale(rules::kPlayerScale * 1.2f);
            _map->addChild(s, MapView::kZEntities + 1);
            views.push_back(s);
        }
        for (std::size_t i = 0; i < views.size(); ++i)
        {
            views[i]->setVisible(i < n);
            if (i < n)
                place(views[i], i);
        }
    };
    const auto& grenades = _match->grenades();
    sync(_grenadeViews, "grenade.png", grenades.size(), [&](Sprite* s, std::size_t i) {
        s->setPosition(toAx(game::toVec(cpBodyGetPosition(grenades[i]->body))));
        s->setRotation(-static_cast<float>(cpBodyGetAngle(grenades[i]->body)) * game::kRadToDeg);
    });
    const auto& rockets = _match->rockets();
    sync(_rocketViews, "rocket.png", rockets.size(), [&](Sprite* s, std::size_t i) {
        s->setPosition(toAx(rockets[i].pos));
        s->setRotation(game::toCocosAngle(rockets[i].velocity));
    });
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
    if (!_networked)
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
    if (_playTime > 5.0f)
        record();  // leaving early still counts the kills and the time
    AudioSystem::get().resumeAll();
    if (_networked)
        NetContext::get().close();
    _director->replaceScene(TransitionFade::create(0.4f, utils::createInstance<HomeScene>()));
}

}  // namespace mm::app

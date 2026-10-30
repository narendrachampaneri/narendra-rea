#include "app/AssetViewerScene.h"

#include <algorithm>
#include <array>
#include <cctype>

#include "app/AssetManager.h"
#include "app/AudioSystem.h"
#include "app/HomeScene.h"
#include "app/MapView.h"
#include "app/Platform.h"
#include "app/Ui.h"
#include "assets/MapCatalog.h"
#include "assets/Resolution.h"

using namespace ax;
using mm::assets::kMaps;

namespace mm::app
{

namespace
{
// files/*.plist, loaded by bare name like the original (EffectsManager)
constexpr std::array<const char*, 10> kEffects = {"Blood",  "Grass", "HeavySmoke", "Ora",   "Path",
                                                  "Rock",   "Shell", "Shrapnel",   "Smoke", "Stars"};

constexpr float kMaxZoom = 2.5f;

MenuItemLabel* button(std::string_view text, const ccMenuCallback& onTap)
{
    auto* item = MenuItemLabel::create(ui::atlasLabel(text), onTap);
    item->setColor(Color3B(255, 236, 160));
    return item;
}
}  // namespace

bool AssetViewerScene::init()
{
    if (!Scene::init())
        return false;

    const auto visible = _director->getVisibleSize();
    const auto origin  = _director->getVisibleOrigin();
    const auto safe    = _director->getSafeAreaRect();

    _camera = Node::create();
    addChild(_camera, 0);

    // HUD: kept inside the safe area so camera cutouts never hide it.
    _title = ui::atlasLabel("");
    _title->setScale(0.45f);
    _title->setAnchorPoint(Vec2::ANCHOR_TOP_LEFT);
    _title->setPosition(safe.getMinX() + 8, safe.getMaxY() - 6);
    addChild(_title, 10);

    _info = Label::createWithTTF("", "fonts/arial.ttf", 10);
    _info->setAnchorPoint(Vec2::ANCHOR_TOP_LEFT);
    _info->setPosition(safe.getMinX() + 8, safe.getMaxY() - 24);
    _info->enableOutline(Color4B::BLACK, 1);
    addChild(_info, 10);

    _selection = Label::createWithTTF("", "fonts/digitalix.ttf", 11);
    _selection->setAnchorPoint(Vec2::ANCHOR_TOP_LEFT);
    _selection->setPosition(safe.getMinX() + 8, safe.getMaxY() - 38);
    _selection->setTextColor(Color4B(140, 255, 140, 255));
    _selection->enableOutline(Color4B::BLACK, 1);
    addChild(_selection, 10);

    auto* brand = Label::createWithTTF("Mini Militia by Kadiyafali", "fonts/GROBOLD.ttf", 12);
    brand->setAnchorPoint(Vec2::ANCHOR_TOP_RIGHT);
    brand->setPosition(safe.getMaxX() - 8, safe.getMaxY() - 6);
    brand->enableOutline(Color4B::BLACK, 1);
    addChild(brand, 10);

    // Bottom bar: the buttons are scaled so the whole row always fits the screen width.
    constexpr float kBarHeight = 30.0f;
    auto* bar = LayerColor::create(Color4B(0, 0, 0, 120), visible.width, safe.getMinY() - origin.y + kBarHeight);
    bar->setPosition(origin);
    addChild(bar, 9);

    Vector<MenuItem*> items;
    items.pushBack(button("BACK", [this](Object*) { goHome(); }));
    items.pushBack(button("PREV", [this](Object*) {
        showMap((_mapIndex + static_cast<int>(kMaps.size()) - 1) % static_cast<int>(kMaps.size()));
    }));
    items.pushBack(button("NEXT", [this](Object*) { showMap((_mapIndex + 1) % static_cast<int>(kMaps.size())); }));
    items.pushBack(button("FX", [this](Object*) {
        _effectIndex = (_effectIndex + 1) % static_cast<int>(kEffects.size());
        refreshInfo(0);
    }));
    items.pushBack(button("SOUND", [this](Object*) { playNextSound(); }));
    items.pushBack(button("MUSIC", [](Object*) {
        auto& audio = AudioSystem::get();
        audio.isMusicPlaying() ? audio.stopMusic() : audio.playMusic();
    }));
    items.pushBack(button("SPAWNS", [this](Object*) {
        _markers = !_markers;
        if (_map)
            _map->setMarkersVisible(_markers);
    }));
    constexpr float kPadding = 14.0f;
    float textWidth          = 0.0f;
    for (auto* item : items)
        textWidth += item->getContentSize().width;
    const float available = safe.size.width - 16.0f - kPadding * (items.size() - 1);
    const float scale     = std::min(0.42f, available / textWidth);
    for (auto* item : items)
        item->setScale(scale);
    auto* menu = Menu::createWithArray(items);
    menu->alignItemsHorizontallyWithPadding(kPadding);
    menu->setPosition(safe.getMidX(), safe.getMinY() + kBarHeight / 2);
    addChild(menu, 10);

    auto* touch           = EventListenerTouchAllAtOnce::create();
    touch->onTouchesBegan = AX_CALLBACK_2(AssetViewerScene::onTouchesBegan, this);
    touch->onTouchesMoved = AX_CALLBACK_2(AssetViewerScene::onTouchesMoved, this);
    touch->onTouchesEnded = AX_CALLBACK_2(AssetViewerScene::onTouchesEnded, this);
    touch->onTouchesCancelled = AX_CALLBACK_2(AssetViewerScene::onTouchesEnded, this);
    _eventDispatcher->addEventListenerWithSceneGraphPriority(touch, this);

    auto* mouse          = EventListenerMouse::create();
    mouse->onMouseScroll = [this](EventMouse* e) {
        setZoom(_zoom * (e->getScrollY() > 0 ? 0.9f : 1.1f), e->getLocation());
        return true;
    };
    _eventDispatcher->addEventListenerWithSceneGraphPriority(mouse, this);

    // Android back gesture (forwarded by AppActivity) and Esc on desktop return to the home screen.
    auto* keys          = EventListenerKeyboard::create();
    keys->onKeyReleased = [this](EventKeyboard::KeyCode code, Event*) {
        if (code == EventKeyboard::KeyCode::KEY_BACK || code == EventKeyboard::KeyCode::KEY_ESCAPE)
            goHome();
    };
    _eventDispatcher->addEventListenerWithSceneGraphPriority(keys, this);

    showMap(0);
    schedule(AX_CALLBACK_1(AssetViewerScene::refreshInfo, this), 0.5f, "info");
    return true;
}

void AssetViewerScene::onEnter()
{
    Scene::onEnter();
    platform::setGameHandlesBack(true);
}

void AssetViewerScene::goHome()
{
    if (_leaving)
        return;
    _leaving = true;
    AudioSystem::get().play(audio::SoundId::Grenade2);
    _director->replaceScene(TransitionFade::create(0.4f, utils::createInstance<HomeScene>()));
}

void AssetViewerScene::showMap(int index)
{
    _mapIndex       = index;
    const auto& def = kMaps[index];

    if (_map)
        _map->removeFromParent();
    if (_background)
        _background->removeFromParent();
    // The old tileset and background are free once their nodes are gone.
    scheduleOnce([](float) { AssetManager::get().releaseUnusedTextures(); }, 0.0f, "release");

    // Full-screen background stretched like Stage::setupStage (width/480, height/320).
    const auto visible = _director->getVisibleSize();
    const auto origin  = _director->getVisibleOrigin();
    _background        = Sprite::create(def.background);
    _background->setScale(visible.width / assets::kDesignWidth, visible.height / assets::kDesignHeight);
    _background->setPosition(origin + visible / 2);
    addChild(_background, -10);

    _map = MapView::create(def);
    if (!_map)
    {
        _title->setString("MAP FAILED TO LOAD");
        return;
    }
    _map->setMarkersVisible(_markers);
    _camera->addChild(_map);

    // Open on the whole map; pinch in to see it at the in-game scale (zoom 1 or more).
    _zoom = minZoom();
    _camera->setScale(_zoom);
    _camera->setPosition(origin + visible / 2 - Vec2(_map->getContentSize() / 2) * _zoom);
    clampCamera();

    // The original only ever wrote upper case with this bitmap font.
    auto title = fmt::format("{}  {} OF {}", def.name, index + 1, kMaps.size());
    std::transform(title.begin(), title.end(), title.begin(), [](unsigned char c) { return std::toupper(c); });
    _title->setString(title);
    refreshInfo(0);
}

void AssetViewerScene::spawnEffect(const Vec2& screenPos)
{
    auto* fx = ParticleSystemQuad::create(fmt::format("{}.plist", kEffects[_effectIndex]));
    if (!fx)
        return;
    if (fx->getDuration() < 0)  // continuous emitters (Ora, Smoke): show them briefly
        fx->setDuration(1.5f);
    fx->setAutoRemoveOnFinish(true);
    fx->setPosition(_map->convertToNodeSpace(screenPos));
    _map->addChild(fx, MapView::kZEntities);
}

void AssetViewerScene::playNextSound()
{
    // Cycle through the ids that have a sound.
    const int n = static_cast<int>(audio::kSounds.size());
    for (int step = 0; step < n; ++step)
    {
        _soundIndex = (_soundIndex + 1) % n;
        if (!audio::kSounds[_soundIndex].file.empty())
            break;
    }
    AudioSystem::get().play(audio::kSounds[_soundIndex].id);
    refreshInfo(0);
}

void AssetViewerScene::refreshInfo(float)
{
    const auto res = AssetManager::get().resolution();
    _info->setString(fmt::format("art {} (x{:.0f})   textures {:.1f} MB   {:.0f} fps   zoom {:.2f}",
                                 assets::folder(res), assets::contentScale(res),
                                 AssetManager::get().textureMemoryMB(), _director->getFrameRate(), _zoom));
    _selection->setString(fmt::format("fx {}   sound {} {}", kEffects[_effectIndex],
                                      static_cast<int>(audio::kSounds[_soundIndex].id), audio::kSounds[_soundIndex].name));
}

float AssetViewerScene::minZoom() const
{
    const auto visible = _director->getVisibleSize();
    const auto size    = _map->getContentSize();
    return std::min(visible.width / size.width, visible.height / size.height);
}

void AssetViewerScene::setZoom(float zoom, const Vec2& focusScreen)
{
    if (!_map)
        return;
    const Vec2 focusWorld = _map->convertToNodeSpace(focusScreen);
    _zoom                 = std::clamp(zoom, minZoom(), kMaxZoom);
    _camera->setScale(_zoom);
    _camera->setPosition(focusScreen - focusWorld * _zoom);
    clampCamera();
}

void AssetViewerScene::clampCamera()
{
    if (!_map)
        return;
    const auto visible = _director->getVisibleSize();
    const auto origin  = _director->getVisibleOrigin();
    const auto size    = _map->getContentSize() * _zoom;
    auto pos           = _camera->getPosition();
    auto fit           = [](float p, float view, float content, float o) {
        return content <= view ? o + (view - content) / 2 : std::clamp(p, o + view - content, o);
    };
    pos.x = fit(pos.x, visible.width, size.width, origin.x);
    pos.y = fit(pos.y, visible.height, size.height, origin.y);
    _camera->setPosition(pos);
}

void AssetViewerScene::onTouchesBegan(const std::vector<Touch*>& touches, Event*)
{
    for (auto* t : touches)
        _touchStart[t->getID()] = t->getLocation();
    if (_touchStart.size() == 1)
        _travel = 0.0f;
    if (_touchStart.size() == 2)
    {
        auto it    = _touchStart.begin();
        auto a     = it->second;
        auto b     = (++it)->second;
        _pinchDist = a.distance(b);
        _pinchZoom = _zoom;
    }
}

void AssetViewerScene::onTouchesMoved(const std::vector<Touch*>& touches, Event*)
{
    if (!_map)
        return;
    if (_touchStart.size() >= 2)
    {
        if (touches.size() >= 2 && _pinchDist > 0)
        {
            const auto a = touches[0]->getLocation();
            const auto b = touches[1]->getLocation();
            setZoom(_pinchZoom * a.distance(b) / _pinchDist, a.getMidpoint(b));
        }
        _travel = 1e6f;  // a pinch is never a tap
        return;
    }
    if (touches.size() == 1)
    {
        const auto delta = touches[0]->getDelta();
        _travel += delta.length();
        _camera->setPosition(_camera->getPosition() + delta);
        clampCamera();
    }
}

void AssetViewerScene::onTouchesEnded(const std::vector<Touch*>& touches, Event*)
{
    for (auto* t : touches)
    {
        if (_map && _touchStart.size() == 1 && _travel < 10.0f)
            spawnEffect(t->getLocation());
        _touchStart.erase(t->getID());
    }
}

}  // namespace mm::app

#include "app/AssetViewerScene.h"

#include <algorithm>
#include <array>
#include <cctype>

#include "app/AssetManager.h"
#include "app/AudioSystem.h"
#include "app/MapView.h"
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

// The original's bitmap font: font02_new.png, 32x32 point cells from ' ' (CCLabelAtlas).
LabelAtlas* atlasLabel(std::string_view text, float scale)
{
    auto* label = LabelAtlas::create(text, "font02_new.png", 32, 32, ' ');
    label->setScale(scale);
    return label;
}

MenuItemLabel* button(std::string_view text, const ccMenuCallback& onTap)
{
    auto* item = MenuItemLabel::create(atlasLabel(text, 0.5f), onTap);
    item->setColor(Color3B(255, 236, 160));
    return item;
}
}  // namespace

bool AssetViewerScene::init()
{
    if (!Scene::init())
        return false;

    const auto safe = _director->getSafeAreaRect();

    _camera = Node::create();
    addChild(_camera, 0);

    // HUD: kept inside the safe area so camera cutouts never hide it.
    _title = atlasLabel("", 0.6f);
    _title->setAnchorPoint(Vec2::ANCHOR_TOP_LEFT);
    _title->setPosition(safe.getMinX() + 8, safe.getMaxY() - 6);
    addChild(_title, 10);

    _info = Label::createWithTTF("", "fonts/arial.ttf", 11);
    _info->setAnchorPoint(Vec2::ANCHOR_TOP_LEFT);
    _info->setPosition(safe.getMinX() + 8, safe.getMaxY() - 30);
    _info->enableOutline(Color4B::BLACK, 1);
    addChild(_info, 10);

    _selection = Label::createWithTTF("", "fonts/digitalix.ttf", 12);
    _selection->setAnchorPoint(Vec2::ANCHOR_TOP_LEFT);
    _selection->setPosition(safe.getMinX() + 8, safe.getMaxY() - 46);
    _selection->setTextColor(Color4B(140, 255, 140, 255));
    addChild(_selection, 10);

    auto* brand = Label::createWithTTF("Mini Militia by Kadiyafali", "fonts/GROBOLD.ttf", 14);
    brand->setAnchorPoint(Vec2::ANCHOR_TOP_RIGHT);
    brand->setPosition(safe.getMaxX() - 8, safe.getMaxY() - 6);
    brand->enableOutline(Color4B::BLACK, 1);
    addChild(brand, 10);

    auto* menu = Menu::create(
        button("PREV", [this](Object*) { showMap((_mapIndex + static_cast<int>(kMaps.size()) - 1) % kMaps.size()); }),
        button("NEXT", [this](Object*) { showMap((_mapIndex + 1) % kMaps.size()); }),
        button("FX", [this](Object*) {
            _effectIndex = (_effectIndex + 1) % static_cast<int>(kEffects.size());
            refreshInfo(0);
        }),
        button("SOUND", [this](Object*) { playNextSound(); }),
        button("MUSIC", [](Object*) {
            auto& audio = AudioSystem::get();
            audio.isMusicPlaying() ? audio.stopMusic() : audio.playMusic();
        }),
        button("SPAWNS", [this](Object*) {
            _markers = !_markers;
            if (_map)
                _map->setMarkersVisible(_markers);
        }),
        nullptr);
    menu->alignItemsHorizontallyWithPadding(18);
    menu->setPosition(safe.getMidX(), safe.getMinY() + 14);
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

    showMap(0);
    AudioSystem::get().playMusic();
    schedule(AX_CALLBACK_1(AssetViewerScene::refreshInfo, this), 0.5f, "info");
    return true;
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

    // Start at the original 1:1 scale, looking at the first spawn point.
    _zoom = 1.0f;
    _camera->setScale(_zoom);
    const auto spawns = _map->data().objectsWithPrefix("sp_");
    const Vec2 look   = spawns.empty() ? Vec2(_map->getContentSize() / 2) : Vec2(spawns.front()->x, spawns.front()->y);
    _camera->setPosition(origin + visible / 2 - look);
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

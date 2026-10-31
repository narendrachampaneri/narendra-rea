#include "app/PlayScene.h"

#include <algorithm>

#include "app/AudioSystem.h"
#include "app/GameScene.h"
#include "app/HomeScene.h"
#include "app/Platform.h"
#include "app/Ui.h"

using namespace ax;
using namespace mm::assets;

namespace mm::app
{

namespace
{
const char* kModeNames[] = {"QUICK PLAY", "PRACTICE", "SURVIVAL", "TRAINING"};
const char* kLevels[]    = {"EASY", "NORMAL", "HARD"};

// The maps a mode may use: the 12 of the rotation for matches, the special ones for the rest.
std::vector<int> mapsFor(game::ModeKind kind)
{
    std::vector<int> out;
    for (int i = 0; i < static_cast<int>(kMaps.size()); ++i)
    {
        const auto& m = kMaps[i];
        const bool special = m.kind != MapKind::Multiplayer;
        if (kind == game::ModeKind::Survival ? m.kind == MapKind::Survival
            : kind == game::ModeKind::Training ? m.kind == MapKind::Training
                                               : (!special && m.inOriginalRotation))
            out.push_back(i);
    }
    return out;
}
}  // namespace

bool PlayScene::init()
{
    if (!Scene::init())
        return false;
    const auto visible = _director->getVisibleSize();
    const auto origin  = _director->getVisibleOrigin();
    _settings.kind     = game::ModeKind::Practice;

    auto* title = ui::atlasLabel("SOLO PLAY");
    title->setAnchorPoint({0.5f, 1.0f});
    title->setScale(0.6f);
    title->setPosition(origin.x + visible.width / 2, origin.y + visible.height - 8);
    addChild(title, 5);

    // Four rows, each a label that cycles on tap; the last row starts.
    auto* menu = Menu::create();
    menu->setPosition(Vec2::ZERO);
    addChild(menu, 5);
    const float top = origin.y + visible.height - 70;
    for (int i = 0; i < 5; ++i)
    {
        auto* label = Label::createWithTTF("", "fonts/arial.ttf", i == 4 ? 20 : 15);
        _lines[i]   = label;
        auto* item  = MenuItemLabel::create(label, [this, i](Object*) {
            AudioSystem::get().play(audio::SoundId::Grenade1);
            switch (i)
            {
            case 0:
                _settings.kind = static_cast<game::ModeKind>((static_cast<int>(_settings.kind) + 1) % 4);
                _map = 0;
                break;
            case 1:
                _map = (_map + 1) % std::max<int>(1, mapsFor(_settings.kind).size());
                break;
            case 2:
                _settings.botCount = _settings.botCount % 7 + 1;
                break;
            case 3:
                _settings.difficulty = (_settings.difficulty + 1) % 3;
                break;
            case 4:
                start();
                return;
            }
            refresh();
        });
        item->setPosition(origin.x + visible.width / 2, top - i * 38);
        menu->addChild(item);
    }
    auto* back = ui::panelButton("b03_bot.png", "BACK", [this](Object*) { goHome(); });
    auto* backMenu = Menu::create(back, nullptr);
    backMenu->setPosition(origin.x + 90, origin.y + 30);
    addChild(backMenu, 5);

    auto* keys          = EventListenerKeyboard::create();
    keys->onKeyReleased = [this](EventKeyboard::KeyCode code, Event*) {
        if (code == EventKeyboard::KeyCode::KEY_BACK || code == EventKeyboard::KeyCode::KEY_ESCAPE)
            goHome();
    };
    _eventDispatcher->addEventListenerWithSceneGraphPriority(keys, this);
    refresh();
    return true;
}

void PlayScene::onEnter()
{
    Scene::onEnter();
    platform::setGameHandlesBack(true);
}

void PlayScene::refresh()
{
    const auto maps = mapsFor(_settings.kind);
    const auto& map = kMaps[maps[std::min<std::size_t>(_map, maps.size() - 1)]];
    const bool bots = _settings.kind == game::ModeKind::Practice;
    _lines[0]->setString(std::string("MODE: ") + kModeNames[static_cast<int>(_settings.kind)]);
    _lines[1]->setString(std::string("MAP: ") + std::string(map.name) + (maps.size() > 1 ? "  (tap to change)" : ""));
    _lines[2]->setString(bots ? "BOTS: " + std::to_string(_settings.botCount) : std::string(""));
    _lines[3]->setString(_settings.kind == game::ModeKind::Training ? "" : std::string("LEVEL: ") + kLevels[_settings.difficulty]);
    _lines[4]->setString(">> START <<");
}

void PlayScene::start()
{
    const auto maps = mapsFor(_settings.kind);
    const auto& map = kMaps[maps[std::min<std::size_t>(_map, maps.size() - 1)]];
    if (auto* scene = GameScene::create(map, _settings))
        _director->replaceScene(TransitionFade::create(0.4f, scene));
}

void PlayScene::goHome()
{
    _director->replaceScene(TransitionFade::create(0.4f, utils::createInstance<HomeScene>()));
}

}  // namespace mm::app

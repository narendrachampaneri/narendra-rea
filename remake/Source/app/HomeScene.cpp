#include "app/HomeScene.h"

#include <random>

#include "app/AudioSystem.h"
#include "app/GameScene.h"
#include "app/Menus.h"
#include "app/MultiplayerScene.h"
#include "app/Platform.h"
#include "app/PlayScene.h"
#include "app/SaveStore.h"
#include "app/Style.h"
#include "app/Ui.h"
#include "config/GameConfig.h"

using namespace ax;

namespace mm::app
{

namespace
{
template <class S> void go()
{
    Director::getInstance()->replaceScene(TransitionFade::create(0.3f, utils::createInstance<S>()));
}
}  // namespace

bool HomeScene::init()
{
    if (!Scene::init())
        return false;
    auto& save         = SaveStore::get();
    const auto visible = _director->getVisibleSize();
    const auto origin  = _director->getVisibleOrigin();
    const auto safe    = _director->getSafeAreaRect();

    addChild(style::background(), -10);
    addChild(ui::titleArt("title_ret2_new.png", origin.x + safe.size.width * 0.22f), -5);

    // Player card, top left.
    auto* card = Node::create();
    card->setPosition(safe.getMinX() + 10, safe.getMaxY() - 12);
    auto* name = style::text(save.data().name.empty() ? "PLAYER" : save.data().name, 14, style::kAccent);
    name->setAnchorPoint({0, 0.5f});
    name->enableOutline(Color4B::BLACK, 1);
    card->addChild(name);
    auto* coins = style::text(fmt::format("{} COINS", save.data().coins), 12);
    coins->setAnchorPoint({0, 0.5f});
    coins->setPosition(0, -16);
    coins->enableOutline(Color4B::BLACK, 1);
    card->addChild(coins);
    addChild(card, 5);

    // Buttons: two columns on the right.
    const float bw = 138, bh = 34, gap = 8;
    const float colX[2] = {safe.getMaxX() - 12 - bw * 1.5f - gap, safe.getMaxX() - 12 - bw * 0.5f};
    struct Entry { const char* label; std::function<void()> action; Color3B colour; };
    const std::vector<Entry> entries = {
        {"QUICK PLAY", [this] {
             std::vector<const assets::MapDef*> pool;
             for (const auto& m : assets::kMaps)
                 if (m.kind == assets::MapKind::Multiplayer && m.inOriginalRotation)
                     pool.push_back(&m);
             std::random_device rd;
             game::ModeSettings settings;
             settings.kind = game::ModeKind::QuickPlay;
             settings.seed = rd();
             if (auto* scene = GameScene::create(*pool[settings.seed % pool.size()], settings))
                 _director->replaceScene(TransitionFade::create(0.4f, scene));
         }, Color3B(200, 90, 40)},
        {"MULTIPLAYER", [] { go<MultiplayerScene>(); }, Color3B(52, 84, 170)},
        {"SOLO PLAY", [] { go<PlayScene>(); }, Color3B(52, 84, 170)},
        {"STORE", [] { go<StoreScene>(); }, Color3B(60, 140, 90)},
        {"AVATAR", [] { go<AvatarScene>(); }, Color3B(60, 140, 90)},
        {"LEADERBOARDS", [] { go<LeaderboardsScene>(); }, Color3B(90, 90, 160)},
        {"SETTINGS", [] { go<SettingsScene>(); }, Color3B(90, 90, 110)},
        {"ABOUT", [] { Director::getInstance()->replaceScene(TransitionFade::create(0.3f, TextPageScene::create(TextPageScene::Page::About))); },
         Color3B(90, 90, 110)},
    };
    auto* grid = Node::create();
    addChild(grid, 5);
    const float top = origin.y + visible.height / 2 + 2 * (bh + gap) + bh / 2 - 6;
    for (std::size_t i = 0; i < entries.size(); ++i)
    {
        auto* b = style::pill(entries[i].label, {bw, bh}, entries[i].action, entries[i].colour);
        b->setPosition(colX[i % 2], top - (i / 2) * (bh + gap));
        grid->addChild(b);
    }
    style::popIn(grid, 0.1f, 0.05f);

    // What's new, with a badge until it has been read.
    const bool unread = save.data().lastSeenVersion != config::kVersionLabel;
    auto* news = style::pill(unread ? "WHAT'S NEW  !" : "WHAT'S NEW", {bw * 2 + gap, 26},
                             [] { Director::getInstance()->replaceScene(TransitionFade::create(0.3f, TextPageScene::create(TextPageScene::Page::WhatsNew))); },
                             unread ? Color3B(220, 70, 70) : Color3B(70, 70, 100));
    news->setPosition((colX[0] + colX[1]) / 2, top - 4 * (bh + gap) - 4);
    addChild(news, 5);

    auto* version = style::text(config::kVersionLabel, 9);
    version->setOpacity(170);
    version->setAnchorPoint({0, 0.5f});
    version->setPosition(safe.getMinX() + 6, safe.getMinY() + 8);
    addChild(version, 5);
    return true;
}

void HomeScene::onEnter()
{
    Scene::onEnter();
    platform::setGameHandlesBack(false);  // back on the home screen leaves the app
    auto& audio = AudioSystem::get();
    if (!audio.isMusicPlaying())
        audio.playMusic();
}

}  // namespace mm::app

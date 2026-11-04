#include "app/Menus.h"
#include "app/OriginalMenu.h"
#include "app/HudLayout.h"

#include "app/AudioSystem.h"
#include "app/GameScene.h"
#include "app/HomeScene.h"
#include "app/Platform.h"
#include "app/SaveStore.h"
#include "app/SoldierView.h"
#include "app/Style.h"
#include "app/Ui.h"
#include "config/GameConfig.h"
#include "economy/Economy.h"
#include "ui/axmol-ui.h"

using namespace ax;

namespace mm::app
{

namespace
{
void home()
{
    Director::getInstance()->replaceScene(TransitionFade::create(0.3f, utils::createInstance<HomeScene>()));
}

Vec2 centre()
{
    return Director::getInstance()->getVisibleOrigin() + Director::getInstance()->getVisibleSize() / 2;
}
Size screen() { return Director::getInstance()->getVisibleSize(); }
Vec2 origin() { return Director::getInstance()->getVisibleOrigin(); }

// The original's BACK button, bottom left of every sub screen (and the device back key).
void addBack(Scene* scene, std::function<void()> target = home)
{
    auto* back = ui::panelButton("b03_sml.png", "BACK", [target](Object*) {
        AudioSystem::get().play(audio::SoundId::Grenade1);
        target();
    });
    auto* menu = Menu::create(back, nullptr);
    const auto safe = Director::getInstance()->getSafeAreaRect();
    menu->setPosition(safe.getMinX() + 12 + back->getContentSize().width / 2, safe.getMinY() + 12 + back->getContentSize().height / 2);
    scene->addChild(menu, 10);
    style::onBack(scene, target);
}

void toSettingsMenu() { Director::getInstance()->replaceScene(TransitionFade::create(0.3f, utils::createInstance<SettingsMenuScene>())); }
void toRank() { Director::getInstance()->replaceScene(TransitionFade::create(0.3f, utils::createInstance<RankScene>())); }
void toConfigure() { Director::getInstance()->replaceScene(TransitionFade::create(0.3f, utils::createInstance<ConfigureScene>())); }
}  // namespace

// ============================== first launch ============================================================

bool FirstLaunchScene::init()
{
    if (!Scene::init())
        return false;
    addChild(style::background(), 0);  // z 0 like the screens that render; -10 showed black on the phone
    auto* title = style::heading("WELCOME, SOLDIER");
    addChild(title, 5);

    auto* ask = style::text("What should we call you?", 14);
    ask->setPosition(centre() + Vec2(0, 40));
    addChild(ask, 5);

    auto* field = ax::ui::TextField::create("your name", "fonts/arial.ttf", 20);
    field->setMaxLength(16);
    field->setMaxLengthEnabled(true);
    field->setPosition(centre() + Vec2(0, 4));
    field->setTextColor(Color4B(255, 220, 120, 255));
    addChild(field, 5);
    auto* underline = DrawNode::create();
    underline->drawSolidRect(centre() + Vec2(-110, -14), centre() + Vec2(110, -12), Color4F(1, 1, 1, 0.5f));
    addChild(underline, 4);

    auto* go = style::pill("CONTINUE", {170, 38}, [this, field] {
        auto& save = SaveStore::get();
        std::string name(field->getString());
        save.data().name = name.empty() ? "Player" : name;
        save.data().firstLaunchDone = true;
        save.commit();
        // The training is offered, not forced.
        addChild(style::dialog("Nice to meet you, " + save.data().name + "!\nWant to start with the training?", "TRAINING", "LATER",
                               [this] {
                                   if (const auto* map = assets::findMap("training"))
                                   {
                                       game::ModeSettings st;
                                       st.kind = game::ModeKind::Training;
                                       if (auto* scene = GameScene::create(*map, st))
                                       {
                                           Director::getInstance()->replaceScene(TransitionFade::create(0.4f, scene));
                                           return;
                                       }
                                   }
                                   home();
                               },
                               [] { home(); }),
                 50);
    }, style::kGood);
    go->setPosition(centre() + Vec2(0, -62));
    addChild(go, 5);
    style::popIn(this, 0.0f, 0.06f);
    return true;
}

void FirstLaunchScene::onEnter()
{
    Scene::onEnter();
    platform::setGameHandlesBack(false);
}

// ============================== store ==============================================================
// The STORE in the original's style: the upgrades as a stacked list of the original button pieces
// (five a page, arrows to turn the page), the chosen one explained on the right with BUY.

namespace
{
const char* kUpgradeInfo[] = {
    "Jetpack fuel refills 50% faster.",
    "Health regenerates twice as fast.",
    "The jetpack burns 20% less fuel.",
    "Start every life with a Golden Eagle as your second weapon.",
    "Your bullets spread 20% less.",
    "Carry one more grenade (3 at the start).",
    "Melee hits 10% harder.",
    "Handgun clips hold 25% more rounds.",
    "Rifle clips hold 25% more rounds.",
    "A red laser line from your gun on supported weapons.",
    "Your grenades are gas grenades: a poison cloud.",
    "Handguns reload 30% faster.",
    "Rifles reload 30% faster.",
    "Mask pack for your avatar (needs the Pro Pack).",
};
constexpr int kProIndex = 14, kStoreItems = 15, kPerPage = 5;

std::string upper(std::string s)
{
    std::transform(s.begin(), s.end(), s.begin(), [](unsigned char c) { return static_cast<char>(std::toupper(c)); });
    return s;
}
std::string storeName(int i) { return i == kProIndex ? "PRO PACK" : upper(std::string(config::kUpgrades[i].name)); }
int storePrice(int i) { return i == kProIndex ? config::kProPackPrice : config::kUpgrades[i].price; }
}  // namespace

bool StoreScene::init()
{
    if (!Scene::init())
        return false;
    // Built only from the pieces of the screens that always render on the owner's phone
    // (buildListMenu for the backdrop and BACK, ui::panelButton, ui::atlasLabel, plain DrawNode):
    // no style:: widgets here.
    buildListMenu(this, {}, false, toSettingsMenu);
    const auto safe = Director::getInstance()->getSafeAreaRect();

    auto* title = ui::atlasLabel("STORE");
    title->setScale(0.42f);
    title->setAnchorPoint(Vec2::ANCHOR_MIDDLE);
    title->setPosition(origin().x + screen().width / 2, origin().y + screen().height - 24);
    addChild(title, 6);

    _coins = ui::atlasLabel("0 COINS");
    _coins->setScale(0.26f);
    _coins->setColor(Color3B(255, 210, 70));
    _coins->setAnchorPoint(Vec2::ANCHOR_MIDDLE_RIGHT);
    _coins->setPosition(safe.getMaxX() - 12, origin().y + screen().height - 24);
    addChild(_coins, 6);

    // Left: the page of five upgrades as the stacked button pieces.
    _list = Menu::create();
    for (int slot = 0; slot < kPerPage; ++slot)
    {
        const char* frame = slot == 0 ? "b03_top.png" : (slot == kPerPage - 1 ? "b03_bot.png" : "b03_mid.png");
        auto* item        = ui::panelButton(frame, "ITEM", [this, slot](Object*) {
            AudioSystem::get().play(audio::SoundId::Grenade1);
            const int i = _page * kPerPage + slot;
            if (i < kStoreItems)
                select(i);
        });
        _items.push_back(item);
        _list->addChild(item);
    }
    _list->alignItemsVerticallyWithPadding(0);
    const float listW = _items.front()->getContentSize().width;
    const float listX = safe.getMinX() + 12 + listW / 2;
    _list->setPosition(listX, origin().y + screen().height / 2 - 6);
    addChild(_list, 6);

    // Page arrows under the list, with "1/3" between them.
    auto* prev = ui::panelButton("b03_left.png", " ", [this](Object*) { _page = (_page + 2) % 3; _selected = -1; refresh(); });
    auto* next = ui::panelButton("b03_right.png", " ", [this](Object*) { _page = (_page + 1) % 3; _selected = -1; refresh(); });
    auto* pager = Menu::create(prev, next, nullptr);
    pager->setPosition(Vec2::ZERO);
    const float pagerY = origin().y + 62;
    prev->setPosition(listX - 52, pagerY);
    next->setPosition(listX + 52, pagerY);
    addChild(pager, 6);
    _pageLabel = ui::atlasLabel("1/3");
    _pageLabel->setScale(0.26f);
    _pageLabel->setAnchorPoint(Vec2::ANCHOR_MIDDLE);
    _pageLabel->setPosition(listX, pagerY);
    addChild(_pageLabel, 6);

    // Right: the details panel.
    const float panelL = safe.getMinX() + 12 + listW + 14, panelR = safe.getMaxX() - 12;
    const float panelT = origin().y + screen().height - 46, panelB = origin().y + 70;
    auto* box = DrawNode::create();
    box->drawSolidRect({panelL, panelB}, {panelR, panelT}, Color4F(0.02f, 0.01f, 0.08f, 0.82f));
    addChild(box, 5);
    const float cx = (panelL + panelR) / 2;
    _name = ui::atlasLabel(" ");
    _name->setAnchorPoint(Vec2::ANCHOR_MIDDLE);
    _name->setPosition(cx, panelT - 22);
    addChild(_name, 6);
    _price = ui::atlasLabel(" ");
    _price->setAnchorPoint(Vec2::ANCHOR_MIDDLE);
    _price->setScale(0.28f);
    _price->setColor(Color3B(255, 210, 70));
    _price->setPosition(cx, panelT - 52);
    addChild(_price, 6);
    _info = Label::createWithTTF("Tap an upgrade to read what it does.", "fonts/arial.ttf", 11);
    _info->setAnchorPoint({0.5f, 1.0f});
    _info->setMaxLineWidth(panelR - panelL - 24);
    _info->setAlignment(TextHAlignment::CENTER);
    _info->setPosition(cx, panelT - 74);
    addChild(_info, 6);

    _buy = ui::panelButton("b03_sml.png", "BUY", [this](Object*) {
        if (_selected < 0)
            return;
        AudioSystem::get().play(audio::SoundId::Grenade1);
        auto& save = SaveStore::get();
        const auto result = _selected == kProIndex ? economy::buyProPack(save.data()) : economy::buyUpgrade(save.data(), _selected);
        switch (result)
        {
        case economy::BuyResult::Ok: save.commit(); ui::toast(this, "Bought!"); break;
        case economy::BuyResult::NotEnoughCoins: ui::toast(this, "Not enough Coins. Kills in Wi-Fi Deathmatch earn them."); break;
        case economy::BuyResult::AlreadyOwned: ui::toast(this, "You already have it."); break;
        case economy::BuyResult::NeedsProPack: ui::toast(this, "Needs the Pro Pack."); break;
        default: break;
        }
        refresh();
    });
    _buyLabel = ui::buttonLabel(_buy);
    auto* buyMenu = Menu::create(_buy, nullptr);
    buyMenu->setPosition(Vec2::ZERO);
    _buy->setPosition(cx, panelB + 28);
    addChild(buyMenu, 7);
    refresh();
    return true;
}

void StoreScene::onEnter()
{
    Scene::onEnter();
    platform::setGameHandlesBack(true);
}

void StoreScene::select(int index)
{
    _selected = index;
    refresh();
}

void StoreScene::refresh()
{
    auto& save = SaveStore::get().data();
    _coins->setString(std::to_string(save.coins) + " COINS");
    _pageLabel->setString(std::to_string(_page + 1) + "/3");
    for (int slot = 0; slot < kPerPage; ++slot)
    {
        auto* item = _items[slot];
        const int i = _page * kPerPage + slot;
        auto* label = ui::buttonLabel(item);
        if (!label)
            continue;
        if (i >= kStoreItems)
        {
            item->setVisible(false);
            continue;
        }
        item->setVisible(true);
        const bool owned = i == kProIndex ? save.proPack : economy::owns(save, i);
        label->setString(storeName(i));
        const float w = label->getContentSize().width;
        label->setScale(std::min(0.40f, (item->getContentSize().width - 20.0f) / std::max(w, 1.0f)));
        item->setColor(i == _selected ? Color3B(255, 215, 120) : (owned ? Color3B(150, 255, 160) : Color3B::WHITE));
    }
    if (_selected < 0)
    {
        _name->setString(" ");
        _price->setString(" ");
        _info->setString("Tap an upgrade to read what it does.");
        _buy->setVisible(false);
        return;
    }
    const bool pro = _selected == kProIndex;
    const bool owned = pro ? save.proPack : economy::owns(save, _selected);
    _name->setString(storeName(_selected));
    _name->setScale(std::min(0.34f, 170.0f / std::max(_name->getContentSize().width, 1.0f)));
    _price->setString(owned ? "OWNED" : "PRICE " + std::to_string(storePrice(_selected)));
    _info->setString(pro ? "Pro Pack: two handguns fire together, and the Pro avatar items (masks)." : kUpgradeInfo[_selected]);
    _buy->setVisible(!owned);
    if (_buyLabel)
        _buyLabel->setString("BUY " + std::to_string(storePrice(_selected)));
}

// ============================== avatar ============================================================

bool AvatarScene::init()
{
    if (!Scene::init())
        return false;
    addChild(style::background(), 0);  // z 0 like the screens that render; -10 showed black on the phone
    addChild(style::heading("AVATAR"), 5);
    addBack(this, toRank);

    const char* names[5] = {"HEAD", "BODY", "ARMS", "LEGS", "MASK"};
    const int counts[5]  = {save::kHeads, save::kBodies, save::kArms, save::kLegs, save::kMasks};
    auto part = [](int row) -> int& {
        auto& a = SaveStore::get().data().avatar;
        return row == 0 ? a.head : row == 1 ? a.body : row == 2 ? a.arm : row == 3 ? a.leg : a.mask;
    };
    for (int row = 0; row < 5; ++row)
    {
        const float y = origin().y + screen().height - 76 - row * 38;
        const float x = origin().x + screen().width * 0.68f;
        auto lbl = style::text(names[row], 12, style::kAccent);
        lbl->setPosition(x, y + 16);
        addChild(lbl, 5);
        auto prev = style::pill("<", {40, 28}, [this, row, part, counts] {
            if (row == 4 && !maskUnlocked())
                return;
            int& v = part(row);
            const int lo = row == 4 ? 0 : 1;
            v = v == lo ? counts[row] : v - 1;
            rebuildPreview();
        });
        prev->setPosition(x - 62, y - 6);
        addChild(prev, 5);
        auto next = style::pill(">", {40, 28}, [this, row, part, counts] {
            if (row == 4 && !maskUnlocked())
                return;
            int& v = part(row);
            v = v == counts[row] ? (row == 4 ? 0 : 1) : v + 1;
            rebuildPreview();
        });
        next->setPosition(x + 62, y - 6);
        addChild(next, 5);
        _rows[row] = style::text("", 13);
        _rows[row]->setPosition(x, y - 6);
        addChild(_rows[row], 5);
    }
    auto randomBtn = style::pill("RANDOM", {120, 30}, [this] {
        auto& a = SaveStore::get().data().avatar;
        a.head  = random(1, save::kHeads);
        a.body  = random(1, save::kBodies);
        a.arm   = random(1, save::kArms);
        a.leg   = random(1, save::kLegs);
        a.mask  = maskUnlocked() ? random(0, save::kMasks) : 0;
        rebuildPreview();
    }, Color3B(90, 90, 160));
    randomBtn->setPosition(origin().x + screen().width * 0.68f - 66, origin().y + 40);
    addChild(randomBtn, 5);
    auto done = style::pill("DONE", {120, 30}, [] {
        SaveStore::get().commit();
        home();
    }, style::kGood);
    done->setPosition(origin().x + screen().width * 0.68f + 66, origin().y + 40);
    addChild(done, 5);

    auto* stage = DrawNode::create();
    stage->drawSolidCircle(origin() + Vec2(screen().width * 0.27f, screen().height * 0.42f), 90, 0, 40, Color4F(1, 1, 1, 0.06f));
    addChild(stage, 1);
    rebuildPreview();
    return true;
}

void AvatarScene::onEnter()
{
    Scene::onEnter();
    platform::setGameHandlesBack(true);
}

bool AvatarScene::maskUnlocked()
{
    const auto& d = SaveStore::get().data();
    return d.proPack && ((d.upgrades >> economy::MaskPack1) & 1);  // Mask Pack needs the Pro Pack
}

void AvatarScene::rebuildPreview()
{
    if (_preview)
        _preview->removeFromParent();
    const auto& a = SaveStore::get().data().avatar;
    auto* view    = SoldierView::create(a);
    view->setScale(3.4f);
    view->setPosition(origin() + Vec2(screen().width * 0.27f, screen().height * 0.42f - 14));
    addChild(view, 4);
    _preview = view;
    _rows[0]->setString(std::to_string(a.head) + " / " + std::to_string(save::kHeads));
    _rows[1]->setString(std::to_string(a.body) + " / " + std::to_string(save::kBodies));
    _rows[2]->setString(std::to_string(a.arm) + " / " + std::to_string(save::kArms));
    _rows[3]->setString(std::to_string(a.leg) + " / " + std::to_string(save::kLegs));
    _rows[4]->setString(!maskUnlocked() ? "LOCKED (store: Mask Pack)"
                                        : (a.mask == 0 ? std::string("NONE") : std::to_string(a.mask) + " / " + std::to_string(save::kMasks)));
}

// ============================== leaderboards ========================================================

bool LeaderboardsScene::init()
{
    if (!Scene::init())
        return false;
    addChild(style::background(), 0);  // z 0 like the screens that render; -10 showed black on the phone
    addChild(style::heading("LEADERBOARDS"), 5);
    addBack(this);
    auto mine = style::pill("MY RECORDS", {140, 28}, [this] { show(0); });
    mine->setPosition(origin() + Vec2(screen().width / 2 - 76, screen().height - 56));
    addChild(mine, 5);
    auto friends = style::pill("FRIENDS", {140, 28}, [this] { show(1); });
    friends->setPosition(origin() + Vec2(screen().width / 2 + 76, screen().height - 56));
    addChild(friends, 5);
    show(0);
    return true;
}

void LeaderboardsScene::onEnter()
{
    Scene::onEnter();
    platform::setGameHandlesBack(true);
}

void LeaderboardsScene::show(int tab)
{
    if (_body)
        _body->removeFromParent();
    _body = Node::create();
    addChild(_body, 5);
    const auto& d = SaveStore::get().data();
    std::vector<std::pair<std::string, std::string>> rows;
    if (tab == 0)
    {
        const auto& s = d.stats;
        const float kd = s.deaths ? static_cast<float>(s.kills) / s.deaths : static_cast<float>(s.kills);
        const long long mins = s.playSeconds / 60;
        rows = {{"Player", d.name},
                {"Kills", std::to_string(s.kills)},
                {"Deaths", std::to_string(s.deaths)},
                {"Kill / death", fmt::format("{:.2f}", kd)},
                {"Matches played", std::to_string(s.matches)},
                {"Time played", fmt::format("{}h {:02}m", mins / 60, mins % 60)},
                {"Best Survival", s.bestSurvivalWave ? fmt::format("wave {}  ({} points)", s.bestSurvivalWave, s.bestSurvivalScore) : "-"},
                {"Best Co-op wave", s.bestCoopWave ? std::to_string(s.bestCoopWave) : "-"},
                {"Most kills in a Wi-Fi match", s.bestDeathmatchKills ? std::to_string(s.bestDeathmatchKills) : "-"}};
    }
    else
    {
        std::vector<std::pair<std::string, save::Friend>> list(d.friends.begin(), d.friends.end());
        std::sort(list.begin(), list.end(), [](const auto& a, const auto& b) { return a.second.kills > b.second.kills; });
        rows.push_back({"PLAYED WITH", "KILLS / DEATHS / MATCHES"});
        for (std::size_t i = 0; i < list.size() && i < 8; ++i)
            rows.push_back({list[i].first, fmt::format("{} / {} / {}", list[i].second.kills, list[i].second.deaths, list[i].second.matches)});
        if (list.empty())
            rows.push_back({"Nobody yet.", "Play over Wi-Fi to fill this list."});
    }
    float y = origin().y + screen().height - 90;
    for (const auto& [k, v] : rows)
    {
        auto* a = style::text(k, 12, Color3B(200, 210, 255));
        a->setAnchorPoint({0, 0.5f});
        a->setPosition(origin().x + screen().width * 0.18f, y);
        _body->addChild(a);
        auto* b = style::text(v, 12, Color3B::WHITE);
        b->setAnchorPoint({1, 0.5f});
        b->setPosition(origin().x + screen().width * 0.82f, y);
        _body->addChild(b);
        y -= 22;
    }
    style::popIn(_body, 0.0f, 0.03f);
}

// ============================== settings ===========================================================

bool SettingsScene::init()
{
    if (!Scene::init())
        return false;
    addChild(style::background(), 0);  // z 0 like the screens that render; -10 showed black on the phone
    addChild(style::heading("SETTINGS"), 5);
    addBack(this, toConfigure);
    auto& store = SaveStore::get();
    auto& cfg   = store.data().settings;

    const float colW = std::min(210.0f, (screen().width - 40) / 2);
    const float left = origin().x + screen().width / 2 - colW / 2 - 6, right = origin().x + screen().width / 2 + colW / 2 + 6;
    float yl = origin().y + screen().height - 58, yr = yl;
    const float pitch = 30;

    auto save = [] { SaveStore::get().commit(); SaveStore::get().applySettings(); };
    auto addSlider = [&](float x, float& y, const char* label, int min, int max, int value, std::function<void(int)> change) {
        auto* l = style::text(label, 10, Color3B(200, 210, 255));
        l->setAnchorPoint({0, 0.5f});
        l->setPosition(x - colW / 2, y + 7);
        addChild(l, 5);
        auto* s = style::slider({colW - 6, 18}, min, max, value, [change, save](int v) { change(v); save(); });
        s->setPosition(x, y - 7);
        addChild(s, 5);
        y -= pitch + 4;
    };
    auto addToggle = [&](float x, float& y, const std::string& label, bool& value) {
        auto p = std::make_shared<style::Pill>();
        *p = style::pillWithLabel("", {colW, 24}, [p, &value, label, save] {
            value = !value;
            p->label->setString(label + (value ? ": ON" : ": OFF"));
            style::setPillColour(p->node, value ? Color3B(50, 110, 70) : Color3B(90, 70, 70));
            save();
        });
        p->label->setString(label + (value ? ": ON" : ": OFF"));
        style::setPillColour(p->node, value ? Color3B(50, 110, 70) : Color3B(90, 70, 70));
        p->node->setPosition(x, y);
        addChild(p->node, 5);
        y -= pitch - 2;
    };
    auto addCycle = [&](float x, float& y, std::function<std::string()> text, std::function<void()> next) {
        auto p = std::make_shared<style::Pill>();
        *p = style::pillWithLabel(text(), {colW, 24}, [p, text, next, save] {
            next();
            p->label->setString(text());
            save();
        });
        p->node->setPosition(x, y);
        addChild(p->node, 5);
        y -= pitch - 2;
    };

    addSlider(left, yl, "SOUND EFFECTS", 0, 100, cfg.soundVolume, [&cfg](int v) { cfg.soundVolume = v; });
    addSlider(left, yl, "MUSIC", 0, 100, cfg.musicVolume, [&cfg](int v) { cfg.musicVolume = v; });
    addSlider(left, yl, "STICK SENSITIVITY", 50, 150, cfg.sensitivity, [&cfg](int v) { cfg.sensitivity = v; });
    addToggle(left, yl, "BLOOD", cfg.blood);
    addCycle(left, yl, [&cfg] { return "BLOOD COLOUR: " + std::vector<std::string>{"RED", "GREEN", "BLUE", "YELLOW", "WHITE"}[cfg.bloodColour]; },
             [&cfg] { cfg.bloodColour = (cfg.bloodColour + 1) % static_cast<int>(save::kBloodColours.size()); });
    addToggle(left, yl, "CENTRED CAMERA", cfg.centredCamera);

    addToggle(right, yr, "LEFT-HANDED", cfg.leftHanded);
    addToggle(right, yr, "AUTO-FIRE", cfg.autoFire);
    addToggle(right, yr, "VIBRATION", cfg.vibration);
    addToggle(right, yr, "QUICK MESSAGES", cfg.quickMessages);
    addCycle(right, yr,
             [&cfg] {
                 static const char* n[] = {"SMOOTH", "MEDIUM", "HIGH", "EXTREME"};
                 return std::string("GRAPHICS: ") + (cfg.qualityAuto ? "AUTO" : n[static_cast<int>(cfg.quality)]) + "  (RESTART)";
             },
             [&cfg] {
                 if (cfg.qualityAuto)
                 {
                     cfg.qualityAuto = false;
                     cfg.quality     = save::Quality::Smooth;
                 }
                 else if (cfg.quality == save::Quality::Extreme)
                     cfg.qualityAuto = true;
                 else
                     cfg.quality = static_cast<save::Quality>(static_cast<int>(cfg.quality) + 1);
             });
    addCycle(right, yr, [&cfg] { return "CROSSHAIR: " + std::vector<std::string>{"OFF", "DOT", "CROSS", "RING"}[cfg.crosshair]; },
             [&cfg] { cfg.crosshair = (cfg.crosshair + 1) % 4; });
    addCycle(right, yr, [&cfg] { return "FRAME RATE: " + std::to_string(cfg.frameRate) + " FPS"; },
             [&cfg] { cfg.frameRate = cfg.frameRate == 30 ? 60 : cfg.frameRate == 60 ? 90 : cfg.frameRate == 90 ? 120 : 30; });

    auto* field = ax::ui::TextField::create("your name", "fonts/arial.ttf", 13);
    field->setMaxLength(16);
    field->setMaxLengthEnabled(true);
    field->setString(store.data().name);
    field->setTextColor(Color4B(255, 220, 120, 255));
    field->setPosition({right, yr + 2});
    field->addEventListener([field](Object*, ax::ui::TextField::EventType type) {
        if (type == ax::ui::TextField::EventType::DETACH_WITH_IME)
        {
            SaveStore::get().data().name = std::string(field->getString());
            SaveStore::get().commit();
        }
    });
    addChild(field, 5);
    yr -= 24;

    auto* editBtn = style::pill("EDIT BUTTON PLACEMENT", {colW - 6, 24}, [] {
        Director::getInstance()->pushScene(TransitionFade::create(0.2f, utils::createInstance<ButtonEditorScene>()));
    }, Color3B(90, 90, 160));
    editBtn->setPosition(left, yl - 6);
    addChild(editBtn, 5);
    yl -= 30;
    addToggle(left, yl, "FPS STATS", cfg.showStats);
    auto* dbg = style::pill("EXPORT DEBUG LOG", {colW - 6, 24}, [] { platform::exportDebugLog(); }, Color3B(90, 90, 160));
    dbg->setPosition(left, yl);
    addChild(dbg, 5);

    auto* exp = style::pill("EXPORT SAVE", {colW / 2 - 3, 24}, [] { SaveStore::get().exportToFile(); }, Color3B(90, 90, 160));
    exp->setPosition(right - colW / 4 - 1.5f, yr);
    addChild(exp, 5);
    auto* imp = style::pill("IMPORT SAVE", {colW / 2 - 3, 24}, [] { SaveStore::get().importFromFile(); }, Color3B(90, 90, 160));
    imp->setPosition(right + colW / 4 + 1.5f, yr);
    addChild(imp, 5);

    style::popIn(this, 0.0f, 0.015f);
    return true;
}

void SettingsScene::onEnter()
{
    Scene::onEnter();
    platform::setGameHandlesBack(true);
    SaveStore::get().onTransfer = [this](bool ok, const char* what) {
        const std::string w = what;
        ui::toast(this, w == "export" ? (ok ? "Save exported." : "Export cancelled.")
                                      : (ok ? "Save restored. Restart the game to apply everything." : "That file is not a valid save."));
    };
}

void SettingsScene::onExit()
{
    Scene::onExit();
    SaveStore::get().onTransfer = nullptr;
    SaveStore::get().commit();
}

// ============================== Button placement editor ============================================
// The original's CONTROLS > PLACEMENT screen: the real HUD controls on a light jungle backdrop,
// drag them where you want, [+] / [-] scale the chosen one, DEFAULT resets, DONE saves.

bool ButtonEditorScene::init()
{
    if (!Scene::init())
        return false;
    const auto vis = screen();
    // Backdrop drawn with plain shapes: pale sky, two hills, green bushes.
    auto* bg = DrawNode::create();
    const Color4F sky(0.78f, 0.86f, 0.88f, 1), hill(0.70f, 0.77f, 0.78f, 1), bush(0.58f, 0.70f, 0.45f, 1), ground(0.52f, 0.62f, 0.40f, 1);
    bg->drawSolidRect(origin(), origin() + vis, sky);
    bg->drawSolidRect(origin(), origin() + Vec2(vis.width, vis.height * 0.42f), ground);
    Vec2 h1[] = {{0, 0.42f}, {0.22f, 0.66f}, {0.45f, 0.42f}}, h2[] = {{0.55f, 0.42f}, {0.72f, 0.58f}, {1.0f, 0.42f}};
    for (auto* h : {h1, h2})
    {
        Vec2 pts[3];
        for (int i = 0; i < 3; ++i)
            pts[i] = origin() + Vec2(h[i].x * vis.width, h[i].y * vis.height);
        bg->drawSolidPoly(pts, 3, hill);
    }
    for (float x = -10; x < vis.width + 30; x += 38)
        bg->drawSolidCircle(origin() + Vec2(x, vis.height * 0.43f + 12 * std::sin(x * 0.07f)), 24, 0, 12, bush);
    addChild(bg, 0);

    struct Spec { int index; const char* frame; float base; };
    static const Spec specs[6] = {{hud::kMovePad, "movePad.png", 1.0f}, {hud::kAimPad, "firePad.png", 1.0f},
                                  {hud::kGrenade, "grenadeBtn.png", 0.8f}, {hud::kMelee, "meleeBtn.png", 0.8f},
                                  {hud::kReload, "ammoBtn.png", 0.8f}, {hud::kZoom, "zoomBtn.png", 0.8f}};
    const auto& cfg = SaveStore::get().data().settings;
    for (int i = 0; i < 6; ++i)
    {
        auto* sp = Sprite::createWithSpriteFrameName(specs[i].frame);
        if (!sp)
            sp = Sprite::create();
        sp->setOpacity(210);
        sp->setScale(specs[i].base * hud::scale(specs[i].index, cfg));
        sp->setPosition(origin() + hud::pos(specs[i].index, vis, cfg));
        addChild(sp, 2);
        _items[i]  = sp;
        _index[i]  = specs[i].index;
        _base[i]   = specs[i].base;
        _scale[i]  = cfg.hudScale[specs[i].index];
    }
    _touch = -1;
    _chosen = -1;

    auto* hint = ui::atlasLabel("DRAG CONTROLS TO MOVE   USE [+/-] TO SCALE");
    hint->setScale(0.22f);
    hint->setAnchorPoint(Vec2::ANCHOR_MIDDLE);
    hint->setPosition(origin().x + vis.width / 2, origin().y + vis.height - 12);
    addChild(hint, 5);

    auto highlight = [this] {
        for (int i = 0; i < 6; ++i)
            _items[i]->setColor(i == _chosen ? Color3B(255, 240, 160) : Color3B::WHITE);
    };
    auto rescale = [this, highlight](int delta) {
        if (_chosen < 0)
            return;
        _scale[_chosen] = std::clamp(_scale[_chosen] + delta, 50, 200);
        _items[_chosen]->setScale(_base[_chosen] * _scale[_chosen] / 100.0f);
        highlight();
    };
    auto* minus = ui::panelButton("b03_left.png", "-", [rescale](Object*) { rescale(-10); });
    auto* plus  = ui::panelButton("b03_right.png", "+", [rescale](Object*) { rescale(10); });
    auto* def   = ui::panelButton("b03_mid.png", "DEFAULT", [this, highlight](Object*) {
        for (int i = 0; i < 6; ++i)
        {
            _items[i]->setPosition(origin() + hud::defaultPos(_index[i], screen()));
            _scale[i] = 100;
            _items[i]->setScale(_base[i]);
        }
        _chosen = -1;
        highlight();
    });
    auto* done = ui::panelButton("b03_mid.png", "DONE", [this](Object*) {
        auto& c = SaveStore::get().data().settings;
        for (int i = 0; i < 6; ++i)
        {
            const Vec2 d = _items[i]->getPosition() - origin() - hud::defaultPos(_index[i], screen());
            c.buttonOffset[_index[i] * 2]     = static_cast<int>(std::lround(d.x));
            c.buttonOffset[_index[i] * 2 + 1] = static_cast<int>(std::lround(d.y));
            c.hudScale[_index[i]]             = _scale[i];
        }
        SaveStore::get().commit();
        Director::getInstance()->popScene();
    });
    auto* menu = Menu::create(minus, plus, def, done, nullptr);
    menu->setPosition(Vec2::ZERO);
    const float cx = origin().x + vis.width / 2, cy = origin().y + vis.height / 2;
    minus->setPosition(cx - 32, cy + 32);
    plus->setPosition(cx + 32, cy + 32);
    def->setPosition(cx, cy - 4);
    done->setPosition(cx, cy - 40);
    addChild(menu, 6);

    auto* l = EventListenerTouchAllAtOnce::create();
    l->onTouchesBegan = [this, highlight](const std::vector<Touch*>& ts, Event*) {
        for (auto* t : ts)
        {
            if (_touch >= 0)
                break;
            for (int i = 0; i < 6; ++i)
            {
                const float r = 24.0f + 18.0f * _items[i]->getScale();
                if (_items[i]->getPosition().distance(t->getLocation()) < r)
                {
                    _touch  = t->getID();
                    _chosen = i;
                    highlight();
                    break;
                }
            }
        }
    };
    l->onTouchesMoved = [this](const std::vector<Touch*>& ts, Event*) {
        for (auto* t : ts)
            if (_touch == t->getID() && _chosen >= 0)
            {
                auto p = t->getLocation();
                p.x = std::clamp(p.x, origin().x + 16, origin().x + screen().width - 16);
                p.y = std::clamp(p.y, origin().y + 16, origin().y + screen().height - 16);
                _items[_chosen]->setPosition(p);
            }
    };
    l->onTouchesEnded = [this](const std::vector<Touch*>& ts, Event*) {
        for (auto* t : ts)
            if (_touch == t->getID())
                _touch = -1;
    };
    l->onTouchesCancelled = l->onTouchesEnded;
    _eventDispatcher->addEventListenerWithSceneGraphPriority(l, this);
    style::onBack(this, [] { Director::getInstance()->popScene(); });
    return true;
}

// ============================== What's new / About ===================================================

TextPageScene* TextPageScene::create(Page page)
{
    auto* s = new TextPageScene();
    if (s->Scene::init() && s->initPage(page))
    {
        s->autorelease();
        return s;
    }
    delete s;
    return nullptr;
}

namespace
{
const char* kWhatsNew =
    "VERSION 0.6  -  menus and meta\n"
    "- New menus, player name, training offer on first launch\n"
    "- Coins, the store and the original upgrade prices\n"
    "- Avatar: pick your head, body, arms and legs\n"
    "- Leaderboards: your records and the friends you played with\n"
    "- Settings: volumes, blood, controls, graphics, frame rate\n"
    "- Your save is backed up by Android and can be exported and imported\n\n"
    "VERSION 0.5  -  Wi-Fi multiplayer\n"
    "- Host or join a game on the same Wi-Fi or hotspot\n"
    "- Deathmatch, Team Deathmatch, Co-op Survival, Fair mode\n"
    "- Quick messages and a leaderboard after every match\n\n"
    "VERSION 0.4  -  the full single-player game\n"
    "- 17 weapons, grenades, rockets, melee, zoom, pick-ups\n"
    "- Quick Play, Practice, Survival and Training\n\n"
    "VERSION 0.3  -  the first playable build\n";

const char* kAbout =
    "MINI MILITIA BY KADIYAFALI\n"
    "A private remake for personal use. Never published to a store.\n\n"
    "CREDITS\n"
    "Original game: Mini Militia / Doodle Army 2 by Appsomniacs.\n"
    "The maps, art, particle effects, fonts and menu music come from the\n"
    "original game. All rights belong to its developers.\n\n"
    "Remake: Narendra (Kadiyafali), written with Claude.\n"
    "Engine: Axmol (MIT licence). Physics: Chipmunk.\n\n"
    "SOUND EFFECTS\n"
    "New sounds under free (CC0) licences by Kenney (kenney.nl), rubberduck,\n"
    "qubodup, joth, artisticdude and other OpenGameArt contributors.\n"
    "Every file and its source is listed in ASSETS-LICENSES.md.\n";
}  // namespace

bool TextPageScene::initPage(Page page)
{
    addChild(style::background(), 0);  // z 0 like the screens that render; -10 showed black on the phone
    addChild(style::heading(page == Page::WhatsNew ? "WHAT'S NEW" : "ABOUT"), 5);
    if (page == Page::WhatsNew)
    {
        auto& save = SaveStore::get();
        save.data().lastSeenVersion = config::kVersionLabel;
        save.commit();
    }
    auto back = style::pill("< BACK", {84, 26}, home, Color3B(90, 90, 110));
    back->setPosition(origin().x + 52, origin().y + screen().height - 22);
    addChild(back, 10);
    style::onBack(this, home);

    auto* scroll = ax::ui::ScrollView::create();
    scroll->setDirection(ax::ui::ScrollView::Direction::VERTICAL);
    const Size view(screen().width - 60, screen().height - 70);
    scroll->setContentSize(view);
    scroll->setPosition(origin() + Vec2(30, 6));
    scroll->setBounceEnabled(true);
    auto* label = style::text(page == Page::WhatsNew ? kWhatsNew : kAbout, 12);
    label->setMaxLineWidth(view.width - 12);
    label->setAnchorPoint({0, 1});
    const float h = std::max(view.height, label->getContentSize().height + 16);
    scroll->setInnerContainerSize({view.width, h});
    label->setPosition(6, h - 6);
    scroll->addChild(label);
    addChild(scroll, 5);
    return true;
}

void TextPageScene::onEnter()
{
    Scene::onEnter();
    platform::setGameHandlesBack(true);
}

}  // namespace mm::app

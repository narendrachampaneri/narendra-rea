#include "app/Menus.h"

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

// "BACK" in the top left corner of every sub screen.
void addBack(Scene* scene)
{
    auto* b = style::pill("< BACK", {84, 26}, home, Color3B(90, 90, 110));
    b->setPosition(origin().x + 52, origin().y + screen().height - 22);
    scene->addChild(b, 10);
    style::onBack(scene, home);
}
}  // namespace

// ============================== first launch ============================================================

bool FirstLaunchScene::init()
{
    if (!Scene::init())
        return false;
    addChild(style::background(), -10);
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
    "Laser sight on supported weapons. COMING SOON: the aiming line is not drawn yet.",
    "Gas grenade as your second grenade. COMING SOON: gas grenades are not in the game yet.",
    "Handguns reload 30% faster.",
    "Rifles reload 30% faster.",
    "Mask pack for your avatar (needs the Pro Pack). COMING SOON.",
};
constexpr int kProIndex = 14;
// Items that are bought but do nothing yet are not sold: laser sight, gas grenade, mask pack, Pro Pack.
bool onSale(int i) { return i != economy::LaserSight && i != economy::GasNade && i != economy::MaskPack1 && i != kProIndex; }
}  // namespace

bool StoreScene::init()
{
    if (!Scene::init())
        return false;
    addChild(style::background(), -10);
    addChild(style::heading("STORE"), 5);
    addBack(this);

    _coins = style::text("", 14, style::kAccent);
    _coins->setAnchorPoint({1, 0.5f});
    _coins->setPosition(origin().x + screen().width - 14, origin().y + screen().height - 22);
    addChild(_coins, 10);

    const float colW = std::min(210.0f, (screen().width - 40) / 2), rowH = 29;
    const float left = origin().x + screen().width / 2 - colW / 2 - 6, right = origin().x + screen().width / 2 + colW / 2 + 6;
    const float top  = origin().y + screen().height - 62;
    for (int i = 0; i < 15; ++i)
    {
        const bool pro = i == kProIndex;
        const std::string name = pro ? "PRO PACK" : config::kUpgrades[i].name;
        auto cell = style::pillWithLabel(name, {colW, rowH - 4}, [this, i] { select(i); });
        const int col = pro ? 0 : i / 7;
        const int row = pro ? 7 : i % 7;
        cell.node->setPosition(col == 0 ? left : right, top - row * rowH);
        addChild(cell.node, 5);
        _cells.push_back({cell.node, cell.label});
    }
    _info = style::text("", 11);
    _info->setAnchorPoint({0, 1});
    _info->setMaxLineWidth(screen().width - 150);
    _info->setPosition(origin().x + 14, origin().y + 50);
    addChild(_info, 5);
    auto buy = style::pillWithLabel("BUY", {110, 30}, [this] {
        if (_selected < 0 || !onSale(_selected))
            return;
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
    }, style::kGood);
    _buy      = buy.node;
    _buyLabel = buy.label;
    _buy->setPosition(origin().x + screen().width - 70, origin().y + 36);
    addChild(_buy, 8);
    refresh();
    style::popIn(this, 0.0f, 0.02f);
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
    _coins->setString(fmt::format("{} COINS", save.coins));
    for (int i = 0; i < 15; ++i)
    {
        const bool pro   = i == kProIndex;
        const bool owned = pro ? save.proPack : economy::owns(save, i);
        const int price  = pro ? config::kProPackPrice : config::kUpgrades[i].price;
        const std::string name = pro ? "PRO PACK" : config::kUpgrades[i].name;
        std::string text = name + (owned ? "  (OWNED)" : (onSale(i) ? "  " + std::to_string(price) : "  SOON"));
        _cells[i].second->setString(text);
        style::setPillColour(_cells[i].first, i == _selected ? Color3B(200, 120, 40)
                                              : owned        ? Color3B(50, 110, 70)
                                              : !onSale(i)   ? Color3B(70, 70, 90)
                                                             : Color3B(52, 84, 170));
    }
    if (_selected < 0)
    {
        _info->setString("Tap an upgrade to read what it does.");
        _buy->setVisible(false);
        return;
    }
    const bool pro = _selected == kProIndex;
    _info->setString(pro ? "Pro Pack: dual weapons and the Pro avatar items. COMING SOON: neither is in the game yet."
                         : kUpgradeInfo[_selected]);
    const bool owned = pro ? save.proPack : economy::owns(save, _selected);
    _buy->setVisible(onSale(_selected) && !owned);
    _buyLabel->setString(fmt::format("BUY  {}", pro ? config::kProPackPrice : config::kUpgrades[_selected].price));
}

// ============================== avatar ============================================================

bool AvatarScene::init()
{
    if (!Scene::init())
        return false;
    addChild(style::background(), -10);
    addChild(style::heading("AVATAR"), 5);
    addBack(this);

    const char* names[4] = {"HEAD", "BODY", "ARMS", "LEGS"};
    const int counts[4]  = {save::kHeads, save::kBodies, save::kArms, save::kLegs};
    auto part = [](int row) -> int& {
        auto& a = SaveStore::get().data().avatar;
        return row == 0 ? a.head : row == 1 ? a.body : row == 2 ? a.arm : a.leg;
    };
    for (int row = 0; row < 4; ++row)
    {
        const float y = origin().y + screen().height - 80 - row * 44;
        const float x = origin().x + screen().width * 0.68f;
        auto lbl = style::text(names[row], 12, style::kAccent);
        lbl->setPosition(x, y + 16);
        addChild(lbl, 5);
        auto prev = style::pill("<", {40, 28}, [this, row, part, counts] {
            int& v = part(row);
            v = v == 1 ? counts[row] : v - 1;
            rebuildPreview();
        });
        prev->setPosition(x - 62, y - 6);
        addChild(prev, 5);
        auto next = style::pill(">", {40, 28}, [this, row, part, counts] {
            int& v = part(row);
            v = v == counts[row] ? 1 : v + 1;
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
}

// ============================== leaderboards ========================================================

bool LeaderboardsScene::init()
{
    if (!Scene::init())
        return false;
    addChild(style::background(), -10);
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
    addChild(style::background(), -10);
    addChild(style::heading("SETTINGS"), 5);
    addBack(this);
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
                 return std::string("GRAPHICS: ") + (cfg.qualityAuto ? "AUTO" : n[static_cast<int>(cfg.quality)]) + "  (restart)";
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
    addChild(style::background(), -10);
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

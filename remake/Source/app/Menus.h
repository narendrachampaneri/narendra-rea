// The M6 screens: first launch, store, avatar, leaderboards, settings, What's new, About.
// (The home screen is HomeScene.) All use app/Style for their look.
#pragma once

#include <array>

#include "axmol.h"

namespace mm::app
{

// Name entry on the very first launch, then an offer to play the training.
class FirstLaunchScene : public ax::Scene
{
public:
    bool init() override;
    void onEnter() override;
};

class StoreScene : public ax::Scene
{
public:
    bool init() override;
    void onEnter() override;

private:
    void select(int index);  // 0..13 upgrades, 14 = Pro Pack
    void refresh();
    int _selected = -1;
    ax::Label* _coins = nullptr;
    ax::Label* _info = nullptr;
    ax::Node* _buy = nullptr;
    ax::Label* _buyLabel = nullptr;
    std::vector<std::pair<ax::Node*, ax::Label*>> _cells;
};

// Drag the round in-game buttons where the thumbs reach them (saved as offsets).
class ButtonEditorScene : public ax::Scene
{
public:
    bool init() override;

private:
    std::array<ax::Sprite*, 6> _items{};
    std::array<int, 6> _index{}, _scale{};
    std::array<float, 6> _base{};
    int _touch  = -1;
    int _chosen = -1;
};

class AvatarScene : public ax::Scene
{
public:
    bool init() override;
    void onEnter() override;

private:
    void rebuildPreview();
    ax::Node* _preview = nullptr;
    ax::Label* _rows[5] = {};
    static bool maskUnlocked();
};

class LeaderboardsScene : public ax::Scene
{
public:
    bool init() override;
    void onEnter() override;

private:
    void show(int tab);
    ax::Node* _body = nullptr;
};

class SettingsScene : public ax::Scene
{
public:
    bool init() override;
    void onEnter() override;
    void onExit() override;
};

// A scrolling text page: What's new, About / Credits.
class TextPageScene : public ax::Scene
{
public:
    enum class Page { WhatsNew, About };
    static TextPageScene* create(Page page);
    bool init() override { return false; }
    void onEnter() override;

private:
    bool initPage(Page page);
};

}  // namespace mm::app

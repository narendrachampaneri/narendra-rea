// The M6 screens: first launch, store, avatar, leaderboards, settings, What's new, About.
// (The home screen is HomeScene.) All use app/Style for their look.
#pragma once

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

class AvatarScene : public ax::Scene
{
public:
    bool init() override;
    void onEnter() override;

private:
    void rebuildPreview();
    ax::Node* _preview = nullptr;
    ax::Label* _rows[4] = {};
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

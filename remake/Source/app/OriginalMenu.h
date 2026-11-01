// The original game's front-end screens, rebuilt from its own art (b03 button pieces, title
// art, rank icons) and following the screens of the original app: title -> main menu
// (UPGRADE, QUICK PLAY, MULTIPLAYER, SOLO PLAY, SETTINGS + INFO / NEWS / HELP) -> SOLO PLAY
// (SURVIVAL CO-OP, DEATHMATCH, SCORES) -> SETTINGS (STORE, AVATAR, CONFIGURE, CONTROLS) ->
// CONFIGURE (MUSIC, SOUND, BLOOD, HI-RES GFX, 2X VIEW) / CONTROLS / rank screen with CUSTOMIZE.
#pragma once

#include <functional>
#include <string>
#include <vector>

#include "axmol.h"

namespace mm::app
{

struct MenuEntry
{
    std::function<std::string()> label;
    std::function<void()> onTap;                // empty = shown but not pressable
    std::function<bool()> lit;                  // toggles: false dims the button
    bool enabled = true;
};

// Fills `scene` with the original's stacked button column (top / mid / bottom pieces), a BACK
// button bottom left, and, when `home`, the INFO / NEWS / HELP column on the right.
void buildListMenu(ax::Scene* scene, std::vector<MenuEntry> entries, bool home, std::function<void()> onBack);

class SoloMenuScene : public ax::Scene
{
public:
    bool init() override;
    void onEnter() override;
};

class SettingsMenuScene : public ax::Scene
{
public:
    bool init() override;
    void onEnter() override;
};

class ConfigureScene : public ax::Scene
{
public:
    bool init() override;
    void onEnter() override;
};

class ControlsScene : public ax::Scene
{
public:
    bool init() override;
    void onEnter() override;
};

class HelpScene : public ax::Scene
{
public:
    bool init() override;
    void onEnter() override;
};

// The AVATAR screen of the original: player name, rank, stats, the soldier, CUSTOMIZE / AWARDS.
class RankScene : public ax::Scene
{
public:
    bool init() override;
    void onEnter() override;
};

// "PRIVATE" ... "COMMANDER IN CHIEF" (the 21 rank names of the original) from the experience points.
const char* rankName(int rank);   // rank 1..21
int rankFromExperience(int exp);  // NEW mapping, see OriginalMenu.cpp

}  // namespace mm::app

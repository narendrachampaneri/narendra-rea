// The M3 playable slice: one soldier with the AK47 on a map, the original dual joysticks,
// camera, bullets, sparks and HUD. Runs the engine-free game::Match at a fixed 60 Hz.
#pragma once

#include <memory>
#include <unordered_map>
#include <vector>

#include "axmol.h"

#include "assets/MapCatalog.h"
#include "core/FixedStepper.h"
#include "game/Joypad.h"
#include "game/Match.h"

namespace mm::app
{

class MapView;
class SoldierView;

class GameScene : public ax::Scene
{
public:
    static GameScene* create(const assets::MapDef& def);

    void onEnter() override;
    void onExit() override;
    void update(float dt) override;

private:
    bool init(const assets::MapDef& def);
    void buildHud();
    void layoutPads();
    void handleEvents();
    void updateCamera(float dt);
    void updateHud();
    void spawnSpark(const game::Vec2& pos, const game::Vec2& normal);
    void spawnExplosion(const game::Vec2& pos);
    void setPaused(bool paused);
    void quit();

    void onTouchesBegan(const std::vector<ax::Touch*>& touches, ax::Event*);
    void onTouchesMoved(const std::vector<ax::Touch*>& touches, ax::Event*);
    void onTouchesEnded(const std::vector<ax::Touch*>& touches, ax::Event*);
    ax::Vec2 hudPoint(const ax::Touch* touch) const;

    const assets::MapDef* _def = nullptr;
    std::unique_ptr<game::Match> _match;
    game::Joypad _pad;
    FixedStepper _stepper{1.0f / 60.0f, 5};

    ax::Node* _scaleLayer   = nullptr;  // the original's scaleLayer: centred, zoomed
    MapView* _map           = nullptr;  // the world layer
    SoldierView* _soldier   = nullptr;
    std::vector<ax::Sprite*> _tracers;
    std::vector<ax::Sprite*> _sparks;
    std::size_t _nextSpark  = 0;

    // Camera (SoldierHostController::getViewScale / getViewOffset, Stage::updateView).
    float _viewScale  = 0.0f;
    int _viewOffset   = 0;
    game::Vec2 _lead;

    // HUD
    ax::Node* _hud            = nullptr;
    ax::Sprite* _movePad      = nullptr;
    ax::Sprite* _moveStick    = nullptr;
    ax::Sprite* _firePad      = nullptr;
    ax::Sprite* _fireStick    = nullptr;
    ax::Sprite* _healthFrame  = nullptr;
    ax::DrawNode* _bars       = nullptr;
    ax::Label* _ammo          = nullptr;
    ax::Sprite* _reload       = nullptr;
    ax::ProgressTimer* _reloadRing = nullptr;
    ax::Node* _pauseMenu      = nullptr;
    ax::Vec2 _pauseButton;  // HUD point of the pause circle on the health frame
    std::unordered_map<int, int> _buttonTouches;  // touch id -> 1 reload, 2 pause

    bool _paused        = false;
    bool _leaving       = false;
    float _respawnTimer = -1.0f;
    int _nextSpawn      = 1;
};

}  // namespace mm::app

// M2 asset check: every map at the original scale with its background and decorations,
// particle effects, original fonts, the new sound set, menu music and texture memory.
#pragma once

#include <unordered_map>

#include "axmol.h"

namespace mm::app
{

class MapView;

class AssetViewerScene : public ax::Scene
{
public:
    bool init() override;
    void onEnter() override;

private:
    void goHome();
    void showMap(int index);
    void spawnEffect(const ax::Vec2& screenPos);
    void playNextSound();
    void refreshInfo(float dt);

    void setZoom(float zoom, const ax::Vec2& focusScreen);
    void clampCamera();
    float minZoom() const;

    void onTouchesBegan(const std::vector<ax::Touch*>& touches, ax::Event* event);
    void onTouchesMoved(const std::vector<ax::Touch*>& touches, ax::Event* event);
    void onTouchesEnded(const std::vector<ax::Touch*>& touches, ax::Event* event);

    ax::Node* _camera        = nullptr;  // pans and zooms the world (the original's scaleLayer)
    MapView* _map            = nullptr;
    ax::Sprite* _background  = nullptr;
    ax::LabelAtlas* _title   = nullptr;
    ax::Label* _info         = nullptr;
    ax::Label* _selection    = nullptr;
    int _mapIndex            = 0;
    int _effectIndex         = 0;
    int _soundIndex          = 0;
    bool _markers            = false;
    float _zoom              = 1.0f;
    bool _leaving            = false;

    std::unordered_map<int, ax::Vec2> _touchStart;
    float _travel     = 0.0f;  // finger travel since touch began, to tell taps from drags
    float _pinchDist  = 0.0f;
    float _pinchZoom  = 1.0f;
};

}  // namespace mm::app

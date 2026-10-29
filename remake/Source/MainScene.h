#pragma once

#include "axmol.h"
#include "core/GameWorld.h"

// M1: empty scene. Proves the Android shell, the render loop and the fixed-step game world.
class MainScene : public ax::Scene
{
public:
    bool init() override;
    void update(float delta) override;

private:
    mm::GameWorld _world;
    ax::Label* _status = nullptr;

public:
    MainScene();
};

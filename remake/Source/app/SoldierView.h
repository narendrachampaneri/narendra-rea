// Draws a soldier the way SoldierView::init assembles one: head, body, two arms and two legs
// from the skin quads in menuTexture, a jetpack flame under each foot, and the weapon in the
// hands. Node positions and anchors are the original's; the animation (leg swing, flame
// flicker, recoil) is NEW and only approximates SoldierView::updateStep.
#pragma once

#include "axmol.h"

#include "game/Soldier.h"
#include "save/SaveData.h"

namespace mm::app
{

class SoldierView : public ax::Node
{
public:
    static SoldierView* create(int skin = 1);
    static SoldierView* create(const save::Avatar& avatar);

    // Copies the soldier's state; call once per rendered frame.
    void sync(const game::Soldier& soldier, float dt);
    void showShot();  // muzzle flare + recoil kick

private:
    bool init(const save::Avatar& avatar);

    ax::Node* _root      = nullptr;  // +0x124, scaled by playerScale
    ax::Node* _torso     = nullptr;  // +0x11c
    ax::Node* _head      = nullptr;  // +0x120
    ax::Node* _backArm   = nullptr;  // +0x114
    ax::Node* _frontArm  = nullptr;  // +0x110
    ax::Node* _weaponArm = nullptr;  // +0x118
    ax::Node* _legs[2]   = {};       // +0x108, +0x10c
    ax::Sprite* _flames[2] = {};     // Boostie
    ax::Sprite* _weapon  = nullptr;
    ax::Sprite* _flare   = nullptr;
    float _walkPhase     = 0.0f;
    float _recoil        = 0.0f;
    float _flareTime     = 0.0f;
    float _flicker       = 0.0f;
};

}  // namespace mm::app

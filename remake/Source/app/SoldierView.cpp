#include "app/SoldierView.h"

#include <algorithm>
#include <cmath>

#include "game/Rules.h"

using namespace ax;

namespace mm::app
{

namespace
{
Sprite* part(std::string_view frame, Vec2 anchor)
{
    auto* s = Sprite::createWithSpriteFrameName(frame);
    if (!s)
        s = Sprite::create();
    s->setAnchorPoint(anchor);
    return s;
}
}  // namespace

SoldierView* SoldierView::create(int skin)
{
    auto* view = new SoldierView();
    if (view->init(skin))
    {
        view->autorelease();
        return view;
    }
    delete view;
    return nullptr;
}

bool SoldierView::init(int skin)
{
    if (!Node::init())
        return false;
    const auto n = std::to_string(skin);

    _root = Node::create();
    _root->setScale(rules::kPlayerScale);
    addChild(_root);

    // SoldierView::init: node positions in unscaled soldier units.
    _backArm = Node::create();
    _backArm->setPosition(5, 15);
    _backArm->addChild(part("arm" + n + ".png", {0.1f, 0.6f}), 1);
    _root->addChild(_backArm, 0);

    _torso = Node::create();
    _root->addChild(_torso, 3);
    _torso->addChild(part("body" + n + ".png", {0.5f, 0.5f}), 2);
    const Vec2 legPos[2] = {{-4, -12}, {14, -10}};
    for (int i = 0; i < 2; ++i)
    {
        _legs[i] = Node::create();
        _legs[i]->setPosition(legPos[i]);
        _flames[i] = part("flame.png", {0.5f, 1.0f});
        _flames[i]->setPosition(0, -30);
        _flames[i]->setBlendFunc(BlendFunc::ADDITIVE);
        _flames[i]->setVisible(false);
        _legs[i]->addChild(_flames[i], 0);
        _legs[i]->addChild(part("leg" + n + ".png", {0.5f, 0.9f}), 1);
        _torso->addChild(_legs[i], 1);
    }

    _head = Node::create();
    _head->setPosition(0, 27);
    _head->addChild(part("head" + n + ".png", {0.5f, 0.2f}));
    _root->addChild(_head, 4);

    _weaponArm = Node::create();
    _weaponArm->setPosition(5, 15);
    _weapon = part("ak47.png", {0.25f, 0.55f});
    _weapon->setPosition(18, 0);
    _weaponArm->addChild(_weapon, 0);
    _flare = part("flare.png", {0.0f, 0.5f});
    _flare->setPosition(_weapon->getContentSize().width * 0.75f + 18, 2);
    _flare->setScale(2.0f);  // AK47::init: flare scale 2
    _flare->setBlendFunc(BlendFunc::ADDITIVE);
    _flare->setVisible(false);
    _weaponArm->addChild(_flare, 1);
    _root->addChild(_weaponArm, 4);

    _frontArm = Node::create();
    _frontArm->setPosition(-17, 15);
    _frontArm->addChild(part("arm" + n + ".png", {0.1f, 0.6f}), 1);
    _root->addChild(_frontArm, 5);
    return true;
}

void SoldierView::showShot()
{
    _flareTime = 0.05f;
    _recoil    = 6.0f;
}

void SoldierView::sync(const game::Soldier& s, float dt)
{
    const auto p = s.position();
    setPosition(p.x, p.y);
    if (auto* frame = SpriteFrameCache::getInstance()->findFrame(s.weapon().def().sprite);
        frame && _weapon->getSpriteFrame() != frame)
        _weapon->setSpriteFrame(frame);
    setVisible(!s.isDead());

    const bool right       = s.facingRight();
    const float bodyDeg    = -s.bodyAngle() * game::kRadToDeg;  // SoldierView::updateBody
    _root->setRotation(bodyDeg);
    _root->setScaleX(right ? rules::kPlayerScale : -rules::kPlayerScale);

    // Arms and weapon point along the aim. Under a mirrored parent an angle a turns into
    // 180 - a, so the local angle is solved for the world aim either way.
    const float aim   = s.fireAngle();
    const float local = right ? aim - bodyDeg : 180.0f - aim + bodyDeg;
    _recoil           = std::max(0.0f, _recoil - dt * 60.0f);
    for (auto* arm : {_backArm, _frontArm, _weaponArm})
        arm->setRotation(local);
    _weaponArm->setPositionX(5 - _recoil);
    _frontArm->setPositionX(-17 - _recoil);
    _head->setRotation(std::clamp(local * 0.3f, -25.0f, 25.0f));

    // Legs: swing with ground speed, trail behind while flying, fold when crouching.
    const float speed = std::fabs(s.velocity().x);
    if (s.onGround() && speed > 10.0f)
        _walkPhase += dt * speed * 0.12f;
    else
        _walkPhase *= 0.8f;
    const float swing = s.onGround() ? std::sin(_walkPhase) * std::min(speed / 4.0f, 35.0f) : 0.0f;
    const float tuck  = s.isJetting() ? 18.0f : (s.isCrouching() ? 35.0f : 0.0f);
    _legs[0]->setRotation(swing + tuck);
    _legs[1]->setRotation(-swing + tuck * 0.6f);
    _torso->setPositionY(s.isCrouching() ? -10.0f : 0.0f);  // SoldierView +0x140: (0, -10)
    _head->setPositionY(s.isCrouching() ? 17.0f : 27.0f);

    // Jetpack flames (Boostie), sized by the thrust factor.
    _flicker += dt * 30.0f;
    const bool flames = s.isJetting() && s.thrustFactor() > 0.0f;
    for (int i = 0; i < 2; ++i)
    {
        _flames[i]->setVisible(flames);
        if (flames)
        {
            const float f = 0.6f + 0.4f * s.thrustFactor() + 0.12f * std::sin(_flicker + i * 1.7f);
            _flames[i]->setScale(0.8f, f);
        }
    }

    _flareTime -= dt;
    _flare->setVisible(_flareTime > 0.0f);
    _flare->setRotation(_flareTime > 0.0f ? (std::fmod(_flicker * 37.0f, 30.0f) - 15.0f) : 0.0f);
}

}  // namespace mm::app

#include "app/ControllerInput.h"

#include <cmath>

#include "game/Rules.h"
#include "game/Vec2.h"

using namespace ax;

namespace mm::app
{

void ControllerInput::attach(Node* node, std::function<void()> onPause)
{
    _onPause = std::move(onPause);
    Controller::startDiscoveryController();
    _listener = EventListenerController::create();
    _listener->onKeyDown = [this](Controller*, int key, Event*) { press(key); };
    _listener->onKeyUp   = [this](Controller*, int key, Event*) {
        if (key == Controller::BUTTON_RIGHT_SHOULDER)
            _r1 = false;
    };
    _listener->onAxisEvent = [this](Controller* c, int key, Event*) {
        setAxis(key, c->getKeyStatus(key).value);
    };
    node->getEventDispatcher()->addEventListenerWithSceneGraphPriority(_listener, node);
}

void ControllerInput::setAxis(int key, float value)
{
    _used = true;
    switch (key)
    {
    case Controller::JOYSTICK_LEFT_X: _lx = value; break;
    case Controller::JOYSTICK_LEFT_Y: _ly = -value; break;  // controllers report down as positive
    case Controller::JOYSTICK_RIGHT_X: _rx = value; break;
    case Controller::JOYSTICK_RIGHT_Y: _ry = -value; break;
    case Controller::AXIS_RIGHT_TRIGGER: _rt = value; break;
    default: break;
    }
}

void ControllerInput::press(int key)
{
    _used = true;
    switch (key)
    {
    case Controller::BUTTON_X: _edge.reload = true; break;
    case Controller::BUTTON_Y: _edge.switchWeapon = true; break;
    case Controller::BUTTON_B: _edge.melee = true; break;
    case Controller::BUTTON_A: _edge.pickUp = true; break;
    case Controller::BUTTON_LEFT_SHOULDER: _edge.grenade = true; break;
    case Controller::BUTTON_RIGHT_THUMBSTICK: _edge.zoom = true; break;
    case Controller::BUTTON_LEFT_THUMBSTICK: _edge.mine = true; break;
    case Controller::BUTTON_RIGHT_SHOULDER: _r1 = true; break;
    case Controller::BUTTON_START:
    case Controller::BUTTON_PAUSE:
        if (_onPause)
            _onPause();
        break;
    default: break;
    }
}

void ControllerInput::apply(game::PadState& in)
{
    constexpr float kDead = 0.25f;
    if (std::hypot(_lx, _ly) > kDead)
    {
        in.moveOffset  = game::Vec2{_lx, _ly};
        in.moveVector  = in.moveOffset * rules::kPadRadius;
        in.moveTouched = true;
    }
    const bool aiming = std::hypot(_rx, _ry) > kDead;
    if (aiming)
        in.aimAngle = game::toCocosAngle(game::Vec2{_rx, _ry});
    if ((aiming && std::hypot(_rx, _ry) > 0.8f) || _rt > 0.5f || _r1)
        in.firing = true;
    in.melee |= std::exchange(_edge.melee, false);
    in.reload |= std::exchange(_edge.reload, false);
    in.switchWeapon |= std::exchange(_edge.switchWeapon, false);
    in.pickUp |= std::exchange(_edge.pickUp, false);
    in.grenade |= std::exchange(_edge.grenade, false);
    in.zoom |= std::exchange(_edge.zoom, false);
    in.mine |= std::exchange(_edge.mine, false);
}

}  // namespace mm::app

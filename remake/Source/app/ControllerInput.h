// Bluetooth / USB game controller support (NEW in M12; the original had none). Left stick
// moves, right stick aims and fires past a dead edge, right trigger / R1 fires,
// X reload, Y switch weapon, B melee, A pick up, L1 grenade, R3 zoom, Start pauses.
#pragma once

#include <functional>

#include "axmol.h"

#include "game/Joypad.h"

namespace mm::app
{

class ControllerInput
{
public:
    // Registers the listener on `node`; call once. `onPause` is called on Start.
    void attach(ax::Node* node, std::function<void()> onPause);
    // True once a controller has been used; the touch pads stay available anyway.
    bool active() const { return _used; }
    // Adds this controller's input to the pad state of the current step.
    void apply(game::PadState& in);

private:
    void setAxis(int key, float value);
    void press(int key);

    ax::EventListenerController* _listener = nullptr;
    std::function<void()> _onPause;
    float _lx = 0, _ly = 0, _rx = 0, _ry = 0, _rt = 0;
    bool _r1 = false;
    bool _used = false;
    game::PadState _edge;
};

}  // namespace mm::app

// The original dual joysticks (Joypad): a move pad on the left, an aim/fire pad on the right,
// fixed at (75, 75) and (width - 75, 75). A touch within 90 points takes a pad; the knob moves
// up to 40 points from the centre. Pushing the aim knob past its edge fires.
#pragma once

#include "game/Rules.h"
#include "game/Vec2.h"

namespace mm::game
{

// What the soldier reads from the pads every step (Stage::updateStep).
struct PadState
{
    Vec2 moveVector;           // Joypad::getDirectionVector: knob - centre, points
    Vec2 moveOffset;           // Joypad::getOffset: (knob - centre) / radius
    bool moveTouched = false;  // Joypad +0x12f (copied to the soldier's +0x11c)
    float aimAngle = 0.0f;     // Joypad::getFireAngle, clockwise degrees
    bool firing = false;       // Joypad::fire
};

class Joypad
{
public:
    static constexpr int kNoTouch = -1;

    void setLayout(Vec2 moveCentre, Vec2 aimCentre, float radius = rules::kPadRadius);
    // Swap the pads (the original "InputSwap" setting; NEW: exposed as left-handed mode).
    void setSwapped(bool swapped) { _swapped = swapped; }

    bool touchBegan(int id, Vec2 p);  // Joypad::beginTouch; true when a pad took the touch
    void touchMoved(int id, Vec2 p);  // Joypad::touchMoveHandler
    void touchEnded(int id);          // Joypad::touchEndHandler
    void cancel();                    // Joypad::cancelTouches
    void updateStep();                // Joypad::updateStep (once per frame)

    PadState state() const;

    Vec2 moveCentre() const { return _swapped ? _aimCentre : _moveCentre; }
    Vec2 aimCentre() const { return _swapped ? _moveCentre : _aimCentre; }
    Vec2 moveKnob() const { return _moveKnob; }
    Vec2 aimKnob() const { return _aimKnob; }
    float radius() const { return _radius; }
    bool moveTouched() const { return _moveTouched; }
    bool aimTouched() const { return _aimActive; }
    bool fire() const { return _fire; }
    float fireAngle() const { return _fireAngle; }

private:
    Vec2 clampKnob(Vec2 centre, Vec2 touch) const;

    Vec2 _moveCentre{rules::kPadInset, rules::kPadInset};
    Vec2 _aimCentre{480 - rules::kPadInset, rules::kPadInset};
    float _radius = rules::kPadRadius;
    bool _swapped = false;

    int _aimTouch = kNoTouch, _moveTouch = kNoTouch;
    Vec2 _aimPoint, _movePoint;
    Vec2 _aimKnob{_aimCentre}, _moveKnob{_moveCentre};
    float _fireAngle = 0.0f;
    bool _aimActive = false;    // +0x130
    bool _moveTouched = false;  // +0x12f
    bool _fire = false;         // +0x12e
};

}  // namespace mm::game

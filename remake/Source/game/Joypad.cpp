#include "game/Joypad.h"

namespace mm::game
{

void Joypad::setLayout(Vec2 moveCentre, Vec2 aimCentre, float radius)
{
    _moveCentre = moveCentre;
    _aimCentre  = aimCentre;
    _radius     = radius;
    _moveKnob   = this->moveCentre();
    _aimKnob    = this->aimCentre();
}

bool Joypad::touchBegan(int id, Vec2 p)
{
    const float toAim  = (aimCentre() - p).length();
    const float toMove = (moveCentre() - p).length();
    if (_aimTouch == kNoTouch && toAim < rules::kPadTouchRadius)
    {
        _aimTouch  = id;
        _aimPoint  = p;
        _fireAngle = toCocosAngle(p - aimCentre());
        _aimActive = true;
        _fire      = _radius < toAim;
        return true;
    }
    if (_moveTouch == kNoTouch && toMove < rules::kPadTouchRadius)
    {
        _moveTouch   = id;
        _movePoint   = p;
        _moveTouched = true;
        return true;
    }
    return false;
}

void Joypad::touchMoved(int id, Vec2 p)
{
    if (id == _aimTouch)
    {
        _aimPoint  = p;
        _fireAngle = toCocosAngle(p - aimCentre());
        _aimActive = true;
        _fire      = (aimCentre() - p).length() > _radius;
    }
    if (id == _moveTouch)
        _movePoint = p;
    // The original also offers a moving finger to a free pad, so sliding onto a pad takes it.
    // It offered the finger that already holds the other pad too, letting one finger drive
    // both pads; the remake only offers fingers that hold no pad.
    if (id != _aimTouch && id != _moveTouch)
        touchBegan(id, p);
}

void Joypad::touchEnded(int id)
{
    if (id == _aimTouch)
    {
        _aimTouch  = kNoTouch;
        _fire      = false;
        _aimActive = false;
    }
    if (id == _moveTouch)
    {
        _moveTouch   = kNoTouch;
        _moveTouched = false;
    }
}

void Joypad::cancel()
{
    _aimTouch = _moveTouch = kNoTouch;
    _fire = _aimActive = _moveTouched = false;
}

Vec2 Joypad::clampKnob(Vec2 centre, Vec2 touch) const
{
    const Vec2 d = touch - centre;
    if (d.length() <= _radius)
        return touch;
    return centre + d.normalized() * _radius;
}

void Joypad::updateStep()
{
    if (_aimActive)
        _aimKnob = clampKnob(aimCentre(), _aimPoint);
    if (_moveTouched)
        _moveKnob = clampKnob(moveCentre(), _movePoint);
    else
        _moveKnob = moveCentre() * (1.0f - rules::kKnobReturn) + _moveKnob * rules::kKnobReturn;
}

PadState Joypad::state() const
{
    PadState s;
    s.moveVector  = _moveKnob - moveCentre();
    s.moveOffset  = s.moveVector * (1.0f / _radius);
    s.moveTouched = _moveTouched;
    s.aimAngle    = _fireAngle;
    s.firing      = _fire;
    return s;
}

}  // namespace mm::game

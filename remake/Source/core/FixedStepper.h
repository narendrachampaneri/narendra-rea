#pragma once

#include <algorithm>

namespace mm
{

// Turns variable frame time into a whole number of fixed simulation steps.
class FixedStepper
{
public:
    FixedStepper(float step, int maxSteps) : _step(step), _maxSteps(maxSteps) {}

    // Returns how many steps to run for this frame and keeps the remainder.
    int advance(float frameDt)
    {
        _accumulator += std::max(frameDt, 0.0f);
        int steps = 0;
        while (_accumulator >= _step && steps < _maxSteps)
        {
            _accumulator -= _step;
            ++steps;
        }
        if (steps == _maxSteps)
            _accumulator = 0.0f;  // drop the backlog instead of spiralling
        return steps;
    }

    float step() const { return _step; }
    float alpha() const { return _accumulator / _step; }  // render interpolation factor

private:
    float _step;
    int _maxSteps;
    float _accumulator = 0.0f;
};

}  // namespace mm

// Small 2D vector for the engine-free game code (points, y up).
#pragma once

#include <cmath>

namespace mm::game
{

struct Vec2
{
    float x = 0, y = 0;

    constexpr Vec2() = default;
    constexpr Vec2(float x_, float y_) : x(x_), y(y_) {}

    constexpr Vec2 operator+(Vec2 o) const { return {x + o.x, y + o.y}; }
    constexpr Vec2 operator-(Vec2 o) const { return {x - o.x, y - o.y}; }
    constexpr Vec2 operator*(float s) const { return {x * s, y * s}; }
    constexpr Vec2 operator-() const { return {-x, -y}; }
    Vec2& operator+=(Vec2 o) { x += o.x; y += o.y; return *this; }
    Vec2& operator-=(Vec2 o) { x -= o.x; y -= o.y; return *this; }
    constexpr bool operator==(const Vec2&) const = default;

    constexpr float dot(Vec2 o) const { return x * o.x + y * o.y; }
    float length() const { return std::sqrt(x * x + y * y); }
    // cpvnormalize as the original used it: divides by the length (callers check for zero).
    Vec2 normalized() const { const float l = length(); return {x / l, y / l}; }
};

constexpr float kDegToRad = 0.017453292f;
constexpr float kRadToDeg = 57.29578f;

// The original's vector-to-angle helper (Joypad / SoldierHostController): clockwise degrees in
// [0, 360), the cocos rotation convention. x == 0 is nudged to 1e-8 exactly like the original.
inline float toCocosAngle(Vec2 v)
{
    float x = v.x;
    if (x == 0.0f)
        x = 1e-8f;
    float deg = static_cast<float>(std::atan(-v.y / x) * 57.29578);
    if (x < 0.0f)
        deg += 180.0f;
    if (deg < 0.0f)
        deg += 360.0f;
    return deg;
}

// Unit vector for a cocos (clockwise, degrees) angle.
inline Vec2 fromCocosAngle(float degrees)
{
    const float r = -degrees * kDegToRad;
    return {std::cos(r), std::sin(r)};
}

}  // namespace mm::game

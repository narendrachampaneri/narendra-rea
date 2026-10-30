// PlayerDeath: when a soldier dies its head, body, arms and legs become six small physics
// bodies (circles of radius 4, mass 2) that tumble off with the soldier's speed plus a random
// kick, collide only with the map, and disappear after 5 seconds.
#pragma once

#include <array>

#include "chipmunk/chipmunk.h"

#include "game/Vec2.h"

namespace mm::game
{

class Physics;

class Ragdoll
{
public:
    enum Part { Head, Body, BackArm, FrontArm, BackLeg, FrontLeg, kParts };

    // `random` returns uniform values in [-1, 1] (the original's rand() / 2^30 - 1).
    template <class Random>
    Ragdoll(Physics& physics, Vec2 position, Vec2 velocity, float gravityFactor, bool facingRight, Random&& random)
        : _physics(physics)
    {
        std::array<Vec2, kParts> kicks;
        for (auto& k : kicks)
            k = {random() * 25.0f, random() * 25.0f};
        create(position, velocity, gravityFactor, facingRight, kicks);
    }
    ~Ragdoll();
    Ragdoll(const Ragdoll&) = delete;
    Ragdoll& operator=(const Ragdoll&) = delete;

    void updateStep(float dt) { _age += dt; }
    bool expired() const { return _age > kLifetime; }
    float age() const { return _age; }

    Vec2 partPosition(int part) const;
    float partAngle(int part) const;  // radians, counter-clockwise

    static constexpr float kLifetime = 5.0f;  // PlayerDeath +0x30

private:
    void create(Vec2 position, Vec2 velocity, float gravityFactor, bool facingRight, const std::array<Vec2, kParts>& kicks);

    Physics& _physics;
    std::array<cpBody*, kParts> _bodies{};
    std::array<cpShape*, kParts> _shapes{};
    Vec2 _gravity;
    float _age = 0.0f;
};

}  // namespace mm::game

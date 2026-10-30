#include "game/Ragdoll.h"

#include "game/Physics.h"
#include "game/Rules.h"

namespace mm::game
{

namespace
{
constexpr std::uint32_t kRagdollCollision = 2;  // PlayerDeath::addBodyShape: type, group, layers 2

// Where each part starts, relative to the soldier (SoldierView node positions x playerScale).
constexpr std::array<Vec2, Ragdoll::kParts> kPartOffsets{{
    {0, 27}, {0, 0}, {5, 15}, {-17, 15}, {-4, -12}, {14, -10},
}};

void velocity(cpBody* body, cpVect, cpFloat, cpFloat dt)
{
    const auto* g = static_cast<const Vec2*>(cpBodyGetUserData(body));
    cpBodySetVelocity(body, cpvadd(cpBodyGetVelocity(body), cpvmult(cpv(*g), dt)));
    cpFloat w = cpBodyGetAngularVelocity(body);
    cpBodySetAngularVelocity(body, cpfclamp(w, -10.0, 10.0));  // w_limit 10
}
}  // namespace

void Ragdoll::create(Vec2 position, Vec2 velocity_, float gravityFactor, bool facingRight,
                     const std::array<Vec2, kParts>& kicks)
{
    _gravity       = Vec2{0.0f, rules::kGravityIdle} * gravityFactor;
    cpSpace* space = _physics.space();
    for (int i = 0; i < kParts; ++i)
    {
        cpBody* body = cpSpaceAddBody(space, cpBodyNew(2.0, 8.0));
        cpBodySetUserData(body, &_gravity);
        cpBodySetVelocityUpdateFunc(body, velocity);
        Vec2 offset = kPartOffsets[i] * rules::kPlayerScale;
        if (!facingRight)
            offset.x = -offset.x;
        cpBodySetPosition(body, cpv(position + offset));
        cpBodySetVelocity(body, cpv(velocity_ + kicks[i]));
        cpShape* shape = cpSpaceAddShape(space, cpCircleShapeNew(body, 4.0, cpvzero));
        cpShapeSetElasticity(shape, 0.3);
        cpShapeSetFriction(shape, 0.99);
        setLegacyCollision(shape, kRagdollCollision);
        _bodies[i] = body;
        _shapes[i] = shape;
    }
}

Ragdoll::~Ragdoll()
{
    cpSpace* space = _physics.space();
    for (int i = 0; i < kParts; ++i)
    {
        cpSpaceRemoveShape(space, _shapes[i]);
        cpShapeFree(_shapes[i]);
        cpSpaceRemoveBody(space, _bodies[i]);
        cpBodyFree(_bodies[i]);
    }
}

Vec2 Ragdoll::partPosition(int part) const { return toVec(cpBodyGetPosition(_bodies[part])); }
float Ragdoll::partAngle(int part) const { return static_cast<float>(cpBodyGetAngle(_bodies[part])); }

}  // namespace mm::game

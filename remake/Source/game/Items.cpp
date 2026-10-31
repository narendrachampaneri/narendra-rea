#include "game/Items.h"

#include "game/Physics.h"
#include "game/Rules.h"

namespace mm::game
{

namespace
{
void itemVelocity(cpBody* body, cpVect, cpFloat damping, cpFloat dt)
{
    const auto* g = static_cast<const Vec2*>(cpBodyGetUserData(body));
    cpBodyUpdateVelocity(body, cpv(*g), damping, dt);
}
cpBool passThrough(cpArbiter*, cpSpace*, cpDataPointer) { return cpFalse; }
}  // namespace

void MapItem::installCollisionHandlers(cpSpace* space)
{
    for (std::uint32_t soldier : {rules::kSoldierCollision, rules::kRemoteCollision})
        cpSpaceAddCollisionHandler(space, rules::kItemCollision, soldier)->beginFunc = passThrough;
}

MapItem::MapItem(Physics& physics, int uid, std::unique_ptr<Weapon> weapon, Vec2 at, Vec2 velocity, float gravityFactor)
    : _physics(physics), _uid(uid), _weapon(std::move(weapon))
{
    // NEW sizes: a small box about the size of a weapon sprite at player scale.
    constexpr float kW = 24.0f, kH = 8.0f, kMass = 1.0f;
    _gravity       = Vec2{0.0f, rules::kGravityIdle} * gravityFactor;
    cpSpace* space = physics.space();
    _body = cpSpaceAddBody(space, cpBodyNew(kMass, cpMomentForBox(kMass, kW, kH)));
    cpBodySetPosition(_body, cpv(at));
    cpBodySetVelocity(_body, cpv(velocity));
    cpBodySetUserData(_body, &_gravity);
    cpBodySetVelocityUpdateFunc(_body, itemVelocity);
    _shape = cpSpaceAddShape(space, cpBoxShapeNew(_body, kW, kH, 0.0));
    cpShapeSetElasticity(_shape, 0.3);
    cpShapeSetFriction(_shape, 0.8);
    setLegacyCollision(_shape, rules::kItemCollision);
}

MapItem::~MapItem()
{
    cpSpace* space = _physics.space();
    cpSpaceRemoveShape(space, _shape);
    cpShapeFree(_shape);
    cpSpaceRemoveBody(space, _body);
    cpBodyFree(_body);
}

void MapItem::setMirrorPose(Vec2 at, float angle)
{
    if (cpBodyGetType(_body) != CP_BODY_TYPE_KINEMATIC)
    {
        cpBodySetType(_body, CP_BODY_TYPE_KINEMATIC);
        cpBodySetVelocityUpdateFunc(_body, [](cpBody*, cpVect, cpFloat, cpFloat) {});
        cpShapeSetFilter(_shape, CP_SHAPE_FILTER_NONE);
    }
    cpBodySetPosition(_body, cpv(at));
    cpBodySetAngle(_body, angle);
}

Vec2 MapItem::position() const { return toVec(cpBodyGetPosition(_body)); }
float MapItem::angle() const { return static_cast<float>(cpBodyGetAngle(_body)); }

}  // namespace mm::game

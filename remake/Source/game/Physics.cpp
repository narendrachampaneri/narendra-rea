#include "game/Physics.h"

#include "game/Rules.h"

namespace mm::game
{

void setLegacyCollision(cpShape* shape, std::uint32_t v)
{
    cpShapeSetCollisionType(shape, v);
    cpShapeSetFilter(shape, cpShapeFilterNew(static_cast<cpGroup>(v), v, v));
}

Physics::Physics() : _space(cpSpaceNew())
{
    cpSpaceSetIterations(_space, rules::kSpaceIterations);
    cpSpaceSetGravity(_space, cpvzero);  // every body brings its own gravity (velocity functions)
}

Physics::~Physics()
{
    // Bodies and shapes of soldiers belong to their owners and are gone by now.
    for (cpShape* shape : _mapShapes)
    {
        cpSpaceRemoveShape(_space, shape);
        cpShapeFree(shape);
    }
    cpSpaceFree(_space);
}

void Physics::addMap(const std::vector<TilePolygon>& polygons)
{
    cpBody* ground = cpSpaceGetStaticBody(_space);
    for (const auto& poly : polygons)
    {
        std::vector<cpVect> verts;
        verts.reserve(poly.vertices.size());
        for (const auto& v : poly.vertices)
            verts.push_back(cpv(v));
        cpShape* shape = cpPolyShapeNew(ground, static_cast<int>(verts.size()), verts.data(), cpTransformIdentity, 0.0);
        cpShapeSetElasticity(shape, rules::kMapElasticity);
        cpShapeSetFriction(shape, rules::kMapFriction);
        setLegacyCollision(shape, rules::kMapCollision);
        cpSpaceAddShape(_space, shape);
        _mapShapes.push_back(shape);
    }
}

void Physics::step(float dt)
{
    const float sub = dt / rules::kSubsteps;
    for (int i = 0; i < rules::kSubsteps; ++i)
        cpSpaceStep(_space, sub);
}

Physics::Hit Physics::segmentQuery(Vec2 from, Vec2 to, std::uint32_t layers) const
{
    cpSegmentQueryInfo info{};
    const cpShapeFilter filter = cpShapeFilterNew(CP_NO_GROUP, layers, layers);
    Hit hit;
    if (cpSpaceSegmentQueryFirst(_space, cpv(from), cpv(to), 0.0, filter, &info))
    {
        hit.shape  = const_cast<cpShape*>(info.shape);
        hit.point  = toVec(info.point);
        hit.normal = toVec(info.normal);
        hit.alpha  = static_cast<float>(info.alpha);
    }
    return hit;
}

}  // namespace mm::game

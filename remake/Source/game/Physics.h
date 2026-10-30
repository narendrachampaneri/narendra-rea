// The original's Chipmunk space (PhysicsManager), on Axmol's Chipmunk 7.
// Chipmunk 5 "layers" become categories + mask with the same bits, groups stay groups.
#pragma once

#include <cstdint>
#include <vector>

#include "chipmunk/chipmunk.h"

#include "game/TileCollision.h"
#include "game/Vec2.h"

namespace mm::game
{

inline cpVect cpv(Vec2 v) { return ::cpv(v.x, v.y); }
inline Vec2 toVec(cpVect v) { return {static_cast<float>(v.x), static_cast<float>(v.y)}; }

// Chipmunk 5 (type, group, layers) for a shape, the way the original set all three.
void setLegacyCollision(cpShape* shape, std::uint32_t typeGroupLayers);
void setLegacyCollision(cpShape* shape, std::uint32_t typeAndGroup, std::uint32_t layers);

class Physics
{
public:
    Physics();
    ~Physics();
    Physics(const Physics&) = delete;
    Physics& operator=(const Physics&) = delete;

    cpSpace* space() const { return _space; }

    // Static map shapes (MapManager::addStaticBodyShape: e 0.8, u 0.5, type/group/layers 0x143).
    void addMap(const std::vector<TilePolygon>& polygons);
    std::size_t mapShapeCount() const { return _mapShapes.size(); }

    // PhysicsManager::updateStep: `kSubsteps` cpSpaceStep calls of dt / kSubsteps.
    void step(float dt);

    struct Hit
    {
        cpShape* shape = nullptr;
        Vec2 point, normal;
        float alpha = 1.0f;  // 0..1 along the segment
        explicit operator bool() const { return shape != nullptr; }
    };
    // cpSpaceSegmentQueryFirst with Chipmunk 5 layers.
    Hit segmentQuery(Vec2 from, Vec2 to, std::uint32_t layers) const;

private:
    cpSpace* _space = nullptr;
    std::vector<cpShape*> _mapShapes;
};

}  // namespace mm::game

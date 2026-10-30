#include "game/TileCollision.h"

#include <array>

namespace mm::game
{
namespace
{

// MapManager::loadMap, dictionary +0x24: GID -> tile type (GIDs without an entry are type 0).
constexpr std::array<std::uint8_t, 200> kTileTypes{
    0,  1,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  1,  1,  1,  1,  1,  1,  1,  1,  1,  19, 19,
    10, 11, 13, 12, 29, 27, 5,  1,  19, 19, 19, 32, 19, 19, 19, 19, 19, 19, 15, 1,  14, 4,  15, 14, 13,
    12, 1,  1,  15, 14, 13, 12, 19, 6,  7,  1,  20, 20, 20, 24, 25, 18, 18, 9,  1,  0,  0,  0,  1,  13,
    12, 28, 1,  1,  26, 21, 21, 21, 39, 40, 19, 32, 15, 14, 5,  4,  1,  1,  1,  35, 36, 25, 24, 19, 34,
    33, 30, 31, 37, 38, 19, 1,  1,  1,  19, 21, 18, 20, 36, 30, 35, 31, 37, 38, 1,  1,  1,  1,  32, 30,
    31, 30, 31, 1,  1,  1,  1,  1,  1,  1,  1,  1,  19, 18, 20, 21, 30, 36, 35, 31, 1,  1,  1,  1,  1,
    1,  1,  1,  28, 26, 29, 27, 24, 25, 33, 34, 1,  1,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
    0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
};

struct ShapeDef
{
    int type;
    int count;
    std::array<Vec2, 6> v;  // in half-tile units around the tile centre
};

// MapManager::addStaticBodyShape, one case per tile type (types 22 and 23 have none).
constexpr ShapeDef kShapes[] = {
    {1, 4, {{{-1, -1}, {-1, 1}, {1, 1}, {1, -1}}}},
    {2, 4, {{{0, 0}, {0, 1}, {1, 1}, {1, 0}}}},
    {3, 4, {{{-1, 0}, {-1, 1}, {0, 1}, {0, 0}}}},
    {4, 4, {{{-1, -1}, {-1, 0}, {0, 0}, {0, -1}}}},
    {5, 4, {{{0, -1}, {0, 0}, {1, 0}, {1, -1}}}},
    {6, 3, {{{-1, 1}, {1, 1}, {1, -1}}}},
    {7, 3, {{{-1, -1}, {-1, 1}, {1, 1}}}},
    {8, 3, {{{-1, 1}, {1, -1}, {-1, -1}}}},
    {9, 3, {{{-1, -1}, {1, 1}, {1, -1}}}},
    {10, 3, {{{0, 1}, {1, 1}, {1, 0}}}},
    {11, 3, {{{-1, 0}, {-1, 1}, {0, 1}}}},
    {12, 3, {{{-1, -1}, {-1, 0}, {0, -1}}}},
    {13, 3, {{{0, -1}, {1, 0}, {1, -1}}}},
    {14, 5, {{{-1, -1}, {-1, 1}, {0, 1}, {1, 0}, {1, -1}}}},
    {15, 5, {{{-1, -1}, {-1, 0}, {0, 1}, {1, 1}, {1, -1}}}},
    {16, 5, {{{-1, 0}, {-1, 1}, {1, 1}, {1, -1}, {0, -1}}}},
    {17, 5, {{{-1, -1}, {-1, 1}, {1, 1}, {1, 0}, {0, -1}}}},
    {18, 4, {{{-1, 0}, {-1, 1}, {1, 1}, {1, 0}}}},
    {19, 4, {{{-1, -1}, {-1, 0}, {1, 0}, {1, -1}}}},
    {20, 4, {{{0, -1}, {0, 1}, {1, 1}, {1, -1}}}},
    {21, 4, {{{-1, -1}, {-1, 1}, {0, 1}, {0, -1}}}},
    {24, 3, {{{-1, 1}, {1, 1}, {1, 0}}}},
    {25, 3, {{{-1, 0}, {-1, 1}, {1, 1}}}},
    {26, 3, {{{-1, -1}, {-1, 1}, {0, 1}}}},
    {27, 3, {{{-1, -1}, {-1, 1}, {0, -1}}}},
    {28, 3, {{{0, 1}, {1, 1}, {1, -1}}}},
    {29, 3, {{{0, -1}, {1, 1}, {1, -1}}}},
    {30, 3, {{{-1, -1}, {-1, 0}, {1, -1}}}},
    {31, 3, {{{-1, -1}, {1, 0}, {1, -1}}}},
    {32, 6, {{{-1, -1}, {-1, 0}, {-0.5f, 1}, {0.5f, 1}, {1, 0}, {1, -1}}}},
    {33, 4, {{{-1, 1}, {1, 0}, {1, -1}, {-1, -1}}}},
    {34, 4, {{{-1, -1}, {-1, 0}, {1, 1}, {1, -1}}}},
    {35, 4, {{{-1, 0}, {-1, 1}, {1, 1}, {1, -1}}}},
    {36, 4, {{{-1, -1}, {-1, 1}, {1, 1}, {1, 0}}}},
    {37, 4, {{{-1, -1}, {-1, 1}, {0, 1}, {1, -1}}}},
    {38, 4, {{{-1, -1}, {0, 1}, {1, 1}, {1, -1}}}},
    {39, 4, {{{-1, -1}, {-1, 1}, {1, 1}, {0, -1}}}},
    {40, 4, {{{-1, 0}, {-1, 1}, {1, 1}, {1, -1}}}},
    {41, 4, {{{-1, -1}, {0, 1}, {1, 1}, {1, -1}}}},
    {42, 4, {{{-1, -1}, {0, 1}, {1, 1}, {1, -1}}}},
};

const ShapeDef* findShape(int type)
{
    for (const auto& s : kShapes)
        if (s.type == type)
            return &s;
    return nullptr;
}

}  // namespace

int tileType(std::uint32_t gid)
{
    return gid < kTileTypes.size() ? kTileTypes[gid] : 0;
}

bool isBoundaryType(int type)
{
    switch (type)
    {
    case 1: case 14: case 15: case 16: case 17: case 18: case 19: case 20: case 21: case 32:
        return true;
    default:
        return false;
    }
}

bool hasTileShape(int type)
{
    return findShape(type) != nullptr;
}

std::vector<Vec2> tileShape(int type, Vec2 centre, float half)
{
    std::vector<Vec2> out;
    if (const auto* s = findShape(type))
        for (int i = 0; i < s->count; ++i)
            out.push_back(centre + s->v[i] * half);
    return out;
}

std::vector<TilePolygon> buildMapCollision(const TileGrid& grid, float tileSize)
{
    // MapManager keeps width/height minus one; tiles on the outer ring are never looked up.
    const int maxX = grid.width - 1;
    const int maxY = grid.height - 1;
    auto inside = [&](int x, int y) { return x > 0 && y > 0 && x < maxX && y < maxY; };
    auto boundary = [&](int x, int y) { return inside(x, y) && isBoundaryType(tileType(grid.gid(x, y))); };

    std::vector<TilePolygon> out;
    const float half = tileSize / 2.0f;
    for (int y = 0; y < grid.height; ++y)
    {
        for (int x = 0; x < grid.width; ++x)
        {
            if (!inside(x, y))
                continue;
            const std::uint32_t gid = grid.gid(x, y);
            if (gid >= static_cast<std::uint32_t>(200))
                continue;
            const int type = tileType(gid);
            if (boundary(x, y + 1) && boundary(x, y - 1) && boundary(x + 1, y) && boundary(x - 1, y))
                continue;  // buried inside solid tiles
            const Vec2 centre{x * tileSize + half, (maxY - y) * tileSize + half};
            auto verts = tileShape(type, centre, half);
            if (!verts.empty())
                out.push_back({x, y, type, std::move(verts)});
        }
    }
    return out;
}

}  // namespace mm::game

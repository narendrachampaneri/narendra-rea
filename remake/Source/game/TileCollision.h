// Map collision exactly as MapManager::addStaticBodyShape builds it: every tile of the "tile"
// layer gets a convex polygon chosen by its tile type, except tiles whose four neighbours are
// all solid ("boundary") tiles and the outermost ring of the map, which never collide.
#pragma once

#include <cstdint>
#include <vector>

#include "game/Vec2.h"

namespace mm::game
{

// GIDs of one layer, row 0 at the top (Tiled order).
struct TileGrid
{
    int width = 0, height = 0;
    std::vector<std::uint32_t> gids;

    std::uint32_t gid(int x, int y) const
    {
        return (x < 0 || y < 0 || x >= width || y >= height) ? 0 : gids[static_cast<std::size_t>(y) * width + x];
    }
};

struct TilePolygon
{
    int tileX = 0, tileY = 0;  // Tiled coordinates (row 0 at the top)
    int type = 0;
    std::vector<Vec2> vertices;  // points, y up
};

int tileType(std::uint32_t gid);   // MapManager tile-type dictionary (+0x24); 0 = none
bool isBoundaryType(int type);     // dictionary +0x2c: solid enough to hide a neighbour
bool hasTileShape(int type);       // addStaticBodyShape has a polygon for this type

// The polygon of one tile type around a tile centre (half = half the tile size).
std::vector<Vec2> tileShape(int type, Vec2 centre, float half);

std::vector<TilePolygon> buildMapCollision(const TileGrid& grid, float tileSize = 64.0f);

}  // namespace mm::game

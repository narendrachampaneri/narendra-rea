// Engine-independent reading of the original Tiled maps (.tmx): size, layers, tileset and the
// "objects" layer (spawn points sp_*, weapon spawns wp_*, decorations sprite*).
#pragma once

#include <string>
#include <string_view>
#include <utility>
#include <vector>

namespace mm::assets
{

// Size of one tile in points (MapManager::loadMap: tileSize = 0x40).
constexpr float kTilePoints = 64.0f;

struct MapObject
{
    std::string name;
    float x = 0, y = 0;          // points, origin bottom-left (cocos convention)
    float width = 0, height = 0; // points
    std::vector<std::pair<std::string, std::string>> properties;

    std::string_view property(std::string_view key) const;
};

struct MapData
{
    int widthTiles  = 0;
    int heightTiles = 0;
    int tilePixels  = 0;  // 64 (sd), 128 (hd), 256 (hdr)
    std::string tileset;  // external .tsx file name
    std::vector<std::string> layers;
    std::vector<MapObject> objects;

    float widthPoints() const { return widthTiles * kTilePoints; }
    float heightPoints() const { return heightTiles * kTilePoints; }
    std::vector<const MapObject*> objectsWithPrefix(std::string_view prefix) const;
};

// Parses a .tmx document. Object coordinates in these maps are authored in points (they are
// identical in the sd, hd and hdr files), so they are only flipped to y-up, never scaled.
bool parseMap(std::string_view tmxXml, MapData& out, std::string* error = nullptr);

struct TilesetData
{
    int tilePixels = 0, spacing = 0, margin = 0;
    std::string image;
};

bool parseTileset(std::string_view tsxXml, TilesetData& out, std::string* error = nullptr);

}  // namespace mm::assets

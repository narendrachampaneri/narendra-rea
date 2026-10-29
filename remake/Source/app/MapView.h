// Draws one original map: the Tiled layers plus the decoration sprites of its object layer,
// layered like MapManager::addToLayer (spritebg behind the tiles, spritefg in front of players).
// It is also the world layer: soldiers, items and effects are added as children between
// kZTiles and kZFrontDecor, in map points.
#pragma once

#include "axmol.h"

#include "assets/MapCatalog.h"
#include "assets/MapData.h"

namespace mm::app
{

class MapView : public ax::Node
{
public:
    // z orders inside the world layer (MapManager::addToLayer(worldLayer, 1, 5))
    static constexpr int kZBackDecor  = 0;
    static constexpr int kZTiles      = 1;
    static constexpr int kZEntities   = 3;
    static constexpr int kZFrontDecor = 5;
    static constexpr int kZMarkers    = 10;

    static MapView* create(const assets::MapDef& def);

    const assets::MapDef& def() const { return *_def; }
    const assets::MapData& data() const { return *_data; }

    // Debug overlay: spawn points (green) and weapon spawns (yellow).
    void setMarkersVisible(bool visible);

private:
    bool init(const assets::MapDef& def);
    void addDecorations(std::string_view prefix, int z);

    const assets::MapDef* _def   = nullptr;
    const assets::MapData* _data = nullptr;
    ax::DrawNode* _markers       = nullptr;
};

}  // namespace mm::app

// Loads the original assets the way the original game did, within a memory budget:
//  - content scale + search paths for one art resolution (sd / hd / hdr),
//  - the two shared atlases (menuTexture, partsTexture) kept for the whole session,
//  - map textures (tileset, background) only while a map is shown.
#pragma once

#include <functional>
#include <string>
#include <unordered_map>

#include "axmol.h"

#include "assets/MapCatalog.h"
#include "assets/MapData.h"
#include "assets/Resolution.h"

namespace mm::app
{

class AssetManager
{
public:
    static AssetManager& get();

    // Call once at startup, before any texture is created.
    void configure(assets::Resolution res);
    assets::Resolution resolution() const { return _resolution; }

    // menuTexture.plist / partsTexture.plist (AppDelegate::loadTextures in the original).
    // The big textures decode on a worker thread; `done` runs on the game thread.
    void loadSharedAtlasesAsync(std::function<void()> done);
    bool sharedAtlasesLoaded() const { return _atlasesLoaded; }

    // Map objects (spawns, weapon spawns, decorations) in points. Always read from the sd file
    // so every device in a Wi-Fi match sees the same spawns, whatever art resolution it draws.
    const assets::MapData& mapData(const assets::MapDef& def);

    // Drops every texture nothing uses any more (the previous map's tileset and background).
    // Call one frame after the old map's nodes were removed.
    void releaseUnusedTextures();

    // Texture memory currently held by the texture cache, in MB (for the budget readout).
    float textureMemoryMB() const;

private:
    assets::Resolution _resolution = assets::Resolution::HDR;
    bool _atlasesLoaded            = false;
    std::unordered_map<std::string, assets::MapData> _mapData;
};

}  // namespace mm::app

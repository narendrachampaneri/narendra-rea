#include "app/AssetManager.h"

#include <memory>

using namespace ax;

namespace mm::app
{

AssetManager& AssetManager::get()
{
    static AssetManager instance;
    return instance;
}

void AssetManager::configure(assets::Resolution res)
{
    _resolution = res;
    Director::getInstance()->setContentScaleFactor(assets::contentScale(res));
    // Same lookup order as the original: the resolution folder first, then "files" for the
    // particle plists (loaded by bare name so their textures resolve in the resolution folder).
    FileUtils::getInstance()->setSearchPaths({std::string(assets::folder(res)), "files", ""});
}

void AssetManager::loadSharedAtlasesAsync(std::function<void()> done)
{
    if (_atlasesLoaded)
    {
        done();
        return;
    }
    static constexpr const char* kAtlases[] = {"menuTexture", "partsTexture"};
    auto remaining = std::make_shared<int>(static_cast<int>(std::size(kAtlases)));
    for (const char* name : kAtlases)
    {
        const std::string base = name;
        // addImageAsync calls back on the game thread once the texture is uploaded.
        Director::getInstance()->getTextureCache()->addImageAsync(base + ".png", [this, base, remaining, done](Texture2D* tex) {
            if (tex)
                SpriteFrameCache::getInstance()->addSpriteFramesWithFile(base + ".plist", tex);
            else
                AXLOGE("cannot load {}.png", base);
            if (--*remaining == 0)
            {
                _atlasesLoaded = true;
                done();
            }
        });
    }
}

const assets::MapData& AssetManager::mapData(const assets::MapDef& def)
{
    auto key = std::string(def.id);
    auto it  = _mapData.find(key);
    if (it != _mapData.end())
        return it->second;

    auto& data     = _mapData[key];
    const auto xml = FileUtils::getInstance()->getStringFromFile("sd/" + std::string(def.tmx));
    std::string error;
    if (!assets::parseMap(xml, data, &error))
        AXLOGE("map {}: {}", def.tmx, error);
    return data;
}

void AssetManager::releaseUnusedTextures()
{
    Director::getInstance()->getTextureCache()->removeUnusedTextures();
}

float AssetManager::textureMemoryMB() const
{
    // "TextureCache dumpDebugInfo: N textures, for X KB (Y MB)" is the last line.
    const auto info = Director::getInstance()->getTextureCache()->getCachedTextureInfo();
    const auto pos  = info.rfind("for ");
    if (pos == std::string::npos)
        return 0.0f;
    return std::strtof(info.c_str() + pos + 4, nullptr) / 1024.0f;
}

}  // namespace mm::app

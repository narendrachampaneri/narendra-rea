#include "app/MapView.h"

#include "app/AssetManager.h"

using namespace ax;

namespace mm::app
{

MapView* MapView::create(const assets::MapDef& def)
{
    auto* view = new MapView();
    if (view->init(def))
    {
        view->autorelease();
        return view;
    }
    delete view;
    return nullptr;
}

bool MapView::init(const assets::MapDef& def)
{
    if (!Node::init())
        return false;
    _def  = &def;
    _data = &AssetManager::get().mapData(def);

    auto* tiles = FastTMXTiledMap::create(def.tmx);
    if (!tiles)
    {
        AXLOGE("cannot load map {}", def.tmx);
        return false;
    }
    addChild(tiles, kZTiles);
    setContentSize(tiles->getContentSize());

    // The original also had a "spritemg" layer at the tile z order; no map uses it.
    addDecorations("spritebg", kZBackDecor);
    addDecorations("spritemg", kZTiles);
    addDecorations("spritefg", kZFrontDecor);

    _markers = DrawNode::create();
    for (const auto* o : _data->objectsWithPrefix("sp_"))
        _markers->drawDot(Vec2(o->x, o->y), 6.0f, Color4F(0.2f, 1.0f, 0.3f, 0.9f));
    for (const auto* o : _data->objectsWithPrefix("wp_"))
        _markers->drawDot(Vec2(o->x, o->y), 5.0f, Color4F(1.0f, 0.85f, 0.1f, 0.9f));
    _markers->setVisible(false);
    addChild(_markers, kZMarkers);
    return true;
}

void MapView::addDecorations(std::string_view prefix, int z)
{
    // MapManager::loadSpritesFromLayer: frame "<sprite>.png" at the object's location.
    for (const auto* o : _data->objectsWithPrefix(prefix))
    {
        const auto frame = std::string(o->property("sprite")) + ".png";
        auto* sprite     = Sprite::createWithSpriteFrameName(frame);
        if (!sprite)
        {
            AXLOGW("map {}: missing decoration {}", _def->tmx, frame);
            continue;
        }
        sprite->setPosition(o->x, o->y);
        addChild(sprite, z);
    }
}

void MapView::setMarkersVisible(bool visible)
{
    _markers->setVisible(visible);
}

}  // namespace mm::app

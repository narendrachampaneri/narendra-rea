#include "assets/MapData.h"

#include "pugixml/pugixml.hpp"

namespace mm::assets
{

std::string_view MapObject::property(std::string_view key) const
{
    for (const auto& [k, v] : properties)
        if (k == key)
            return v;
    return {};
}

std::vector<const MapObject*> MapData::objectsWithPrefix(std::string_view prefix) const
{
    std::vector<const MapObject*> out;
    for (const auto& o : objects)
        if (std::string_view(o.name).substr(0, prefix.size()) == prefix)
            out.push_back(&o);
    return out;
}

static bool load(pugi::xml_document& doc, std::string_view xml, std::string* error)
{
    auto result = doc.load_buffer(xml.data(), xml.size());
    if (!result && error)
        *error = result.description();
    return static_cast<bool>(result);
}

bool parseMap(std::string_view tmxXml, MapData& out, std::string* error)
{
    pugi::xml_document doc;
    if (!load(doc, tmxXml, error))
        return false;
    auto map = doc.child("map");
    if (!map || std::string_view(map.attribute("orientation").as_string()) != "orthogonal")
    {
        if (error)
            *error = "not an orthogonal map";
        return false;
    }
    out             = MapData{};
    out.widthTiles  = map.attribute("width").as_int();
    out.heightTiles = map.attribute("height").as_int();
    out.tilePixels  = map.attribute("tilewidth").as_int();
    out.tileset     = map.child("tileset").attribute("source").as_string();
    for (auto layer : map.children("layer"))
        out.layers.emplace_back(layer.attribute("name").as_string());

    const float mapHeight = out.heightPoints();
    for (auto group : map.children("objectgroup"))
    {
        for (auto obj : group.children("object"))
        {
            MapObject o;
            o.name   = obj.attribute("name").as_string();
            o.width  = obj.attribute("width").as_float();
            o.height = obj.attribute("height").as_float();
            o.x      = obj.attribute("x").as_float();
            // Tiled is y-down from the top; the game is y-up (same flip as CCTMXMapInfo).
            o.y = mapHeight - obj.attribute("y").as_float() - o.height;
            for (auto p : obj.child("properties").children("property"))
                o.properties.emplace_back(p.attribute("name").as_string(), p.attribute("value").as_string());
            out.objects.push_back(std::move(o));
        }
    }
    return out.widthTiles > 0 && out.heightTiles > 0;
}

bool parseTileset(std::string_view tsxXml, TilesetData& out, std::string* error)
{
    pugi::xml_document doc;
    if (!load(doc, tsxXml, error))
        return false;
    auto ts        = doc.child("tileset");
    out.tilePixels = ts.attribute("tilewidth").as_int();
    out.spacing    = ts.attribute("spacing").as_int();
    out.margin     = ts.attribute("margin").as_int();
    out.image      = ts.child("image").attribute("source").as_string();
    return out.tilePixels > 0 && !out.image.empty();
}

}  // namespace mm::assets

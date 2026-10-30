#include "assets/MapData.h"

#include <zlib.h>

#include "pugixml/pugixml.hpp"

namespace mm::assets
{

namespace
{

std::vector<unsigned char> decodeBase64(std::string_view text)
{
    auto value = [](char c) -> int {
        if (c >= 'A' && c <= 'Z') return c - 'A';
        if (c >= 'a' && c <= 'z') return c - 'a' + 26;
        if (c >= '0' && c <= '9') return c - '0' + 52;
        if (c == '+') return 62;
        if (c == '/') return 63;
        return -1;
    };
    std::vector<unsigned char> out;
    unsigned int buffer = 0;
    int bits = 0;
    for (char c : text)
    {
        const int v = value(c);
        if (v < 0)
            continue;  // whitespace and '=' padding
        buffer = (buffer << 6) | static_cast<unsigned int>(v);
        bits += 6;
        if (bits >= 8)
        {
            bits -= 8;
            out.push_back(static_cast<unsigned char>((buffer >> bits) & 0xff));
        }
    }
    return out;
}

// gzip or zlib stream (Tiled writes either), into exactly `size` bytes.
bool inflateExact(const std::vector<unsigned char>& in, std::vector<unsigned char>& out, std::size_t size)
{
    out.assign(size, 0);
    z_stream zs{};
    if (inflateInit2(&zs, 15 + 32) != Z_OK)
        return false;
    zs.next_in   = const_cast<unsigned char*>(in.data());
    zs.avail_in  = static_cast<uInt>(in.size());
    zs.next_out  = out.data();
    zs.avail_out = static_cast<uInt>(out.size());
    const int rc = inflate(&zs, Z_FINISH);
    inflateEnd(&zs);
    return (rc == Z_STREAM_END || rc == Z_BUF_ERROR) && zs.avail_out == 0;
}

std::vector<std::uint32_t> readLayerGids(const pugi::xml_node& layer)
{
    const int w   = layer.attribute("width").as_int();
    const int h   = layer.attribute("height").as_int();
    auto data     = layer.child("data");
    const auto enc = std::string_view(data.attribute("encoding").as_string());
    const auto cmp = std::string_view(data.attribute("compression").as_string());
    if (w <= 0 || h <= 0 || enc != "base64")
        return {};
    auto bytes = decodeBase64(data.child_value());
    const std::size_t size = static_cast<std::size_t>(w) * h * 4;
    if (cmp == "gzip" || cmp == "zlib")
    {
        std::vector<unsigned char> raw;
        if (!inflateExact(bytes, raw, size))
            return {};
        bytes.swap(raw);
    }
    if (bytes.size() < size)
        return {};
    std::vector<std::uint32_t> gids(static_cast<std::size_t>(w) * h);
    for (std::size_t i = 0; i < gids.size(); ++i)
    {
        const std::uint32_t v = bytes[i * 4] | (bytes[i * 4 + 1] << 8) | (bytes[i * 4 + 2] << 16) |
                                (static_cast<std::uint32_t>(bytes[i * 4 + 3]) << 24);
        gids[i] = v & 0x1fffffffu;  // drop the flip flags, like CCTMXLayer::tileGIDAt
    }
    return gids;
}

}  // namespace

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
    {
        out.layers.emplace_back(layer.attribute("name").as_string());
        if (out.layers.back() == "tile")
            out.collisionGids = readLayerGids(layer);
    }

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

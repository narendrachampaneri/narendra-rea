#include "doctest/doctest.h"

#include <filesystem>
#include <fstream>
#include <regex>
#include <set>
#include <sstream>
#include <string>

#include "assets/MapCatalog.h"
#include "assets/MapData.h"
#include "assets/Resolution.h"
#include "audio/SoundBank.h"

using namespace mm::assets;
using mm::audio::kSounds;

TEST_CASE("Original resolution choice and scale")
{
    CHECK(chooseOriginal(2400, 1080) == Resolution::HDR);  // any current phone
    CHECK(chooseOriginal(1280, 720) == Resolution::HD);
    CHECK(chooseOriginal(960, 640) == Resolution::HD);
    CHECK(chooseOriginal(480, 320) == Resolution::SD);
    CHECK(chooseOriginal(2400, 1080, false) == Resolution::SD);  // RetinaMode off
    CHECK(contentScale(Resolution::SD) == 1.0f);
    CHECK(contentScale(Resolution::HD) == 2.0f);
    CHECK(contentScale(Resolution::HDR) == 4.0f);
    CHECK(folder(Resolution::HDR) == "hdr");
}

TEST_CASE("Map catalogue matches the original table")
{
    std::set<std::string_view> ids;
    int rotation = 0;
    for (const auto& m : kMaps)
    {
        ids.insert(m.id);
        if (m.kind == MapKind::Multiplayer && m.inOriginalRotation)
            ++rotation;
    }
    CHECK(ids.size() == kMaps.size());
    CHECK(rotation == 12);
    CHECK(findMap("lunarcy")->gravityFactor == 0.0f);
    CHECK(findMap("icebox")->playerModifier == 15);
    CHECK(findMap("snow_blind")->playerModifier == 15);
    CHECK_FALSE(findMap("hunger")->inOriginalRotation);
    CHECK(findMap("nope") == nullptr);
}

TEST_CASE("Map parser flips object coordinates to y-up points")
{
    const char* tmx = R"(<?xml version="1.0"?>
<map version="1.0" orientation="orthogonal" width="10" height="5" tilewidth="256" tileheight="256">
 <tileset firstgid="1" source="t64_new.tsx"/>
 <layer name="tilebg" width="10" height="5"><data/></layer>
 <layer name="tile" width="10" height="5"><data/></layer>
 <objectgroup name="objects" width="10" height="5">
  <object name="sp_p_00" x="100" y="20"/>
  <object name="wp_p_01" x="64" y="64" width="10" height="20">
   <properties><property name="weapon" value="ak47,m16"/></properties>
  </object>
 </objectgroup>
</map>)";
    MapData m;
    REQUIRE(parseMap(tmx, m));
    CHECK(m.widthTiles == 10);
    CHECK(m.tilePixels == 256);
    CHECK(m.tileset == "t64_new.tsx");
    CHECK(m.layers.size() == 2);
    REQUIRE(m.objects.size() == 2);
    CHECK(m.objects[0].x == 100.0f);
    CHECK(m.objects[0].y == 5 * 64.0f - 20.0f);
    CHECK(m.objects[1].y == 5 * 64.0f - 64.0f - 20.0f);
    CHECK(m.objects[1].property("weapon") == "ak47,m16");
    CHECK(m.objectsWithPrefix("sp_").size() == 1);
}

TEST_CASE("Sound table matches the original ids")
{
    for (std::size_t i = 0; i < kSounds.size(); ++i)
        CHECK(static_cast<std::size_t>(kSounds[i].id) == i);
    CHECK(kSounds.size() == 98);
    CHECK(mm::audio::soundDef(mm::audio::SoundId::Grenade1).name == "grenade1");
    CHECK(mm::audio::soundDef(mm::audio::SoundId::Hoorah).group == 2);
    for (const auto& s : kSounds)
        if (!s.voice)
            CHECK_MESSAGE(!s.file.empty(), "effect without a sound: " << s.name);
}

#ifdef MM_CONTENT_DIR
namespace
{
const std::filesystem::path kContent = MM_CONTENT_DIR;

std::string readFile(const std::filesystem::path& p)
{
    std::ifstream f(p, std::ios::binary);
    std::stringstream ss;
    ss << f.rdbuf();
    return ss.str();
}

std::string plistString(const std::string& plist, const std::string& key)
{
    std::smatch m;
    std::regex re("<key>" + key + "</key>\\s*<string>([^<]*)</string>");
    return std::regex_search(plist, m, re) ? m[1].str() : std::string();
}

const Resolution kAll[] = {Resolution::SD, Resolution::HD, Resolution::HDR};
}  // namespace

TEST_CASE("Every map loads in every resolution with its tileset and background")
{
    // Quirks of the original data, kept as they are: weapon spawns parked off the map, and one
    // extra weapon spawn in the hdr copy of the unused Hunger map (objects are read from sd).
    const std::set<std::string> kOffMap = {"10pyramid_new.tmx/wp_p_20", "11catacombs_new.tmx/wp_p_20"};
    std::set<std::string> offMap;
    for (const auto& def : kMaps)
    {
        MapData reference;
        for (auto res : kAll)
        {
            const auto dir = kContent / folder(res);
            INFO(def.tmx << " @ " << folder(res));
            MapData m;
            std::string err;
            REQUIRE_MESSAGE(parseMap(readFile(dir / def.tmx), m, &err), err);
            CHECK(m.tilePixels == static_cast<int>(kTilePoints * contentScale(res)));
            CHECK(std::filesystem::exists(dir / def.background));
            TilesetData ts;
            REQUIRE(parseTileset(readFile(dir / m.tileset), ts));
            CHECK(ts.tilePixels == m.tilePixels);
            CHECK(std::filesystem::exists(dir / ts.image));
            CHECK(std::find(m.layers.begin(), m.layers.end(), "tile") != m.layers.end());
            for (const auto& o : m.objects)
                if (o.x < 0.0f || o.x > m.widthPoints() || o.y < 0.0f || o.y > m.heightPoints())
                    offMap.insert(std::string(def.tmx) + "/" + o.name);
            if (res == Resolution::SD)
                reference = m;
            else if (def.id == "hunger" && res == Resolution::HDR)
                CHECK(m.objects.size() == reference.objects.size() + 1);
            else
            {
                // object positions are resolution independent
                REQUIRE(m.objects.size() == reference.objects.size());
                for (std::size_t i = 0; i < m.objects.size(); ++i)
                {
                    CHECK(m.objects[i].x == reference.objects[i].x);
                    CHECK(m.objects[i].y == reference.objects[i].y);
                }
            }
        }
        if (def.kind == MapKind::Multiplayer)
            CHECK(!reference.objectsWithPrefix("sp_").empty());
    }
    CHECK(offMap == kOffMap);
}

TEST_CASE("Atlases, decorations and particle textures exist in every resolution")
{
    for (auto res : kAll)
    {
        const auto dir = kContent / folder(res);
        INFO(folder(res));
        const auto menu = readFile(dir / "menuTexture.plist");
        CHECK(std::filesystem::exists(dir / plistString(menu, "textureFileName")));
        CHECK(std::filesystem::exists(dir / plistString(readFile(dir / "partsTexture.plist"), "textureFileName")));
        CHECK(std::filesystem::exists(dir / "font02_new.png"));
        for (const auto& def : kMaps)
        {
            MapData m;
            REQUIRE(parseMap(readFile(dir / def.tmx), m));
            for (const auto* o : m.objectsWithPrefix("sprite"))
            {
                const std::string frame = "<key>" + std::string(o->property("sprite")) + ".png</key>";
                CHECK_MESSAGE(menu.find(frame) != std::string::npos, def.tmx << " decoration " << o->property("sprite"));
            }
        }
        for (const auto& e : std::filesystem::directory_iterator(kContent / "files"))
        {
            const auto tex = plistString(readFile(e.path()), "textureFileName");
            CHECK_MESSAGE(std::filesystem::exists(dir / tex), e.path().filename().string() << " -> " << tex);
        }
    }
}

TEST_CASE("Sound files, music and fonts exist and every sound is licensed")
{
    const auto licences = readFile(kContent / ".." / "ASSETS-LICENSES.md");
    std::set<std::string> referenced;
    for (const auto& s : kSounds)
    {
        if (s.file.empty())
            continue;
        referenced.insert(std::string(s.file));
        CHECK_MESSAGE(std::filesystem::exists(kContent / s.file), s.file);
        CHECK_MESSAGE(licences.find("`" + std::string(s.file) + "`") != std::string::npos, s.file);
    }
    for (const auto& e : std::filesystem::directory_iterator(kContent / "sounds"))
        CHECK_MESSAGE(referenced.count("sounds/" + e.path().filename().string()) == 1,
                      "unused sound file " << e.path().filename().string());
    CHECK(std::filesystem::exists(kContent / "music" / "presMix.mp3"));
    for (auto font : {"GROBOLD.ttf", "digitalix.ttf", "Marker Felt.ttf", "arial.ttf"})
        CHECK(std::filesystem::exists(kContent / "fonts" / font));
}
#endif

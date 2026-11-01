#include "save/SaveData.h"

#include <algorithm>
#include <cstdio>
#include <cstdlib>
#include <sstream>

namespace mm::save
{

std::uint32_t crc32(std::string_view bytes)
{
    std::uint32_t crc = 0xffffffffu;
    for (unsigned char c : bytes)
    {
        crc ^= c;
        for (int i = 0; i < 8; ++i)
            crc = (crc >> 1) ^ (0xedb88320u & (0u - (crc & 1u)));
    }
    return ~crc;
}

namespace
{
// Names are free text: keep them to one line of safe characters.
std::string cleanName(std::string n)
{
    n.erase(std::remove_if(n.begin(), n.end(), [](unsigned char c) { return c < 32 || c == 127; }), n.end());
    if (n.size() > 16)
        n.resize(16);
    return n;
}
std::string escape(const std::string& s)  // spaces are fine after the key; only newlines would break lines
{
    return s;
}
}  // namespace

std::string toText(const SaveData& d)
{
    std::ostringstream o;
    o << "MMSAVE " << kSaveVersion << "\n";
    o << "name " << escape(cleanName(d.name)) << "\n";
    o << "first " << d.firstLaunchDone << "\n";
    o << "coins " << d.coins << "\n";
    o << "upgrades " << d.upgrades << "\n";
    o << "pro " << d.proPack << "\n";
    o << "avatar " << d.avatar.head << ' ' << d.avatar.body << ' ' << d.avatar.arm << ' ' << d.avatar.leg << "\n";
    const Settings& s = d.settings;
    o << "settings " << s.soundVolume << ' ' << s.musicVolume << ' ' << s.blood << ' ' << s.bloodColour << ' '
      << s.centredCamera << ' ' << s.leftHanded << ' ' << s.autoFire << ' ' << s.vibration << ' ' << s.sensitivity
      << ' ' << s.quickMessages << ' ' << static_cast<int>(s.quality) << ' ' << s.frameRate << ' ' << s.qualityAuto << ' ' << s.crosshair;
    for (int off : s.buttonOffset)
        o << ' ' << off;
    o << "\n";
    const Stats& t = d.stats;
    o << "stats " << t.kills << ' ' << t.deaths << ' ' << t.matches << ' ' << t.bestSurvivalWave << ' '
      << t.bestSurvivalScore << ' ' << t.bestCoopWave << ' ' << t.bestDeathmatchKills << ' ' << t.playSeconds << "\n";
    for (const auto& [name, f] : d.friends)
        o << "friend " << f.kills << ' ' << f.deaths << ' ' << f.matches << ' ' << escape(cleanName(name)) << "\n";
    o << "seen " << d.lastSeenVersion << "\n";
    std::string body = o.str();
    char crc[16];
    std::snprintf(crc, sizeof crc, "%08x", crc32(body));
    return body + "crc " + crc + "\n";
}

std::optional<SaveData> fromText(std::string_view text)
{
    const auto crcAt = text.rfind("crc ");
    if (crcAt == std::string_view::npos || (crcAt != 0 && text[crcAt - 1] != '\n'))
        return std::nullopt;
    const std::string_view body = text.substr(0, crcAt);
    std::string crcText(text.substr(crcAt + 4));
    while (!crcText.empty() && (crcText.back() == '\n' || crcText.back() == '\r' || crcText.back() == ' '))
        crcText.pop_back();
    char* end = nullptr;
    const unsigned long want = std::strtoul(crcText.c_str(), &end, 16);
    if (crcText.empty() || *end != '\0' || static_cast<std::uint32_t>(want) != crc32(body))
        return std::nullopt;

    std::istringstream in{std::string(body)};
    std::string line;
    if (!std::getline(in, line) || line.rfind("MMSAVE ", 0) != 0)
        return std::nullopt;
    if (std::atoi(line.c_str() + 7) > kSaveVersion || std::atoi(line.c_str() + 7) < 1)
        return std::nullopt;

    SaveData d;
    while (std::getline(in, line))
    {
        const auto sp = line.find(' ');
        const std::string key = line.substr(0, sp);
        const std::string rest = sp == std::string::npos ? "" : line.substr(sp + 1);
        std::istringstream v(rest);
        if (key == "name") d.name = cleanName(rest);
        else if (key == "first") { int x = 0; v >> x; d.firstLaunchDone = x != 0; }
        else if (key == "coins") { v >> d.coins; d.coins = std::clamp(d.coins, 0, 99999999); }
        else if (key == "upgrades") { unsigned x = 0; v >> x; d.upgrades = static_cast<std::uint16_t>(x & ((1u << config::kUpgrades.size()) - 1)); }
        else if (key == "pro") { int x = 0; v >> x; d.proPack = x != 0; }
        else if (key == "avatar")
        {
            v >> d.avatar.head >> d.avatar.body >> d.avatar.arm >> d.avatar.leg;
            d.avatar.head = std::clamp(d.avatar.head, 1, kHeads);
            d.avatar.body = std::clamp(d.avatar.body, 1, kBodies);
            d.avatar.arm  = std::clamp(d.avatar.arm, 1, kArms);
            d.avatar.leg  = std::clamp(d.avatar.leg, 1, kLegs);
        }
        else if (key == "settings")
        {
            Settings& s = d.settings;
            int blood = 1, centred = 0, left = 0, auto_ = 0, vib = 1, qm = 1, q = 1, qa = 1;
            v >> s.soundVolume >> s.musicVolume >> blood >> s.bloodColour >> centred >> left >> auto_ >> vib >>
                s.sensitivity >> qm >> q >> s.frameRate;
            if (!(v >> qa))
                qa = 1;
            s.qualityAuto = qa != 0;
            if (!(v >> s.crosshair))
                s.crosshair = 0;
            s.crosshair = std::clamp(s.crosshair, 0, 3);
            for (int& o : s.buttonOffset)
            {
                if (!(v >> o))
                    o = 0;
                o = std::clamp(o, -400, 400);
            }
            s.blood = blood; s.centredCamera = centred; s.leftHanded = left; s.autoFire = auto_;
            s.vibration = vib; s.quickMessages = qm;
            s.soundVolume = std::clamp(s.soundVolume, 0, 100);
            s.musicVolume = std::clamp(s.musicVolume, 0, 100);
            s.bloodColour = std::clamp(s.bloodColour, 0, static_cast<int>(kBloodColours.size()) - 1);
            s.sensitivity = std::clamp(s.sensitivity, 50, 150);
            s.quality     = static_cast<Quality>(std::clamp(q, 0, 3));
            s.frameRate   = (s.frameRate == 30 || s.frameRate == 60 || s.frameRate == 90 || s.frameRate == 120) ? s.frameRate : 60;
        }
        else if (key == "stats")
        {
            Stats& t = d.stats;
            v >> t.kills >> t.deaths >> t.matches >> t.bestSurvivalWave >> t.bestSurvivalScore >> t.bestCoopWave >>
                t.bestDeathmatchKills >> t.playSeconds;
            t.kills = std::max(t.kills, 0); t.deaths = std::max(t.deaths, 0); t.matches = std::max(t.matches, 0);
            t.playSeconds = std::max<std::int64_t>(t.playSeconds, 0);
        }
        else if (key == "friend")
        {
            Friend f;
            v >> f.kills >> f.deaths >> f.matches;
            std::string name;
            std::getline(v >> std::ws, name);
            name = cleanName(name);
            if (!name.empty() && d.friends.size() < 200)
                d.friends[name] = f;
        }
        else if (key == "seen") d.lastSeenVersion = rest;
        // anything else: a newer field this version does not know; skip it
    }
    return d;
}

}  // namespace mm::save

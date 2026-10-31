#include <algorithm>
#include "net/Protocol.h"

#include <cmath>

namespace mm::net
{

const std::array<const char*, 12> kQuickMessages = {
    "Nice shot!", "Good game", "Follow me", "Cover me", "Need help!", "Watch out!",
    "Thanks", "Sorry", "Let's go", "Hold the line", "Over here", "Well played",
};

namespace
{

constexpr float kPosScale   = 4.0f;     // velocities: 0.25 point/s steps, +-8191
constexpr float kAngleScale = 1000.0f;  // radians

template <class T> constexpr MsgType typeOf();
#define MM_TYPE(T) template <> constexpr MsgType typeOf<T>() { return MsgType::T; }
MM_TYPE(Discover) MM_TYPE(Announce) MM_TYPE(Join) MM_TYPE(JoinReply) MM_TYPE(LobbyState) MM_TYPE(SetReady)
MM_TYPE(StartMatch) MM_TYPE(Input) MM_TYPE(Snapshot) MM_TYPE(ItemList) MM_TYPE(Event) MM_TYPE(Chat) MM_TYPE(Leave)
MM_TYPE(Ping) MM_TYPE(Pong) MM_TYPE(MatchEnd) MM_TYPE(ReturnToLobby) MM_TYPE(Kick)
#undef MM_TYPE

float wrapAngle(float a)
{
    const float twoPi = 6.2831853f;
    a                 = std::remainder(a, twoPi);
    return a;
}

void putOptions(Writer& w, const HostOptions& o)
{
    w.u8(static_cast<std::uint8_t>(o.mode));
    w.u8(o.map);
    w.u8(o.minutes);
    w.u8(o.maxPlayers);
    w.u8(o.killLimit);
    w.u8(o.fair ? 1 : 0);
    w.u8(o.respawn);
    w.u8(o.friendlyFire ? 1 : 0);
    w.u8(o.party);
}
HostOptions getOptions(Reader& r)
{
    HostOptions o;
    o.mode       = static_cast<GameMode>(r.u8());
    o.map        = r.u8();
    o.minutes    = r.u8();
    o.maxPlayers = r.u8();
    o.killLimit  = r.u8();
    o.fair       = r.u8() != 0;
    o.respawn    = std::clamp<std::uint8_t>(r.u8(), 3, 15);
    o.friendlyFire = r.u8() != 0;
    o.party      = r.u8() & 0x0f;
    return o;
}
void putPlayers(Writer& w, const std::vector<PlayerInfo>& ps)
{
    w.u8(static_cast<std::uint8_t>(ps.size()));
    for (const auto& p : ps)
    {
        w.u8(p.id);
        w.str(p.name);
        w.u8(p.team);
        w.u8((p.ready ? 1 : 0) | (p.host ? 2 : 0));
        w.u16(p.upgrades);
    }
}
std::vector<PlayerInfo> getPlayers(Reader& r)
{
    std::vector<PlayerInfo> out;
    const int n = std::min<int>(r.u8(), kMaxPlayers);
    for (int i = 0; i < n && r.ok(); ++i)
    {
        PlayerInfo p;
        p.id        = r.u8();
        p.name      = r.str();
        p.team      = r.u8();
        const auto f = r.u8();
        p.ready     = f & 1;
        p.host      = f & 2;
        p.upgrades  = r.u16();
        out.push_back(std::move(p));
    }
    return out;
}

void put(Writer&, const Leave&) {}
void put(Writer& w, const Discover& m) { w.u32(m.nonce); }
void put(Writer& w, const Announce& m)
{
    w.u32(m.nonce);
    w.str(m.hostName);
    w.u8(m.players);
    w.u8(m.maxPlayers);
    w.u8(static_cast<std::uint8_t>(m.mode));
    w.u8(m.map);
    w.u8(static_cast<std::uint8_t>(m.state));
    w.u16(m.port);
}
void put(Writer& w, const Join& m) { w.str(m.name); w.u8(m.version); w.u32(m.token); w.u16(m.upgrades); }
void put(Writer& w, const JoinReply& m) { w.u8(static_cast<std::uint8_t>(m.result)); w.u8(m.playerId); w.u32(m.token); }
void put(Writer& w, const LobbyState& m) { putOptions(w, m.options); putPlayers(w, m.players); }
void put(Writer& w, const SetReady& m) { w.u8(m.ready ? 1 : 0); w.u8(m.team); }
void put(Writer& w, const StartMatch& m) { w.u32(m.seed); putOptions(w, m.options); putPlayers(w, m.players); }
void put(Writer& w, const Input& m)
{
    w.u32(m.seq);
    w.u8(m.bits);
    w.u8(static_cast<std::uint8_t>(m.moveX));
    w.u8(static_cast<std::uint8_t>(m.moveY));
    w.u16(m.aim);
}
void put(Writer& w, const Snapshot& m)
{
    w.u32(m.tick);
    w.u16(m.timeLeft);
    w.u8(m.wave);
    w.u8(static_cast<std::uint8_t>(std::min<std::size_t>(m.fighters.size(), kMaxPlayers)));
    for (std::size_t i = 0; i < m.fighters.size() && i < kMaxPlayers; ++i)
    {
        const auto& f = m.fighters[i];
        w.u8(f.id);
        w.f32(f.x);
        w.f32(f.y);
        w.fixed16(f.vx, kPosScale);
        w.fixed16(f.vy, kPosScale);
        w.fixed16(wrapAngle(f.angle), kAngleScale);
        w.u16(f.aim);
        w.u8(f.health);
        w.u8(f.power);
        w.u8(f.weapon);
        w.u8(f.secondary);
        w.u8(f.clip);
        w.u16(f.ammo);
        w.u8(f.grenades);
        w.u8(f.flags);
        w.u8(f.reloadPct);
    }
    w.u8(static_cast<std::uint8_t>(std::min(m.tracers.size(), kMaxTracers)));
    for (std::size_t i = 0; i < m.tracers.size() && i < kMaxTracers; ++i)
    {
        const auto& t = m.tracers[i];
        w.f32(t.x);
        w.f32(t.y);
        w.u16(t.angle);
        w.u8(t.trail);
        w.u8(t.opacity);
    }
    w.u8(static_cast<std::uint8_t>(std::min(m.grenades.size(), kMaxGrenades)));
    for (std::size_t i = 0; i < m.grenades.size() && i < kMaxGrenades; ++i)
    {
        w.f32(m.grenades[i].x);
        w.f32(m.grenades[i].y);
        w.fixed16(wrapAngle(m.grenades[i].angle), kAngleScale);
    }
    w.u8(static_cast<std::uint8_t>(std::min(m.rockets.size(), kMaxRockets)));
    for (std::size_t i = 0; i < m.rockets.size() && i < kMaxRockets; ++i)
    {
        w.f32(m.rockets[i].x);
        w.f32(m.rockets[i].y);
        w.u16(m.rockets[i].angle);
    }
    w.u8(static_cast<std::uint8_t>(std::min<std::size_t>(m.scores.size(), kMaxPlayers)));
    for (std::size_t i = 0; i < m.scores.size() && i < kMaxPlayers; ++i)
    {
        w.u8(m.scores[i].id);
        w.u16(m.scores[i].kills);
        w.u16(m.scores[i].deaths);
    }
}
void put(Writer& w, const ItemList& m)
{
    const std::size_t n = std::min<std::size_t>(m.items.size(), 60);
    w.u8(static_cast<std::uint8_t>(n));
    for (std::size_t i = 0; i < n; ++i)
    {
        w.u16(m.items[i].uid);
        w.u8(m.items[i].weapon);
        w.f32(m.items[i].x);
        w.f32(m.items[i].y);
        w.fixed16(wrapAngle(m.items[i].angle), kAngleScale);
    }
}
void put(Writer& w, const Event& m)
{
    w.u8(static_cast<std::uint8_t>(m.kind));
    w.u8(m.sound);
    w.u8(m.fighter);
    w.f32(m.x);
    w.f32(m.y);
    w.fixed16(m.dx, 16.0f);
    w.fixed16(m.dy, 16.0f);
    w.u8(m.volume);
}
void put(Writer& w, const Chat& m) { w.u8(m.from); w.u8(m.message); }
void put(Writer& w, const Kick& m) { w.u8(m.playerId); }
void put(Writer& w, const Ping& m) { w.u32(m.stamp); }
void put(Writer& w, const Pong& m) { w.u32(m.stamp); }
void put(Writer& w, const MatchEnd& m)
{
    putOptions(w, m.options);
    w.u8(m.winnerTeam);
    w.u8(m.won ? 1 : 0);
    w.u8(static_cast<std::uint8_t>(std::min<std::size_t>(m.rows.size(), kMaxPlayers)));
    for (std::size_t i = 0; i < m.rows.size() && i < kMaxPlayers; ++i)
    {
        w.u8(m.rows[i].id);
        w.str(m.rows[i].name);
        w.u8(m.rows[i].team);
        w.u16(m.rows[i].kills);
        w.u16(m.rows[i].deaths);
    }
}
void put(Writer& w, const ReturnToLobby& m) { w.u8(m.playAgain ? 1 : 0); }

// ---- decoding ----
Message get(Reader& r, MsgType t, bool& ok)
{
    switch (t)
    {
    case MsgType::Discover: return Discover{r.u32()};
    case MsgType::Announce:
    {
        Announce m;
        m.nonce      = r.u32();
        m.hostName   = r.str();
        m.players    = r.u8();
        m.maxPlayers = r.u8();
        m.mode       = static_cast<GameMode>(r.u8());
        m.map        = r.u8();
        m.state      = static_cast<HostState>(r.u8());
        m.port       = r.u16();
        return m;
    }
    case MsgType::Join:
    {
        Join m;
        m.name    = r.str();
        m.version = r.u8();
        m.token   = r.u32();
        m.upgrades = r.u16();
        return m;
    }
    case MsgType::JoinReply:
    {
        JoinReply m;
        m.result   = static_cast<JoinResult>(r.u8());
        m.playerId = r.u8();
        m.token    = r.u32();
        return m;
    }
    case MsgType::LobbyState:
    {
        LobbyState m;
        m.options = getOptions(r);
        m.players = getPlayers(r);
        return m;
    }
    case MsgType::SetReady:
    {
        SetReady m;
        m.ready = r.u8() != 0;
        m.team  = r.u8();
        return m;
    }
    case MsgType::StartMatch:
    {
        StartMatch m;
        m.seed    = r.u32();
        m.options = getOptions(r);
        m.players = getPlayers(r);
        return m;
    }
    case MsgType::Input:
    {
        Input m;
        m.seq   = r.u32();
        m.bits  = r.u8();
        m.moveX = static_cast<std::int8_t>(r.u8());
        m.moveY = static_cast<std::int8_t>(r.u8());
        m.aim   = r.u16();
        return m;
    }
    case MsgType::Snapshot:
    {
        Snapshot m;
        m.tick     = r.u32();
        m.timeLeft = r.u16();
        m.wave     = r.u8();
        for (int i = 0, n = std::min<int>(r.u8(), kMaxPlayers); i < n && r.ok(); ++i)
        {
            FighterState f;
            f.id        = r.u8();
            f.x         = r.f32();
            f.y         = r.f32();
            f.vx        = r.fixed16(kPosScale);
            f.vy        = r.fixed16(kPosScale);
            f.angle     = r.fixed16(kAngleScale);
            f.aim       = r.u16();
            f.health    = r.u8();
            f.power     = r.u8();
            f.weapon    = r.u8();
            f.secondary = r.u8();
            f.clip      = r.u8();
            f.ammo      = r.u16();
            f.grenades  = r.u8();
            f.flags     = r.u8();
            f.reloadPct = r.u8();
            m.fighters.push_back(f);
        }
        for (int i = 0, n = std::min<std::size_t>(r.u8(), kMaxTracers); i < n && r.ok(); ++i)
        {
            TracerState t;
            t.x       = r.f32();
            t.y       = r.f32();
            t.angle   = r.u16();
            t.trail   = r.u8();
            t.opacity = r.u8();
            m.tracers.push_back(t);
        }
        for (int i = 0, n = std::min<std::size_t>(r.u8(), kMaxGrenades); i < n && r.ok(); ++i)
        {
            GrenadeState g;
            g.x     = r.f32();
            g.y     = r.f32();
            g.angle = r.fixed16(kAngleScale);
            m.grenades.push_back(g);
        }
        for (int i = 0, n = std::min<std::size_t>(r.u8(), kMaxRockets); i < n && r.ok(); ++i)
        {
            RocketState k;
            k.x     = r.f32();
            k.y     = r.f32();
            k.angle = r.u16();
            m.rockets.push_back(k);
        }
        for (int i = 0, n = std::min<int>(r.u8(), kMaxPlayers); i < n && r.ok(); ++i)
        {
            ScoreState s;
            s.id     = r.u8();
            s.kills  = r.u16();
            s.deaths = r.u16();
            m.scores.push_back(s);
        }
        return m;
    }
    case MsgType::ItemList:
    {
        ItemList m;
        for (int i = 0, n = std::min<int>(r.u8(), 60); i < n && r.ok(); ++i)
        {
            ItemState s;
            s.uid    = r.u16();
            s.weapon = r.u8();
            s.x      = r.f32();
            s.y      = r.f32();
            s.angle  = r.fixed16(kAngleScale);
            m.items.push_back(s);
        }
        return m;
    }
    case MsgType::Event:
    {
        Event m;
        m.kind    = static_cast<EventKind>(r.u8());
        m.sound   = r.u8();
        m.fighter = r.u8();
        m.x       = r.f32();
        m.y       = r.f32();
        m.dx      = r.fixed16(16.0f);
        m.dy      = r.fixed16(16.0f);
        m.volume  = r.u8();
        return m;
    }
    case MsgType::Chat: { Chat m; m.from = r.u8(); m.message = r.u8(); return m; }
    case MsgType::Leave: return Leave{};
    case MsgType::Kick: return Kick{r.u8()};
    case MsgType::Ping: return Ping{r.u32()};
    case MsgType::Pong: return Pong{r.u32()};
    case MsgType::MatchEnd:
    {
        MatchEnd m;
        m.options    = getOptions(r);
        m.winnerTeam = r.u8();
        m.won        = r.u8() != 0;
        for (int i = 0, n = std::min<int>(r.u8(), kMaxPlayers); i < n && r.ok(); ++i)
        {
            ResultRow row;
            row.id     = r.u8();
            row.name   = r.str();
            row.team   = r.u8();
            row.kills  = r.u16();
            row.deaths = r.u16();
            m.rows.push_back(std::move(row));
        }
        return m;
    }
    case MsgType::ReturnToLobby: return ReturnToLobby{r.u8() != 0};
    }
    ok = false;
    return Leave{};
}

}  // namespace

Bytes encode(const Message& message)
{
    Writer w;
    w.u8('M');
    w.u8('M');
    w.u8(kProtocolVersion);
    std::visit(
        [&](const auto& m) {
            using T = std::decay_t<decltype(m)>;
            w.u8(static_cast<std::uint8_t>(typeOf<T>()));
            put(w, m);
        },
        message);
    return w.take();
}

std::optional<Message> decode(const std::uint8_t* data, std::size_t size)
{
    if (size < 4 || size > kMaxPacket || data[0] != 'M' || data[1] != 'M' || data[2] != kProtocolVersion)
        return std::nullopt;
    Reader r(data + 4, size - 4);
    bool ok = true;
    const auto t = static_cast<MsgType>(data[3]);
    if (data[3] < 1 || data[3] > static_cast<std::uint8_t>(MsgType::Kick))
        return std::nullopt;
    Message m = get(r, t, ok);
    if (!ok || !r.ok())
        return std::nullopt;
    return m;
}

}  // namespace mm::net

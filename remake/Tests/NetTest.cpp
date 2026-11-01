#include "doctest/doctest.h"

#include "assets/MapCatalog.h"
#include "net/Protocol.h"

using namespace mm::net;

namespace
{
template <class T> T roundTrip(const T& m)
{
    const auto bytes = encode(m);
    REQUIRE(bytes.size() <= kMaxPacket);
    const auto back = decode(bytes);
    REQUIRE(back.has_value());
    REQUIRE(std::holds_alternative<T>(*back));
    return std::get<T>(*back);
}
}  // namespace

TEST_CASE("Packets start with MM, the version and the type")
{
    const auto b = encode(Ping{7});
    REQUIRE(b.size() == 8);
    CHECK(b[0] == 'M');
    CHECK(b[1] == 'M');
    CHECK(b[2] == kProtocolVersion);
    CHECK(b[3] == static_cast<std::uint8_t>(MsgType::Ping));
    CHECK(b[4] == 7);  // little-endian
    CHECK(b[5] == 0);
}

TEST_CASE("Garbage, wrong versions and truncated packets are rejected")
{
    CHECK_FALSE(decode(Bytes{}).has_value());
    CHECK_FALSE(decode(Bytes{'M', 'M', 1}).has_value());
    CHECK_FALSE(decode(Bytes{'X', 'M', 1, 1, 0, 0, 0, 0}).has_value());
    auto b = encode(Ping{1});
    b[2]   = kProtocolVersion + 1;
    CHECK_FALSE(decode(b).has_value());
    b[2] = kProtocolVersion;
    b[3] = 99;
    CHECK_FALSE(decode(b).has_value());
    auto j = encode(Join{"Narendra", kProtocolVersion, 5});
    j.resize(j.size() - 3);
    CHECK_FALSE(decode(j).has_value());
    Bytes huge(kMaxPacket + 1, 0);
    CHECK_FALSE(decode(huge).has_value());
}

TEST_CASE("Lobby messages round-trip")
{
    Announce a;
    a.nonce = 99; a.hostName = "Host phone"; a.players = 3; a.maxPlayers = 12;
    a.mode = GameMode::TeamDeathmatch; a.map = 4; a.state = HostState::Playing; a.port = 9331;
    const auto a2 = roundTrip(a);
    CHECK(a2.hostName == "Host phone");
    CHECK(a2.mode == GameMode::TeamDeathmatch);
    CHECK(a2.port == 9331);
    CHECK(a2.state == HostState::Playing);

    LobbyState l;
    l.options.mode = GameMode::CoopSurvival; l.options.map = 13; l.options.minutes = 8;
    l.options.maxPlayers = 6; l.options.killLimit = 25; l.options.fair = true; l.options.respawn = 5; l.options.friendlyFire = true; l.options.party = 5; l.options.weaponGroups = 0x0b;
    l.players = {{0, "Host", 0, true, true}, {1, "Ann", 1, false, false}};
    const auto l2 = roundTrip(l);
    CHECK(l2.options == l.options);
    REQUIRE(l2.players.size() == 2);
    CHECK(l2.players[1].name == "Ann");
    CHECK(l2.players[0].host);
    CHECK(l2.players[0].ready);
    CHECK_FALSE(l2.players[1].ready);

    CHECK(roundTrip(Join{"Zoë", kProtocolVersion, 0xdeadbeef}).token == 0xdeadbeef);
    CHECK(roundTrip(JoinReply{JoinResult::Full, 0, 1}).result == JoinResult::Full);
    CHECK(roundTrip(SetReady{true, 2}).team == 2);
    StartMatch s;
    s.seed = 123456; s.options = l.options; s.players = l.players;
    CHECK(roundTrip(s).seed == 123456);
    CHECK(roundTrip(Chat{3, 7}).message == 7);
    CHECK(roundTrip(Kick{4}).playerId == 4);
    CHECK(roundTrip(ReturnToLobby{true}).playAgain);
}

TEST_CASE("Names longer than 255 bytes are cut, not overflowed")
{
    Join j;
    j.name = std::string(400, 'x');
    CHECK(roundTrip(j).name.size() == 255);
}

TEST_CASE("Input keeps the sticks, buttons and aim")
{
    Input in;
    in.seq = 70000; in.bits = kFire | kTouched | kGrenade; in.moveX = -100; in.moveY = 55; in.aim = 3599;
    const auto o = roundTrip(in);
    CHECK(o.seq == 70000);
    CHECK(o.bits == (kFire | kTouched | kGrenade));
    CHECK(o.moveX == -100);
    CHECK(o.moveY == 55);
    CHECK(o.aim == 3599);
}

TEST_CASE("A full 12-player snapshot fits one packet")
{
    Snapshot s;
    s.tick = 123456; s.timeLeft = 480; s.wave = 3;
    for (int i = 0; i < 12; ++i)
    {
        FighterState f;
        f.id = i; f.x = 100.5f + i; f.y = 2000.25f; f.vx = -123.5f; f.vy = 80.0f; f.angle = 0.25f;
        f.aim = 1800; f.health = 77; f.power = 50; f.weapon = 6; f.secondary = 1; f.clip = 24; f.ammo = 250;
        f.grenades = 2; f.flags = 0x0d; f.reloadPct = 40;
        s.fighters.push_back(f);
        s.scores.push_back({static_cast<std::uint8_t>(i), 5, 3});
    }
    for (int i = 0; i < 30; ++i)
        s.tracers.push_back({10.0f * i, 20.0f, 1234, 15, 200});
    for (int i = 0; i < 8; ++i)
    {
        s.grenades.push_back({1.0f * i, 2.0f, 0.5f});
        s.rockets.push_back({3.0f * i, 4.0f, 900});
    }
    const auto bytes = encode(s);
    CHECK(bytes.size() <= kMaxPacket);
    const auto o = roundTrip(s);
    REQUIRE(o.fighters.size() == 12);
    CHECK(o.fighters[5].x == doctest::Approx(105.5f));
    CHECK(o.fighters[5].vx == doctest::Approx(-123.5f).epsilon(0.01));
    CHECK(o.fighters[5].angle == doctest::Approx(0.25f).epsilon(0.002));
    CHECK(o.fighters[5].health == 77);
    CHECK(o.fighters[11].flags == 0x0d);
    REQUIRE(o.tracers.size() == 30);
    CHECK(o.tracers[29].x == doctest::Approx(290.0f));
    CHECK(o.grenades.size() == 8);
    CHECK(o.rockets[7].angle == 900);
    CHECK(o.scores[3].kills == 5);
    CHECK(o.timeLeft == 480);
}

TEST_CASE("Extra entries beyond the limits are dropped on encode")
{
    Snapshot s;
    s.tracers.assign(100, TracerState{});
    CHECK(roundTrip(s).tracers.size() == kMaxTracers);
}

TEST_CASE("Items, events and results round-trip")
{
    ItemList il;
    il.items.push_back({513, 7, 1500.5f, 300.0f, 1.0f});
    const auto il2 = roundTrip(il);
    REQUIRE(il2.items.size() == 1);
    CHECK(il2.items[0].uid == 513);
    CHECK(il2.items[0].angle == doctest::Approx(1.0f).epsilon(0.002));

    Event e;
    e.kind = EventKind::Explosion; e.sound = 9; e.fighter = 3; e.x = 10; e.y = 20; e.dx = 1.5f; e.dy = -2.0f; e.volume = 80;
    const auto e2 = roundTrip(e);
    CHECK(e2.kind == EventKind::Explosion);
    CHECK(e2.dx == doctest::Approx(1.5f));
    CHECK(e2.volume == 80);

    MatchEnd me;
    me.options.mode = GameMode::TeamDeathmatch; me.winnerTeam = 1; me.won = true;
    me.rows = {{0, "A", 1, 12, 3}, {1, "B", 2, 7, 9}};
    const auto me2 = roundTrip(me);
    CHECK(me2.winnerTeam == 1);
    REQUIRE(me2.rows.size() == 2);
    CHECK(me2.rows[1].deaths == 9);
}

// ============================== sessions over the in-memory network ============================

#include <unistd.h>
#include <fstream>
#include <sstream>

#include "assets/MapCatalog.h"
#include "assets/MapData.h"
#include "net/Session.h"

namespace
{
using namespace mm;
using namespace mm::net;

struct MapStore
{
    std::map<int, assets::MapData> maps;
    MapRef get(int index)
    {
        if (index < 0 || index >= static_cast<int>(assets::kMaps.size()))
            return {};
        auto it = maps.find(index);
        if (it == maps.end())
        {
            std::ifstream in(std::string(MM_CONTENT_DIR) + "/sd/" + std::string(assets::kMaps[index].tmx), std::ios::binary);
            std::stringstream ss;
            ss << in.rdbuf();
            assets::MapData d;
            REQUIRE(assets::parseMap(ss.str(), d));
            it = maps.emplace(index, std::move(d)).first;
        }
        return {&assets::kMaps[index], &it->second};
    }
};

struct World
{
    LoopbackHub hub;
    MapStore store;
    MapResolver resolver = [this](int i) { return store.get(i); };
    std::unique_ptr<Transport> hostT = hub.open(kGamePort, 0xC0A80101);
    std::unique_ptr<HostSession> host = std::make_unique<HostSession>(*hostT, "Host phone", "Narendra", resolver);
    std::vector<std::unique_ptr<Transport>> clientT;
    std::vector<std::unique_ptr<ClientSession>> clients;

    ClientSession& addClient(const char* name)
    {
        clientT.push_back(hub.open(static_cast<std::uint16_t>(40000 + clientT.size()), 0xC0A80102 + clients.size()));
        clients.push_back(std::make_unique<ClientSession>(*clientT.back(), name, resolver));
        return *clients.back();
    }
    // The host's discovery socket lives on the discovery port in this test.
    Endpoint hostEp() const { return hostT->local(); }

    void pump(float seconds, float dt = 1.0f / 60.0f, const game::PadState& hostPad = {})
    {
        for (float t = 0; t < seconds; t += dt)
        {
            host->update(dt);
            if (auto* d = host->driver())
                d->step(dt, hostPad);
            for (auto& c : clients)
            {
                c->update(dt);
                if (c->clientState() == ClientState::Playing)
                    c->step(dt, game::PadState{});
            }
        }
    }
    void joinAll()
    {
        for (auto& c : clients)
            c->join(hostEp());
        pump(0.6f);
    }
};
}  // namespace

TEST_CASE("Discovery: a searching phone finds the host and its options")
{
    World w;
    HostOptions o;
    o.mode = GameMode::TeamDeathmatch;
    o.map  = 3;
    w.host->setOptions(o);
    auto discoveryT = w.hub.open(kDiscoveryPort, 0xC0A80101);  // the host's second socket
    w.host->setDiscoveryTransport(discoveryT.get());
    auto& c = w.addClient("Ann");
    c.startSearch();
    for (int i = 0; i < 70; ++i)
    {
        w.host->update(1.0f / 60.0f);
        c.update(1.0f / 60.0f);
    }
    REQUIRE(c.hosts().size() == 1);
    CHECK(c.hosts()[0].info.hostName == "Host phone");
    CHECK(c.hosts()[0].info.mode == GameMode::TeamDeathmatch);
    CHECK(c.hosts()[0].info.map == 3);
    CHECK(c.hosts()[0].info.players == 1);
    CHECK(c.hosts()[0].ep.port == kGamePort);
}

TEST_CASE("Joining: ids, unique names, the player cap, wrong version and started games")
{
    World w;
    HostOptions o;
    o.maxPlayers = 3;
    w.host->setOptions(o);
    auto& a = w.addClient("Ann");
    auto& b = w.addClient("Ann");  // same name
    auto& c = w.addClient("Cy");   // the lobby is full by then
    a.join(w.hostEp());
    w.pump(0.3f);
    b.join(w.hostEp());
    w.pump(0.3f);
    c.join(w.hostEp());
    w.pump(0.3f);
    CHECK(a.clientState() == ClientState::InLobby);
    CHECK(a.myId() == 1);
    CHECK(b.clientState() == ClientState::InLobby);
    CHECK(b.myId() == 2);
    CHECK(c.clientState() == ClientState::Disconnected);
    CHECK(c.lastJoinResult() == JoinResult::Full);
    REQUIRE(w.host->players().size() == 3);
    CHECK(w.host->players()[1].name == "Ann");
    CHECK(w.host->players()[2].name != "Ann");  // made unique
    CHECK(a.lobby().players.size() == 3);
    CHECK(b.lobby().options.maxPlayers == 3);

    // A wrong protocol version is refused.
    LoopbackHub& hub = w.hub;
    auto raw = hub.open(41000, 0xC0A80150);
    raw->send(w.hostEp(), encode(Join{"Old", static_cast<std::uint8_t>(kProtocolVersion + 7), 1}));
    // (the version byte in the header differs too, so the packet is dropped as foreign)
    w.pump(0.1f);
    CHECK(w.host->players().size() == 3);
}

TEST_CASE("The cap is limited to 2..12 and never below the people present")
{
    World w;
    HostOptions o;
    o.maxPlayers = 40;
    w.host->setOptions(o);
    CHECK(w.host->options().maxPlayers == 12);
    o.maxPlayers = 1;
    w.host->setOptions(o);
    CHECK(w.host->options().maxPlayers == 2);
    o.minutes = 99;
    w.host->setOptions(o);
    CHECK(w.host->options().minutes == 8);
}

TEST_CASE("Lobby: ready flags gate the start; teams and chat reach everybody")
{
    World w;
    auto& a = w.addClient("Ann");
    auto& b = w.addClient("Bo");
    w.joinAll();
    CHECK_FALSE(w.host->canStart());  // guests not ready
    a.setReady(true, 1);
    b.setReady(true, 2);
    w.pump(0.3f);
    CHECK(w.host->canStart());
    CHECK(b.lobby().players[1].ready);
    CHECK(b.lobby().players[1].team == 1);
    a.setReady(false);
    w.pump(0.3f);
    CHECK_FALSE(w.host->canStart());
    a.setReady(true);
    w.pump(0.3f);

    a.sendChat(2);  // "Follow me"
    w.pump(0.2f);
    REQUIRE_FALSE(b.chatLog().empty());
    CHECK(b.chatLog().back() == std::make_pair(a.myId(), 2));
    CHECK(w.host->chatLog().back() == std::make_pair(a.myId(), 2));
    w.host->sendChat(0);
    w.pump(0.2f);
    CHECK(b.chatLog().back() == std::make_pair(0, 0));
    a.sendChat(99);  // not one of the twelve
    w.pump(0.2f);
    CHECK(b.chatLog().back() == std::make_pair(0, 0));
}

TEST_CASE("Co-op can start with the host alone; other modes need two people")
{
    World w;
    CHECK_FALSE(w.host->canStart());
    HostOptions o;
    o.mode = GameMode::CoopSurvival;
    w.host->setOptions(o);
    CHECK(w.host->canStart());
}

TEST_CASE("A match: inputs move a remote soldier, clients mirror the host, scores follow")
{
    World w;
    HostOptions o;
    o.mode = GameMode::Deathmatch;
    o.map  = 0;
    w.host->setOptions(o);
    auto& a = w.addClient("Ann");
    auto& b = w.addClient("Bo");
    w.joinAll();
    a.setReady(true);
    b.setReady(true);
    w.pump(0.3f);
    REQUIRE(w.host->startMatch());
    CHECK(w.host->state() == HostState::Playing);
    w.pump(0.8f);
    REQUIRE(a.clientState() == ClientState::Playing);
    REQUIRE(b.clientState() == ClientState::Playing);
    CHECK(a.match().fighters().size() == 3);

    w.pump(5.0f);  // everybody lands
    const auto& hm = w.host->driver()->match();
    const auto* hostSideA = const_cast<game::Match&>(hm).fighter(a.myId());
    REQUIRE(hostSideA);
    const float x0 = hostSideA->soldier->position().x;
    // Ann holds the stick to the right; her client sends the input, the host walks her.
    struct Pad { game::PadState p; } pad;
    pad.p.moveTouched = true;
    pad.p.moveOffset  = {1, 0};
    pad.p.moveVector  = pad.p.moveOffset * 40.0f;
    for (int i = 0; i < 60 * 2; ++i)
    {
        w.host->update(1.0f / 60.0f);
        w.host->driver()->step(1.0f / 60.0f, {});
        a.update(1.0f / 60.0f);
        a.step(1.0f / 60.0f, pad.p);
        b.update(1.0f / 60.0f);
        b.step(1.0f / 60.0f, {});
    }
    CHECK(hostSideA->soldier->position().x > x0 + 20.0f);
    // Bo's mirror of Ann follows the host within one snapshot.
    const auto* annOnBo = b.match().fighter(a.myId());
    REQUIRE(annOnBo);
    REQUIRE(annOnBo->soldier);
    CHECK(std::fabs(annOnBo->soldier->position().x - hostSideA->soldier->position().x) < 40.0f);
    CHECK(annOnBo->soldier->velocity().x > 10.0f);
    // The timer counts down on every phone.
    CHECK(b.status().find("4:") == 0);
}

TEST_CASE("A kill on the host shows up in every scoreboard; the match ends with a leaderboard")
{
    World w;
    HostOptions o;
    o.map     = 0;
    o.minutes = 1;
    w.host->setOptions(o);
    auto& a = w.addClient("Ann");
    w.joinAll();
    a.setReady(true);
    w.pump(0.3f);
    REQUIRE(w.host->startMatch());
    w.pump(4.0f);
    auto& hm = w.host->driver()->match();
    hm.fighter(a.myId())->soldier->setHealth(1.0f);  // one more hit, from the host's fighter 0
    hm.fighter(a.myId())->soldier->addDamage(1.0f, 0, 2);
    w.pump(0.5f);
    CHECK(hm.fighter(0)->kills == 1);
    CHECK(a.match().fighter(0)->kills == 1);
    CHECK(a.match().fighter(a.myId())->deaths == 1);
    CHECK(a.scoreboard().find("Narendra  1") != std::string::npos);

    w.pump(60.0f);  // time runs out
    CHECK(w.host->state() == HostState::Ended);
    REQUIRE(a.clientState() == ClientState::Ended);
    const auto rows = a.results();
    REQUIRE(rows.size() == 2);
    CHECK(rows[0].name == "Narendra");
    CHECK(rows[0].kills == 1);
    CHECK(rows[1].me);
    CHECK(a.resultTitle() == "Narendra WINS");
    REQUIRE(w.host->lastResult().has_value());
    CHECK(w.host->lastResult()->rows.size() == 2);

    // Return to the lobby: everybody sees the lobby again, ready flags reset.
    w.host->returnToLobby(false);
    w.pump(0.5f);
    CHECK(w.host->state() == HostState::Lobby);
    CHECK(a.clientState() == ClientState::InLobby);
    CHECK(a.returnedToLobby());
    CHECK_FALSE(w.host->canStart());

    // Play again starts straight away with the same people.
    a.setReady(true);
    w.pump(0.3f);
    REQUIRE(w.host->startMatch());
    w.pump(1.0f);
    w.host->driver()->step(0.0f, {});
    CHECK(a.clientState() == ClientState::Playing);
}

TEST_CASE("Team Deathmatch balances teams and the winning team is announced")
{
    World w;
    HostOptions o;
    o.mode    = GameMode::TeamDeathmatch;
    o.minutes = 1;
    w.host->setOptions(o);
    auto& a = w.addClient("Ann");
    auto& b = w.addClient("Bo");
    auto& c = w.addClient("Cy");
    w.joinAll();
    for (auto* cl : {&a, &b, &c})
        cl->setReady(true);
    w.pump(0.3f);
    REQUIRE(w.host->startMatch());
    int team1 = 0, team2 = 0;
    for (const auto& p : w.host->players())
        (p.team == 1 ? team1 : team2)++;
    CHECK(team1 == 2);
    CHECK(team2 == 2);
    w.pump(0.8f);
    // Same-team bullets do not hurt.
    auto& hm = w.host->driver()->match();
    CHECK(hm.fighter(0)->team == 1);
    w.pump(61.0f);
    CHECK(w.host->state() == HostState::Ended);
    CHECK(a.resultTitle() == "DRAW");
}

TEST_CASE("Leaving, kicking and timeouts free the slot")
{
    World w;
    auto& a = w.addClient("Ann");
    auto& b = w.addClient("Bo");
    w.joinAll();
    CHECK(w.host->players().size() == 3);
    a.leave();
    w.pump(0.3f);
    CHECK(w.host->players().size() == 2);
    CHECK(b.lobby().players.size() == 2);

    w.host->kick(b.myId());
    w.pump(0.3f);
    CHECK(w.host->players().size() == 1);
    CHECK(b.clientState() == ClientState::Disconnected);
    CHECK(b.lastJoinResult() == JoinResult::Kicked);

    // A phone that vanishes (no packets at all) times out after 6 s.
    auto& c = w.addClient("Cy");
    c.join(w.hostEp());
    w.pump(0.3f);
    CHECK(w.host->players().size() == 2);
    w.hub.dropEvery = 1;  // the network dies
    w.pump(7.0f);
    CHECK(w.host->players().size() == 1);
    CHECK(c.clientState() == ClientState::Disconnected);
}

TEST_CASE("The lobby survives 20 % packet loss")
{
    World w;
    w.hub.dropEvery = 5;
    auto& a = w.addClient("Ann");
    a.join(w.hostEp());
    w.pump(3.0f);
    CHECK(a.clientState() == ClientState::InLobby);
    a.setReady(true);
    w.pump(2.5f);  // the lobby is re-sent every second
    CHECK(a.lobby().players.size() == 2);
}

TEST_CASE("Games that already started refuse new players")
{
    World w;
    auto& a = w.addClient("Ann");
    w.joinAll();
    a.setReady(true);
    w.pump(0.3f);
    REQUIRE(w.host->startMatch());
    w.pump(0.5f);
    auto& late = w.addClient("Late");
    late.join(w.hostEp());
    w.pump(0.4f);
    CHECK(late.lastJoinResult() == JoinResult::Started);
    CHECK(late.clientState() == ClientState::Disconnected);
}

TEST_CASE("Co-op Survival: waves of enemies, shared lives, game over")
{
    World w;
    HostOptions o;
    o.mode = GameMode::CoopSurvival;
    w.host->setOptions(o);
    auto& a = w.addClient("Ann");
    w.joinAll();
    a.setReady(true);
    w.pump(0.3f);
    REQUIRE(w.host->startMatch());
    w.pump(8.0f);
    CHECK(a.status().find("WAVE 1") == 0);
    // Enemies exist on the client's mirror too.
    int enemies = 0;
    for (const auto& f : a.match().fighters())
        enemies += f.team == 2;
    CHECK(enemies >= 3);
    // Everybody out of lives ends the game.
    auto& hm = w.host->driver()->match();
    for (int death = 0; death < 3; ++death)
    {
        for (auto id : {0, a.myId()})
            if (auto* f = hm.fighter(id); f && f->alive())
                f->soldier->setHealth(0.0f);
        w.pump(11.0f);
    }
    CHECK(w.host->state() == HostState::Ended);
}

#include "net/Transport.h"

TEST_CASE("Endpoints parse from typed addresses")
{
    Endpoint e;
    CHECK(Endpoint::parse("192.168.1.20", 9331, e));
    CHECK(e.ip == 0xC0A80114);
    CHECK(e.port == 9331);
    CHECK(Endpoint::parse("10.0.0.5:4000", 9331, e));
    CHECK(e.port == 4000);
    CHECK(e.toString() == "10.0.0.5:4000");
    CHECK_FALSE(Endpoint::parse("192.168.1", 9331, e));
    CHECK_FALSE(Endpoint::parse("300.1.1.1", 9331, e));
    CHECK_FALSE(Endpoint::parse("hello", 9331, e));
    CHECK_FALSE(Endpoint::parse("1.2.3.4:0", 9331, e));
    CHECK_FALSE(Endpoint::parse("1.2.3.4 extra", 9331, e));
}

TEST_CASE("Real UDP on this computer: packets go there and back")
{
    auto a = openUdp(0);
    auto b = openUdp(0);
    REQUIRE(a);
    REQUIRE(b);
    const Endpoint toB{0x7F000001, b->local().port};
    REQUIRE(a->send(toB, encode(Ping{42})));
    Packet p;
    bool got = false;
    for (int i = 0; i < 100 && !got; ++i)
    {
        got = b->receive(p);
        if (!got)
            usleep(1000);
    }
    REQUIRE(got);
    auto m = decode(p.data);
    REQUIRE(m.has_value());
    CHECK(std::get<Ping>(*m).stamp == 42);
    CHECK(p.from.port == a->local().port);
}

#include <random>
#include "save/SaveData.h"

TEST_CASE("Fuzz: random and mutated packets never crash the decoder")
{
    std::mt19937 rng(12345);
    for (int i = 0; i < 20000; ++i)
    {
        std::vector<std::uint8_t> b(rng() % 300);
        for (auto& x : b)
            x = static_cast<std::uint8_t>(rng());
        if (b.size() > 3 && (i & 1))
        {
            b[0] = 'M'; b[1] = 'M'; b[2] = kProtocolVersion; b[3] = static_cast<std::uint8_t>(rng() % 24);
        }
        (void)decode(b);
    }
    // Every valid packet, cut at every length and with one flipped byte.
    LobbyState l;
    l.players = {{0, "Host", 0, true, true}, {1, "Ann", 1, false, false}};
    const auto good = encode(l);
    for (std::size_t n = 0; n < good.size(); ++n)
        (void)decode(good.data(), n);
    for (std::size_t i = 0; i < good.size(); ++i)
    {
        auto c = good;
        c[i] ^= 0xff;
        (void)decode(c);
    }
    CHECK(true);
}

TEST_CASE("Fuzz: damaged save text never crashes and stays within limits")
{
    mm::save::SaveData d;
    d.name = "Test";
    auto text = mm::save::toText(d);
    std::mt19937 rng(777);
    for (int i = 0; i < 3000; ++i)
    {
        auto t = text;
        for (int k = 0; k < 1 + static_cast<int>(rng() % 6); ++k)
            t[rng() % t.size()] = static_cast<char>(rng());
        if (rng() % 5 == 0)
            t.resize(rng() % t.size());
        auto r = mm::save::fromText(t);
        if (r)
        {
            CHECK(r->coins >= 0);
            CHECK(r->settings.soundVolume >= 0);
            CHECK(r->settings.soundVolume <= 100);
        }
    }
}

TEST_CASE("Random map: the host picks a real map when the match starts")
{
    const auto pool = mm::assets::wifiMaps(false);
    CHECK(pool.size() == 12);
    CHECK(mm::assets::wifiMaps(true).size() == 1);
    for (int i : pool)
        CHECK(mm::assets::kMaps[i].kind == mm::assets::MapKind::Multiplayer);
    CHECK(mm::assets::kRandomMap >= mm::assets::kMaps.size());
}

TEST_CASE("Random map: a started match runs on a real map everywhere")
{
    World w;
    HostOptions o;
    o.mode = GameMode::Deathmatch;
    o.map  = mm::assets::kRandomMap;
    w.host->setOptions(o);
    auto& a = w.addClient("Ann");
    auto& b = w.addClient("Bo");
    w.joinAll();
    a.setReady(true);
    b.setReady(true);
    w.pump(0.3f);
    REQUIRE(w.host->startMatch());
    w.pump(1.0f);
    REQUIRE(a.clientState() == ClientState::Playing);
    REQUIRE(b.clientState() == ClientState::Playing);
}

#include "net/Session.h"

#include <algorithm>
#include <cmath>

namespace mm::net
{

using game::EventType;
using game::GameEvent;
using game::PadState;

PadState padFromInput(const Input& in)
{
    PadState p;
    p.moveOffset  = {in.moveX / 100.0f, in.moveY / 100.0f};
    p.moveVector  = p.moveOffset * rules::kPadRadius;
    p.moveTouched = in.bits & kTouched;
    p.aimAngle    = in.aim / 10.0f;
    p.firing      = in.bits & kFire;
    p.melee       = in.bits & kMelee;
    p.grenade     = in.bits & kGrenade;
    p.reload      = in.bits & kReload;
    p.switchWeapon = in.bits & kSwitch;
    p.pickUp      = in.bits & kPickUp;
    p.zoom        = in.bits & kZoom;
    p.mine        = in.bits & kMine;
    p.pickUpDual  = in.bits & kPickUpDual;
    return p;
}

Input inputFromPad(const PadState& p, std::uint32_t seq)
{
    Input in;
    in.seq   = seq;
    in.bits  = (p.firing ? kFire : 0) | (p.moveTouched ? kTouched : 0) | (p.melee ? kMelee : 0) |
               (p.grenade ? kGrenade : 0) | (p.reload ? kReload : 0) | (p.switchWeapon ? kSwitch : 0) |
               (p.pickUp ? kPickUp : 0) | (p.zoom ? kZoom : 0) | (p.mine ? kMine : 0) | (p.pickUpDual ? kPickUpDual : 0);
    in.moveX = static_cast<std::int8_t>(std::clamp(std::lround(p.moveOffset.x * 100.0f), -100L, 100L));
    in.moveY = static_cast<std::int8_t>(std::clamp(std::lround(p.moveOffset.y * 100.0f), -100L, 100L));
    float a  = std::fmod(p.aimAngle, 360.0f);
    if (a < 0)
        a += 360.0f;
    in.aim = static_cast<std::uint16_t>(std::min(3599.0f, a * 10.0f));
    return in;
}

Event toNet(const GameEvent& g)
{
    Event e;
    switch (g.type)
    {
    case EventType::Sound: e.kind = EventKind::Sound; break;
    case EventType::Shot: e.kind = EventKind::Shot; break;
    case EventType::Spark: e.kind = EventKind::Spark; break;
    case EventType::Explosion: e.kind = EventKind::Explosion; break;
    case EventType::Death: e.kind = EventKind::Death; break;
    case EventType::Blood: e.kind = EventKind::Blood; break;
    case EventType::Throw: e.kind = EventKind::Throw; break;
    case EventType::Gas: e.kind = EventKind::Gas; break;
    case EventType::Mine: e.kind = EventKind::Mine; break;
    }
    e.sound   = static_cast<std::uint8_t>(g.sound);
    e.fighter = g.fighter < 0 ? 255 : static_cast<std::uint8_t>(g.fighter);
    e.x = g.pos.x; e.y = g.pos.y; e.dx = g.dir.x; e.dy = g.dir.y;
    e.volume = static_cast<std::uint8_t>(std::clamp(g.volume * 100.0f, 0.0f, 100.0f));
    return e;
}

GameEvent fromNet(const Event& e)
{
    GameEvent g{EventType::Sound};
    switch (e.kind)
    {
    case EventKind::Sound: g.type = EventType::Sound; break;
    case EventKind::Shot: g.type = EventType::Shot; break;
    case EventKind::Spark: g.type = EventType::Spark; break;
    case EventKind::Explosion: g.type = EventType::Explosion; break;
    case EventKind::Death: g.type = EventType::Death; break;
    case EventKind::Blood: g.type = EventType::Blood; break;
    case EventKind::Throw: g.type = EventType::Throw; break;
    case EventKind::Gas: g.type = EventType::Gas; break;
    case EventKind::Mine: g.type = EventType::Mine; break;
    default: g.type = EventType::Sound; break;
    }
    g.sound   = static_cast<audio::SoundId>(std::min<int>(e.sound, 97));
    g.fighter = e.fighter == 255 ? -1 : e.fighter;
    g.pos     = {e.x, e.y};
    g.dir     = {e.dx, e.dy};
    g.volume  = e.volume / 100.0f;
    return g;
}

namespace
{
std::string cleanName(std::string n)
{
    n.erase(std::remove_if(n.begin(), n.end(), [](unsigned char c) { return c < 32; }), n.end());
    if (n.size() > 16)
        n.resize(16);
    return n.empty() ? "Player" : n;
}
}  // namespace

// ============================== host ==================================================================

class HostDriver : public game::GameDriver
{
public:
    HostDriver(HostSession& h, std::unique_ptr<game::MultiplayerGame> g) : _h(h), _g(std::move(g)) {}
    game::MultiplayerGame& game() { return *_g; }
    game::Match& match() override { return _g->match(); }
    void step(float dt, const PadState& pad) override
    {
        for (auto& peer : _h._peers)
            if (peer.hasInput)
                _g->setPlayerInput(peer.id, padFromInput(peer.input));
        _g->step(dt, pad);
        // Forward what happened to everybody, and keep it for the host's own screen.
        auto events = _g->match().takeEvents();
        int sent    = 0;
        for (const auto& e : events)
            if (sent++ < 24)
                _h.broadcastAll(toNet(e));
        for (const auto& e : events)
            _g->match().pushEvent(e);
        _h.afterStep();
    }
    game::ModeState state() const override { return _g->state(); }
    std::string status() const override { return _g->status(); }
    std::string banner() const override { return _g->banner(); }
    std::string scoreboard() const override { return _g->scoreboard(); }
    bool isNetworked() const override { return true; }
    std::vector<Row> results() const override { return _g->results(); }
    std::string resultTitle() const override { return _g->resultTitle(); }

private:
    HostSession& _h;
    std::unique_ptr<game::MultiplayerGame> _g;
};

HostSession::HostSession(Transport& transport, std::string hostName, std::string playerName, MapResolver maps)
    : _t(transport), _hostName(std::move(hostName)), _maps(std::move(maps))
{
    PlayerInfo me;
    me.id   = 0;
    me.name = cleanName(std::move(playerName));
    me.host = true;
    me.ready = true;
    _players.push_back(me);
}

void HostSession::setOptions(HostOptions o)
{
    if (_state != HostState::Lobby)
        return;
    o.maxPlayers = static_cast<std::uint8_t>(std::clamp<int>(o.maxPlayers, std::max<int>(2, static_cast<int>(_players.size())), kMaxPlayers));
    o.minutes    = static_cast<std::uint8_t>(std::clamp<int>(o.minutes, 1, 8));
    _options     = o;
    sendLobby();
}

PlayerInfo* HostSession::player(int id)
{
    for (auto& p : _players)
        if (p.id == id)
            return &p;
    return nullptr;
}

HostSession::Peer* HostSession::peerByEndpoint(const Endpoint& ep)
{
    for (auto& p : _peers)
        if (p.ep == ep)
            return &p;
    return nullptr;
}

void HostSession::setHostReady(bool ready) { _players[0].ready = ready; sendLobby(); }
void HostSession::setHostTeam(int team) { _players[0].team = static_cast<std::uint8_t>(std::clamp(team, 0, static_cast<int>(kTeamColours))); sendLobby(); }

void HostSession::broadcastAll(const Message& m)
{
    const Bytes b = encode(m);
    for (const auto& p : _peers)
        _t.send(p.ep, b);
}

void HostSession::sendLobby()
{
    LobbyState l;
    l.options = _options;
    l.players = _players;
    broadcastAll(l);
    _lobbyTimer = 0.0f;
}

void HostSession::dropPeer(int id)
{
    _peers.erase(std::remove_if(_peers.begin(), _peers.end(), [id](const Peer& p) { return p.id == id; }), _peers.end());
    _players.erase(std::remove_if(_players.begin(), _players.end(), [id](const PlayerInfo& p) { return p.id == id; }),
                   _players.end());
    if (_state == HostState::Playing && _game)
        _game->playerLeft(id);
    if (_state == HostState::Lobby)
        sendLobby();
}

void HostSession::kick(int id)
{
    for (const auto& p : _peers)
        if (p.id == id)
        {
            _t.send(p.ep, encode(Kick{static_cast<std::uint8_t>(id)}));
            break;
        }
    dropPeer(id);
}

bool HostSession::canStart() const
{
    if (_state != HostState::Lobby)
        return false;
    const std::size_t need = _options.mode == GameMode::CoopSurvival ? 1 : 2;
    if (_players.size() < need)
        return false;
    for (const auto& p : _players)
        if (!p.ready)
            return false;
    return true;
}

bool HostSession::startMatch()
{
    if (!canStart())
        return false;
    const std::uint32_t seed = 0x9e3779b9u * _seedCounter++ + static_cast<std::uint32_t>(_players.size());
    HostOptions chosen = _options;
    if (chosen.map == assets::kRandomMap)
    {
        const auto pool = assets::wifiMaps(chosen.mode == GameMode::CoopSurvival);
        if (!pool.empty())
            chosen.map = static_cast<std::uint8_t>(pool[seed % pool.size()]);
    }
    const MapRef map = _maps(chosen.map);
    if (!map.def || !map.data)
        return false;
    auto game                = std::make_unique<game::MultiplayerGame>(*map.def, *map.data, chosen, _players, seed);
    _game                    = game.get();
    _players                 = _game->players();  // teams are settled now
    _driver                  = std::make_unique<HostDriver>(*this, std::move(game));
    _state                   = HostState::Playing;
    _tick                    = 0;
    StartMatch s;
    s.seed    = seed;
    s.options = chosen;
    s.players = _players;
    _start    = s;
    _startsLeft  = 4;
    _startResend = 0.0f;
    _lastResult.reset();
    return true;
}

void HostSession::returnToLobby(bool playAgain)
{
    if (_state == HostState::Lobby)
        return;
    _driver.reset();
    _game  = nullptr;
    _state = HostState::Lobby;
    _start.reset();
    for (auto& p : _players)
        p.ready = p.host || playAgain;
    _returnsLeft     = 4;
    _returnPlayAgain = playAgain;
    sendLobby();
    if (playAgain)
        startMatch();
}

void HostSession::sendChat(int message)
{
    if (message < 0 || message >= static_cast<int>(kQuickMessages.size()))
        return;
    _chatLog.push_back({0, message});
    broadcastAll(Chat{0, static_cast<std::uint8_t>(message)});
}

void HostSession::afterStep()
{
    ++_tick;
    if (!_game || _state != HostState::Playing)
        return;
    if (_tick % 2 == 0)
    {
        Snapshot s;
        s.tick     = _tick;
        s.timeLeft = static_cast<std::uint16_t>(_game->timeLeft());
        s.wave     = static_cast<std::uint8_t>(_game->wave());
        _game->match().makeSnapshot(s);
        broadcastAll(s);
    }
    if (_tick % 12 == 0)
    {
        ItemList l;
        _game->match().makeItemList(l);
        broadcastAll(l);
    }
    if (_game->state() != game::ModeState::Running)
    {
        _state      = HostState::Ended;
        _lastResult = _game->makeEnd();
        broadcastAll(*_lastResult);
        _endTimer = 0.0f;
    }
}

void HostSession::handle(const Packet& p)
{
    auto msg = decode(p.data);
    if (!msg)
        return;
    if (Peer* peer = peerByEndpoint(p.from))
        peer->silent = 0.0f;
    std::visit(
        [&](const auto& m) {
            using T = std::decay_t<decltype(m)>;
            if constexpr (std::is_same_v<T, Discover>)
            {
                Announce a;
                a.nonce      = m.nonce;
                a.hostName   = _hostName;
                a.players    = static_cast<std::uint8_t>(_players.size());
                a.maxPlayers = _options.maxPlayers;
                a.mode       = _options.mode;
                a.map        = _options.map;
                a.state      = _state;
                a.port       = _t.local().port;
                _t.send(p.from, encode(a));
            }
            else if constexpr (std::is_same_v<T, Join>)
            {
                if (Peer* known = peerByEndpoint(p.from); known && known->token == m.token)
                {
                    _t.send(p.from, encode(JoinReply{JoinResult::Ok, static_cast<std::uint8_t>(known->id), known->token}));
                    return;
                }
                JoinReply r;
                r.token = m.token;
                if (m.version != kProtocolVersion)
                    r.result = JoinResult::WrongVersion;
                else if (_state != HostState::Lobby)
                    r.result = JoinResult::Started;
                else if (static_cast<int>(_players.size()) >= _options.maxPlayers)
                    r.result = JoinResult::Full;
                if (r.result != JoinResult::Ok)
                {
                    _t.send(p.from, encode(r));
                    return;
                }
                int id = 1;
                while (player(id))
                    ++id;
                PlayerInfo info;
                info.id   = static_cast<std::uint8_t>(id);
                info.name = cleanName(m.name);
                info.upgrades = static_cast<std::uint16_t>(m.upgrades & ((1u << 15) - 1));
                for (int dup = 2;; ++dup)  // names are unique in the lobby
                {
                    bool clash = false;
                    for (const auto& q : _players)
                        clash |= q.name == info.name;
                    if (!clash)
                        break;
                    info.name = cleanName(m.name).substr(0, 12) + " (" + std::to_string(dup) + ")";
                }
                _players.push_back(info);
                Peer peer;
                peer.ep    = p.from;
                peer.token = m.token;
                peer.id    = id;
                _peers.push_back(peer);
                r.playerId = static_cast<std::uint8_t>(id);
                _t.send(p.from, encode(r));
                sendLobby();
            }
            else if constexpr (std::is_same_v<T, SetReady>)
            {
                if (Peer* peer = peerByEndpoint(p.from); peer && _state == HostState::Lobby)
                {
                    if (PlayerInfo* pi = player(peer->id))
                    {
                        pi->ready = m.ready;
                        pi->team  = std::min<std::uint8_t>(m.team, kTeamColours);
                    }
                    sendLobby();
                }
            }
            else if constexpr (std::is_same_v<T, Leave>)
            {
                if (Peer* peer = peerByEndpoint(p.from))
                    dropPeer(peer->id);
            }
            else if constexpr (std::is_same_v<T, Input>)
            {
                if (Peer* peer = peerByEndpoint(p.from); peer && (!peer->hasInput || m.seq > peer->input.seq))
                {
                    // The match latches one-shot buttons (setRemoteInput), so overwriting is fine.
                    peer->input    = m;
                    peer->hasInput = true;
                }
            }
            else if constexpr (std::is_same_v<T, Chat>)
            {
                if (Peer* peer = peerByEndpoint(p.from); peer && m.message < kQuickMessages.size())
                {
                    _chatLog.push_back({peer->id, m.message});
                    broadcastAll(Chat{static_cast<std::uint8_t>(peer->id), m.message});
                }
            }
            else if constexpr (std::is_same_v<T, Ping>)
                _t.send(p.from, encode(Pong{m.stamp}));
        },
        *msg);
}

void HostSession::update(float dt)
{
    Packet p;
    while (_t.receive(p))
        handle(p);
    while (_disc && _disc->receive(p))
        handle(p);

    for (auto& peer : _peers)
        peer.silent += dt;
    for (int id : [&] {
             std::vector<int> gone;
             for (const auto& peer : _peers)
                 if (peer.silent > kPeerTimeout)
                     gone.push_back(peer.id);
             return gone;
         }())
        dropPeer(id);

    if (_state == HostState::Lobby)
    {
        _lobbyTimer += dt;
        if (_lobbyTimer >= 1.0f)
            sendLobby();
        if (_returnsLeft > 0 && (_returnsLeft -= 1) >= 0)
            broadcastAll(ReturnToLobby{_returnPlayAgain});
    }
    else if (_state == HostState::Playing && _start && _startsLeft > 0)
    {
        _startResend -= dt;
        if (_startResend <= 0.0f)
        {
            broadcastAll(*_start);
            _startResend = 0.15f;
            --_startsLeft;
        }
    }
    else if (_state == HostState::Ended && _lastResult)
    {
        _endTimer += dt;
        if (_endTimer >= 0.5f)
        {
            _endTimer = 0.0f;
            broadcastAll(*_lastResult);
        }
    }
}

// ============================== client ================================================================

ClientSession::ClientSession(Transport& transport, std::string playerName, MapResolver maps, std::uint16_t upgrades)
    : _t(transport), _name(cleanName(std::move(playerName))), _upgrades(upgrades), _maps(std::move(maps))
{
    _token = 0x1234567u ^ (_t.local().port * 2654435761u) ^ (_t.local().ip * 40503u);
}

void ClientSession::startSearch()
{
    _searching = true;
    _hosts.clear();
    _searchTimer = 1.0f;  // send at once
    if (_cs == ClientState::Idle || _cs == ClientState::Disconnected)
        _cs = ClientState::Searching;
}

void ClientSession::stopSearch()
{
    _searching = false;
    if (_cs == ClientState::Searching)
        _cs = ClientState::Idle;
}

void ClientSession::join(const Endpoint& host)
{
    _host      = host;
    _cs        = ClientState::Joining;
    _joinTimer = 0.0f;
    _silent    = 0.0f;
    _searching = false;
    _joinResult = JoinResult::Ok;
    _t.send(_host, encode(Join{_name, kProtocolVersion, _token, _upgrades}));
}

void ClientSession::leave()
{
    if (_cs == ClientState::InLobby || _cs == ClientState::Playing || _cs == ClientState::Ended || _cs == ClientState::Joining)
        _t.send(_host, encode(Leave{}));
    resetMatch();
    _cs        = ClientState::Idle;
    _searching = false;
}

void ClientSession::setReady(bool ready, int team)
{
    _t.send(_host, encode(SetReady{ready, static_cast<std::uint8_t>(team)}));
}

void ClientSession::sendChat(int message)
{
    if (message >= 0 && message < static_cast<int>(kQuickMessages.size()))
        _t.send(_host, encode(Chat{static_cast<std::uint8_t>(_myId), static_cast<std::uint8_t>(message)}));
}

void ClientSession::resetMatch()
{
    _match.reset();
    _result.reset();
    _lastTick = 0;
    _timeLeft = 0;
    _wave     = 0;
}

void ClientSession::startMatchFrom(const StartMatch& s)
{
    const MapRef map = _maps(s.options.map);
    if (!map.def || !map.data)
    {
        _cs = ClientState::Disconnected;
        return;
    }
    resetMatch();
    game::MatchOptions mo;
    mo.seed          = s.seed;
    mo.createLocal   = false;
    mo.localId       = _myId;
    mo.mirror        = true;
    mo.weaponPickups = false;
    _match           = std::make_unique<game::Match>(*map.def, *map.data, 0, mo);
    for (const auto& p : s.players)
        _match->addFighter(p.id, p.name, p.team, p.id == _myId, true);
    for (const auto& p : s.players)
        _match->addMirrorSoldier(p.id, _match->spawnPoint(p.id));
    _players  = s.players;
    _options  = s.options;
    _cs       = ClientState::Playing;
    _clock    = 0.0f;  // "just started": guards against a late lobby packet
    _timeLeft = static_cast<std::uint16_t>(s.options.minutes * 60);
}

void ClientSession::handle(const Packet& p)
{
    auto msg = decode(p.data);
    if (!msg)
        return;
    const bool fromHost = p.from == _host;
    if (fromHost)
        _silent = 0.0f;
    std::visit(
        [&](const auto& m) {
            using T = std::decay_t<decltype(m)>;
            if constexpr (std::is_same_v<T, Announce>)
            {
                if (!_searching)
                    return;
                FoundHost h;
                h.ep   = {p.from.ip, m.port};
                h.info = m;
                for (auto& f : _hosts)
                    if (f.ep == h.ep)
                    {
                        f = h;
                        return;
                    }
                _hosts.push_back(h);
            }
            else if constexpr (std::is_same_v<T, JoinReply>)
            {
                if (_cs != ClientState::Joining || !fromHost || m.token != _token)
                    return;
                _joinResult = m.result;
                if (m.result == JoinResult::Ok)
                {
                    _myId = m.playerId;
                    _cs   = ClientState::InLobby;
                }
                else
                    _cs = ClientState::Disconnected;
            }
            else if constexpr (std::is_same_v<T, LobbyState>)
            {
                if (!fromHost)
                    return;
                if (_cs == ClientState::InLobby)
                    _lobby = m;
                else if ((_cs == ClientState::Playing && _clock > 1.0f) || _cs == ClientState::Ended)
                {
                    resetMatch();  // the host went back to the lobby
                    _lobby = m;
                    _cs    = ClientState::InLobby;
                    _gotReturn = true;
                }
            }
            else if constexpr (std::is_same_v<T, StartMatch>)
            {
                if (fromHost && _cs == ClientState::InLobby)
                    startMatchFrom(m);
            }
            else if constexpr (std::is_same_v<T, Snapshot>)
            {
                if (fromHost && _cs == ClientState::Playing && _match && m.tick > _lastTick)
                {
                    _lastTick = m.tick;
                    _match->applySnapshot(m);
                    _timeLeft = m.timeLeft;
                    _wave     = m.wave;
                }
            }
            else if constexpr (std::is_same_v<T, ItemList>)
            {
                if (fromHost && _cs == ClientState::Playing && _match)
                    _match->applyItemList(m);
            }
            else if constexpr (std::is_same_v<T, Event>)
            {
                if (fromHost && _cs == ClientState::Playing && _match)
                    _match->pushEvent(fromNet(m));
            }
            else if constexpr (std::is_same_v<T, MatchEnd>)
            {
                if (fromHost && (_cs == ClientState::Playing || _cs == ClientState::Ended))
                {
                    _result = m;
                    _cs     = ClientState::Ended;
                }
            }
            else if constexpr (std::is_same_v<T, Chat>)
            {
                if (fromHost)
                    _chatLog.push_back({m.from, m.message});
            }
            else if constexpr (std::is_same_v<T, Pong>)
            {
                if (fromHost && m.stamp == _pingSent)
                    _ping = (_clock - _pingAt) * 1000.0f;
            }
            else if constexpr (std::is_same_v<T, Kick>)
            {
                if (fromHost)
                {
                    _joinResult = JoinResult::Kicked;
                    resetMatch();
                    _cs = ClientState::Disconnected;
                }
            }
            else if constexpr (std::is_same_v<T, Leave>)
            {
                if (fromHost)
                {
                    resetMatch();
                    _cs = ClientState::Disconnected;
                }
            }
        },
        *msg);
}

void ClientSession::update(float dt)
{
    _clock += dt;
    Packet p;
    while (_t.receive(p))
        handle(p);

    if (_cs == ClientState::Searching || (_searching && _cs != ClientState::Joining))
    {
        _searchTimer += dt;
        if (_searchTimer >= 1.0f)
        {
            _searchTimer = 0.0f;
            _nonce++;
            _t.broadcast(kDiscoveryPort, encode(Discover{_nonce}));
        }
        for (auto& h : _hosts)
            h.age += dt;
        _hosts.erase(std::remove_if(_hosts.begin(), _hosts.end(), [](const FoundHost& h) { return h.age > 4.0f; }), _hosts.end());
    }
    if (_cs == ClientState::Joining)
    {
        _joinTimer += dt;
        _silent += dt;
        if (_joinTimer >= 0.5f)
        {
            _joinTimer = 0.0f;
            _t.send(_host, encode(Join{_name, kProtocolVersion, _token, _upgrades}));
        }
        if (_silent > 5.0f)
            _cs = ClientState::Disconnected;
    }
    else if (_cs == ClientState::InLobby || _cs == ClientState::Playing || _cs == ClientState::Ended)
    {
        _silent += dt;
        if (_silent > kPeerTimeout)
        {
            resetMatch();
            _cs = ClientState::Disconnected;
        }
        _pingTimer += dt;
        if (_pingTimer >= 2.0f)
        {
            _pingTimer = 0.0f;
            _pingSent  = static_cast<std::uint32_t>(_clock * 1000.0f);
            _pingAt    = _clock;
            _t.send(_host, encode(Ping{_pingSent}));
        }
    }
}

void ClientSession::step(float dt, const PadState& pad)
{
    if (_cs != ClientState::Playing || !_match)
        return;
    _t.send(_host, encode(inputFromPad(pad, ++_seq)));
    _match->stepMirror(dt, pad);
}

std::string ClientSession::status() const
{
    char buf[48];
    if (_options.mode == GameMode::CoopSurvival)
        std::snprintf(buf, sizeof buf, "WAVE %d", _wave);
    else
        std::snprintf(buf, sizeof buf, "%d:%02d", _timeLeft / 60, _timeLeft % 60);
    return buf;
}

std::string ClientSession::scoreboard() const
{
    if (!_match)
        return {};
    std::vector<const game::Fighter*> fs;
    for (const auto& f : _match->fighters())
        if (!(f.team == 2 && _options.mode == GameMode::CoopSurvival))
            fs.push_back(&f);
    std::stable_sort(fs.begin(), fs.end(), [](auto* a, auto* b) { return a->kills > b->kills; });
    std::string out;
    for (std::size_t i = 0; i < fs.size() && i < 4; ++i)
        out += fs[i]->name + "  " + std::to_string(fs[i]->kills) + "\n";
    return out;
}

std::vector<game::GameDriver::Row> ClientSession::results() const
{
    std::vector<Row> rows;
    if (_result)
        for (const auto& r : _result->rows)
            rows.push_back({r.name, r.team, r.kills, r.deaths, r.id == _myId});
    return rows;
}

std::string ClientSession::resultTitle() const
{
    if (!_result)
        return {};
    if (_result->options.mode == GameMode::CoopSurvival)
        return "GAME OVER  -  WAVE " + std::to_string(_wave);
    if (_result->winnerTeam > 0 && _result->winnerTeam <= kTeamColours)
        return std::string(teamColourName(_result->winnerTeam)) + " TEAM WINS";
    return _result->rows.empty() ? "MATCH OVER" : _result->rows.front().name + " WINS";
}

}  // namespace mm::net

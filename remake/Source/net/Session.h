// Host and client sessions of the Wi-Fi game. Engine-free: they talk through a Transport and
// are driven by update() / step() calls, so the whole protocol runs in unit tests.
#pragma once

#include <functional>
#include <map>
#include <memory>
#include <optional>
#include <string>
#include <vector>

#include "assets/MapCatalog.h"
#include "assets/MapData.h"
#include "game/Driver.h"
#include "game/MpGame.h"
#include "net/Protocol.h"
#include "net/Transport.h"

namespace mm::net
{

constexpr std::uint16_t kDiscoveryPort = 9330;  // config::kLanDiscoveryPort
constexpr std::uint16_t kGamePort      = 9331;  // config::kLanGamePort
constexpr float kPeerTimeout           = 6.0f;

// The app supplies the maps (so tests and the engine load them their own way).
struct MapRef { const assets::MapDef* def = nullptr; const assets::MapData* data = nullptr; };
using MapResolver = std::function<MapRef(int mapIndex)>;

game::PadState padFromInput(const Input& in);
Input inputFromPad(const game::PadState& pad, std::uint32_t seq);
Event toNet(const game::GameEvent& e);
game::GameEvent fromNet(const Event& e);

// ---------------------------------------------------------------------------------------------
class HostSession
{
public:
    HostSession(Transport& transport, std::string hostName, std::string playerName, MapResolver maps);

    // Hosts also listen for "who is there?" on the discovery port (a second socket).
    void setDiscoveryTransport(Transport* t) { _disc = t; }
    HostState state() const { return _state; }
    const HostOptions& options() const { return _options; }
    // Host-chosen options; the cap is limited to 2..12 and never below the people present.
    void setOptions(HostOptions o);
    const std::vector<PlayerInfo>& players() const { return _players; }
    void setHostUpgrades(std::uint16_t mask) { _players[0].upgrades = mask; }
    void setHostReady(bool ready);
    void setHostTeam(int team);
    void kick(int playerId);
    bool canStart() const;  // every guest ready and at least two people (one for Co-op)
    bool startMatch();
    void returnToLobby(bool playAgain);

    // Network pump: call every frame.
    void update(float dt);
    // The running match, as a driver the game screen can step; null outside a match.
    game::GameDriver* driver() { return _driver.get(); }
    void sendChat(int message);  // the host's own quick message
    const std::vector<std::pair<int, int>>& chatLog() const { return _chatLog; }  // (from, message) since the last clear
    void clearChatLog() { _chatLog.clear(); }
    std::optional<MatchEnd> lastResult() const { return _lastResult; }

private:
    friend class HostDriver;
    struct Peer
    {
        Endpoint ep;
        std::uint32_t token = 0;
        int id = 0;
        float silent = 0.0f;
        std::uint32_t lastSeq = 0;
        bool hasInput = false;
        Input input;
    };
    void handle(const Packet& p);
    void broadcastAll(const Message& m);
    void sendLobby();
    void dropPeer(int id);
    PlayerInfo* player(int id);
    Peer* peerByEndpoint(const Endpoint& ep);
    void afterStep();  // called by the driver after every fixed step

    Transport& _t;
    Transport* _disc = nullptr;
    std::string _hostName;
    MapResolver _maps;
    HostState _state = HostState::Lobby;
    HostOptions _options;
    std::vector<PlayerInfo> _players;
    std::vector<Peer> _peers;
    std::unique_ptr<game::GameDriver> _driver;
    game::MultiplayerGame* _game = nullptr;
    std::uint32_t _tick = 0;
    float _lobbyTimer = 0.0f;
    float _startResend = 0.0f;
    int _startsLeft = 0;
    std::optional<StartMatch> _start;
    float _endTimer = 0.0f;
    std::optional<MatchEnd> _lastResult;
    std::vector<std::pair<int, int>> _chatLog;
    std::uint32_t _seedCounter = 1;
    int _returnsLeft = 0;
    bool _returnPlayAgain = false;
};

// ---------------------------------------------------------------------------------------------
struct FoundHost
{
    Endpoint ep;  // where to send Join (the host's game port)
    Announce info;
    float age = 0.0f;
};

enum class ClientState { Idle, Searching, Joining, InLobby, Playing, Ended, Disconnected };

class ClientSession : public game::GameDriver
{
public:
    ClientSession(Transport& transport, std::string playerName, MapResolver maps, std::uint16_t upgrades = 0);

    ClientState clientState() const { return _cs; }
    JoinResult lastJoinResult() const { return _joinResult; }
    int myId() const { return _myId; }

    // Finding games: sends a discovery broadcast every second and keeps the answers for 4 s.
    void startSearch();
    void stopSearch();
    const std::vector<FoundHost>& hosts() const { return _hosts; }
    void join(const Endpoint& host);  // from the list, or typed in by IP (game port)
    void leave();

    const LobbyState& lobby() const { return _lobby; }
    void setReady(bool ready, int team = 0);
    void sendChat(int message);
    const std::vector<std::pair<int, int>>& chatLog() const { return _chatLog; }
    void clearChatLog() { _chatLog.clear(); }
    std::optional<MatchEnd> result() const { return _result; }
    float ping() const { return _ping; }
    bool returnedToLobby() { return std::exchange(_gotReturn, false); }

    void update(float dt);  // network pump, every frame

    // GameDriver: the mirror of the host's match.
    game::Match& match() override { return *_match; }
    bool hasMatch() const { return _match != nullptr; }
    void step(float dt, const game::PadState& pad) override;
    game::ModeState state() const override { return _cs == ClientState::Ended ? game::ModeState::Finished : game::ModeState::Running; }
    std::string status() const override;
    std::string banner() const override { return _wave > 0 ? "" : ""; }
    std::string scoreboard() const override;
    bool isNetworked() const override { return true; }
    int wave() const override { return _wave; }
    const HostOptions& options() const { return _options; }
    std::vector<Row> results() const override;
    std::string resultTitle() const override;
    game::Match* releaseMatch() { return _match.get(); }

private:
    void handle(const Packet& p);
    void startMatchFrom(const StartMatch& s);
    void resetMatch();

    Transport& _t;
    std::string _name;
    std::uint16_t _upgrades = 0;
    MapResolver _maps;
    ClientState _cs = ClientState::Idle;
    JoinResult _joinResult = JoinResult::Ok;
    Endpoint _host;
    std::uint32_t _token = 0, _nonce = 0, _seq = 0, _lastTick = 0;
    int _myId = -1;
    float _searchTimer = 0.0f, _joinTimer = 0.0f, _silent = 0.0f, _pingTimer = 0.0f, _ping = 0.0f, _inputTimer = 0.0f;
    bool _searching = false, _gotReturn = false;
    std::vector<FoundHost> _hosts;
    LobbyState _lobby;
    std::unique_ptr<game::Match> _match;
    std::vector<PlayerInfo> _players;
    std::optional<MatchEnd> _result;
    std::vector<std::pair<int, int>> _chatLog;
    std::uint16_t _timeLeft = 0;
    int _wave = 0;
    HostOptions _options;
    std::uint32_t _pingSent = 0;
    float _pingAt = 0.0f;
    float _clock = 0.0f;
};

}  // namespace mm::net

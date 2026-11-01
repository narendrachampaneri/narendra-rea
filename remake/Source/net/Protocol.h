// The LAN protocol: every packet is  'M' 'M' version type  followed by the message body.
// See remake/LAN-PROTOCOL.md for the full description.
#pragma once

#include <array>
#include <optional>
#include <string>
#include <variant>
#include <vector>

#include "net/Wire.h"

namespace mm::net
{

constexpr std::uint8_t kProtocolVersion = 1;
constexpr std::size_t kMaxPacket        = 1200;  // below a typical Wi-Fi MTU
constexpr int kMaxPlayers               = 12;    // config::kAbsoluteMaxPlayers

enum class MsgType : std::uint8_t
{
    Discover = 1, Announce, Join, JoinReply, LobbyState, SetReady, StartMatch, Input, Snapshot,
    ItemList, Event, Chat, Leave, Ping, Pong, MatchEnd, ReturnToLobby, Kick,
};

enum class GameMode : std::uint8_t { Deathmatch, TeamDeathmatch, CoopSurvival };
enum class HostState : std::uint8_t { Lobby, Playing, Ended };
enum class JoinResult : std::uint8_t { Ok, Full, Started, WrongVersion, Kicked };

// The twelve quick messages (Fair mode and the keyboard-free phone use the same list).
extern const std::array<const char*, 12> kQuickMessages;

// --- Lobby -------------------------------------------------------------------------------
struct Discover { std::uint32_t nonce = 0; };
struct Announce
{
    std::uint32_t nonce = 0;
    std::string hostName;
    std::uint8_t players = 0, maxPlayers = 0;
    GameMode mode = GameMode::Deathmatch;
    std::uint8_t map = 0;
    HostState state = HostState::Lobby;
    std::uint16_t port = 0;
};
struct Join { std::string name; std::uint8_t version = kProtocolVersion; std::uint32_t token = 0; std::uint16_t upgrades = 0; };
struct JoinReply { JoinResult result = JoinResult::Ok; std::uint8_t playerId = 0; std::uint32_t token = 0; };

struct PlayerInfo
{
    std::uint8_t id = 0;
    std::string name;
    std::uint8_t team = 0;
    bool ready = false, host = false;
    std::uint16_t upgrades = 0;  // purchased upgrades (bit n = config::kUpgrades[n]); ignored in Fair mode
};
struct HostOptions
{
    GameMode mode = GameMode::Deathmatch;
    std::uint8_t map = 0;        // index into assets::kMaps
    std::uint8_t minutes = 5;    // 1..8
    std::uint8_t maxPlayers = 12;
    std::uint8_t killLimit = 0;  // 0 = none
    bool fair = false;           // Fair mode: equal weapons for everybody, no pick-ups
    std::uint8_t respawn = 9;    // seconds until a dead player comes back (3..15)
    bool friendlyFire = false;
    // Party options (M7 extras), all off by default: bit0 low gravity, bit1 unlimited ammo,
    // bit2 one-shot kills, bit3 melee only.
    std::uint8_t party = 0;
    std::uint8_t weaponGroups = 0x1f;  // allowed pick-up groups (game/Weapons.h weaponGroup)
    bool operator==(const HostOptions&) const = default;
};
struct LobbyState { HostOptions options; std::vector<PlayerInfo> players; };
struct SetReady { bool ready = false; std::uint8_t team = 0; };
struct StartMatch { std::uint32_t seed = 0; HostOptions options; std::vector<PlayerInfo> players; };

// --- In the match --------------------------------------------------------------------------
enum InputBits : std::uint8_t
{
    kFire = 1, kTouched = 2, kMelee = 4, kGrenade = 8, kReload = 16, kSwitch = 32, kPickUp = 64, kZoom = 128,
};
struct Input
{
    std::uint32_t seq = 0;
    std::uint8_t bits = 0;
    std::int8_t moveX = 0, moveY = 0;  // stick offset * 100
    std::uint16_t aim = 0;             // clockwise degrees * 10 (0..3599)
};

struct FighterState
{
    std::uint8_t id = 0;
    float x = 0, y = 0, vx = 0, vy = 0, angle = 0;  // angle in radians
    std::uint16_t aim = 0;                          // degrees * 10
    std::uint8_t health = 0, power = 0;
    std::uint8_t weapon = 0, secondary = 255, clip = 0;
    std::uint16_t ammo = 0;
    std::uint8_t grenades = 0;
    std::uint8_t flags = 0;  // alive 1, crouch 2, jetting 4, ground 8, reloading 16, thrust (x 0..1) in the top 3 bits
    std::uint8_t reloadPct = 0;
};
struct TracerState { float x = 0, y = 0; std::uint16_t angle = 0; std::uint8_t trail = 0, opacity = 0; };
struct GrenadeState { float x = 0, y = 0; float angle = 0; };
struct RocketState { float x = 0, y = 0; std::uint16_t angle = 0; };
struct ScoreState { std::uint8_t id = 0; std::uint16_t kills = 0, deaths = 0; };
struct Snapshot
{
    std::uint32_t tick = 0;
    std::uint16_t timeLeft = 0;  // seconds
    std::uint8_t wave = 0;
    std::vector<FighterState> fighters;
    std::vector<TracerState> tracers;
    std::vector<GrenadeState> grenades;
    std::vector<RocketState> rockets;
    std::vector<ScoreState> scores;
};

struct ItemState { std::uint16_t uid = 0; std::uint8_t weapon = 0; float x = 0, y = 0; float angle = 0; };
struct ItemList { std::vector<ItemState> items; };

enum class EventKind : std::uint8_t { Sound = 1, Shot, Spark, Explosion, Death, Blood, Throw, Respawn };
struct Event
{
    EventKind kind = EventKind::Sound;
    std::uint8_t sound = 0, fighter = 255;
    float x = 0, y = 0, dx = 0, dy = 0;
    std::uint8_t volume = 100;  // percent
};
struct Chat { std::uint8_t from = 0, message = 0; };
struct Leave {};
struct Kick { std::uint8_t playerId = 0; };
struct Ping { std::uint32_t stamp = 0; };
struct Pong { std::uint32_t stamp = 0; };
struct ResultRow { std::uint8_t id = 0; std::string name; std::uint8_t team = 0; std::uint16_t kills = 0, deaths = 0; };
struct MatchEnd { HostOptions options; std::vector<ResultRow> rows; std::uint8_t winnerTeam = 255; bool won = false; };
struct ReturnToLobby { bool playAgain = false; };

using Message = std::variant<Discover, Announce, Join, JoinReply, LobbyState, SetReady, StartMatch, Input, Snapshot,
                             ItemList, Event, Chat, Leave, Ping, Pong, MatchEnd, ReturnToLobby, Kick>;

Bytes encode(const Message& message);
// Returns nothing for packets that are not ours, the wrong version, truncated or malformed.
std::optional<Message> decode(const std::uint8_t* data, std::size_t size);
inline std::optional<Message> decode(const Bytes& b) { return decode(b.data(), b.size()); }

// Snapshot limits so one packet always fits kMaxPacket.
constexpr std::size_t kMaxTracers = 30, kMaxGrenades = 8, kMaxRockets = 8;

}  // namespace mm::net

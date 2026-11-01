# LAN protocol (version 1)

How phones play together over Wi-Fi or a phone hotspot. Written for this remake; the original
game used RakNet and its wire format is not reused. Code: `Source/net/` (`Protocol.*` messages,
`Transport.*` sockets, `Session.*` host and client). Unit tests: `Tests/NetTest.cpp`.

## Model
- One phone is the **host**. It runs the whole match (`MultiplayerGame`, the same physics and
  rules as a solo game). Everyone else is a **client** that sends its stick and button state and
  draws what the host reports. No bots in Deathmatch / Team Deathmatch; Co-op's enemies are host-side.
- Everything is **UDP**, IPv4, no encryption. A match is local and short, and cheating is not a goal.
- Ports: **9330** discovery (host listens), **9331** game (host listens; clients use any free port).
- Player cap chosen by the host: 2 to 12 (default 12).

## Packet
```
'M' 'M'  version(u8 = 1)  type(u8)  body...
```
All integers little-endian. Strings: `u8 length` (max 255) + bytes (UTF-8). Packets larger than
1200 bytes, with another magic or version, truncated, or with an unknown type are dropped silently.
Positions are `f32`; velocities and angles are 16-bit fixed point (`value x scale`, clamped).

| type | name | direction | body |
|---|---|---|---|
| 1 | Discover | client -> broadcast :9330 | nonce u32 |
| 2 | Announce | host -> asker | nonce, host name, players u8, max u8, mode u8, map u8, state u8, game port u16 |
| 3 | Join | client -> host | name, protocol version, token u32 |
| 4 | JoinReply | host -> client | result u8 (0 ok, 1 full, 2 started, 3 wrong version, 4 kicked), player id, token |
| 5 | LobbyState | host -> all | options (mode, map or 254 = random, minutes, max, kill limit, fair, respawn seconds, friendly fire, party bits, allowed weapon groups), player list (id, name, team, ready/host flags) |
| 6 | SetReady | client -> host | ready u8, team u8 |
| 7 | StartMatch | host -> all | seed u32, options, final player list (teams settled) |
| 8 | Input | client -> host, every step (60/s) | seq u32, buttons u8, move x/y i8 (x100), aim u16 (degrees x10) |
| 9 | Snapshot | host -> all, 30/s | tick, seconds left, wave, fighters, bullets, grenades, rockets, scores |
| 10 | ItemList | host -> all, 5/s | map weapons: uid, weapon, position, angle |
| 11 | Event | host -> all | sound / shot / spark / explosion / death / blood / throw, position, direction, volume |
| 12 | Chat | both | sender id, message index (0..11) |
| 13 | Leave | both | - |
| 14 | Ping | client -> host | stamp (answered by 15 Pong) |
| 16 | MatchEnd | host -> all | options, winner team, result rows (id, name, team, kills, deaths) |
| 17 | ReturnToLobby | host -> all | play again flag |
| 18 | Kick | host -> one | player id |

Input buttons: 1 fire, 2 stick touched, 4 melee, 8 grenade, 16 reload, 32 switch weapon,
64 pick up, 128 zoom. The host latches one-shot buttons until the next step so a packet that
arrives between two steps is not lost.

### The twelve quick messages
Nice shot! / Good game / Follow me / Cover me / Need help! / Watch out! / Thanks / Sorry /
Let's go / Hold the line / Over here / Well played.

## Flow
1. **Discovery.** A searching phone broadcasts Discover to 255.255.255.255:9330 and to the
   directed broadcast address of every Wi-Fi / hotspot interface, once a second. Hosts answer
   with Announce (to the sender). A host not heard for 4 s drops off the list. Typing the host's
   IP address skips discovery (a host shows its address in the lobby).
2. **Join.** Join is repeated every 0.5 s until JoinReply (5 s limit). The host keeps the
   client's (address, token): a repeated Join returns the same id. Ids are the lowest free
   number from 1 (the host is 0). A name already taken gets " (2)" and so on.
3. **Lobby.** The host re-sends LobbyState once a second and after every change. Guests mark
   ready (and pick a team for Team Deathmatch). The host may start when everybody is ready and at
   least two people are present (one for Co-op).
4. **Start.** StartMatch is sent four times, 0.15 s apart. Clients build a mirror of the match.
   Team Deathmatch teams are balanced here if nobody picked one.
5. **Match.** Clients send Input every step. The host steps the match at a fixed 60 Hz, sends
   Snapshots at 30 Hz and Events as they happen, ItemList at 5 Hz. A client draws the latest
   snapshot (soldiers glide on their reported velocity between snapshots; no prediction, so there
   is one round trip of delay on your own movement). Snapshots with an older tick are ignored.
6. **End.** The host sends MatchEnd every 0.5 s until it returns to the lobby. Clients show the
   leaderboard. The host chooses *Play again* (new match at once, same players) or *Lobby*
   (ReturnToLobby x4, then LobbyState again).
7. **Leaving.** Leave, Kick, or 6 s of silence from either side frees the slot; in a match the
   soldier is removed.

## Rules the host applies
- **Deathmatch:** most kills when time is up (host-chosen 1-8 minutes, optional kill limit).
- **Team Deathmatch:** two teams; team kills count; team mates' bullets and explosions never hurt.
- **Co-op Survival:** everybody on one team against waves of enemies (new each time the last one
  falls: 1 + wave + players), three lives each; the game ends when nobody has a life left.
- **Fair mode:** everyone starts with the same gun (AK-47) and no weapons appear on the map.
- Respawn after 9 s at the spawn point farthest from the others.
- No Coins from Co-op Survival (owner decision). Coins (10 per kill in Deathmatch and Team
  Deathmatch) arrive with the store in M6.

## Not in version 1
- QR-code joining (needs the camera; planned with the M6 menus). Typing the IP works now.
- Client-side prediction, lag compensation, voice chat.
- A reconnect to a match in progress.


## Changes after the first M5 text
- Input button bits are 16 bits wide (bit 8 = place proximity mine).
- HostOptions carry: respawn seconds (3-15), friendly fire, party bits (1 low gravity, 2 unlimited ammo, 4 one-shot kills, 8 melee only), allowed weapon groups (5 bits), map 254 = random (the host draws it at start and sends the real one).
- Upgrade mask: bits 0-13 are the store upgrades, bit 14 is the Pro Pack (dual wield).
- Event kinds 9 = Gas cloud, 10 = Mine placed.
- QR code text: `MMJOIN1;<ipv4>;<port>`.

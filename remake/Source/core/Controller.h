#pragma once

#include <cstdint>

namespace mm
{

using EntityId = std::uint32_t;

// Who is allowed to decide what happens to an entity (mirrors the original class split):
//   Host   = SoldierController / SoldierHostController: simulates authoritatively from an input source
//            (the local player, or a remote player's input relayed to the host).
//   Remote = SoldierRemoteController: only applies state received from the host.
//   AI     = SoldierAIController: host-side bot logic (offline modes only; no bots in Wi-Fi matches).
enum class ControllerRole : std::uint8_t
{
    Host,
    Remote,
    AI,
};

class Controller
{
public:
    virtual ~Controller() = default;
    virtual ControllerRole role() const = 0;
    // One fixed simulation step (the original's updateStep).
    virtual void updateStep(float dt) = 0;
};

}  // namespace mm

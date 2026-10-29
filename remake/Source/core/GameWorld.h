#pragma once

#include <algorithm>
#include <memory>
#include <vector>

#include "core/Controller.h"
#include "core/FixedStepper.h"

namespace mm
{

// Whether this device runs the authoritative simulation.
enum class NetRole : std::uint8_t
{
    Offline,  // single device: acts as its own host
    Host,     // Wi-Fi host: authoritative
    Client,   // Wi-Fi client: only Remote controllers run
};

// One world per match. Owns the controllers and advances them with a fixed step so
// host and clients stay in sync regardless of frame rate.
class GameWorld
{
public:
    GameWorld(NetRole role, float step, int maxSteps) : _role(role), _stepper(step, maxSteps) {}

    NetRole netRole() const { return _role; }
    bool isAuthoritative() const { return _role != NetRole::Client; }

    EntityId add(std::unique_ptr<Controller> controller)
    {
        const EntityId id = ++_lastId;
        _entries.push_back({id, std::move(controller)});
        return id;
    }

    bool remove(EntityId id)
    {
        auto it = std::find_if(_entries.begin(), _entries.end(), [id](const Entry& e) { return e.id == id; });
        if (it == _entries.end())
            return false;
        _entries.erase(it);
        return true;
    }

    // Call once per rendered frame. Returns the number of fixed steps that ran.
    int update(float frameDt)
    {
        const int steps = _stepper.advance(frameDt);
        for (int i = 0; i < steps; ++i)
            step(_stepper.step());
        _ticks += static_cast<std::uint64_t>(steps);
        return steps;
    }

    std::size_t size() const { return _entries.size(); }
    std::uint64_t ticks() const { return _ticks; }
    float alpha() const { return _stepper.alpha(); }

private:
    struct Entry
    {
        EntityId id;
        std::unique_ptr<Controller> controller;
    };

    void step(float dt)
    {
        for (auto& e : _entries)
        {
            // A client never simulates Host/AI controllers; it only applies Remote state.
            if (!isAuthoritative() && e.controller->role() != ControllerRole::Remote)
                continue;
            e.controller->updateStep(dt);
        }
    }

    NetRole _role;
    FixedStepper _stepper;
    std::vector<Entry> _entries;
    EntityId _lastId = 0;
    std::uint64_t _ticks = 0;
};

}  // namespace mm

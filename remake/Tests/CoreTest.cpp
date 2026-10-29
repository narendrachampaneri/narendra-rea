#include "doctest/doctest.h"

#include <memory>

#include "config/GameConfig.h"
#include "core/GameWorld.h"

namespace
{
struct CountingController : mm::Controller
{
    CountingController(mm::ControllerRole r, int* counter) : _role(r), _counter(counter) {}
    mm::ControllerRole role() const override { return _role; }
    void updateStep(float) override { ++*_counter; }
    mm::ControllerRole _role;
    int* _counter;
};
}  // namespace

TEST_CASE("FixedStepper runs whole steps and keeps the remainder")
{
    mm::FixedStepper s(0.1f, 5);
    CHECK(s.advance(0.25f) == 2);
    CHECK(s.advance(0.05f) == 1);  // 0.05 remainder + 0.05
    CHECK(s.advance(-1.0f) == 0);
}

TEST_CASE("FixedStepper drops the backlog after a long hitch")
{
    mm::FixedStepper s(0.1f, 3);
    CHECK(s.advance(10.0f) == 3);
    CHECK(s.advance(0.0f) == 0);
}

TEST_CASE("Offline and host worlds run every controller")
{
    for (auto role : {mm::NetRole::Offline, mm::NetRole::Host})
    {
        int host = 0, remote = 0, ai = 0;
        mm::GameWorld w(role, 0.1f, 5);
        w.add(std::make_unique<CountingController>(mm::ControllerRole::Host, &host));
        w.add(std::make_unique<CountingController>(mm::ControllerRole::Remote, &remote));
        w.add(std::make_unique<CountingController>(mm::ControllerRole::AI, &ai));
        w.update(0.2f);
        CHECK(host == 2);
        CHECK(remote == 2);
        CHECK(ai == 2);
        CHECK(w.ticks() == 2);
    }
}

TEST_CASE("Client worlds only run Remote controllers")
{
    int host = 0, remote = 0;
    mm::GameWorld w(mm::NetRole::Client, 0.1f, 5);
    w.add(std::make_unique<CountingController>(mm::ControllerRole::Host, &host));
    w.add(std::make_unique<CountingController>(mm::ControllerRole::Remote, &remote));
    w.update(0.1f);
    CHECK(host == 0);
    CHECK(remote == 1);
}

TEST_CASE("Entities can be removed")
{
    int c = 0;
    mm::GameWorld w(mm::NetRole::Offline, 0.1f, 5);
    auto id = w.add(std::make_unique<CountingController>(mm::ControllerRole::Host, &c));
    CHECK(w.remove(id));
    CHECK_FALSE(w.remove(id));
    CHECK(w.size() == 0);
}

TEST_CASE("Original upgrade table is intact")
{
    int total = 0;
    for (const auto& u : mm::config::kUpgrades)
        if (!u.requiresPro)
            total += u.price;
    CHECK(mm::config::kUpgrades.size() == 14);
    CHECK(total == 15050);  // 13 non-mask upgrades, original prices
    CHECK(mm::config::kUpgrades.back().requiresPro);
}

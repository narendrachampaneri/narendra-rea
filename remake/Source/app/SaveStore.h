// The player's save file on this phone: loaded at start, written whenever something changes
// (atomic write + a .bak of the last good file), exported / imported by the player, and the
// place where settings take effect and match results become stats and Coins.
#pragma once

#include <functional>
#include <string>

#include "economy/Economy.h"
#include "game/Driver.h"
#include "save/SaveData.h"

namespace mm::app
{

class SaveStore
{
public:
    static SaveStore& get();

    void load();  // call once at start; a missing or broken file gives a fresh save
    save::SaveData& data() { return _data; }
    const save::SaveData& data() const { return _data; }
    void commit();  // write now (call after every change; cheap)

    // Makes the settings real: volumes, frame rate. Quality applies on the next start.
    void applySettings();

    // Export / import through the system file picker (no storage permission).
    void exportToFile();
    void importFromFile();
    // Set by the settings screen to hear about the picker's result.
    std::function<void(bool ok, const char* what)> onTransfer;
    bool importText(const std::string& text);  // false if it is not a valid save
    void exportDone(bool ok);

    // End of a match: kills, deaths, play time, bests, Wi-Fi Coins and the friends table.
    struct MatchSummary
    {
        int coins = 0;
        bool newBest = false;
    };
    MatchSummary recordMatch(economy::MatchKind kind, game::GameDriver& driver, float seconds, int wave, int score);

    economy::Boosts boosts() const { return economy::boostsFor(_data.upgrades); }
    std::string path() const;

private:
    save::SaveData _data;
};

}  // namespace mm::app

#include "app/SaveStore.h"

#include <algorithm>
#include <cstdio>
#include <fstream>
#include <sstream>

#include "app/AudioSystem.h"
#include "axmol.h"

#if AX_TARGET_PLATFORM == AX_PLATFORM_ANDROID
#    include <jni.h>
#    include "platform/android/jni/JniHelper.h"
#endif

namespace mm::app
{

SaveStore& SaveStore::get()
{
    static SaveStore store;
    return store;
}

std::string SaveStore::path() const
{
    return ax::FileUtils::getInstance()->getWritablePath() + "save.mmsave";
}

namespace
{
std::optional<std::string> readFile(const std::string& path)
{
    std::ifstream in(path, std::ios::binary);
    if (!in)
        return std::nullopt;
    std::stringstream ss;
    ss << in.rdbuf();
    return ss.str();
}
}  // namespace

void SaveStore::load()
{
    for (const std::string& file : {path(), path() + ".bak"})
        if (auto text = readFile(file))
            if (auto parsed = save::fromText(*text))
            {
                _data = *parsed;
                applySettings();
                return;
            }
    _data = {};
    applySettings();
}

void SaveStore::commit()
{
    const std::string text = save::toText(_data);
    const std::string file = path();
    // The last good file becomes the backup, then the new one is written whole and renamed in.
    if (auto old = readFile(file); old && save::fromText(*old))
        std::rename(file.c_str(), (file + ".bak").c_str());
    const std::string tmp = file + ".tmp";
    {
        std::ofstream out(tmp, std::ios::binary | std::ios::trunc);
        out << text;
    }
    std::rename(tmp.c_str(), file.c_str());
}

void SaveStore::applySettings()
{
    const auto& s = _data.settings;
    AudioSystem::get().setEffectsVolume(s.soundVolume / 100.0f);
    AudioSystem::get().setMusicVolume(s.musicVolume / 100.0f);
    if (auto* director = ax::Director::getInstance(); director && director->getRenderView())
        director->setAnimationInterval(1.0f / static_cast<float>(s.frameRate));
}

SaveStore::MatchSummary SaveStore::recordMatch(economy::MatchKind kind, game::GameDriver& driver, float seconds, int wave, int score)
{
    MatchSummary out;
    auto& st = _data.stats;
    const auto& me = driver.match().playerFighter();
    st.kills += me.kills;
    st.deaths += me.deaths;
    ++st.matches;
    st.playSeconds += static_cast<std::int64_t>(seconds);
    switch (kind)
    {
    case economy::MatchKind::Solo:
        if (wave > st.bestSurvivalWave || (wave == st.bestSurvivalWave && score > st.bestSurvivalScore))
        {
            out.newBest = wave > 0;
            st.bestSurvivalWave  = std::max(st.bestSurvivalWave, wave);
            st.bestSurvivalScore = std::max(st.bestSurvivalScore, score);
        }
        break;
    case economy::MatchKind::WifiCoop:
        if (wave > st.bestCoopWave)
        {
            st.bestCoopWave = wave;
            out.newBest     = true;
        }
        break;
    default:
        if (me.kills > st.bestDeathmatchKills)
        {
            st.bestDeathmatchKills = me.kills;
            out.newBest            = true;
        }
        break;
    }
    out.coins = economy::awardMatch(_data, kind, me.kills);

    // The friends table: everybody else who was in the match, from the final leaderboard.
    if (driver.isNetworked())
        for (const auto& row : driver.results())
        {
            if (row.me || row.name.empty() || row.name == _data.name)
                continue;
            auto& f = _data.friends[row.name];
            f.kills += row.kills;
            f.deaths += row.deaths;
            ++f.matches;
        }
    commit();
    return out;
}

void SaveStore::exportToFile()
{
#if AX_TARGET_PLATFORM == AX_PLATFORM_ANDROID
    ax::JniHelper::callStaticVoidMethod("dev/axmol/app/AppActivity", "exportSave", save::toText(_data));
#else
    exportDone(false);
#endif
}

void SaveStore::importFromFile()
{
#if AX_TARGET_PLATFORM == AX_PLATFORM_ANDROID
    ax::JniHelper::callStaticVoidMethod("dev/axmol/app/AppActivity", "importSave");
#elif 1
    if (onTransfer)
        onTransfer(false, "import");
#endif
}

void SaveStore::exportDone(bool ok)
{
    if (onTransfer)
        onTransfer(ok, "export");
}

bool SaveStore::importText(const std::string& text)
{
    auto parsed = save::fromText(text);
    if (parsed)
    {
        // A restored file keeps this phone's "first launch done" so the welcome does not repeat.
        parsed->firstLaunchDone = parsed->firstLaunchDone || !parsed->name.empty();
        _data = *parsed;
        commit();
        applySettings();
    }
    if (onTransfer)
        onTransfer(parsed.has_value(), "import");
    return parsed.has_value();
}

}  // namespace mm::app

#if AX_TARGET_PLATFORM == AX_PLATFORM_ANDROID
extern "C"
{
JNIEXPORT void JNICALL Java_dev_axmol_app_AppActivity_nativeOnSaveImported(JNIEnv* env, jclass, jstring text)
{
    const char* chars = env->GetStringUTFChars(text, nullptr);
    std::string copy  = chars ? chars : "";
    if (chars)
        env->ReleaseStringUTFChars(text, chars);
    ax::Director::getInstance()->getScheduler()->runOnAxmolThread(
        [copy] { mm::app::SaveStore::get().importText(copy); });
}

JNIEXPORT void JNICALL Java_dev_axmol_app_AppActivity_nativeOnSaveExported(JNIEnv*, jclass, jboolean ok)
{
    ax::Director::getInstance()->getScheduler()->runOnAxmolThread([ok] { mm::app::SaveStore::get().exportDone(ok); });
}
}
#endif

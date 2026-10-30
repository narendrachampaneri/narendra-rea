// Plays the sound set by original sound id (audio/SoundBank.h) and the menu music.
#pragma once

#include <functional>
#include <string_view>

#include "audio/SoundBank.h"

namespace mm::app
{

class AudioSystem
{
public:
    static constexpr int kNone = -1;

    static AudioSystem& get();

    // Decodes every effect up front so the first shot never stutters (the original preloaded
    // its whole bank in Sound::loadSoundBuffers). Decoding runs off the game thread; `done`
    // runs on the game thread when every file is ready.
    void preloadEffectsAsync(std::function<void()> done);

    // Returns a handle for stop(), or kNone when the id has no sound or effects are muted.
    int play(audio::SoundId id, float volume = 1.0f, bool loop = false);
    void stop(int handle);

    void playMusic(std::string_view file = "music/presMix.mp3");
    void stopMusic();
    bool isMusicPlaying() const { return _music != kNone; }

    void setEffectsVolume(float volume);  // 0..1, from Settings
    void setMusicVolume(float volume);    // 0..1, from Settings

    void pauseAll();
    void resumeAll();

private:
    int _music          = kNone;
    float _effectVolume = 1.0f;
    float _musicVolume  = 1.0f;
};

}  // namespace mm::app

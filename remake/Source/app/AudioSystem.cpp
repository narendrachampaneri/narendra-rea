#include "app/AudioSystem.h"

#include "audio/AudioEngine.h"

using ax::AudioEngine;

namespace mm::app
{

AudioSystem& AudioSystem::get()
{
    static AudioSystem instance;
    return instance;
}

void AudioSystem::preloadEffects()
{
    for (const auto& s : audio::kSounds)
        if (!s.file.empty())
            AudioEngine::preload(s.file);
}

int AudioSystem::play(audio::SoundId id, float volume, bool loop)
{
    const auto& def = audio::soundDef(id);
    if (def.file.empty() || _effectVolume <= 0.0f)
        return kNone;
    const int handle = AudioEngine::play2d(def.file, loop, volume * _effectVolume);
    return handle == AudioEngine::INVALID_AUDIO_ID ? kNone : handle;
}

void AudioSystem::stop(int handle)
{
    if (handle != kNone)
        AudioEngine::stop(handle);
}

void AudioSystem::playMusic(std::string_view file)
{
    stopMusic();
    const int handle = AudioEngine::play2d(file, true, _musicVolume);
    _music           = handle == AudioEngine::INVALID_AUDIO_ID ? kNone : handle;
}

void AudioSystem::stopMusic()
{
    if (_music != kNone)
        AudioEngine::stop(_music);
    _music = kNone;
}

void AudioSystem::setEffectsVolume(float volume)
{
    _effectVolume = volume;
}

void AudioSystem::setMusicVolume(float volume)
{
    _musicVolume = volume;
    if (_music != kNone)
        AudioEngine::setVolume(_music, volume);
}

void AudioSystem::pauseAll()
{
    AudioEngine::pauseAll();
}

void AudioSystem::resumeAll()
{
    AudioEngine::resumeAll();
}

}  // namespace mm::app

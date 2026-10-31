#include "app/Platform.h"

#include "axmol.h"

#if AX_TARGET_PLATFORM == AX_PLATFORM_ANDROID
#    include "platform/android/jni/JniHelper.h"
#endif

namespace mm::app::platform
{

void setGameHandlesBack(bool handles)
{
#if AX_TARGET_PLATFORM == AX_PLATFORM_ANDROID
    ax::JniHelper::callStaticVoidMethod("dev/axmol/app/AppActivity", "setGameHandlesBack", handles);
#else
    (void)handles;
#endif
}

void setMulticastLock(bool on)
{
#if AX_TARGET_PLATFORM == AX_PLATFORM_ANDROID
    ax::JniHelper::callStaticVoidMethod("dev/axmol/app/AppActivity", "setMulticastLock", on);
#else
    (void)on;
#endif
}

void vibrate(int milliseconds)
{
#if AX_TARGET_PLATFORM == AX_PLATFORM_ANDROID
    ax::JniHelper::callStaticVoidMethod("dev/axmol/app/AppActivity", "vibrate", milliseconds);
#else
    (void)milliseconds;
#endif
}

}  // namespace mm::app::platform

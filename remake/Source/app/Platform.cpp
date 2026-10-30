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

}  // namespace mm::app::platform

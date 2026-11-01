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

static std::function<void(const std::string&)> gQrCallback;

void scanQr(std::function<void(const std::string&)> onResult)
{
    gQrCallback = std::move(onResult);
#if AX_TARGET_PLATFORM == AX_PLATFORM_ANDROID
    ax::JniHelper::callStaticVoidMethod("dev/axmol/app/AppActivity", "scanQr");
#else
    if (gQrCallback)
        gQrCallback("");
#endif
}

QrCode qrMatrix(const std::string& text)
{
    QrCode out;
#if AX_TARGET_PLATFORM == AX_PLATFORM_ANDROID
    const std::string r = ax::JniHelper::callStaticStringMethod("dev/axmol/app/AppActivity", "qrMatrix", text);
    const auto colon    = r.find(':');
    if (colon != std::string::npos)
    {
        out.size = std::atoi(r.substr(0, colon).c_str());
        out.bits = r.substr(colon + 1);
        if (out.size <= 0 || out.bits.size() != static_cast<std::size_t>(out.size) * out.size)
            out = {};
    }
#else
    (void)text;
#endif
    return out;
}

void deliverQr(const std::string& text)
{
    if (auto cb = std::move(gQrCallback))
        cb(text);
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

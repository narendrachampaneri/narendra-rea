// Small bridge to the Android activity (no-op on desktop builds).
#pragma once

#include <functional>
#include <string>

namespace mm::app::platform
{

// true: the back gesture/key is delivered to the game as KEY_BACK (game screens).
// false: Android handles back itself (home screen: back leaves the app with the system animation).
void setGameHandlesBack(bool handles);

// Android: hold the Wi-Fi multicast lock while the game looks for / announces games.
void setMulticastLock(bool on);

// QR joining (Android). scanQr opens the camera scanner (the camera permission is asked for
// only now); the text comes back through the callback, "" if cancelled.
void scanQr(std::function<void(const std::string&)> onResult);
// The QR code for a text: side length and dark modules row by row ({0, {}} if unavailable).
struct QrCode { int size = 0; std::string bits; };
QrCode qrMatrix(const std::string& text);

void deliverQr(const std::string& text);  // called by the JNI callback

// A short buzz (hits taken), if vibration is on in the settings.
void vibrate(int milliseconds);

}  // namespace mm::app::platform

// Small bridge to the Android activity (no-op on desktop builds).
#pragma once

namespace mm::app::platform
{

// true: the back gesture/key is delivered to the game as KEY_BACK (game screens).
// false: Android handles back itself (home screen: back leaves the app with the system animation).
void setGameHandlesBack(bool handles);

// Android: hold the Wi-Fi multicast lock while the game looks for / announces games.
void setMulticastLock(bool on);

}  // namespace mm::app::platform

// Small bridge to the Android activity (no-op on desktop builds).
#pragma once

namespace mm::app::platform
{

// true: the back gesture/key is delivered to the game as KEY_BACK (game screens).
// false: Android handles back itself (home screen: back leaves the app with the system animation).
void setGameHandlesBack(bool handles);

}  // namespace mm::app::platform

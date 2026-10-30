/****************************************************************************
Copyright (c) 2015-2016 Chukong Technologies Inc.
Copyright (c) 2017-2018 Xiamen Yaji Software Co., Ltd.
Copyright (c) 2019-present Axmol Engine contributors (see AUTHORS.md).
 
https://axmol.dev/

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
****************************************************************************/
package dev.axmol.app;

import android.os.Bundle;
import dev.axmol.lib.AxmolActivity;
import dev.axmol.lib.AxmolGLSurfaceView;
import dev.axmol.lib.SharedLoader;
import android.os.Build;
import android.view.KeyEvent;
import android.view.WindowManager;
import android.view.WindowManager.LayoutParams;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;

public class AppActivity extends AxmolActivity {
    static {
        // DNT remove, some android simulator require explicit load shared libraries, otherwise will crash
        SharedLoader.load();
    }
    
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.setEnableVirtualButton(false);
        super.onCreate(savedInstanceState);
        // Workaround in https://stackoverflow.com/questions/16283079/re-launch-of-activity-on-home-button-but-only-the-first-time/16447508
        if (!isTaskRoot()) {
            // Android launched another instance of the root activity into an existing task
            //  so just quietly finish and go away, dropping the user back into the activity
            //  at the top of the stack (ie: the last state of this task)
            // Don't need to finish it again since it's finished in super.onCreate .
            return;
        }
        // Make sure we're running on Pie or higher to change cutout mode
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.P) {
            // Enable rendering into the cutout area
            WindowManager.LayoutParams lp = getWindow().getAttributes();
            lp.layoutInDisplayCutoutMode = WindowManager.LayoutParams.LAYOUT_IN_DISPLAY_CUTOUT_MODE_SHORT_EDGES;
            getWindow().setAttributes(lp);
        }
        // DO OTHER INITIALIZATION BELOW
        sInstance = this;
    }

    @Override
    protected void onDestroy() {
        if (sInstance == this) {
            sInstance = null;
        }
        super.onDestroy();
    }

    // Predictive back (targetSdk 36): the system only sends back to the game while a game screen
    // asks for it; on the home screen the system's own back (to the launcher) runs.
    private static AppActivity sInstance;
    private boolean mBackRegistered = false;
    private final OnBackInvokedCallback mBackCallback = this::sendBackToGame;

    /** Called from native code (mm::app::platform::setGameHandlesBack) on the GL thread. */
    public static void setGameHandlesBack(final boolean handles) {
        final AppActivity activity = sInstance;
        if (activity != null) {
            activity.runOnUiThread(() -> activity.updateBackCallback(handles));
        }
    }

    private void updateBackCallback(boolean handles) {
        OnBackInvokedDispatcher dispatcher = getOnBackInvokedDispatcher();
        if (handles && !mBackRegistered) {
            dispatcher.registerOnBackInvokedCallback(OnBackInvokedDispatcher.PRIORITY_DEFAULT, mBackCallback);
            mBackRegistered = true;
        } else if (!handles && mBackRegistered) {
            dispatcher.unregisterOnBackInvokedCallback(mBackCallback);
            mBackRegistered = false;
        }
    }

    private void sendBackToGame() {
        // The engine's view forwards KEYCODE_BACK to the game as EventKeyboard::KeyCode::KEY_BACK.
        AxmolGLSurfaceView view = getGLSurfaceView();
        if (view != null) {
            view.onKeyDown(KeyEvent.KEYCODE_BACK, new KeyEvent(KeyEvent.ACTION_DOWN, KeyEvent.KEYCODE_BACK));
            view.onKeyUp(KeyEvent.KEYCODE_BACK, new KeyEvent(KeyEvent.ACTION_UP, KeyEvent.KEYCODE_BACK));
        }
    }

}

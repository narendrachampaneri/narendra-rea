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
import android.content.Intent;
import android.net.Uri;
import android.net.wifi.WifiManager;
import android.os.VibrationEffect;
import android.os.Vibrator;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.charset.StandardCharsets;
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
    private static final int REQUEST_EXPORT = 7001, REQUEST_IMPORT = 7002;
    private String pendingExport;

    private static native void nativeOnQrScanned(String text);
    private static native void nativeOnSaveImported(String text);
    private static native void nativeOnSaveExported(boolean ok);

    /** Native: let the player pick where to store the save file (Storage Access Framework, no permission). */
    public static void exportSave(final String text) {
        final AppActivity a = sInstance;
        if (a == null) return;
        a.runOnUiThread(new Runnable() {
            @Override public void run() {
                a.pendingExport = text;
                Intent i = new Intent(Intent.ACTION_CREATE_DOCUMENT);
                i.addCategory(Intent.CATEGORY_OPENABLE);
                i.setType("text/plain");
                i.putExtra(Intent.EXTRA_TITLE, "minimilitia-save.mmsave");
                a.startActivityForResult(i, REQUEST_EXPORT);
            }
        });
    }

    /** Native: open the camera scanner (the library asks for the camera permission now, not before). */
    public static void scanQr() {
        final AppActivity a = sInstance;
        if (a == null) return;
        a.runOnUiThread(new Runnable() {
            @Override public void run() {
                com.google.zxing.integration.android.IntentIntegrator integrator =
                    new com.google.zxing.integration.android.IntentIntegrator(a);
                integrator.setDesiredBarcodeFormats(com.google.zxing.integration.android.IntentIntegrator.QR_CODE);
                integrator.setPrompt("Scan the host's QR code");
                integrator.setBeepEnabled(false);
                integrator.setOrientationLocked(false);
                integrator.initiateScan();
            }
        });
    }

    /** Native: the QR code for `text` as "size:" followed by size*size characters, 1 = dark. */
    public static String qrMatrix(String text) {
        try {
            com.google.zxing.common.BitMatrix m = new com.google.zxing.qrcode.QRCodeWriter()
                .encode(text, com.google.zxing.BarcodeFormat.QR_CODE, 0, 0);
            StringBuilder sb = new StringBuilder();
            sb.append(m.getWidth()).append(':');
            for (int y = 0; y < m.getHeight(); y++)
                for (int x = 0; x < m.getWidth(); x++) sb.append(m.get(x, y) ? '1' : '0');
            return sb.toString();
        } catch (Exception e) {
            return "";
        }
    }

    /** Native: let the player pick a save file to restore. The text comes back through nativeOnSaveImported. */
    public static void importSave() {
        final AppActivity a = sInstance;
        if (a == null) return;
        a.runOnUiThread(new Runnable() {
            @Override public void run() {
                Intent i = new Intent(Intent.ACTION_OPEN_DOCUMENT);
                i.addCategory(Intent.CATEGORY_OPENABLE);
                i.setType("*/*");
                a.startActivityForResult(i, REQUEST_IMPORT);
            }
        });
    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        com.google.zxing.integration.android.IntentResult qr =
            com.google.zxing.integration.android.IntentIntegrator.parseActivityResult(requestCode, resultCode, data);
        if (qr != null) {
            final String scanned = qr.getContents() == null ? "" : qr.getContents();
            runOnGLThread(new Runnable() { @Override public void run() { nativeOnQrScanned(scanned); } });
            return;
        }
        if (requestCode == REQUEST_EXPORT) {
            boolean ok = false;
            if (resultCode == RESULT_OK && data != null && data.getData() != null && pendingExport != null) {
                try (OutputStream out = getContentResolver().openOutputStream(data.getData(), "wt")) {
                    out.write(pendingExport.getBytes(StandardCharsets.UTF_8));
                    ok = true;
                } catch (Exception ignored) {
                }
            }
            pendingExport = null;
            final boolean result = ok;
            runOnGLThread(new Runnable() { @Override public void run() { nativeOnSaveExported(result); } });
        } else if (requestCode == REQUEST_IMPORT) {
            String text = "";
            if (resultCode == RESULT_OK && data != null && data.getData() != null) {
                try (InputStream in = getContentResolver().openInputStream(data.getData())) {
                    ByteArrayOutputStream buf = new ByteArrayOutputStream();
                    byte[] chunk = new byte[4096];
                    int n;
                    while ((n = in.read(chunk)) > 0 && buf.size() < 64 * 1024) buf.write(chunk, 0, n);
                    text = new String(buf.toByteArray(), StandardCharsets.UTF_8);
                } catch (Exception ignored) {
                }
            }
            final String result = text;
            runOnGLThread(new Runnable() { @Override public void run() { nativeOnSaveImported(result); } });
        }
    }

    /** Native: a short buzz when the player is hit. */
    public static void vibrate(final int milliseconds) {
        final AppActivity a = sInstance;
        if (a == null) return;
        try {
            Vibrator v = (Vibrator) a.getSystemService(VIBRATOR_SERVICE);
            if (v != null && v.hasVibrator())
                v.vibrate(VibrationEffect.createOneShot(milliseconds, VibrationEffect.DEFAULT_AMPLITUDE));
        } catch (Exception ignored) {
        }
    }
    private WifiManager.MulticastLock multicastLock;

    /** Called from native code (mm::app::platform::setMulticastLock): some phones drop UDP
     *  broadcasts (game discovery) unless this lock is held. */
    public static void setMulticastLock(final boolean on) {
        final AppActivity activity = sInstance;
        if (activity == null) return;
        activity.runOnUiThread(new Runnable() {
            @Override public void run() {
                try {
                    if (on && activity.multicastLock == null) {
                        WifiManager wifi = (WifiManager) activity.getApplicationContext().getSystemService(WIFI_SERVICE);
                        if (wifi == null) return;
                        activity.multicastLock = wifi.createMulticastLock("mm-discovery");
                        activity.multicastLock.setReferenceCounted(false);
                        activity.multicastLock.acquire();
                    } else if (!on && activity.multicastLock != null) {
                        activity.multicastLock.release();
                        activity.multicastLock = null;
                    }
                } catch (Exception ignored) {
                }
            }
        });
    }
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

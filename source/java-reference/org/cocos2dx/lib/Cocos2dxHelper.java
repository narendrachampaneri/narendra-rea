package org.cocos2dx.lib;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.res.AssetManager;
import android.os.Build;
import android.os.Process;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import io.fabric.sdk.android.services.network.UrlUtils;
import java.io.UnsupportedEncodingException;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class Cocos2dxHelper {
    private static final String PREFS_NAME = "Cocos2dxPrefsFile";
    private static boolean sAccelerometerEnabled;
    private static AssetManager sAssetManager;
    private static Cocos2dxMusic sCocos2dMusic;
    private static Cocos2dxAccelerometer sCocos2dxAccelerometer;
    private static Cocos2dxHelperListener sCocos2dxHelperListener;
    private static Context sContext = null;
    private static String sFileDirectory;
    private static String sPackageName;

    public interface Cocos2dxHelperListener {
        void dismissEditTextDialog();

        void runOnGLThread(Runnable runnable);

        void showDialog(String str, String str2);

        void showEditTextDialog(String str, String str2, int i, int i2, int i3, int i4);
    }

    private static native void nativeSetApkPath(String str);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nativeSetEditTextDialogResult(byte[] bArr);

    public static void init(Context pContext, Cocos2dxHelperListener pCocos2dxHelperListener) {
        ApplicationInfo applicationInfo = pContext.getApplicationInfo();
        sContext = pContext;
        sCocos2dxHelperListener = pCocos2dxHelperListener;
        sPackageName = applicationInfo.packageName;
        sFileDirectory = pContext.getFilesDir().getAbsolutePath();
        nativeSetApkPath(applicationInfo.sourceDir);
        sCocos2dxAccelerometer = new Cocos2dxAccelerometer(pContext);
        sCocos2dMusic = new Cocos2dxMusic(pContext);
        sAssetManager = pContext.getAssets();
        Cocos2dxBitmap.setContext(pContext);
        Cocos2dxETCLoader.setContext(pContext);
    }

    public static String getCocos2dxPackageName() {
        return sPackageName;
    }

    public static String getCocos2dxWritablePath() {
        return sFileDirectory;
    }

    public static String getCurrentLanguage() {
        return Locale.getDefault().getLanguage();
    }

    public static String getDeviceModel() {
        return Build.MODEL;
    }

    public static AssetManager getAssetManager() {
        return sAssetManager;
    }

    public static void enableAccelerometer() {
        sAccelerometerEnabled = true;
        sCocos2dxAccelerometer.enable();
    }

    public static void setAccelerometerInterval(float interval) {
        sCocos2dxAccelerometer.setInterval(interval);
    }

    public static void disableAccelerometer() {
        sAccelerometerEnabled = false;
        sCocos2dxAccelerometer.disable();
    }

    public static void preloadBackgroundMusic(String pPath) {
        sCocos2dMusic.preloadBackgroundMusic(pPath);
    }

    public static void playBackgroundMusic(String pPath, boolean isLoop) {
        sCocos2dMusic.playBackgroundMusic(pPath, isLoop);
    }

    public static void resumeBackgroundMusic() {
        sCocos2dMusic.resumeBackgroundMusic();
    }

    public static void pauseBackgroundMusic() {
        sCocos2dMusic.pauseBackgroundMusic();
    }

    public static void stopBackgroundMusic() {
        sCocos2dMusic.stopBackgroundMusic();
    }

    public static void rewindBackgroundMusic() {
        sCocos2dMusic.rewindBackgroundMusic();
    }

    public static boolean isBackgroundMusicPlaying() {
        return sCocos2dMusic.isBackgroundMusicPlaying();
    }

    public static float getBackgroundMusicVolume() {
        return sCocos2dMusic.getBackgroundVolume();
    }

    public static void setBackgroundMusicVolume(float volume) {
        sCocos2dMusic.setBackgroundVolume(volume);
    }

    public static void end() {
        sCocos2dMusic.end();
    }

    public static void onResume() {
        if (sAccelerometerEnabled) {
            sCocos2dxAccelerometer.enable();
        }
    }

    public static void onPause() {
        if (sAccelerometerEnabled) {
            sCocos2dxAccelerometer.disable();
        }
    }

    public static void terminateProcess() {
        Process.killProcess(Process.myPid());
    }

    private static void showDialog(String pTitle, String pMessage) {
        sCocos2dxHelperListener.showDialog(pTitle, pMessage);
    }

    private static void showEditTextDialog(String pTitle, String pMessage, int pInputMode, int pInputFlag, int pReturnType, int pMaxLength) {
        sCocos2dxHelperListener.showEditTextDialog(pTitle, pMessage, pInputMode, pInputFlag, pReturnType, pMaxLength);
    }

    private static void dismissEditTextDialog() {
        sCocos2dxHelperListener.dismissEditTextDialog();
    }

    public static void setEditTextDialogResult(String pResult) {
        try {
            final byte[] bytesUTF8 = pResult.getBytes(UrlUtils.UTF8);
            sCocos2dxHelperListener.runOnGLThread(new Runnable() { // from class: org.cocos2dx.lib.Cocos2dxHelper.1
                @Override // java.lang.Runnable
                public void run() {
                    Cocos2dxHelper.nativeSetEditTextDialogResult(bytesUTF8);
                }
            });
        } catch (UnsupportedEncodingException e) {
        }
    }

    public static int getDPI() {
        Display d;
        if (sContext != null) {
            DisplayMetrics metrics = new DisplayMetrics();
            WindowManager wm = ((Activity) sContext).getWindowManager();
            if (wm != null && (d = wm.getDefaultDisplay()) != null) {
                d.getMetrics(metrics);
                return (int) (metrics.density * 160.0f);
            }
        }
        return -1;
    }

    public static boolean getBoolForKey(String key, boolean defaultValue) {
        try {
            SharedPreferences settings = ((Activity) sContext).getSharedPreferences(PREFS_NAME, 0);
            if (settings.contains(key)) {
                boolean retVal = settings.getBoolean(key, defaultValue);
                return retVal;
            }
            return defaultValue;
        } catch (Exception e) {
            return defaultValue;
        }
    }

    public static int getIntegerForKey(String key, int defaultValue) {
        try {
            SharedPreferences settings = ((Activity) sContext).getSharedPreferences(PREFS_NAME, 0);
            if (settings.contains(key)) {
                int retVal = settings.getInt(key, defaultValue);
                return retVal;
            }
            return defaultValue;
        } catch (Exception e) {
            return defaultValue;
        }
    }

    public static float getFloatForKey(String key, float defaultValue) {
        try {
            SharedPreferences settings = ((Activity) sContext).getSharedPreferences(PREFS_NAME, 0);
            if (settings.contains(key)) {
                float retVal = settings.getFloat(key, defaultValue);
                return retVal;
            }
            return defaultValue;
        } catch (Exception e) {
            return defaultValue;
        }
    }

    public static double getDoubleForKey(String key, double defaultValue) {
        return getFloatForKey(key, (float) defaultValue);
    }

    public static String getStringForKey(String key, String defaultValue) {
        try {
            SharedPreferences settings = ((Activity) sContext).getSharedPreferences(PREFS_NAME, 0);
            if (settings.contains(key)) {
                String retVal = settings.getString(key, defaultValue);
                return retVal;
            }
            return defaultValue;
        } catch (Exception e) {
            return defaultValue;
        }
    }

    public static void setBoolForKey(String key, boolean value) {
        SharedPreferences settings = ((Activity) sContext).getSharedPreferences(PREFS_NAME, 0);
        SharedPreferences.Editor editor = settings.edit();
        editor.putBoolean(key, value);
        editor.commit();
    }

    public static void setIntegerForKey(String key, int value) {
        SharedPreferences settings = ((Activity) sContext).getSharedPreferences(PREFS_NAME, 0);
        SharedPreferences.Editor editor = settings.edit();
        editor.putInt(key, value);
        editor.commit();
    }

    public static void setFloatForKey(String key, float value) {
        SharedPreferences settings = ((Activity) sContext).getSharedPreferences(PREFS_NAME, 0);
        SharedPreferences.Editor editor = settings.edit();
        editor.putFloat(key, value);
        editor.commit();
    }

    public static void setDoubleForKey(String key, double value) {
        setFloatForKey(key, (float) value);
    }

    public static void setStringForKey(String key, String value) {
        SharedPreferences settings = ((Activity) sContext).getSharedPreferences(PREFS_NAME, 0);
        SharedPreferences.Editor editor = settings.edit();
        editor.putString(key, value);
        editor.commit();
    }
}

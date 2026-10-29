package com.amazon.ags.client;

import android.app.Application;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.util.Log;
import com.amazon.ags.api.AmazonGames;
import com.amazon.ags.api.AmazonGamesClient;
import dalvik.system.PathClassLoader;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes2.dex */
public class KindleFireSoftkeyBeachballManager {
    private static final String APK_PACKAGE_NAME = "com.amazon.ags.app";
    private static final String SOFTKEY_BAR_WRAPPER_CLASS_NAME = "com.amazon.ags.app.util.SoftkeyBarWrapper";
    private static final String SOFTKEY_BAR_WRAPPER_SETUP_METHOD_NAME = "setup";
    private static final String TAG = "KindleFireSoftkeyBeachballManager";
    private Application application;

    public KindleFireSoftkeyBeachballManager(Application application) {
        this.application = application;
        enableSoftKeyButton();
    }

    private void enableSoftKeyButton() {
        try {
            ApplicationInfo info = this.application.getPackageManager().getApplicationInfo(APK_PACKAGE_NAME, 0);
            String apkName = info.sourceDir;
            PathClassLoader myClassLoader = new PathClassLoader(apkName, ClassLoader.getSystemClassLoader());
            Class<?> classType = Class.forName(SOFTKEY_BAR_WRAPPER_CLASS_NAME, true, myClassLoader);
            Method setupMethod = classType.getDeclaredMethod(SOFTKEY_BAR_WRAPPER_SETUP_METHOD_NAME, Application.class, BroadcastReceiver.class);
            Object instance = classType.newInstance();
            setupMethod.invoke(instance, this.application, new BroadcastReceiver() { // from class: com.amazon.ags.client.KindleFireSoftkeyBeachballManager.1
                @Override // android.content.BroadcastReceiver
                public void onReceive(Context context, Intent intent) {
                    Log.d(KindleFireSoftkeyBeachballManager.TAG, "GameCircle softkey button pressed.");
                    KindleFireSoftkeyBeachballManager.this.handleSoftkeyButtonPress();
                }
            });
        } catch (PackageManager.NameNotFoundException e) {
            Log.i(TAG, "Failed to enable softkey button: " + e.toString());
        } catch (ClassNotFoundException e2) {
            Log.i(TAG, "Failed to enable softkey button: " + e2.toString());
        } catch (IllegalAccessException e3) {
            Log.i(TAG, "Failed to enable softkey button: " + e3.toString());
        } catch (IllegalArgumentException e4) {
            Log.i(TAG, "Failed to enable softkey button: " + e4.toString());
        } catch (InstantiationException e5) {
            Log.i(TAG, "Failed to enable softkey button: " + e5.toString());
        } catch (NoSuchMethodException e6) {
            Log.i(TAG, "Failed to enable softkey button: " + e6.toString());
        } catch (InvocationTargetException e7) {
            Log.i(TAG, "Failed to enable softkey button: " + e7.toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleSoftkeyButtonPress() {
        AmazonGames amazonGames = AmazonGamesClient.getInstance();
        if (amazonGames != null) {
            amazonGames.showGameCircle(new Object[0]);
        }
    }
}

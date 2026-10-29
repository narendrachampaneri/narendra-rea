package com.applovin.impl.sdk;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import android.util.Log;
import com.amazon.identity.auth.device.dataobject.AppInfo;
import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinAdType;
import com.applovin.sdk.AppLovinLogger;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkSettings;
import com.applovin.sdk.AppLovinSdkUtils;

/* JADX INFO: loaded from: classes.dex */
class cp implements Runnable {
    private final AppLovinSdkImpl a;
    private final AppLovinLogger b;
    private final Context c;
    private final AppLovinSdkSettings d;

    cp(AppLovinSdkImpl appLovinSdkImpl, AppLovinSdkSettings appLovinSdkSettings) {
        this.a = appLovinSdkImpl;
        this.c = appLovinSdkImpl.getApplicationContext();
        this.d = appLovinSdkSettings;
        this.b = appLovinSdkImpl.getLogger();
    }

    private void c() {
        String str = (String) this.a.a(bw.J);
        if (str.length() > 0) {
            String[] strArrSplit = str.split(AppInfo.DELIM);
            for (String str2 : strArrSplit) {
                this.a.c().d(new c(AppLovinAdSize.fromString(str2), AppLovinAdType.REGULAR));
            }
        }
        if (((Boolean) this.a.a(bw.K)).booleanValue()) {
            this.a.c().d(new c(AppLovinAdSize.INTERSTITIAL, AppLovinAdType.INCENTIVIZED));
        }
        if (((Boolean) this.a.a(bw.aM)).booleanValue()) {
            this.a.d().d(NativeAdImpl.SPEC_NATIVE);
        }
    }

    private void d() {
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(this.c);
        try {
            if (defaultSharedPreferences.getInt("com.applovin.sdk.impl.lastKnownVersionCode", 0) < 614) {
                Log.i("TaskInitializeSdk", "SDK has been updated since last run. Continuing...");
                this.a.getSettingsManager().d();
                this.a.getSettingsManager().b();
            } else {
                Log.d("TaskInitializeSdk", "SDK has not been updated since last run. Continuing...");
            }
        } catch (Exception e) {
            this.a.getLogger().e("TaskInitializeSdk", "Unable to check for SDK update", e);
        } finally {
            defaultSharedPreferences.edit().putInt("com.applovin.sdk.impl.lastKnownVersionCode", AppLovinSdk.VERSION_CODE).apply();
        }
    }

    boolean a() {
        if (r.a("android.permission.INTERNET", this.c)) {
            return true;
        }
        this.b.userError("TaskInitializeSdk", "Unable to enable AppLovin SDK: no android.permission.INTERNET");
        return false;
    }

    void b() {
        this.a.a().a(new cd(this.a), cr.MAIN, 500L);
    }

    @Override // java.lang.Runnable
    public void run() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        this.b.d("TaskInitializeSdk", "Initializing AppLovin SDK 6.1.4...");
        try {
            if (a()) {
                d();
                bz settingsManager = this.a.getSettingsManager();
                settingsManager.c();
                if (((Boolean) settingsManager.a(bw.b)).booleanValue()) {
                    settingsManager.a(this.d);
                    settingsManager.b();
                }
                cb cbVarB = this.a.b();
                cbVarB.c();
                cbVarB.c("ad_imp_session");
                a.b(this.a);
                this.a.getFileManager().d(this.c);
                c();
                b();
                SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(this.c);
                if (!AppLovinSdkUtils.isValidString(defaultSharedPreferences.getString("com.applovin.sdk.impl.isFirstRun", null))) {
                    defaultSharedPreferences.edit().putString("com.applovin.sdk.impl.isFirstRun", Boolean.toString(true)).commit();
                }
                this.a.getPersistentPostbackManager().a();
                this.a.getEventService().trackEvent("landing");
                this.a.a(true);
            } else {
                this.a.a(false);
            }
        } catch (Throwable th) {
            this.b.e("TaskInitializeSdk", "Unable to intialize SDK, disabling the SDK", th);
            this.a.a(false);
        } finally {
            this.b.d("TaskInitializeSdk", "AppLovin SDK 6.1.4 initialization " + (this.a.isEnabled() ? "succeeded" : "failed") + " in " + (System.currentTimeMillis() - jCurrentTimeMillis) + "ms");
        }
    }
}

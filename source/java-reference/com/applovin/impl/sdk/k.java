package com.applovin.impl.sdk;

import android.util.Log;
import com.applovin.sdk.AppLovinLogger;

/* JADX INFO: loaded from: classes.dex */
class k implements AppLovinLogger {
    private bz a;
    private l b;

    k() {
    }

    void a(bz bzVar) {
        this.a = bzVar;
    }

    void a(l lVar) {
        this.b = lVar;
    }

    boolean a() {
        if (this.a != null) {
            return ((Boolean) this.a.a(bw.j)).booleanValue();
        }
        return false;
    }

    @Override // com.applovin.sdk.AppLovinLogger
    public void d(String str, String str2) {
        if (a()) {
            Log.d(AppLovinLogger.SDK_TAG, "[" + str + "] " + str2);
        }
        if (this.b != null) {
            this.b.a("DEBUG  [" + str + "] " + str2);
        }
    }

    @Override // com.applovin.sdk.AppLovinLogger
    public void e(String str, String str2) {
        e(str, str2, null);
    }

    @Override // com.applovin.sdk.AppLovinLogger
    public void e(String str, String str2, Throwable th) {
        if (a()) {
            Log.e(AppLovinLogger.SDK_TAG, "[" + str + "] " + str2, th);
        }
        if (this.b != null) {
            this.b.a("ERROR  [" + str + "] " + str2 + (th != null ? ": " + th.getMessage() : ""));
        }
    }

    @Override // com.applovin.sdk.AppLovinLogger
    public void i(String str, String str2) {
        if (a()) {
            Log.i(AppLovinLogger.SDK_TAG, "[" + str + "] " + str2);
        }
        if (this.b != null) {
            this.b.a("INFO  [" + str + "] " + str2);
        }
    }

    @Override // com.applovin.sdk.AppLovinLogger
    public void userError(String str, String str2) {
        userError(str, str2, null);
    }

    @Override // com.applovin.sdk.AppLovinLogger
    public void userError(String str, String str2, Throwable th) {
        Log.e(AppLovinLogger.SDK_TAG, "[" + str + "] " + str2, th);
        if (this.b != null) {
            this.b.a("USER  [" + str + "] " + str2 + (th != null ? ": " + th.getMessage() : ""));
        }
    }

    @Override // com.applovin.sdk.AppLovinLogger
    public void w(String str, String str2) {
        w(str, str2, null);
    }

    @Override // com.applovin.sdk.AppLovinLogger
    public void w(String str, String str2, Throwable th) {
        if (a()) {
            Log.w(AppLovinLogger.SDK_TAG, "[" + str + "] " + str2, th);
        }
        if (this.b != null) {
            this.b.a("WARN  [" + str + "] " + str2);
        }
    }
}

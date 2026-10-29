package com.applovin.impl.sdk;

import android.content.Context;
import com.applovin.sdk.AppLovinLogger;

/* JADX INFO: loaded from: classes.dex */
abstract class bv implements Runnable {
    final String e;
    protected final AppLovinSdkImpl f;
    final AppLovinLogger g;
    final Context h;

    bv(String str, AppLovinSdkImpl appLovinSdkImpl) {
        if (appLovinSdkImpl == null) {
            throw new IllegalArgumentException("No sdk specified");
        }
        this.f = appLovinSdkImpl;
        this.e = str == null ? getClass().getSimpleName() : str;
        this.g = appLovinSdkImpl.getLogger();
        this.h = appLovinSdkImpl.getApplicationContext();
    }

    String a() {
        return this.e;
    }

    void b() {
    }
}

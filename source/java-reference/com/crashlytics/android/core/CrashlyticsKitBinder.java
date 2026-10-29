package com.crashlytics.android.core;

import com.crashlytics.android.ndk.CrashlyticsNdk;

/* JADX INFO: loaded from: classes2.dex */
public class CrashlyticsKitBinder {
    public void bindCrashEventDataProvider(CrashlyticsCore crash, CrashlyticsNdk ndk) {
        crash.setExternalCrashEventDataProvider(ndk);
    }
}

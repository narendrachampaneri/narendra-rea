package com.crashlytics.android.ndk;

import android.content.res.AssetManager;

/* JADX INFO: loaded from: classes2.dex */
class JniNativeApi implements NativeApi {
    private native boolean nativeInit(String str, Object obj);

    JniNativeApi() {
    }

    static {
        System.loadLibrary(com.crashlytics.android.BuildConfig.ARTIFACT_ID);
    }

    @Override // com.crashlytics.android.ndk.NativeApi
    public boolean initialize(String crashFilePath, AssetManager assetManager) {
        return nativeInit(crashFilePath, assetManager);
    }
}

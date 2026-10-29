package com.inmobi.monetization;

/* JADX INFO: loaded from: classes.dex */
public interface IMNativeListener {
    void onNativeRequestFailed(IMErrorCode iMErrorCode);

    void onNativeRequestSucceeded(IMNative iMNative);
}

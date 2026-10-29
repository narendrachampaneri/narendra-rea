package com.amazon.ags.client;

import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public interface KindleFireProxy {
    void bindToGameCircleService(KindleFireBindingCallback kindleFireBindingCallback);

    KindleFireStatus getStatus();

    boolean isKindle();

    boolean isOptedIn();

    boolean isOverlaysSupported();

    boolean isReady();

    boolean isRegistered();

    boolean isUniversalSupported();

    boolean isWhispersyncEnabled();

    void setOptIn(boolean z);

    void showOverlay(String str);

    Map<String, String> signMessage(String str, String str2, String str3);
}

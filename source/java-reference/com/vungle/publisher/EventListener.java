package com.vungle.publisher;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public interface EventListener {
    void onAdEnd(boolean z);

    void onAdPlayableChanged(boolean z);

    void onAdStart();

    void onAdUnavailable(String str);

    void onVideoView(boolean z, int i, int i2);
}

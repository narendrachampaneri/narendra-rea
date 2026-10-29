package com.amazon.ags.api;

/* JADX INFO: loaded from: classes.dex */
public interface AmazonGamesCallback {
    void onServiceNotReady(AmazonGamesStatus amazonGamesStatus);

    void onServiceReady(AmazonGamesClient amazonGamesClient);
}

package com.amazon.insights.core.system;

/* JADX INFO: loaded from: classes2.dex */
public interface Connectivity {
    boolean hasWAN();

    boolean hasWifi();

    boolean hasWired();

    boolean isConnected();
}

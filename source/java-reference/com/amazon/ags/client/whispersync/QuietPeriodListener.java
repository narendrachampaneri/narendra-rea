package com.amazon.ags.client.whispersync;

/* JADX INFO: loaded from: classes2.dex */
public interface QuietPeriodListener {
    void blockUntilQuiet();

    void breakSilence();
}

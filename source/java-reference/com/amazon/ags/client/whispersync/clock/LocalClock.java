package com.amazon.ags.client.whispersync.clock;

import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public class LocalClock implements Clock {
    @Override // com.amazon.ags.client.whispersync.clock.Clock
    public long getCurrentTimeSeconds() {
        return System.currentTimeMillis() / TimeUnit.SECONDS.toMillis(1L);
    }
}

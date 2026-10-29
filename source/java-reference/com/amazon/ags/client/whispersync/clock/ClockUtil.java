package com.amazon.ags.client.whispersync.clock;

/* JADX INFO: loaded from: classes2.dex */
public class ClockUtil {
    private static Clock theClock = new LocalClock();

    private ClockUtil() {
    }

    public static long getCurrentTime() {
        return theClock.getCurrentTimeSeconds();
    }

    public static void setGlobalClock(Clock clock) {
        theClock = clock;
    }
}

package com.amazon.device.ads;

import com.google.android.exoplayer.C;

/* JADX INFO: loaded from: classes.dex */
class NumberUtils {
    private NumberUtils() {
    }

    public static int parseInt(String string, int defaultValue) {
        try {
            int value = Integer.parseInt(string);
            return value;
        } catch (NumberFormatException e) {
            return defaultValue;
        }
    }

    public static final long convertToMillisecondsFromNanoseconds(long nanoseconds) {
        return nanoseconds / C.MICROS_PER_SECOND;
    }

    public static final long convertToMillisecondsFromSeconds(long seconds) {
        return 1000 * seconds;
    }
}

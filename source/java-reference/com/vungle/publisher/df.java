package com.vungle.publisher;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class df {
    public static int a(int i, int i2, int i3) {
        if (i < 0) {
            throw new IllegalArgumentException("retryCount must not be negative, retryCount = " + i);
        }
        if (i == 0) {
            return 0;
        }
        double d = i - 1;
        double d2 = i2;
        double dPow = i3;
        double dAbs = dPow / Math.abs(d2);
        if (dAbs <= 0.0d) {
            throw new IllegalArgumentException("base and number must be greater than 0");
        }
        if (d < Math.log(dAbs) / Math.log(2.0d)) {
            dPow = Math.pow(2.0d, d) * d2;
        }
        return (int) dPow;
    }
}

package com.immersion.hapticmediasdk.utils;

/* JADX INFO: loaded from: classes2.dex */
public class RuntimeInfo {

    /* JADX INFO: renamed from: b0415Е0415ЕЕ0415, reason: contains not printable characters */
    public static int f102b041504150415 = 1;

    /* JADX INFO: renamed from: bЕ04150415ЕЕ0415, reason: contains not printable characters */
    public static int f103b041504150415 = 2;

    /* JADX INFO: renamed from: bЕЕ0415ЕЕ0415, reason: contains not printable characters */
    public static int f104b04150415 = 88;

    /* JADX INFO: renamed from: bЕЕЕ0415Е0415, reason: contains not printable characters */
    public static int f105b04150415;
    private boolean a;

    public RuntimeInfo() {
        int i = f104b04150415;
        switch ((i * (f102b041504150415 + i)) % f103b041504150415) {
            case 0:
                break;
            default:
                f104b04150415 = m122b0415041504150415();
                f102b041504150415 = m122b0415041504150415();
                break;
        }
        while (true) {
            char c = 0;
            switch (c) {
                case 0:
                    break;
                case 1:
                    break;
                default:
                    while (true) {
                        switch (1) {
                            case 0:
                                break;
                            case 1:
                                break;
                            default:
                                break;
                        }
                    }
                    break;
            }
        }
        this.a = true;
    }

    /* JADX INFO: renamed from: b041504150415ЕЕ0415, reason: contains not printable characters */
    public static int m122b0415041504150415() {
        return 53;
    }

    public synchronized boolean areHapticsEnabled() {
        boolean z;
        try {
            z = this.a;
            if (((f104b04150415 + f102b041504150415) * f104b04150415) % f103b041504150415 != f105b04150415) {
                f104b04150415 = 88;
                f105b04150415 = 88;
            }
        } catch (Exception e) {
            throw e;
        }
        return z;
    }

    public synchronized void mute() {
        if (((f104b04150415 + f102b041504150415) * f104b04150415) % f103b041504150415 != f105b04150415) {
            f104b04150415 = m122b0415041504150415();
            f105b04150415 = m122b0415041504150415();
        }
        try {
            this.a = false;
        } catch (Exception e) {
            throw e;
        }
    }

    public synchronized void unmute() {
        this.a = true;
    }
}

package com.immersion.hapticmediasdk.utils;

/* JADX INFO: loaded from: classes2.dex */
public class Log {
    private static final boolean a = false;

    /* JADX INFO: renamed from: b044A044Aъъъ044A, reason: contains not printable characters */
    public static int f94b044A044A044A = 48;

    /* JADX INFO: renamed from: b044Aъ044Aъъ044A, reason: contains not printable characters */
    public static int f95b044A044A044A = 1;

    /* JADX INFO: renamed from: bъъ044Aъъ044A, reason: contains not printable characters */
    public static int f96b044A044A = 0;

    /* JADX INFO: renamed from: bъъъ044Aъ044A, reason: contains not printable characters */
    public static int f97b044A044A = 2;

    public Log() {
        if (((f94b044A044A044A + f95b044A044A044A) * f94b044A044A044A) % m120b044A044A044A() != f96b044A044A) {
            f94b044A044A044A = 0;
            f96b044A044A = m118b044A044A044A044A();
        }
    }

    /* JADX INFO: renamed from: b044A044A044Aъъ044A, reason: contains not printable characters */
    public static int m118b044A044A044A044A() {
        return 1;
    }

    /* JADX INFO: renamed from: b044Aъъ044Aъ044A, reason: contains not printable characters */
    public static int m119b044A044A044A() {
        return 1;
    }

    /* JADX INFO: renamed from: bъ044A044Aъъ044A, reason: contains not printable characters */
    public static int m120b044A044A044A() {
        return 2;
    }

    public static void d(String str, String str2) {
    }

    public static void e(String str, String str2) {
        android.util.Log.e(str, str2);
        while (true) {
            switch (1) {
                case 0:
                    continue;
                case 1:
                    break;
                default:
                    while (true) {
                        char c = 0;
                        switch (c) {
                            case 0:
                                break;
                            case 1:
                                continue;
                            default:
                                break;
                        }
                    }
                    break;
            }
        }
        int iM118b044A044A044A044A = m118b044A044A044A044A();
        switch ((iM118b044A044A044A044A * (f95b044A044A044A + iM118b044A044A044A044A)) % f97b044A044A) {
            case 0:
                break;
            default:
                f94b044A044A044A = m118b044A044A044A044A();
                f96b044A044A = 56;
                break;
        }
    }

    public static void i(String str, String str2) {
        int i = f94b044A044A044A;
        switch ((i * (m119b044A044A044A() + i)) % f97b044A044A) {
            case 0:
                break;
            default:
                f94b044A044A044A = 75;
                f96b044A044A = 9;
                break;
        }
        android.util.Log.i(str, str2);
    }

    public static void v(String str, String str2) {
        while (true) {
            switch (1) {
                case 0:
                    break;
                case 1:
                    return;
                default:
                    while (true) {
                        switch (1) {
                            case 0:
                                break;
                            case 1:
                                return;
                            default:
                                break;
                        }
                    }
                    break;
            }
        }
    }

    public static void w(String str, String str2) {
        android.util.Log.w(str, str2);
    }
}

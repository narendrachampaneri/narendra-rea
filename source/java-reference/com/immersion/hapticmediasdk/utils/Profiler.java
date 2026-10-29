package com.immersion.hapticmediasdk.utils;

import android.os.SystemClock;

/* JADX INFO: loaded from: classes2.dex */
public class Profiler {

    /* JADX INFO: renamed from: b044A044A044A044Aъ044A, reason: contains not printable characters */
    public static int f98b044A044A044A044A044A = 0;

    /* JADX INFO: renamed from: b044A044Aъ044Aъ044A, reason: contains not printable characters */
    public static int f99b044A044A044A044A = 1;

    /* JADX INFO: renamed from: bъ044Aъ044Aъ044A, reason: contains not printable characters */
    public static int f100b044A044A044A = 89;

    /* JADX INFO: renamed from: bъъ044A044Aъ044A, reason: contains not printable characters */
    public static int f101b044A044A044A = 2;
    public long mStartTime;
    public long mStartTimeII;

    public Profiler() throws Exception {
        int i = f100b044A044A044A;
        switch ((i * (f99b044A044A044A044A + i)) % f101b044A044A044A) {
            case 0:
                break;
            default:
                f100b044A044A044A = 10;
                f99b044A044A044A044A = 87;
                break;
        }
        try {
        } catch (Exception e) {
            throw e;
        }
    }

    /* JADX INFO: renamed from: bъъъъ044A044A, reason: contains not printable characters */
    public static int m121b044A044A() {
        return 4;
    }

    public long getDuration() throws Exception {
        try {
            long jElapsedRealtime = SystemClock.elapsedRealtime() - this.mStartTime;
            int i = f100b044A044A044A;
            switch ((i * (f99b044A044A044A044A + i)) % f101b044A044A044A) {
                default:
                    f100b044A044A044A = m121b044A044A();
                    f98b044A044A044A044A044A = 69;
                case 0:
                    return jElapsedRealtime;
            }
        } catch (Exception e) {
            throw e;
        }
    }

    public long getDurationII() {
        char c = 0;
        while (true) {
            switch (c) {
                case 0:
                    break;
                case 1:
                    break;
                default:
                    while (true) {
                        switch (c) {
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
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        int i = f100b044A044A044A;
        switch ((i * (f99b044A044A044A044A + i)) % f101b044A044A044A) {
            case 0:
                break;
            default:
                f100b044A044A044A = 72;
                f98b044A044A044A044A044A = 11;
                break;
        }
        return jElapsedRealtime - this.mStartTimeII;
    }

    public void startTiming() throws Exception {
        int i = 3;
        while (true) {
            try {
                i /= 0;
            } catch (Exception e) {
                f100b044A044A044A = 75;
                try {
                    this.mStartTime = SystemClock.elapsedRealtime();
                    return;
                } catch (Exception e2) {
                    throw e2;
                }
            }
        }
    }

    public void startTimingII() {
        while (true) {
            switch (1) {
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
        if (((f100b044A044A044A + f99b044A044A044A044A) * f100b044A044A044A) % f101b044A044A044A != f98b044A044A044A044A044A) {
            f100b044A044A044A = 81;
            f98b044A044A044A044A044A = 31;
        }
        this.mStartTimeII = SystemClock.elapsedRealtime();
    }
}

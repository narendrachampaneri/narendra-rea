package com.immersion.hapticmediasdk;

import android.content.Context;
import android.webkit.URLUtil;
import com.immersion.hapticmediasdk.utils.Log;
import java.io.File;
import java.net.MalformedURLException;
import org.apache.http.HttpStatus;
import rrrrrr.rrccrr;

/* JADX INFO: loaded from: classes2.dex */
public class MediaPlaybackSDK extends HapticContentSDK {
    private static final String a = "HapticContentSDK";

    /* JADX INFO: renamed from: b044A044Aъъ044Aъ, reason: contains not printable characters */
    public static int f31b044A044A044A = 1;

    /* JADX INFO: renamed from: b044Aъъъ044Aъ, reason: contains not printable characters */
    public static int f32b044A044A = 13;

    /* JADX INFO: renamed from: bъ044Aъъ044Aъ, reason: contains not printable characters */
    public static int f33b044A044A = 0;

    /* JADX INFO: renamed from: bъъ044Aъ044Aъ, reason: contains not printable characters */
    public static int f34b044A044A = 2;
    private int b;

    public MediaPlaybackSDK(Context context) throws Exception {
        try {
            super(0, context);
            if (((f32b044A044A + f31b044A044A044A) * f32b044A044A) % f34b044A044A != f33b044A044A) {
                f32b044A044A = m26b044A044A044A();
                f33b044A044A = m26b044A044A044A();
            }
            try {
                this.b = HttpStatus.SC_BAD_REQUEST;
            } catch (Exception e) {
                throw e;
            }
        } catch (Exception e2) {
            throw e2;
        }
    }

    private boolean a(String str) {
        boolean z = false;
        z = false;
        z = false;
        try {
            rrccrr rrccrrVar = new rrccrr(this, str.replaceFirst("https", "http"));
            new Thread(rrccrrVar, "ping url").start();
            synchronized (rrccrrVar) {
                this.b = -100;
                while (this.b < 0) {
                    try {
                        rrccrrVar.wait(100L);
                    } catch (InterruptedException e) {
                    }
                }
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
                if (200 <= this.b && this.b <= 399) {
                    z = true;
                }
            }
        } catch (MalformedURLException e2) {
            Log.e(a, e2.getMessage());
        }
        return z;
    }

    private int b(String str) {
        if (str == null) {
            Log.e(a, "invalid local hapt file url: null");
            return -4;
        }
        File file = new File(str);
        if (!file.isFile()) {
            Log.e(a, "invalid local hapt file url: directory");
            return -4;
        }
        if (file.canRead()) {
            this.mMediaTaskManager.setHapticsUrl(str, false);
            return this.mMediaTaskManager.transitToState(HapticContentSDK.SDKStatus.INITIALIZED);
        }
        Log.e(a, "could not access local hapt file: permission denied");
        return -3;
    }

    /* JADX INFO: renamed from: b044A044A044Aъ044Aъ, reason: contains not printable characters */
    public static int m25b044A044A044A044A() {
        return 2;
    }

    /* JADX INFO: renamed from: b044Aъ044Aъ044Aъ, reason: contains not printable characters */
    public static int m26b044A044A044A() {
        return 61;
    }

    /* JADX INFO: renamed from: bллл043B043Bл, reason: contains not printable characters */
    public static /* synthetic */ int m27b043B043B(MediaPlaybackSDK mediaPlaybackSDK, int i) throws Exception {
        if (((m26b044A044A044A() + f31b044A044A044A) * m26b044A044A044A()) % f34b044A044A != f33b044A044A) {
            f32b044A044A = 4;
            f33b044A044A = m26b044A044A044A();
        }
        try {
            mediaPlaybackSDK.b = i;
            return i;
        } catch (Exception e) {
            throw e;
        }
    }

    /* JADX INFO: renamed from: bъ044A044Aъ044Aъ, reason: contains not printable characters */
    public static int m28b044A044A044A() {
        return 1;
    }

    @Override // com.immersion.hapticmediasdk.HapticContentSDK
    public int openHaptics(String str) {
        HapticContentSDK.SDKStatus sDKStatus = getSDKStatus();
        if (sDKStatus != HapticContentSDK.SDKStatus.STOPPED && sDKStatus != HapticContentSDK.SDKStatus.NOT_INITIALIZED && sDKStatus != HapticContentSDK.SDKStatus.INITIALIZED && sDKStatus != HapticContentSDK.SDKStatus.STOPPED_DUE_TO_ERROR) {
            return -1;
        }
        int iTransitToState = this.mMediaTaskManager.transitToState(HapticContentSDK.SDKStatus.NOT_INITIALIZED);
        if (iTransitToState != 0) {
            return iTransitToState;
        }
        if (!URLUtil.isValidUrl(str)) {
            return b(str);
        }
        if (!URLUtil.isHttpUrl(str) && !URLUtil.isHttpsUrl(str)) {
            if (URLUtil.isFileUrl(str)) {
                return b(str);
            }
            Log.e(a, "could not access hapt file url: unsupposted protocol");
            return -5;
        }
        if (a(str)) {
            this.mMediaTaskManager.setHapticsUrl(str, true);
            return this.mMediaTaskManager.transitToState(HapticContentSDK.SDKStatus.INITIALIZED);
        }
        Log.e(a, "could not access hapt file url: Inaccessible URL");
        return -2;
    }
}

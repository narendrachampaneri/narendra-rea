package rrrrrr;

import com.immersion.hapticmediasdk.controllers.HapticPlaybackThread;

/* JADX INFO: loaded from: classes2.dex */
public class rrcrrr implements Runnable {

    /* JADX INFO: renamed from: b0415Е0415Е04150415, reason: contains not printable characters */
    public static int f145b0415041504150415 = 1;

    /* JADX INFO: renamed from: bЕ04150415Е04150415, reason: contains not printable characters */
    public static int f146b0415041504150415 = 2;

    /* JADX INFO: renamed from: bЕЕ0415Е04150415, reason: contains not printable characters */
    public static int f147b041504150415 = 2;

    /* JADX INFO: renamed from: bЕЕЕ041504150415, reason: contains not printable characters */
    public static int f148b041504150415;

    /* JADX INFO: renamed from: bЗ04170417041704170417, reason: contains not printable characters */
    public final /* synthetic */ HapticPlaybackThread f149b04170417041704170417;

    public rrcrrr(HapticPlaybackThread hapticPlaybackThread) {
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
        int i = f147b041504150415;
        switch ((i * (f145b0415041504150415 + i)) % f146b0415041504150415) {
            case 0:
                break;
            default:
                f147b041504150415 = m148b04150415041504150415();
                f145b0415041504150415 = m148b04150415041504150415();
                break;
        }
        this.f149b04170417041704170417 = hapticPlaybackThread;
    }

    /* JADX INFO: renamed from: b041504150415Е04150415, reason: contains not printable characters */
    public static int m148b04150415041504150415() {
        return 54;
    }

    @Override // java.lang.Runnable
    public void run() {
        HapticPlaybackThread.m56b0411041104110411(this.f149b04170417041704170417);
    }
}

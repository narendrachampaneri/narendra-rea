package rrrrrr;

import com.immersion.hapticmediasdk.controllers.HapticPlaybackThread;

/* JADX INFO: loaded from: classes2.dex */
public class crcrrr implements Runnable {

    /* JADX INFO: renamed from: b042704270427ЧЧЧ, reason: contains not printable characters */
    public static int f118b042704270427 = 2;

    /* JADX INFO: renamed from: b04270427ЧЧЧЧ, reason: contains not printable characters */
    public static int f119b04270427 = 0;

    /* JADX INFO: renamed from: bЧ0427ЧЧЧЧ, reason: contains not printable characters */
    public static int f120b0427 = 48;

    /* JADX INFO: renamed from: bЧЧ0427ЧЧЧ, reason: contains not printable characters */
    public static int f121b0427 = 1;

    /* JADX INFO: renamed from: b04440444ф0444фф, reason: contains not printable characters */
    public final /* synthetic */ HapticPlaybackThread f122b044404440444;

    /* JADX WARN: Failed to find 'out' block for switch in B:6:0x0020. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:8:0x0024. Please report as an issue. */
    public crcrrr(HapticPlaybackThread hapticPlaybackThread) {
        this.f122b044404440444 = hapticPlaybackThread;
        if (((f120b0427 + f121b0427) * f120b0427) % m138b04270427() != f119b04270427) {
            f120b0427 = m139b04270427();
            f119b04270427 = m139b04270427();
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
    }

    /* JADX INFO: renamed from: b0427Ч0427ЧЧЧ, reason: contains not printable characters */
    public static int m138b04270427() {
        return 2;
    }

    /* JADX INFO: renamed from: bЧ04270427ЧЧЧ, reason: contains not printable characters */
    public static int m139b04270427() {
        return 15;
    }

    @Override // java.lang.Runnable
    public void run() throws Exception {
        try {
            HapticPlaybackThread hapticPlaybackThread = this.f122b044404440444;
            if (((f120b0427 + f121b0427) * f120b0427) % f118b042704270427 != f119b04270427) {
                f120b0427 = m139b04270427();
                f119b04270427 = 40;
            }
            try {
                HapticPlaybackThread.m60b041104110411(hapticPlaybackThread);
            } catch (Exception e) {
                throw e;
            }
        } catch (Exception e2) {
            throw e2;
        }
    }
}

package rrrrrr;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import com.immersion.hapticmediasdk.controllers.FileReaderFactory;
import com.immersion.hapticmediasdk.controllers.HapticPlaybackThread;

/* JADX INFO: loaded from: classes2.dex */
public class rccrrr extends Handler {

    /* JADX INFO: renamed from: b04270427Ч042704270427, reason: contains not printable characters */
    public static int f128b04270427042704270427 = 16;

    /* JADX INFO: renamed from: b0427Ч0427042704270427, reason: contains not printable characters */
    public static int f129b04270427042704270427 = 1;

    /* JADX INFO: renamed from: bЧЧ0427042704270427, reason: contains not printable characters */
    public static int f130b0427042704270427;

    /* JADX INFO: renamed from: b04440444фф04440444, reason: contains not printable characters */
    public final /* synthetic */ HapticPlaybackThread f131b0444044404440444;

    private rccrrr(HapticPlaybackThread hapticPlaybackThread) throws Exception {
        int i = 0;
        while (true) {
            try {
                int[] iArr = new int[-1];
            } catch (Exception e) {
                while (true) {
                    try {
                        i /= 0;
                    } catch (Exception e2) {
                        try {
                            this.f131b0444044404440444 = hapticPlaybackThread;
                            try {
                                return;
                            } catch (Exception e3) {
                                throw e3;
                            }
                        } catch (Exception e4) {
                            throw e4;
                        }
                    }
                }
            }
        }
    }

    public /* synthetic */ rccrrr(HapticPlaybackThread hapticPlaybackThread, rrcrrr rrcrrrVar) {
        this(hapticPlaybackThread);
    }

    /* JADX INFO: renamed from: b0446ццццц, reason: contains not printable characters */
    public static int m141b0446() {
        return 85;
    }

    /* JADX INFO: renamed from: bЧ04270427042704270427, reason: contains not printable characters */
    public static int m142b04270427042704270427() {
        return 2;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) throws Exception {
        int i = 0;
        String str = null;
        switch (message.what) {
            case 1:
                HapticPlaybackThread.m59b041104110411(this.f131b0444044404440444).removeCallbacks(HapticPlaybackThread.m50b041104110411(this.f131b0444044404440444));
                HapticPlaybackThread.m42b0411041104110411(this.f131b0444044404440444, message.arg1);
                HapticPlaybackThread.m63b041104110411(this.f131b0444044404440444, message.arg2);
                HapticPlaybackThread.m46b0411041104110411(this.f131b0444044404440444, 0);
                HapticPlaybackThread.m56b0411041104110411(this.f131b0444044404440444);
                break;
            case 2:
                Bundle data = message.getData();
                HapticPlaybackThread.m39b04110411041104110411(this.f131b0444044404440444, data.getInt("playback_timecode"), data.getLong("playback_uptime"));
                break;
            case 3:
                if (HapticPlaybackThread.m69b0411(this.f131b0444044404440444) == null) {
                    HapticPlaybackThread.m53b04110411(this.f131b0444044404440444, FileReaderFactory.getHapticFileReaderInstance(this.f131b0444044404440444.f, HapticPlaybackThread.m45b041104110411(this.f131b0444044404440444)));
                }
                if (HapticPlaybackThread.m69b0411(this.f131b0444044404440444) != null && this.f131b0444044404440444.e == 0) {
                    HapticPlaybackThread.m49b041104110411(this.f131b0444044404440444, HapticPlaybackThread.m69b0411(this.f131b0444044404440444).getBlockSizeMS());
                }
                if (HapticPlaybackThread.m69b0411(this.f131b0444044404440444) != null) {
                    HapticPlaybackThread.m69b0411(this.f131b0444044404440444).setBytesAvailable(message.arg1);
                }
                break;
            case 4:
                HapticPlaybackThread.m58b041104110411(this.f131b0444044404440444);
                while (true) {
                    try {
                        i /= 0;
                    } catch (Exception e) {
                        while (true) {
                            try {
                                str.length();
                            } catch (Exception e2) {
                                return;
                            }
                        }
                    }
                }
                break;
            case 5:
                HapticPlaybackThread.m41b0411041104110411(this.f131b0444044404440444);
                break;
            case 8:
                HapticPlaybackThread.m67b04110411(this.f131b0444044404440444, message);
                break;
            case 9:
                HapticPlaybackThread.m51b041104110411(this.f131b0444044404440444);
                break;
        }
    }
}

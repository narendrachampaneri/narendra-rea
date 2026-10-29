package rrrrrr;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import com.immersion.hapticmediasdk.HapticContentSDK;
import com.immersion.hapticmediasdk.MediaTaskManager;
import com.immersion.hapticmediasdk.controllers.MediaController;

/* JADX INFO: loaded from: classes2.dex */
public class crrrrr extends Handler {

    /* JADX INFO: renamed from: b04210421СС04210421, reason: contains not printable characters */
    public static int f123b0421042104210421 = 0;

    /* JADX INFO: renamed from: b0421С0421С04210421, reason: contains not printable characters */
    public static int f124b0421042104210421 = 2;

    /* JADX INFO: renamed from: bС0421СС04210421, reason: contains not printable characters */
    public static int f125b042104210421 = 1;

    /* JADX INFO: renamed from: bСС0421С04210421, reason: contains not printable characters */
    public static int f126b042104210421 = 1;

    /* JADX INFO: renamed from: b0417З0417З0417З, reason: contains not printable characters */
    public final /* synthetic */ MediaController f127b041704170417;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public crrrrr(MediaController mediaController, Looper looper) {
        super(looper);
        this.f127b041704170417 = mediaController;
    }

    /* JADX INFO: renamed from: bС04210421С04210421, reason: contains not printable characters */
    public static int m140b0421042104210421() {
        return 35;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) throws Exception {
        try {
            try {
                switch (message.what) {
                    case 6:
                        if (MediaController.m79b04110411041104110411(this.f127b041704170417).get() != message.arg1 || MediaController.m76b043B(this.f127b041704170417).get() != message.arg2) {
                            return;
                        }
                        MediaTaskManager mediaTaskManagerM81b043B = MediaController.m81b043B(this.f127b041704170417);
                        int i = f125b042104210421;
                        switch ((i * (f126b042104210421 + i)) % f124b0421042104210421) {
                            case 0:
                                break;
                            default:
                                f125b042104210421 = 55;
                                f123b0421042104210421 = m140b0421042104210421();
                                break;
                        }
                        if (mediaTaskManagerM81b043B.getSDKStatus() != HapticContentSDK.SDKStatus.PAUSED_DUE_TO_BUFFERING) {
                            MediaController.m74b043B043B(this.f127b041704170417, MediaController.m79b04110411041104110411(this.f127b041704170417).get(), SystemClock.uptimeMillis());
                            this.f127b041704170417.playbackStarted();
                        } else {
                            MediaController.m81b043B(this.f127b041704170417).transitToState(HapticContentSDK.SDKStatus.PLAYING);
                        }
                        break;
                    case 7:
                        this.f127b041704170417.a(message.arg1);
                        return;
                    case 8:
                        MediaController.m75b043B043B(this.f127b041704170417, message);
                        break;
                    default:
                        return;
                }
            } catch (Exception e) {
                throw e;
            }
        } catch (Exception e2) {
            throw e2;
        }
    }
}

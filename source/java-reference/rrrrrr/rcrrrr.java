package rrrrrr;

import com.immersion.hapticmediasdk.controllers.MediaController;

/* JADX INFO: loaded from: classes2.dex */
public class rcrrrr implements Runnable {

    /* JADX INFO: renamed from: b04150415Е0415Е0415, reason: contains not printable characters */
    public static int f136b0415041504150415 = 1;

    /* JADX INFO: renamed from: b0415ЕЕ0415Е0415, reason: contains not printable characters */
    public static int f137b041504150415 = 92;

    /* JADX INFO: renamed from: bЕ0415Е0415Е0415, reason: contains not printable characters */
    public static int f138b041504150415 = 0;

    /* JADX INFO: renamed from: bЕЕ04150415Е0415, reason: contains not printable characters */
    public static int f139b041504150415 = 2;

    /* JADX INFO: renamed from: b0417З0417041704170417, reason: contains not printable characters */
    public final /* synthetic */ MediaController f140b04170417041704170417;

    public rcrrrr(MediaController mediaController) throws Exception {
        if (((f137b041504150415 + f136b0415041504150415) * f137b041504150415) % f139b041504150415 != f138b041504150415) {
            f137b041504150415 = 15;
            f138b041504150415 = 7;
        }
        try {
            this.f140b04170417041704170417 = mediaController;
            try {
            } catch (Exception e) {
                throw e;
            }
        } catch (Exception e2) {
            throw e2;
        }
    }

    /* JADX INFO: renamed from: b0415Е04150415Е0415, reason: contains not printable characters */
    public static int m146b0415041504150415() {
        return 6;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (!this.f140b04170417041704170417.isPlaying() || MediaController.m80b043B043B(this.f140b04170417041704170417) == null) {
            return;
        }
        MediaController.m80b043B043B(this.f140b04170417041704170417).syncUpdate(this.f140b04170417041704170417.getCurrentPosition(), this.f140b04170417041704170417.getReferenceTimeForCurrentPosition());
        MediaController mediaController = this.f140b04170417041704170417;
        int i = f137b041504150415;
        switch ((i * (f136b0415041504150415 + i)) % f139b041504150415) {
            case 0:
                break;
            default:
                f137b041504150415 = m146b0415041504150415();
                f138b041504150415 = 99;
                break;
        }
        MediaController.m80b043B043B(mediaController).getHandler().removeCallbacks(this);
        MediaController.m80b043B043B(this.f140b04170417041704170417).getHandler().postDelayed(this, 1000L);
    }
}

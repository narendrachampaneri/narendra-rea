package com.vungle.publisher.device;

import android.media.AudioManager;
import javax.inject.Inject;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
@Singleton
public class AudioHelper {

    @Inject
    public AudioManager a;

    @Inject
    public AudioHelper() {
    }

    public final int a() {
        return this.a.getStreamMaxVolume(3);
    }

    public final int b() {
        return this.a.getStreamVolume(3);
    }

    public final float c() {
        return a(b());
    }

    public final float a(float f) {
        int iA = a();
        if (iA == 0) {
            return -1.0f;
        }
        return f / iA;
    }

    public final void a(boolean z) {
        this.a.setStreamMute(3, !z);
    }
}

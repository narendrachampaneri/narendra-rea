package com.vungle.publisher.display.view;

import android.content.Context;
import android.graphics.Bitmap;
import com.vungle.publisher.ao;
import com.vungle.publisher.bq;
import com.vungle.publisher.device.AudioHelper;
import com.vungle.publisher.event.EventBus;
import com.vungle.publisher.util.ViewUtils;
import javax.inject.Inject;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class MuteButton extends bq {
    boolean a;
    AudioHelper b;
    EventBus c;
    private Bitmap d;
    private Bitmap e;

    /* JADX INFO: compiled from: vungle */
    @Singleton
    public static class Factory {

        @Inject
        Context a;

        @Inject
        ViewUtils b;

        @Inject
        AudioHelper c;

        @Inject
        EventBus d;
    }

    /* synthetic */ MuteButton(Context x0, byte b) {
        this(x0);
    }

    private MuteButton(Context context) {
        super(context);
    }

    final boolean a() {
        return this.a && this.b.b() > 0;
    }

    final void setAndCacheSoundEnabled(boolean isSoundEnabled) {
        this.a = isSoundEnabled;
        setSoundEnabled(isSoundEnabled);
    }

    final void setSoundEnabled(boolean isSoundEnabled) {
        this.b.a(isSoundEnabled);
        b();
    }

    final void b() {
        setImageBitmap(a() ? this.e : this.d);
    }

    final void setVolume(int volume) {
        this.b.a.setStreamVolume(3, volume, 0);
        b();
    }

    final void a(boolean z) {
        if (z) {
            this.c.a(new ao(false));
        } else {
            this.c.a(new ao(true));
        }
    }
}

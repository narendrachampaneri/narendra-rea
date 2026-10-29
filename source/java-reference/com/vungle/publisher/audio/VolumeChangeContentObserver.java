package com.vungle.publisher.audio;

import android.content.Context;
import android.database.ContentObserver;
import android.os.Handler;
import com.vungle.log.Logger;
import com.vungle.publisher.aq;
import com.vungle.publisher.device.AudioHelper;
import com.vungle.publisher.event.EventBus;
import javax.inject.Inject;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
@Singleton
public class VolumeChangeContentObserver extends ContentObserver {
    private static final Handler g = new Handler();
    public volatile int a;
    public boolean b;

    @Inject
    public AudioHelper c;

    @Inject
    aq.a d;

    @Inject
    EventBus e;

    @Inject
    public Context f;

    @Inject
    VolumeChangeContentObserver() {
        super(g);
        this.b = false;
    }

    @Override // android.database.ContentObserver
    public void onChange(boolean selfChange) {
        try {
            super.onChange(selfChange);
            int i = this.a;
            int iB = this.c.b();
            this.a = iB;
            if (iB != i) {
                Logger.v(Logger.DEVICE_TAG, "volume changed " + i + " --> " + iB);
                EventBus eventBus = this.e;
                aq.a aVar = this.d;
                aq aqVar = new aq();
                aqVar.b = aVar.a.b();
                aqVar.d = aVar.a.c();
                aqVar.a = i;
                aqVar.c = aVar.a.a(i);
                eventBus.a(aqVar);
            }
        } catch (Exception e) {
            Logger.e(Logger.DEVICE_TAG, e);
        }
    }
}

package com.vungle.publisher.event;

import com.vungle.log.Logger;
import com.vungle.publisher.EventListener;
import com.vungle.publisher.ad.AdManager;
import com.vungle.publisher.ag;
import com.vungle.publisher.async.ScheduledPriorityExecutor;
import com.vungle.publisher.at;
import com.vungle.publisher.au;
import com.vungle.publisher.aw;
import com.vungle.publisher.ax;
import com.vungle.publisher.ay;
import com.vungle.publisher.az;
import com.vungle.publisher.bb;
import com.vungle.publisher.be;
import com.vungle.publisher.by;
import com.vungle.publisher.e;
import com.vungle.publisher.o;
import com.vungle.publisher.p;
import java.util.concurrent.atomic.AtomicBoolean;
import javax.inject.Inject;
import javax.inject.Provider;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public class ClientEventListenerAdapter extends by {
    public EventListener a;

    @Inject
    ScheduledPriorityExecutor b;

    @Inject
    AdManager c;
    private int d;
    private int e;
    private AtomicBoolean f = new AtomicBoolean();

    /* JADX INFO: compiled from: vungle */
    @Singleton
    public static class Factory {

        @Inject
        public Provider<ClientEventListenerAdapter> a;
    }

    ClientEventListenerAdapter() {
    }

    public void onEvent(e eVar) {
        final boolean zA = this.c.a();
        if (this.f.compareAndSet(!zA, zA)) {
            a(new Runnable() { // from class: com.vungle.publisher.event.ClientEventListenerAdapter.1
                @Override // java.lang.Runnable
                public final void run() {
                    ClientEventListenerAdapter.this.a.onAdPlayableChanged(zA);
                }
            });
        }
    }

    public void onEvent(ag agVar) {
        Logger.d(Logger.EVENT_TAG, "onAdStart() callback");
        this.d = 0;
        this.e = 0;
        a(new Runnable() { // from class: com.vungle.publisher.event.ClientEventListenerAdapter.2
            @Override // java.lang.Runnable
            public final void run() {
                ClientEventListenerAdapter.this.a.onAdStart();
            }
        });
    }

    public void onEvent(be playAdSuccessEvent) {
        a(playAdSuccessEvent.a);
    }

    public void onEvent(at errorEndPlayEvent) {
        if (errorEndPlayEvent instanceof bb) {
            Logger.d(Logger.EVENT_TAG, "onAdEnd() - activity destroyed");
        } else {
            Logger.d(Logger.EVENT_TAG, "onAdEnd() - error during playback");
        }
        a(false);
    }

    private void a(final boolean z) {
        final int i = this.d;
        final int i2 = this.e;
        final boolean z2 = ((float) i) / ((float) i2) > 0.8f;
        Logger.d(Logger.EVENT_TAG, "onVideoEnd(" + z2 + ", " + i + ", " + i2 + ") callback");
        a(new Runnable() { // from class: com.vungle.publisher.event.ClientEventListenerAdapter.3
            @Override // java.lang.Runnable
            public final void run() {
                ClientEventListenerAdapter.this.a.onVideoView(z2, i, i2);
            }
        });
        Logger.d(Logger.EVENT_TAG, "onAdEnd(" + z + ") callback");
        a(new Runnable() { // from class: com.vungle.publisher.event.ClientEventListenerAdapter.4
            @Override // java.lang.Runnable
            public final void run() {
                ClientEventListenerAdapter.this.a.onAdEnd(z);
            }
        });
    }

    public void onEvent(aw awVar) {
        Logger.d(Logger.EVENT_TAG, "onAdUnavailable(error) callback");
        a("Error launching ad");
    }

    public void onEvent(au auVar) {
        Logger.d(Logger.EVENT_TAG, "onAdUnavailable(already playing) callback");
        a("Ad already playing");
    }

    public void onEvent(ax axVar) {
        Logger.d(Logger.EVENT_TAG, "onAdUnavailable(not initialized) callback");
        a("Vungle Publisher SDK was not successfully initialized - please check the logs");
    }

    public void onEvent(ay throttledCancelPlayEvent) {
        Logger.d(Logger.EVENT_TAG, "onAdUnavailable(throttled) callback");
        a("Only " + throttledCancelPlayEvent.a + " of minimum " + throttledCancelPlayEvent.b + " seconds elapsed between ads");
    }

    public void onEvent(az azVar) {
        Logger.d(Logger.EVENT_TAG, "onAdUnavailable(unavailable) callback");
        a("No cached or streaming ad available");
    }

    public void onEvent(o durationPlayVideoEvent) {
        this.e = durationPlayVideoEvent.a;
    }

    public void onEvent(p endPlayVideoEvent) {
        int i = endPlayVideoEvent.a;
        if (i > this.d) {
            Logger.d(Logger.EVENT_TAG, "new watched millis " + i);
            this.d = i;
        } else {
            Logger.d(Logger.EVENT_TAG, "shorter watched millis " + i);
        }
    }

    private void a(final String str) {
        a(new Runnable() { // from class: com.vungle.publisher.event.ClientEventListenerAdapter.5
            @Override // java.lang.Runnable
            public final void run() {
                ClientEventListenerAdapter.this.a.onAdUnavailable(str);
            }
        });
    }

    private void a(Runnable runnable) {
        this.b.a(runnable, ScheduledPriorityExecutor.b.clientEvent);
    }
}

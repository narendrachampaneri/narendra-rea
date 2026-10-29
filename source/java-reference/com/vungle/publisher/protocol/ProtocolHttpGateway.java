package com.vungle.publisher.protocol;

import android.os.SystemClock;
import com.vungle.log.Logger;
import com.vungle.publisher.SafeBundleAdConfigFactory;
import com.vungle.publisher.ae;
import com.vungle.publisher.ai;
import com.vungle.publisher.async.ScheduledPriorityExecutor;
import com.vungle.publisher.by;
import com.vungle.publisher.cs;
import com.vungle.publisher.cw;
import com.vungle.publisher.event.EventBus;
import com.vungle.publisher.r;
import com.vungle.publisher.reporting.AdServiceReportingHandler;
import com.vungle.publisher.t;
import dagger.Lazy;
import java.util.concurrent.atomic.AtomicBoolean;
import javax.inject.Inject;
import javax.inject.Provider;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
@Singleton
public class ProtocolHttpGateway extends cs {

    @Inject
    EventBus a;

    @Inject
    PrepareLocalAdEventListener b;

    @Inject
    ReportAdHttpTransactionFactory f;

    @Inject
    RequestConfigHttpTransactionFactory g;

    @Inject
    RequestLocalAdHttpTransactionFactory h;

    @Inject
    RequestStreamingAdHttpTransactionFactory i;

    @Inject
    SafeBundleAdConfigFactory j;

    @Inject
    SessionEndHttpTransactionFactory k;

    @Inject
    SessionStartHttpTransactionFactory l;

    @Inject
    Lazy<TrackInstallHttpTransactionFactory> m;

    @Inject
    UnfilledAdHttpTransactionFactory n;

    @Inject
    AdServiceReportingHandler o;
    private final AtomicBoolean p = new AtomicBoolean();

    ProtocolHttpGateway() {
    }

    public final void a() {
        this.e.a(new Runnable() { // from class: com.vungle.publisher.protocol.ProtocolHttpGateway.2
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    ProtocolHttpGateway.this.g.a().a();
                } catch (Exception e) {
                    ProtocolHttpGateway.this.d.a(Logger.PROTOCOL_TAG, "error sending request config", e);
                }
            }
        }, ScheduledPriorityExecutor.b.requestConfig);
    }

    public final void a(final cw cwVar) {
        this.e.a(new Runnable() { // from class: com.vungle.publisher.protocol.ProtocolHttpGateway.3
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    if (ProtocolHttpGateway.this.p.compareAndSet(false, true)) {
                        ProtocolHttpGateway.this.o.a = SystemClock.elapsedRealtime();
                        ProtocolHttpGateway.this.b.register();
                        ProtocolHttpGateway.this.h.a(cwVar).a();
                    } else {
                        Logger.d(Logger.PROTOCOL_TAG, "request ad already in progress");
                    }
                } catch (Exception e) {
                    ProtocolHttpGateway.this.d.a(Logger.PROTOCOL_TAG, "error requesting local ad", e);
                    ProtocolHttpGateway.this.b(cwVar);
                }
            }
        }, ScheduledPriorityExecutor.b.requestLocalAd, cwVar.a(2000));
    }

    final void b(cw cwVar) {
        this.p.set(false);
        this.b.unregister();
        if (cwVar != null) {
            a(cwVar);
        }
    }

    final void b() {
        this.a.a(new r());
    }

    public final void c(final cw cwVar) {
        this.e.a(new Runnable() { // from class: com.vungle.publisher.protocol.ProtocolHttpGateway.7
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    ProtocolHttpGateway.this.m.get().a().a();
                } catch (Exception e) {
                    ProtocolHttpGateway.this.d.a(Logger.PROTOCOL_TAG, "error sending track install", e);
                    ProtocolHttpGateway.this.c(cwVar);
                }
            }
        }, ScheduledPriorityExecutor.b.reportInstall, cwVar.a(5000));
    }

    public final void c() {
        this.e.a(new Runnable() { // from class: com.vungle.publisher.protocol.ProtocolHttpGateway.8
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    ProtocolHttpGateway.this.n.a(System.currentTimeMillis() / 1000).a();
                } catch (Exception e) {
                    ProtocolHttpGateway.this.d.a(Logger.PROTOCOL_TAG, "error sending unfilled ad", e);
                }
            }
        }, ScheduledPriorityExecutor.b.unfilledAd);
    }

    /* JADX INFO: compiled from: vungle */
    @Singleton
    static class PrepareLocalAdEventListener extends by {

        @Inject
        Provider<ProtocolHttpGateway> a;

        PrepareLocalAdEventListener() {
        }

        public void onEvent(ai aiVar) {
            a(null);
        }

        public void onEvent(ae prepareAdRecoverableFailureEvent) {
            a(prepareAdRecoverableFailureEvent.a);
        }

        public void onEvent(t tVar) {
            a(null);
        }

        private void a(cw cwVar) {
            this.a.get().b(cwVar);
        }
    }
}

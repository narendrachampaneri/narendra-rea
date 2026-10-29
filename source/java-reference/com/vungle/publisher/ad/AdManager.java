package com.vungle.publisher.ad;

import android.content.Context;
import android.database.SQLException;
import com.vungle.log.Logger;
import com.vungle.publisher.aa;
import com.vungle.publisher.ag;
import com.vungle.publisher.async.ScheduledPriorityExecutor;
import com.vungle.publisher.av;
import com.vungle.publisher.bt;
import com.vungle.publisher.by;
import com.vungle.publisher.c;
import com.vungle.publisher.co;
import com.vungle.publisher.cp;
import com.vungle.publisher.cw;
import com.vungle.publisher.db.model.Ad;
import com.vungle.publisher.db.model.LocalAd;
import com.vungle.publisher.db.model.LoggedException;
import com.vungle.publisher.db.model.StreamingAd;
import com.vungle.publisher.db.model.Viewable;
import com.vungle.publisher.env.SdkConfig;
import com.vungle.publisher.env.SdkState;
import com.vungle.publisher.event.EventBus;
import com.vungle.publisher.f;
import com.vungle.publisher.inject.annotations.FullScreenAdActivityClass;
import com.vungle.publisher.protocol.ProtocolHttpGateway;
import com.vungle.publisher.protocol.message.RequestStreamingAdResponse;
import com.vungle.publisher.q;
import com.vungle.publisher.r;
import dagger.Lazy;
import javax.inject.Inject;
import javax.inject.Provider;
import javax.inject.Singleton;
import org.json.JSONException;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
@Singleton
public class AdManager {

    @Inject
    public AdPreparer a;

    @Inject
    Context b;

    @Inject
    bt c;

    @Inject
    public EventBus d;

    @Inject
    @FullScreenAdActivityClass
    Class e;

    @Inject
    public ScheduledPriorityExecutor f;

    @Inject
    public LocalAd.Factory g;

    @Inject
    cp h;

    @Inject
    Lazy<PlayAdEventListener> i;

    @Inject
    public Lazy<AdAvailabilityEventListener> j;

    @Inject
    Provider<PrepareStreamingAdEventListener> k;

    @Inject
    ProtocolHttpGateway l;

    @Inject
    SdkConfig m;

    @Inject
    public StreamingAd.Factory n;

    @Inject
    public Viewable.Factory o;

    @Inject
    Lazy<SdkState> p;

    @Inject
    LoggedException.Factory q;

    public final boolean a() {
        SdkState sdkState = this.p.get();
        if (!sdkState.l.get() && sdkState.b()) {
            if (this.g.f() != null) {
                return true;
            }
        }
        return false;
    }

    public final LocalAd a(String str) {
        return this.g.a(str);
    }

    final LocalAd a(boolean z) {
        if (this.c.o()) {
            LocalAd localAdA = z ? this.g.a(Ad.a.ready, Ad.a.preparing) : this.g.f();
            if (localAdA == null) {
                Logger.d(Logger.PREPARE_TAG, "no local ad available");
                this.l.a(new cw());
                return null;
            }
            Ad.a aVarI = localAdA.i();
            if (aVarI == Ad.a.preparing) {
                if (z) {
                    Logger.d(Logger.PREPARE_TAG, "local ad partially prepared, restarting preparation for " + localAdA.d());
                    this.a.a(localAdA.d());
                    return null;
                }
                Logger.i(Logger.PREPARE_TAG, "local ad partially prepared, but not restarting preparation for " + localAdA.d());
                return null;
            }
            if (aVarI == Ad.a.ready) {
                Logger.v(Logger.PREPARE_TAG, "local ad already available for " + localAdA.d());
            }
            return localAdA;
        }
        Logger.w(Logger.PREPARE_TAG, "unable to fetch local ad -  no external storage available");
        return null;
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x010f */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x0107, code lost:
    
        r1 = th;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    final StreamingAd a(final String str, final c cVar) throws Throwable {
        StreamingAd streamingAd;
        Exception exc;
        StreamingAd streamingAd2;
        Throwable th;
        StreamingAd streamingAd3 = null;
        boolean zContains = false;
        try {
            if (this.m.b) {
                co coVarA = this.h.a();
                zContains = this.m.c.contains(coVarA);
                Logger.d(Logger.PREPARE_TAG, "ad streaming " + (zContains ? "enabled" : "disabled") + " for " + coVarA + " connectivity");
            } else {
                Logger.d(Logger.PREPARE_TAG, "ad streaming disabled");
            }
            if (!zContains) {
                return null;
            }
            Logger.d(Logger.PREPARE_TAG, "requesting streaming ad");
            PrepareStreamingAdEventListener prepareStreamingAdEventListener = this.k.get();
            prepareStreamingAdEventListener.register();
            final ProtocolHttpGateway protocolHttpGateway = this.l;
            protocolHttpGateway.e.a(new Runnable() { // from class: com.vungle.publisher.protocol.ProtocolHttpGateway.4
                final /* synthetic */ String a;
                final /* synthetic */ c b;

                public AnonymousClass4() {
                    str = str;
                    cVar = cVar;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    try {
                        ProtocolHttpGateway.this.i.a(str, cVar).a();
                    } catch (JSONException e) {
                        ProtocolHttpGateway.this.d.b(Logger.PROTOCOL_TAG, "error creating request streaming ad message", e);
                        ProtocolHttpGateway.this.b();
                    } catch (Exception e2) {
                        ProtocolHttpGateway.this.d.a(Logger.PROTOCOL_TAG, "error requesting streaming ad", e2);
                        ProtocolHttpGateway.this.b();
                    }
                }
            }, ScheduledPriorityExecutor.b.requestStreamingAd);
            long j = prepareStreamingAdEventListener.d;
            int i = this.m.d;
            Logger.d(Logger.CONFIG_TAG, "streaming response timeout config " + i + " ms");
            long j2 = ((long) i) + j;
            synchronized (prepareStreamingAdEventListener) {
                while (!prepareStreamingAdEventListener.b) {
                    try {
                        long jCurrentTimeMillis = j2 - System.currentTimeMillis();
                        if (jCurrentTimeMillis <= 0) {
                            break;
                        }
                        try {
                            prepareStreamingAdEventListener.wait(jCurrentTimeMillis);
                        } catch (InterruptedException e) {
                        }
                    } catch (Throwable th2) {
                        streamingAd2 = null;
                        th = th2;
                    }
                }
                long jCurrentTimeMillis2 = System.currentTimeMillis() - j;
                if (prepareStreamingAdEventListener.b) {
                    streamingAd2 = prepareStreamingAdEventListener.c;
                    if (streamingAd2 != null) {
                        Logger.d(Logger.PREPARE_TAG, "request streaming ad success after " + jCurrentTimeMillis2 + " ms " + streamingAd2.y());
                        streamingAd3 = streamingAd2;
                    } else {
                        streamingAd3 = streamingAd2;
                    }
                } else {
                    Logger.d(Logger.PREPARE_TAG, "request streaming ad timeout after " + jCurrentTimeMillis2 + " ms");
                    prepareStreamingAdEventListener.a();
                }
                try {
                    return streamingAd3;
                } catch (Throwable th3) {
                    streamingAd2 = streamingAd3;
                    th = th3;
                    while (true) {
                        try {
                            break;
                        } catch (Exception e2) {
                            exc = e2;
                            streamingAd = streamingAd2;
                        }
                    }
                    throw th;
                }
            }
            while (true) {
                break;
                break;
            }
            throw th;
        } catch (Exception e3) {
            streamingAd = null;
            exc = e3;
        }
        this.q.a(Logger.PREPARE_TAG, "error getting streaming ad", exc);
        return streamingAd;
    }

    public final void b(boolean z) {
        a(z);
        this.f.a(ScheduledPriorityExecutor.b.deleteExpiredAds);
        Long lG = this.g.g();
        if (lG != null) {
            this.f.a(new Runnable() { // from class: com.vungle.publisher.ad.AdManager.2
                @Override // java.lang.Runnable
                public final void run() {
                    AdManager.this.g.h();
                }
            }, ScheduledPriorityExecutor.b.deleteExpiredAds, lG.longValue() - System.currentTimeMillis());
        }
    }

    /* JADX INFO: compiled from: vungle */
    @Singleton
    static class PlayAdEventListener extends by {
        final String a = Logger.PREPARE_TAG;

        @Inject
        AdManager b;

        @Inject
        LoggedException.Factory c;

        PlayAdEventListener() {
        }

        public void onEvent(ag startPlayAdEvent) {
            try {
                startPlayAdEvent.a().b(Ad.a.viewed);
            } catch (Exception e) {
                this.c.a(Logger.PREPARE_TAG, "error processing start play ad event", e);
            }
        }

        public void onEvent(q qVar) {
            Logger.d(Logger.PREPARE_TAG, "sent ad report - unregistering play ad listener");
            unregister();
        }

        public void onEvent(av avVar) {
            Logger.d(Logger.PREPARE_TAG, "play ad failure - unregistering play ad listener");
            unregister();
        }
    }

    /* JADX INFO: compiled from: vungle */
    @Singleton
    public static class AdAvailabilityEventListener extends by {

        @Inject
        AdManager a;

        AdAvailabilityEventListener() {
        }

        public void onEvent(f fVar) {
            this.a.b(false);
        }
    }

    /* JADX INFO: compiled from: vungle */
    static class PrepareStreamingAdEventListener extends by {
        volatile boolean b;
        volatile StreamingAd c;

        @Inject
        StreamingAd.Factory e;
        final String a = Logger.PREPARE_TAG;
        final long d = System.currentTimeMillis();

        PrepareStreamingAdEventListener() {
        }

        final void a() {
            this.b = true;
            synchronized (this) {
                notifyAll();
            }
        }

        public void onEvent(r prepareStreamingAdFailureEvent) {
            unregister();
            Logger.d(Logger.PREPARE_TAG, "request streaming ad failure after " + (prepareStreamingAdFailureEvent.e - this.d) + " ms");
            a();
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Code duplicated, block: B:21:0x0115  */
        /* JADX WARN: Multi-variable type inference failed */
        public void onEvent(aa prepareStreamingAdSuccessEvent) {
            unregister();
            long j = prepareStreamingAdSuccessEvent.e - this.d;
            RequestStreamingAdResponse requestStreamingAdResponse = prepareStreamingAdSuccessEvent.a;
            if (Boolean.TRUE.equals(requestStreamingAdResponse.r)) {
                Logger.d(Logger.PREPARE_TAG, "received streaming ad " + requestStreamingAdResponse.f() + " after " + j + " ms");
                String strF = requestStreamingAdResponse.f();
                StreamingAd streamingAd = (StreamingAd) this.e.a(strF);
                if (streamingAd == null) {
                    StreamingAd streamingAdA = this.e.a(requestStreamingAdResponse);
                    this.c = streamingAdA;
                    Logger.d(Logger.PREPARE_TAG, "inserting new " + streamingAdA.y());
                    try {
                        streamingAdA.r();
                    } catch (SQLException e) {
                        Logger.d(Logger.PREPARE_TAG, "did not insert streaming ad - possible duplicate");
                    }
                } else {
                    try {
                        this.e.a(streamingAd, requestStreamingAdResponse);
                    } catch (Exception e2) {
                        Logger.w(Logger.PREPARE_TAG, "error updating ad " + strF, e2);
                    }
                    Ad.a aVarI = streamingAd.i();
                    switch (aVarI) {
                        case aware:
                            Logger.w(Logger.PREPARE_TAG, "unexpected ad status " + aVarI + " for " + streamingAd.y());
                            Logger.d(Logger.PREPARE_TAG, "existing " + streamingAd.y() + " with status " + aVarI);
                            if (aVarI != Ad.a.ready) {
                                streamingAd.b(Ad.a.ready);
                            }
                            this.c = streamingAd;
                            break;
                        case failed:
                        case preparing:
                        default:
                            Logger.w(Logger.PREPARE_TAG, "existing " + streamingAd.y() + " with status " + aVarI + " - ignoring");
                            break;
                        case viewed:
                        case ready:
                            Logger.d(Logger.PREPARE_TAG, "existing " + streamingAd.y() + " with status " + aVarI);
                            if (aVarI != Ad.a.ready) {
                                streamingAd.b(Ad.a.ready);
                            }
                            this.c = streamingAd;
                            break;
                    }
                }
            } else {
                Logger.d(Logger.PREPARE_TAG, "no streaming ad to play after " + j + " ms");
            }
            a();
        }
    }
}

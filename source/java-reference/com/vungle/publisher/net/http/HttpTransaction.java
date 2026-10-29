package com.vungle.publisher.net.http;

import android.os.SystemClock;
import com.vungle.log.Logger;
import com.vungle.publisher.async.ScheduledPriorityExecutor;
import com.vungle.publisher.ct;
import com.vungle.publisher.cw;
import java.util.EnumMap;
import javax.inject.Inject;
import javax.inject.Provider;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public class HttpTransaction {
    public HttpRequest a;
    public cw b;
    public ScheduledPriorityExecutor.b c;

    @Inject
    HttpTransport d;
    private ct e;

    HttpTransaction() {
    }

    public final void a() {
        cw cwVar = this.b;
        if (cwVar.a <= 0) {
            cwVar.a = SystemClock.elapsedRealtime();
        }
        cwVar.b++;
        cwVar.c++;
        this.e.c(this, this.d.a(this.a));
    }

    public String toString() {
        return "{" + this.a + ", " + this.b + "}";
    }

    /* JADX INFO: compiled from: vungle */
    @Singleton
    public static class Factory {
        private static final EnumMap<HttpRequest.b, ScheduledPriorityExecutor.b> a;

        @Inject
        Provider<HttpTransaction> c;

        static {
            EnumMap<HttpRequest.b, ScheduledPriorityExecutor.b> enumMap = new EnumMap<>(HttpRequest.b.class);
            a = enumMap;
            enumMap.put(HttpRequest.b.download, ScheduledPriorityExecutor.b.downloadLocalAd);
            a.put(HttpRequest.b.reportAd, ScheduledPriorityExecutor.b.reportAd);
            a.put(HttpRequest.b.requestConfig, ScheduledPriorityExecutor.b.requestConfig);
            a.put(HttpRequest.b.requestLocalAd, ScheduledPriorityExecutor.b.requestLocalAd);
            a.put(HttpRequest.b.requestStreamingAd, ScheduledPriorityExecutor.b.requestStreamingAd);
            a.put(HttpRequest.b.sessionEnd, ScheduledPriorityExecutor.b.sessionEnd);
            a.put(HttpRequest.b.sessionStart, ScheduledPriorityExecutor.b.sessionStart);
            a.put(HttpRequest.b.trackEvent, ScheduledPriorityExecutor.b.externalNetworkRequest);
            a.put(HttpRequest.b.trackInstall, ScheduledPriorityExecutor.b.reportInstall);
            a.put(HttpRequest.b.unfilledAd, ScheduledPriorityExecutor.b.unfilledAd);
            a.put(HttpRequest.b.appFingerprint, ScheduledPriorityExecutor.b.appFingerprint);
            a.put(HttpRequest.b.reportExceptions, ScheduledPriorityExecutor.b.reportExceptions);
        }

        public final HttpTransaction a(HttpRequest httpRequest, ct ctVar) {
            return a(httpRequest, ctVar, new cw());
        }

        public final HttpTransaction a(HttpRequest httpRequest, ct ctVar, cw cwVar) {
            HttpTransaction httpTransaction = this.c.get();
            httpTransaction.a = httpRequest;
            httpTransaction.e = ctVar;
            ScheduledPriorityExecutor.b bVar = a.get(httpRequest.a());
            if (bVar == null) {
                Logger.w(Logger.NETWORK_TAG, "missing mapping for HttpTransaction requestType = " + httpRequest.a().toString());
                bVar = ScheduledPriorityExecutor.b.otherTask;
            }
            httpTransaction.c = bVar;
            httpTransaction.b = cwVar;
            return httpTransaction;
        }
    }
}

package com.vungle.publisher.net.http;

import com.vungle.log.Logger;
import com.vungle.publisher.db.model.Ad;
import com.vungle.publisher.db.model.EventTracking;
import com.vungle.publisher.db.model.EventTrackingHttpLogEntry;
import java.util.List;
import javax.inject.Inject;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public class TrackEventHttpResponseHandler extends MaxRetryAgeHttpResponseHandler {
    boolean a;

    @Inject
    EventTrackingHttpLogEntry.Factory b;

    TrackEventHttpResponseHandler() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.vungle.publisher.ct
    public final void c(HttpTransaction httpTransaction, HttpResponse httpResponse) {
        try {
            super.c(httpTransaction, httpResponse);
        } finally {
            if (this.a) {
                e(httpTransaction, httpResponse);
            }
        }
    }

    private void e(HttpTransaction httpTransaction, HttpResponse httpResponse) {
        try {
            TrackEventHttpRequest trackEventHttpRequest = (TrackEventHttpRequest) httpTransaction.a;
            Logger.d(Logger.NETWORK_TAG, "logging reqeust chain for " + trackEventHttpRequest);
            Ad<?, ?, ?> ad = trackEventHttpRequest.e;
            List<HttpRequestChainElement> list = httpResponse.c;
            if (list == null) {
                Logger.d(Logger.NETWORK_TAG, "null request chain for " + trackEventHttpRequest);
                return;
            }
            for (HttpRequestChainElement httpRequestChainElement : list) {
                EventTrackingHttpLogEntry.Factory factory = this.b;
                EventTracking.a aVar = trackEventHttpRequest.f;
                EventTrackingHttpLogEntry eventTrackingHttpLogEntryC_ = factory.c_();
                eventTrackingHttpLogEntryC_.a = ad.d();
                eventTrackingHttpLogEntryC_.b = ad.h();
                eventTrackingHttpLogEntryC_.c = aVar;
                eventTrackingHttpLogEntryC_.e = Integer.valueOf(httpRequestChainElement.b);
                eventTrackingHttpLogEntryC_.f = Long.valueOf(httpRequestChainElement.c.longValue());
                eventTrackingHttpLogEntryC_.g = httpRequestChainElement.a;
                eventTrackingHttpLogEntryC_.r();
            }
        } catch (Exception e) {
            this.g.a(Logger.NETWORK_TAG, "error logging call-to-action response", e);
        }
    }
}

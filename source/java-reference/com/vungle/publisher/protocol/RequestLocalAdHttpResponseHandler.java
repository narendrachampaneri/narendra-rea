package com.vungle.publisher.protocol;

import android.os.SystemClock;
import com.vungle.log.Logger;
import com.vungle.publisher.ad.AdManager;
import com.vungle.publisher.async.ScheduledPriorityExecutor;
import com.vungle.publisher.cb;
import com.vungle.publisher.cv;
import com.vungle.publisher.db.model.Ad;
import com.vungle.publisher.db.model.LocalAd;
import com.vungle.publisher.env.SdkState;
import com.vungle.publisher.event.EventBus;
import com.vungle.publisher.net.http.HttpResponse;
import com.vungle.publisher.net.http.HttpTransaction;
import com.vungle.publisher.net.http.InfiniteRetryHttpResponseHandler;
import com.vungle.publisher.protocol.message.RequestLocalAdResponse;
import com.vungle.publisher.reporting.AdServiceReportingHandler;
import com.vungle.publisher.s;
import com.vungle.publisher.t;
import com.vungle.publisher.v;
import dagger.Lazy;
import java.io.IOException;
import javax.inject.Inject;
import javax.inject.Singleton;
import org.json.JSONException;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
@Singleton
public class RequestLocalAdHttpResponseHandler extends InfiniteRetryHttpResponseHandler {

    @Inject
    AdServiceReportingHandler a;

    @Inject
    EventBus b;

    @Inject
    EventTrackingHttpLogEntryDeleteDelegate c;

    @Inject
    Lazy<AdManager> d;

    @Inject
    Lazy<SdkState> e;

    @Inject
    RequestLocalAdResponse.Factory k;

    @Inject
    ScheduledPriorityExecutor l;

    @Inject
    ProtocolHttpGateway m;

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.vungle.publisher.ct
    public final void a(HttpTransaction httpTransaction, HttpResponse httpResponse) throws JSONException, IOException {
        RequestLocalAdResponse requestLocalAdResponse = (RequestLocalAdResponse) this.k.a(a(httpResponse.a));
        Integer numValueOf = requestLocalAdResponse.r == null ? null : Integer.valueOf(requestLocalAdResponse.r.intValue() * 1000);
        AdServiceReportingHandler adServiceReportingHandler = this.a;
        adServiceReportingHandler.b = SystemClock.elapsedRealtime() - adServiceReportingHandler.a;
        this.c.a(((RequestLocalAdHttpRequest) httpTransaction.a).e.g);
        if (numValueOf == null) {
            if (requestLocalAdResponse.s.longValue() * 1000 < System.currentTimeMillis()) {
                Logger.i(Logger.NETWORK_TAG, "received expired ad from server, tossing it and getting a new one");
                this.b.a(new v(httpTransaction.b));
                return;
            }
            AdManager adManager = this.d.get();
            String strF = requestLocalAdResponse.f();
            LocalAd localAd = (LocalAd) adManager.g.a(strF);
            if (localAd != null) {
                try {
                    adManager.g.a(localAd, requestLocalAdResponse);
                } catch (Exception e) {
                    Logger.w(Logger.PREPARE_TAG, "error updating ad " + strF, e);
                }
                Ad.a aVarI = localAd.i();
                switch (aVarI) {
                    case aware:
                    case failed:
                    case preparing:
                    case viewed:
                        Logger.i(Logger.PREPARE_TAG, "received " + localAd.y() + " in status " + aVarI);
                        adManager.a.a(strF);
                        break;
                    default:
                        Logger.w(Logger.PREPARE_TAG, "received " + localAd.y() + " in status " + aVarI + " - ignoring");
                        break;
                }
            } else {
                try {
                    adManager.g.i();
                    LocalAd localAdA = adManager.g.a(requestLocalAdResponse);
                    Logger.i(Logger.PREPARE_TAG, "received new " + localAdA.y());
                    localAdA.r();
                    adManager.a.a(strF);
                } catch (cb e2) {
                    Logger.w(Logger.PREPARE_TAG, "error preparing ad " + strF, e2);
                    adManager.d.a(new t());
                }
            }
            SdkState sdkState = this.e.get();
            Integer numA = requestLocalAdResponse.a();
            if (numA != null) {
                int iIntValue = numA.intValue();
                Logger.d(Logger.AD_TAG, "setting min ad delay seconds: " + iIntValue);
                sdkState.n.edit().putInt("VgAdDelayDuration", iIntValue).apply();
                return;
            }
            Logger.v(Logger.AD_TAG, "ignoring set null min ad delay seconds");
            return;
        }
        this.l.a(new cv(httpTransaction), httpTransaction.c, numValueOf.intValue());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.vungle.publisher.ct
    public final void a(HttpTransaction httpTransaction, HttpResponse httpResponse, Exception exc) {
        this.b.a(new s(httpTransaction.b));
    }
}

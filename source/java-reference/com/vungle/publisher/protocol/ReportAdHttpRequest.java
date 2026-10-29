package com.vungle.publisher.protocol;

import com.vungle.publisher.ch;
import com.vungle.publisher.db.model.Ad;
import com.vungle.publisher.db.model.AdPlay;
import com.vungle.publisher.db.model.AdReport;
import com.vungle.publisher.db.model.AdReportEvent;
import com.vungle.publisher.db.model.Video;
import com.vungle.publisher.net.http.HttpRequest;
import com.vungle.publisher.protocol.message.ReportAd;
import com.vungle.publisher.protocol.message.RequestAd;
import com.vungle.publisher.protocol.message.RequestAdResponse;
import org.json.JSONException;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public abstract class ReportAdHttpRequest<Q extends RequestAd<Q>, O extends ReportAd<Q, O>, T extends AdReport<?, ?, ?, ?, ?, ?>> extends ProtocolHttpRequest {
    public Ad<?, ?, ?> e;
    public Integer f;
    O g;

    protected ReportAdHttpRequest() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.vungle.publisher.net.http.HttpRequest
    public final HttpRequest.b a() {
        return HttpRequest.b.reportAd;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.vungle.publisher.net.http.HttpRequest
    public final HttpRequest.a b() {
        return HttpRequest.a.POST;
    }

    /* JADX INFO: compiled from: vungle */
    public static abstract class Factory<Q extends RequestAd<Q>, R extends RequestAdResponse, O extends ReportAd<Q, O>, H extends ReportAdHttpRequest<Q, O, T>, T extends AdReport<T, P, E, A, V, R>, P extends AdPlay<T, P, E, A, V, R>, E extends AdReportEvent<T, P, E, A, V, R>, A extends Ad<A, V, R>, V extends Video<A, V, R>> extends ProtocolHttpRequest.a<H> {
        protected abstract ReportAd.Factory<Q, R, O, T, P, E, A, V> d();

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.net.http.HttpRequest.Factory
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public abstract H b();

        protected Factory() {
        }

        public final H a(T t) throws ch {
            try {
                H hA = c();
                hA.e = t == null ? null : t.e();
                hA.b = this.d + "reportAd";
                hA.c.putString("Content-Type", "application/json");
                hA.f = (Integer) t.s();
                hA.b = this.d + "reportAd";
                O o = (O) d().a(t);
                hA.g = o;
                if (o != null) {
                    hA.d = o.c();
                }
                return hA;
            } catch (JSONException e) {
                throw new ch(e);
            }
        }
    }
}

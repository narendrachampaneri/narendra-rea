package com.vungle.publisher.protocol.message;

import com.newrelic.agent.android.analytics.AnalyticAttribute;
import com.vungle.log.Logger;
import com.vungle.publisher.ci;
import com.vungle.publisher.db.model.EventTrackingHttpLogEntry;
import com.vungle.publisher.env.SdkState;
import dagger.Lazy;
import java.util.List;
import javax.inject.Inject;
import javax.inject.Singleton;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
public final class RequestLocalAd extends RequestAd<RequestLocalAd> {
    public List<EventTrackingHttpLogEntry> g;
    HttpLogEntry[] h;

    RequestLocalAd() {
    }

    @Override // com.vungle.publisher.protocol.message.RequestAd, com.vungle.publisher.protocol.message.BaseJsonObject, com.vungle.publisher.protocol.message.BaseJsonSerializable
    /* JADX INFO: renamed from: a */
    public final JSONObject b() throws JSONException {
        JSONObject jSONObjectB = super.b();
        jSONObjectB.putOpt("httpLog", ci.a(this.h));
        return jSONObjectB;
    }

    /* JADX INFO: compiled from: vungle */
    /* JADX INFO: loaded from: classes.dex */
    @Singleton
    public static class Factory extends RequestAd.a<RequestLocalAd> {

        @Inject
        EventTrackingHttpLogEntry.Factory e;

        @Inject
        HttpLogEntry.Factory f;

        @Inject
        Lazy<SdkState> g;

        @Override // com.vungle.publisher.protocol.message.MessageFactory
        protected final /* synthetic */ Object a() {
            return new RequestLocalAd();
        }

        @Override // com.vungle.publisher.protocol.message.MessageFactory
        protected final /* bridge */ /* synthetic */ Object[] a(int i) {
            return new RequestLocalAd[i];
        }

        @Override // com.vungle.publisher.protocol.message.RequestAd.a
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final RequestLocalAd b() {
            HttpLogEntry httpLogEntry;
            HttpLogEntry[] httpLogEntryArr = null;
            RequestLocalAd requestLocalAd = (RequestLocalAd) super.b();
            List<EventTrackingHttpLogEntry> listD = this.e.d();
            requestLocalAd.g = listD;
            int size = listD == null ? 0 : listD.size();
            if (size > 0) {
                Logger.d(Logger.REPORT_TAG, "sending " + size + " event_tracking_http_log records");
                HttpLogEntry[] httpLogEntryArr2 = new HttpLogEntry[size];
                int i = 0;
                for (EventTrackingHttpLogEntry eventTrackingHttpLogEntry : listD) {
                    Logger.v(Logger.REPORT_TAG, "sending " + eventTrackingHttpLogEntry.y());
                    int i2 = i + 1;
                    if (eventTrackingHttpLogEntry != null) {
                        HttpLogEntry httpLogEntry2 = new HttpLogEntry();
                        httpLogEntry2.a = eventTrackingHttpLogEntry.a;
                        httpLogEntry2.b = eventTrackingHttpLogEntry.b;
                        httpLogEntry2.c = Long.valueOf(eventTrackingHttpLogEntry.d);
                        httpLogEntry2.d = String.valueOf(eventTrackingHttpLogEntry.c);
                        httpLogEntry2.e = eventTrackingHttpLogEntry.e;
                        httpLogEntry2.f = eventTrackingHttpLogEntry.f;
                        httpLogEntry2.g = eventTrackingHttpLogEntry.g;
                        httpLogEntry = httpLogEntry2;
                    } else {
                        httpLogEntry = null;
                    }
                    httpLogEntryArr2[i] = httpLogEntry;
                    i = i2;
                }
                httpLogEntryArr = httpLogEntryArr2;
            }
            requestLocalAd.h = httpLogEntryArr;
            return requestLocalAd;
        }
    }

    /* JADX INFO: compiled from: vungle */
    static class HttpLogEntry extends BaseJsonObject {
        String a;
        String b;
        Long c;
        String d;
        Integer e;
        Long f;
        String g;

        HttpLogEntry() {
        }

        @Override // com.vungle.publisher.protocol.message.BaseJsonObject, com.vungle.publisher.protocol.message.BaseJsonSerializable
        /* JADX INFO: renamed from: a */
        public final JSONObject b() throws JSONException {
            JSONObject jSONObjectB = super.b();
            jSONObjectB.putOpt(AnalyticAttribute.CAMPAIGN_ID_ATTRIBUTE, this.a);
            jSONObjectB.putOpt("deliveryId", this.b);
            jSONObjectB.putOpt("deviceMillis", this.c);
            jSONObjectB.putOpt("event", this.d);
            jSONObjectB.putOpt("responseCode", this.e);
            jSONObjectB.putOpt("responseMillis", this.f);
            jSONObjectB.putOpt("url", this.g);
            return jSONObjectB;
        }

        /* JADX INFO: compiled from: vungle */
        /* JADX INFO: loaded from: classes.dex */
        @Singleton
        static class Factory extends MessageFactory<HttpLogEntry> {
            @Override // com.vungle.publisher.protocol.message.MessageFactory
            protected final /* synthetic */ HttpLogEntry a() {
                return new HttpLogEntry();
            }

            @Override // com.vungle.publisher.protocol.message.MessageFactory
            protected final /* bridge */ /* synthetic */ HttpLogEntry[] a(int i) {
                return new HttpLogEntry[i];
            }

            @Inject
            Factory() {
            }
        }
    }
}

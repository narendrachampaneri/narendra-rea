package com.vungle.publisher.protocol.message;

import com.newrelic.agent.android.analytics.AnalyticAttribute;
import com.vungle.publisher.c;
import com.vungle.publisher.ci;
import javax.inject.Inject;
import javax.inject.Singleton;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
public final class RequestStreamingAd extends RequestAd<RequestStreamingAd> {
    ExtraInfo g;
    String h;
    String i;

    RequestStreamingAd() {
    }

    @Override // com.vungle.publisher.protocol.message.RequestAd, com.vungle.publisher.protocol.message.BaseJsonObject, com.vungle.publisher.protocol.message.BaseJsonSerializable
    /* JADX INFO: renamed from: a */
    public final JSONObject b() throws JSONException {
        JSONObject jSONObjectB = super.b();
        jSONObjectB.putOpt(AnalyticAttribute.CAMPAIGN_ID_ATTRIBUTE, this.h);
        jSONObjectB.putOpt("extraInfo", ci.a(this.g));
        jSONObjectB.putOpt("placement", this.i);
        return jSONObjectB;
    }

    /* JADX INFO: compiled from: vungle */
    /* JADX INFO: loaded from: classes.dex */
    @Singleton
    public static class Factory extends RequestAd.a<RequestStreamingAd> {

        @Inject
        protected ExtraInfo.Factory e;

        @Override // com.vungle.publisher.protocol.message.MessageFactory
        protected final /* synthetic */ Object a() {
            return new RequestStreamingAd();
        }

        @Override // com.vungle.publisher.protocol.message.MessageFactory
        protected final /* bridge */ /* synthetic */ Object[] a(int i) {
            return new RequestStreamingAd[i];
        }

        Factory() {
        }

        public final RequestStreamingAd a(String str, c cVar) {
            RequestStreamingAd requestStreamingAd = (RequestStreamingAd) super.b();
            requestStreamingAd.g = ExtraInfo.Factory.a(cVar.getExtras());
            requestStreamingAd.h = str;
            requestStreamingAd.i = cVar.getPlacement();
            return requestStreamingAd;
        }
    }
}

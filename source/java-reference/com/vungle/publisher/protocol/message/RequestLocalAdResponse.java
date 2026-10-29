package com.vungle.publisher.protocol.message;

import com.google.android.gms.fitness.FitnessActivities;
import com.vungle.publisher.ci;
import javax.inject.Inject;
import javax.inject.Singleton;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
public final class RequestLocalAdResponse extends RequestAdResponse {
    public Integer r;
    public Long s;
    public String t;
    public String u;
    public Integer v;
    public String w;

    RequestLocalAdResponse() {
    }

    /* JADX INFO: compiled from: vungle */
    /* JADX INFO: loaded from: classes.dex */
    @Singleton
    public static class Factory extends RequestAdResponse.a<RequestLocalAdResponse> {
        @Override // com.vungle.publisher.protocol.message.MessageFactory
        protected final /* synthetic */ Object a() {
            return new RequestLocalAdResponse();
        }

        @Override // com.vungle.publisher.protocol.message.MessageFactory
        protected final /* bridge */ /* synthetic */ Object[] a(int i) {
            return new RequestLocalAdResponse[i];
        }

        @Inject
        protected Factory() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        @Override // com.vungle.publisher.protocol.message.RequestAdResponse.a
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public RequestLocalAdResponse a(JSONObject jSONObject) throws JSONException {
            if (jSONObject == null) {
                return null;
            }
            if (jSONObject.isNull(FitnessActivities.SLEEP)) {
                RequestLocalAdResponse requestLocalAdResponse = (RequestLocalAdResponse) super.a(jSONObject);
                Long lD = ci.d(jSONObject, "expiry");
                requestLocalAdResponse.s = lD;
                a(jSONObject, "expiry", lD);
                requestLocalAdResponse.t = ci.e(jSONObject, "postBundle");
                requestLocalAdResponse.u = ci.e(jSONObject, "preBundle");
                requestLocalAdResponse.v = ci.c(jSONObject, "size");
                requestLocalAdResponse.w = jSONObject.optString("md5");
                a(jSONObject, "md5", requestLocalAdResponse.w);
                return requestLocalAdResponse;
            }
            RequestLocalAdResponse requestLocalAdResponse2 = new RequestLocalAdResponse();
            requestLocalAdResponse2.r = Integer.valueOf(jSONObject.getInt(FitnessActivities.SLEEP));
            return requestLocalAdResponse2;
        }
    }
}

package com.vungle.publisher.protocol.message;

import com.vungle.publisher.ci;
import javax.inject.Inject;
import javax.inject.Singleton;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
public final class RequestStreamingAdResponse extends RequestAdResponse {
    public Boolean r;

    /* JADX INFO: compiled from: vungle */
    /* JADX INFO: loaded from: classes.dex */
    @Singleton
    public static class Factory extends RequestAdResponse.a<RequestStreamingAdResponse> {
        @Override // com.vungle.publisher.protocol.message.MessageFactory
        protected final /* synthetic */ Object a() {
            return new RequestStreamingAdResponse();
        }

        @Override // com.vungle.publisher.protocol.message.MessageFactory
        protected final /* bridge */ /* synthetic */ Object[] a(int i) {
            return new RequestStreamingAdResponse[i];
        }

        @Inject
        protected Factory() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        @Override // com.vungle.publisher.protocol.message.RequestAdResponse.a
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public RequestStreamingAdResponse a(JSONObject jSONObject) throws JSONException {
            RequestStreamingAdResponse requestStreamingAdResponse = null;
            if (jSONObject != null) {
                Boolean boolA = ci.a(jSONObject, "shouldStream");
                if (Boolean.TRUE.equals(boolA)) {
                    requestStreamingAdResponse = (RequestStreamingAdResponse) super.a(jSONObject);
                } else {
                    requestStreamingAdResponse = new RequestStreamingAdResponse();
                }
                requestStreamingAdResponse.r = boolA;
            }
            return requestStreamingAdResponse;
        }
    }
}

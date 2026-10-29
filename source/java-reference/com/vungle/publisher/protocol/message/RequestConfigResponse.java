package com.vungle.publisher.protocol.message;

import android.net.http.Headers;
import com.vungle.publisher.ci;
import javax.inject.Inject;
import javax.inject.Singleton;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class RequestConfigResponse extends BaseJsonObject {
    public Boolean a;
    public Integer b;
    public Integer c;
    public a d;
    public Boolean e;
    public Long f;
    public Long g;

    /* JADX INFO: compiled from: vungle */
    public enum a {
        all,
        wifi
    }

    /* JADX INFO: compiled from: vungle */
    @Singleton
    public static class Factory extends JsonDeserializationFactory<RequestConfigResponse> {
        @Override // com.vungle.publisher.protocol.message.MessageFactory
        protected final /* synthetic */ Object a() {
            return new RequestConfigResponse();
        }

        @Override // com.vungle.publisher.protocol.message.JsonDeserializationFactory
        protected final /* synthetic */ RequestConfigResponse a(JSONObject jSONObject) throws JSONException {
            if (jSONObject == null) {
                return null;
            }
            RequestConfigResponse requestConfigResponse = new RequestConfigResponse();
            requestConfigResponse.a = ci.a(jSONObject, "optIn");
            requestConfigResponse.b = ci.c(jSONObject, "updateDelay");
            requestConfigResponse.c = ci.c(jSONObject, "threshold");
            String strE = ci.e(jSONObject, Headers.CONN_DIRECTIVE);
            requestConfigResponse.d = (a) (strE != null ? Enum.valueOf(a.class, strE) : null);
            requestConfigResponse.e = ci.a(jSONObject, "exceptionReportingEnabled");
            requestConfigResponse.f = ci.d(jSONObject, "last_app_fingerprint_timestamp");
            requestConfigResponse.g = ci.d(jSONObject, "app_fingerprint_frequency");
            return requestConfigResponse;
        }

        @Override // com.vungle.publisher.protocol.message.MessageFactory
        protected final /* bridge */ /* synthetic */ Object[] a(int i) {
            return new RequestConfigResponse[i];
        }

        @Inject
        Factory() {
        }
    }
}

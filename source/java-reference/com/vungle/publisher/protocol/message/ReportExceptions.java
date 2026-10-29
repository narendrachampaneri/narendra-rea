package com.vungle.publisher.protocol.message;

import com.amazon.identity.auth.device.endpoint.AbstractOauthTokenRequest;
import com.vungle.publisher.bt;
import com.vungle.publisher.bv;
import com.vungle.publisher.db.model.LoggedException;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import javax.inject.Inject;
import javax.inject.Provider;
import javax.inject.Singleton;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public class ReportExceptions extends BaseJsonArray {
    public List<LoggedException> a;

    @Inject
    bt b;

    @Inject
    bv c;

    @Override // com.vungle.publisher.protocol.message.BaseJsonArray, com.vungle.publisher.protocol.message.BaseJsonSerializable
    /* JADX INFO: renamed from: a */
    public final JSONArray b() throws JSONException {
        JSONArray jSONArrayB = super.b();
        for (LoggedException loggedException : this.a) {
            JSONObject jSONObject = new JSONObject();
            JSONObject jSONObject2 = new JSONObject();
            String[] strArr = loggedException.b;
            JSONArray jSONArray = null;
            if (strArr != null) {
                jSONArray = new JSONArray((Collection) Arrays.asList(strArr));
            }
            jSONObject.putOpt("code", Integer.valueOf(loggedException.c));
            jSONObject.putOpt("timestamp", Long.valueOf(loggedException.a));
            jSONObject.putOpt("stack_trace", jSONArray);
            jSONObject.putOpt("tag", loggedException.d);
            jSONObject.putOpt("log_message", loggedException.e);
            jSONObject.putOpt("exception_class", loggedException.f);
            jSONObject.putOpt("platform", "android");
            jSONObject.putOpt("model", this.b.m());
            jSONObject.putOpt("os_version", loggedException.g);
            jSONObject.putOpt("sdk_version", loggedException.h);
            jSONObject.putOpt(AbstractOauthTokenRequest.APP_APP_ID_PARAM, this.c.b());
            jSONObject2.putOpt("play_services_version", loggedException.i);
            jSONObject.putOpt("platform_specific", jSONObject2);
            jSONArrayB.put(jSONObject);
        }
        return jSONArrayB;
    }

    /* JADX INFO: compiled from: vungle */
    @Singleton
    public static class Factory {

        @Inject
        public Provider<ReportExceptions> a;

        @Inject
        Factory() {
        }
    }
}

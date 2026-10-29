package com.vungle.publisher.device.data;

import android.content.Context;
import com.vungle.publisher.bt;
import com.vungle.publisher.protocol.message.BaseJsonObject;
import javax.inject.Inject;
import javax.inject.Provider;
import javax.inject.Singleton;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public class AppFingerprint extends BaseJsonObject {
    JSONObject a;
    long b;
    String c;
    String d;
    boolean e;

    /* JADX INFO: compiled from: vungle */
    @Singleton
    public static class Factory {

        @Inject
        bt a;

        @Inject
        Context b;

        @Inject
        Provider<AppFingerprint> c;
    }

    @Inject
    public AppFingerprint() {
    }

    @Override // com.vungle.publisher.protocol.message.BaseJsonObject, com.vungle.publisher.protocol.message.BaseJsonSerializable
    /* JADX INFO: renamed from: a */
    public final JSONObject b() throws JSONException {
        JSONObject jSONObjectB = super.b();
        jSONObjectB.put("last_polled", this.b);
        jSONObjectB.put("ifa", this.c);
        jSONObjectB.put("isu", this.d);
        jSONObjectB.put("app_store_ids", this.a);
        jSONObjectB.put("is_tracking_enabled", this.e);
        jSONObjectB.put("platform", "android");
        return jSONObjectB;
    }
}

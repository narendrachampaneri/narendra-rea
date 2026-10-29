package com.vungle.publisher.protocol.message;

import com.vungle.publisher.bt;
import com.vungle.publisher.bv;
import javax.inject.Inject;
import javax.inject.Singleton;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
@Singleton
public class RequestConfig extends BaseJsonObject {

    @Inject
    bt a;

    @Inject
    bv b;

    @Override // com.vungle.publisher.protocol.message.BaseJsonObject, com.vungle.publisher.protocol.message.BaseJsonSerializable
    /* JADX INFO: renamed from: a */
    public final JSONObject b() throws JSONException {
        JSONObject jSONObjectB = super.b();
        jSONObjectB.putOpt("pubAppId", this.b.b());
        jSONObjectB.putOpt("ifa", this.a.a());
        jSONObjectB.putOpt("isu", this.a.c());
        return jSONObjectB;
    }
}

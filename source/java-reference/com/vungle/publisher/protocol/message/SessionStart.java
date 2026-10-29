package com.vungle.publisher.protocol.message;

import com.vungle.publisher.bt;
import com.vungle.publisher.bv;
import javax.inject.Inject;
import javax.inject.Singleton;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
public final class SessionStart extends BaseJsonObject {
    String a;
    String b;
    String c;
    String d;
    Long e;

    SessionStart() {
    }

    @Override // com.vungle.publisher.protocol.message.BaseJsonObject, com.vungle.publisher.protocol.message.BaseJsonSerializable
    /* JADX INFO: renamed from: a */
    public final JSONObject b() throws JSONException {
        JSONObject jSONObjectB = super.b();
        jSONObjectB.putOpt("ifa", this.a);
        jSONObjectB.putOpt("isu", this.b);
        jSONObjectB.putOpt("mac", this.c);
        a("pubAppId", this.d);
        jSONObjectB.put("pubAppId", this.d);
        a("start", this.e);
        jSONObjectB.put("start", this.e);
        return jSONObjectB;
    }

    /* JADX INFO: compiled from: vungle */
    /* JADX INFO: loaded from: classes.dex */
    @Singleton
    public static class Factory {

        @Inject
        bt a;

        @Inject
        bv b;

        public final SessionStart a(long j) {
            SessionStart sessionStart = new SessionStart();
            sessionStart.a = this.a.a();
            sessionStart.b = this.a.c();
            sessionStart.c = this.a.j();
            sessionStart.d = this.b.b();
            sessionStart.e = Long.valueOf(j);
            return sessionStart;
        }
    }
}

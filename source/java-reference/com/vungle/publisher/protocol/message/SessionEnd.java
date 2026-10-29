package com.vungle.publisher.protocol.message;

import javax.inject.Inject;
import javax.inject.Singleton;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
public final class SessionEnd extends BaseJsonObject {
    public Long a;
    public SessionStart b;

    SessionEnd() {
    }

    @Override // com.vungle.publisher.protocol.message.BaseJsonObject, com.vungle.publisher.protocol.message.BaseJsonSerializable
    /* JADX INFO: renamed from: a */
    public final JSONObject b() throws JSONException {
        JSONObject jSONObjectB = this.b == null ? super.b() : this.b.b();
        a("end", this.a);
        jSONObjectB.put("end", this.a);
        return jSONObjectB;
    }

    /* JADX INFO: compiled from: vungle */
    /* JADX INFO: loaded from: classes.dex */
    @Singleton
    public static class Factory {

        @Inject
        public SessionStart.Factory a;

        Factory() {
        }

        public static SessionEnd a() {
            return new SessionEnd();
        }
    }
}

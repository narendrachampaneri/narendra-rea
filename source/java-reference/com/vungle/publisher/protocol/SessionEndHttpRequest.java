package com.vungle.publisher.protocol;

import com.vungle.publisher.net.http.HttpRequest;
import com.vungle.publisher.protocol.message.SessionEnd;
import com.vungle.publisher.protocol.message.SessionStart;
import javax.inject.Inject;
import javax.inject.Singleton;
import org.json.JSONException;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class SessionEndHttpRequest extends ProtocolHttpRequest {
    protected SessionEndHttpRequest() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.vungle.publisher.net.http.HttpRequest
    public final HttpRequest.b a() {
        return HttpRequest.b.sessionEnd;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.vungle.publisher.net.http.HttpRequest
    public final HttpRequest.a b() {
        return HttpRequest.a.POST;
    }

    /* JADX INFO: compiled from: vungle */
    @Singleton
    public static class Factory extends ProtocolHttpRequest.a<SessionEndHttpRequest> {

        @Inject
        SessionEnd.Factory g;

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.net.http.HttpRequest.Factory
        public final /* synthetic */ HttpRequest b() {
            return new SessionEndHttpRequest();
        }

        protected final SessionEndHttpRequest a(long j, long j2) throws JSONException {
            SessionEndHttpRequest sessionEndHttpRequestA = c();
            sessionEndHttpRequestA.c.putString("Content-Type", "application/json");
            sessionEndHttpRequestA.b = this.d + "sessionEnd";
            SessionStart sessionStartA = this.g.a.a(j);
            SessionEnd sessionEndA = SessionEnd.Factory.a();
            sessionEndA.b = sessionStartA;
            sessionEndA.a = Long.valueOf(j2);
            sessionEndHttpRequestA.d = sessionEndA.c();
            return sessionEndHttpRequestA;
        }
    }
}

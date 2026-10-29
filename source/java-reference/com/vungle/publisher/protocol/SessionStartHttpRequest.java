package com.vungle.publisher.protocol;

import com.vungle.publisher.net.http.HttpRequest;
import com.vungle.publisher.protocol.message.SessionStart;
import javax.inject.Inject;
import javax.inject.Singleton;
import org.json.JSONException;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class SessionStartHttpRequest extends ProtocolHttpRequest {
    protected SessionStartHttpRequest() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.vungle.publisher.net.http.HttpRequest
    public final HttpRequest.b a() {
        return HttpRequest.b.sessionStart;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.vungle.publisher.net.http.HttpRequest
    public final HttpRequest.a b() {
        return HttpRequest.a.POST;
    }

    /* JADX INFO: compiled from: vungle */
    @Singleton
    public static class Factory extends ProtocolHttpRequest.a<SessionStartHttpRequest> {

        @Inject
        SessionStart.Factory g;

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.net.http.HttpRequest.Factory
        public final /* synthetic */ HttpRequest b() {
            return new SessionStartHttpRequest();
        }

        protected final SessionStartHttpRequest a(long j) throws JSONException {
            SessionStartHttpRequest sessionStartHttpRequestA = c();
            sessionStartHttpRequestA.c.putString("Content-Type", "application/json");
            sessionStartHttpRequestA.b = this.d + "sessionStart";
            sessionStartHttpRequestA.d = this.g.a(j).c();
            return sessionStartHttpRequestA;
        }
    }
}

package com.vungle.publisher.protocol;

import com.vungle.publisher.c;
import com.vungle.publisher.ch;
import com.vungle.publisher.net.http.HttpRequest;
import com.vungle.publisher.protocol.message.RequestStreamingAd;
import javax.inject.Inject;
import javax.inject.Singleton;
import org.json.JSONException;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class RequestStreamingAdHttpRequest extends ProtocolHttpRequest {
    protected RequestStreamingAdHttpRequest() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.vungle.publisher.net.http.HttpRequest
    public final HttpRequest.b a() {
        return HttpRequest.b.requestStreamingAd;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.vungle.publisher.net.http.HttpRequest
    public final HttpRequest.a b() {
        return HttpRequest.a.GET;
    }

    /* JADX INFO: compiled from: vungle */
    @Singleton
    public static class Factory extends ProtocolHttpRequest.a<RequestStreamingAdHttpRequest> {

        @Inject
        RequestStreamingAd.Factory g;

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.net.http.HttpRequest.Factory
        public final /* synthetic */ HttpRequest b() {
            return new RequestStreamingAdHttpRequest();
        }

        public final RequestStreamingAdHttpRequest a(String str, c cVar) throws ch {
            try {
                RequestStreamingAdHttpRequest requestStreamingAdHttpRequest = (RequestStreamingAdHttpRequest) super.c();
                requestStreamingAdHttpRequest.b = this.d + "requestStreamingAd";
                requestStreamingAdHttpRequest.c.putString("Content-Type", "application/json");
                requestStreamingAdHttpRequest.d = this.g.a(str, cVar).c();
                return requestStreamingAdHttpRequest;
            } catch (JSONException e) {
                throw new ch(e);
            }
        }
    }
}

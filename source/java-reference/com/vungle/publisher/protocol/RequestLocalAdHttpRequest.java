package com.vungle.publisher.protocol;

import com.vungle.publisher.ch;
import com.vungle.publisher.net.http.HttpRequest;
import com.vungle.publisher.protocol.message.RequestLocalAd;
import javax.inject.Inject;
import javax.inject.Singleton;
import org.json.JSONException;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class RequestLocalAdHttpRequest extends ProtocolHttpRequest {
    RequestLocalAd e;

    protected RequestLocalAdHttpRequest() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.vungle.publisher.net.http.HttpRequest
    public final HttpRequest.b a() {
        return HttpRequest.b.requestLocalAd;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.vungle.publisher.net.http.HttpRequest
    public final HttpRequest.a b() {
        return HttpRequest.a.GET;
    }

    /* JADX INFO: compiled from: vungle */
    @Singleton
    public static class Factory extends ProtocolHttpRequest.a<RequestLocalAdHttpRequest> {

        @Inject
        RequestLocalAd.Factory g;

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.net.http.HttpRequest.Factory
        public final /* synthetic */ HttpRequest b() {
            return new RequestLocalAdHttpRequest();
        }

        @Override // com.vungle.publisher.protocol.ProtocolHttpRequest.a, com.vungle.publisher.net.http.HttpRequest.Factory
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public final RequestLocalAdHttpRequest c() throws ch {
            try {
                RequestLocalAdHttpRequest requestLocalAdHttpRequest = (RequestLocalAdHttpRequest) super.c();
                requestLocalAdHttpRequest.b = this.d + "requestAd";
                requestLocalAdHttpRequest.c.putString("Content-Type", "application/json");
                RequestLocalAd requestLocalAdB = this.g.b();
                requestLocalAdHttpRequest.e = requestLocalAdB;
                requestLocalAdHttpRequest.d = requestLocalAdB.c();
                return requestLocalAdHttpRequest;
            } catch (JSONException e) {
                throw new ch(e);
            }
        }
    }
}

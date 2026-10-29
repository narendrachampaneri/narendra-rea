package com.vungle.publisher.protocol;

import com.vungle.publisher.ch;
import com.vungle.publisher.net.http.HttpRequest;
import com.vungle.publisher.protocol.message.RequestConfig;
import javax.inject.Inject;
import javax.inject.Singleton;
import org.json.JSONException;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
@Singleton
public class RequestConfigHttpRequest extends ProtocolHttpRequest {
    boolean e;

    @Inject
    RequestConfigHttpRequest() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.vungle.publisher.net.http.HttpRequest
    public final HttpRequest.a b() {
        return HttpRequest.a.GET;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.vungle.publisher.net.http.HttpRequest
    public final HttpRequest.b a() {
        return HttpRequest.b.requestConfig;
    }

    /* JADX INFO: compiled from: vungle */
    @Singleton
    public static class Factory extends ProtocolHttpRequest.a<RequestConfigHttpRequest> {

        @Inject
        RequestConfigHttpRequest g;

        @Inject
        RequestConfig h;

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.net.http.HttpRequest.Factory
        public final /* bridge */ /* synthetic */ HttpRequest b() {
            return this.g;
        }

        @Override // com.vungle.publisher.protocol.ProtocolHttpRequest.a, com.vungle.publisher.net.http.HttpRequest.Factory
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public final RequestConfigHttpRequest c() throws ch {
            try {
                if (this.g.e) {
                    return this.g;
                }
                RequestConfigHttpRequest requestConfigHttpRequest = (RequestConfigHttpRequest) super.c();
                requestConfigHttpRequest.b = this.d + "config";
                requestConfigHttpRequest.c.putString("Content-Type", "application/json");
                requestConfigHttpRequest.d = this.h.c();
                return requestConfigHttpRequest;
            } catch (JSONException e) {
                throw new ch(e);
            }
        }
    }
}

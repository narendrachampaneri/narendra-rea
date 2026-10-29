package com.vungle.publisher.net.http;

import com.vungle.publisher.inject.annotations.IngestBaseUrl;
import javax.inject.Inject;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public abstract class IngestHttpRequest extends HttpRequest {
    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.vungle.publisher.net.http.HttpRequest
    public final HttpRequest.a b() {
        return HttpRequest.a.POST;
    }

    /* JADX INFO: compiled from: vungle */
    public static abstract class Factory<T extends IngestHttpRequest> extends HttpRequest.Factory<T> {

        @Inject
        @IngestBaseUrl
        String c;

        protected abstract String a();

        protected Factory() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.net.http.HttpRequest.Factory
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public final T c() {
            T t = (T) super.c();
            t.a("Content-Encoding", io.fabric.sdk.android.services.network.HttpRequest.ENCODING_GZIP);
            t.a("Content-Type", "application/json");
            t.b = this.c + a();
            return t;
        }
    }
}

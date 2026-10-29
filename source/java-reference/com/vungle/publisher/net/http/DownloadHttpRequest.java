package com.vungle.publisher.net.http;

import javax.inject.Inject;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class DownloadHttpRequest extends HttpRequest {
    DownloadHttpRequest() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.vungle.publisher.net.http.HttpRequest
    public final HttpRequest.a b() {
        return HttpRequest.a.GET;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.vungle.publisher.net.http.HttpRequest
    public final HttpRequest.b a() {
        return HttpRequest.b.download;
    }

    @Override // com.vungle.publisher.net.http.HttpRequest
    public final String toString() {
        return "{" + HttpRequest.b.download + ": " + this.b + "}";
    }

    /* JADX INFO: compiled from: vungle */
    @Singleton
    static class Factory extends HttpRequest.Factory<DownloadHttpRequest> {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.net.http.HttpRequest.Factory
        public final /* synthetic */ HttpRequest b() {
            return new DownloadHttpRequest();
        }

        @Inject
        Factory() {
        }
    }
}

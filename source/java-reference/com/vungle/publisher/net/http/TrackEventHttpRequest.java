package com.vungle.publisher.net.http;

import com.vungle.publisher.db.model.Ad;
import com.vungle.publisher.db.model.EventTracking;
import javax.inject.Inject;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class TrackEventHttpRequest extends HttpRequest {
    Ad<?, ?, ?> e;
    EventTracking.a f;

    TrackEventHttpRequest() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.vungle.publisher.net.http.HttpRequest
    public final HttpRequest.b a() {
        return HttpRequest.b.trackEvent;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.vungle.publisher.net.http.HttpRequest
    public final HttpRequest.a b() {
        return HttpRequest.a.GET;
    }

    @Override // com.vungle.publisher.net.http.HttpRequest
    public final String toString() {
        return "{" + HttpRequest.b.trackEvent + ": " + this.b + "}";
    }

    /* JADX INFO: compiled from: vungle */
    @Singleton
    public static class Factory extends HttpRequest.Factory<TrackEventHttpRequest> {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.net.http.HttpRequest.Factory
        public final /* synthetic */ HttpRequest b() {
            return new TrackEventHttpRequest();
        }

        @Inject
        Factory() {
        }
    }
}

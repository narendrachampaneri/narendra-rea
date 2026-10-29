package com.vungle.publisher.net.http;

import com.vungle.publisher.db.model.Ad;
import com.vungle.publisher.db.model.EventTracking;
import dagger.Lazy;
import javax.inject.Inject;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
@Singleton
public class TrackEventHttpTransactionFactory extends HttpTransaction.Factory {

    @Inject
    TrackEventHttpRequest.Factory a;

    @Inject
    Lazy<TrackEventHttpResponseHandler> b;

    public final HttpTransaction a(Ad<?, ?, ?> ad, EventTracking.a aVar, String str) {
        TrackEventHttpResponseHandler trackEventHttpResponseHandler = this.b.get();
        switch (aVar) {
            case postroll_click:
            case video_click:
                trackEventHttpResponseHandler.a = true;
                break;
            default:
                trackEventHttpResponseHandler.i = 1;
                trackEventHttpResponseHandler.h = 10;
                break;
        }
        TrackEventHttpRequest trackEventHttpRequestC = this.a.c();
        trackEventHttpRequestC.e = ad;
        trackEventHttpRequestC.f = aVar;
        trackEventHttpRequestC.b = str;
        return super.a(trackEventHttpRequestC, trackEventHttpResponseHandler);
    }
}

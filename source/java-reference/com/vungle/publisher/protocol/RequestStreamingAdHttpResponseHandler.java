package com.vungle.publisher.protocol;

import com.vungle.publisher.aa;
import com.vungle.publisher.event.EventBus;
import com.vungle.publisher.net.http.HttpResponse;
import com.vungle.publisher.net.http.HttpTransaction;
import com.vungle.publisher.net.http.MaxRetryAgeHttpResponseHandler;
import com.vungle.publisher.protocol.message.RequestStreamingAdResponse;
import com.vungle.publisher.r;
import java.io.IOException;
import javax.inject.Inject;
import javax.inject.Singleton;
import org.json.JSONException;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
@Singleton
public class RequestStreamingAdHttpResponseHandler extends MaxRetryAgeHttpResponseHandler {

    @Inject
    EventBus a;

    @Inject
    RequestStreamingAdResponse.Factory b;

    RequestStreamingAdHttpResponseHandler() {
        this.i = 1;
        this.h = 1;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.vungle.publisher.ct
    public final void a(HttpTransaction httpTransaction, HttpResponse httpResponse) throws JSONException, IOException {
        this.a.a(new aa((RequestStreamingAdResponse) this.b.a(a(httpResponse.a))));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.vungle.publisher.ct
    public final void b(HttpTransaction httpTransaction, HttpResponse httpResponse) {
        this.a.a(new r());
    }
}

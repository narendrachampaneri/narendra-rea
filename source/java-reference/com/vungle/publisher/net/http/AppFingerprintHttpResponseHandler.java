package com.vungle.publisher.net.http;

import com.vungle.log.Logger;
import com.vungle.publisher.env.SdkConfig;
import java.io.IOException;
import javax.inject.Inject;
import javax.inject.Singleton;
import org.json.JSONException;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
@Singleton
public class AppFingerprintHttpResponseHandler extends FireAndForgetHttpResponseHandler {

    @Inject
    SdkConfig a;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.vungle.publisher.ct
    public final void a(HttpTransaction httpTransaction, HttpResponse httpResponse) throws JSONException, IOException {
        super.a(httpTransaction, httpResponse);
        long jCurrentTimeMillis = System.currentTimeMillis();
        Logger.d(Logger.DATA_TAG, "sent fingerprint at time: " + jCurrentTimeMillis);
        this.a.a(jCurrentTimeMillis);
    }
}

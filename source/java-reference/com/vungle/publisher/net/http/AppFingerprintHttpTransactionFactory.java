package com.vungle.publisher.net.http;

import com.vungle.publisher.device.data.AppFingerprint;
import javax.inject.Inject;
import javax.inject.Singleton;
import org.json.JSONException;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
@Singleton
public class AppFingerprintHttpTransactionFactory extends HttpTransaction.Factory {

    @Inject
    AppFingerprintHttpRequest.Factory a;

    @Inject
    AppFingerprintHttpResponseHandler b;

    public final HttpTransaction a(AppFingerprint appFingerprint) throws JSONException {
        return super.a(this.a.a(appFingerprint), this.b);
    }
}

package com.vungle.publisher.protocol;

import com.vungle.publisher.net.http.FireAndForgetHttpResponseHandler;
import com.vungle.publisher.net.http.HttpTransaction;
import javax.inject.Inject;
import javax.inject.Singleton;
import org.json.JSONException;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
@Singleton
public class SessionEndHttpTransactionFactory extends HttpTransaction.Factory {

    @Inject
    SessionEndHttpRequest.Factory a;

    @Inject
    FireAndForgetHttpResponseHandler b;

    public final HttpTransaction a(long j, long j2) throws JSONException {
        return super.a(this.a.a(j, j2), this.b);
    }
}

package com.vungle.publisher.protocol;

import com.vungle.publisher.env.SdkState;
import com.vungle.publisher.net.http.FireAndForgetHttpResponseHandler;
import com.vungle.publisher.net.http.HttpResponse;
import com.vungle.publisher.net.http.HttpTransaction;
import java.io.IOException;
import javax.inject.Inject;
import javax.inject.Singleton;
import org.json.JSONException;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
@Singleton
public class TrackInstallHttpResponseHandler extends FireAndForgetHttpResponseHandler {

    @Inject
    SdkState a;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.vungle.publisher.ct
    public final void a(HttpTransaction httpTransaction, HttpResponse httpResponse) throws JSONException, IOException {
        super.a(httpTransaction, httpResponse);
        this.a.n.edit().putBoolean("IsVgAppInstalled", true).apply();
    }
}

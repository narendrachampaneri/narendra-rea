package com.vungle.publisher.protocol;

import com.vungle.publisher.cx;
import com.vungle.publisher.net.http.HttpResponse;
import com.vungle.publisher.net.http.HttpTransaction;
import com.vungle.publisher.protocol.message.ReportLocalAd;
import java.io.IOException;
import javax.inject.Inject;
import javax.inject.Singleton;
import org.json.JSONException;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
@Singleton
class ReportLocalAdHttpResponseHandler extends cx {

    @Inject
    EventTrackingHttpLogEntryDeleteDelegate b;

    ReportLocalAdHttpResponseHandler() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.vungle.publisher.cx, com.vungle.publisher.ct
    public final void a(HttpTransaction httpTransaction, HttpResponse httpResponse) throws JSONException, IOException {
        super.a(httpTransaction, httpResponse);
        this.b.a(((ReportLocalAd) ((ReportLocalAdHttpRequest) httpTransaction.a).g).d().g);
    }
}

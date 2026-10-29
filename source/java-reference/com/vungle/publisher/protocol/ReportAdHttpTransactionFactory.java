package com.vungle.publisher.protocol;

import com.vungle.publisher.db.model.LocalAdReport;
import com.vungle.publisher.db.model.StreamingAdReport;
import com.vungle.publisher.net.http.HttpTransaction;
import javax.inject.Inject;
import javax.inject.Singleton;
import org.json.JSONException;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
@Singleton
public class ReportAdHttpTransactionFactory extends HttpTransaction.Factory {

    @Inject
    ReportLocalAdHttpRequest.Factory a;

    @Inject
    ReportLocalAdHttpResponseHandler b;

    @Inject
    ReportStreamingAdHttpRequest.Factory d;

    @Inject
    ReportStreamingAdHttpResponseHandler e;

    public final HttpTransaction a(LocalAdReport localAdReport) throws JSONException {
        return super.a(this.a.a(localAdReport), this.b);
    }

    public final HttpTransaction a(StreamingAdReport streamingAdReport) throws JSONException {
        return super.a(this.d.a(streamingAdReport), this.e);
    }
}

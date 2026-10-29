package com.vungle.publisher;

import com.vungle.log.Logger;
import com.vungle.publisher.net.http.HttpResponse;
import com.vungle.publisher.net.http.HttpTransaction;
import com.vungle.publisher.net.http.InfiniteRetryHttpResponseHandler;
import com.vungle.publisher.protocol.ReportAdHttpRequest;
import com.vungle.publisher.reporting.AdReportManager;
import dagger.Lazy;
import java.io.IOException;
import javax.inject.Inject;
import org.json.JSONException;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public abstract class cx extends InfiniteRetryHttpResponseHandler {

    @Inject
    public Lazy<AdReportManager> a;

    @Override // com.vungle.publisher.ct
    public void a(HttpTransaction httpTransaction, HttpResponse httpResponse) throws JSONException, IOException {
        ReportAdHttpRequest reportAdHttpRequest = (ReportAdHttpRequest) httpTransaction.a;
        AdReportManager adReportManager = this.a.get();
        Integer num = reportAdHttpRequest.f;
        Logger.i(Logger.REPORT_TAG, "deleting report " + num);
        adReportManager.c.a((Object[]) new Integer[]{num});
        reportAdHttpRequest.e.q();
    }
}

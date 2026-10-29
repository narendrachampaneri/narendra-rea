package com.vungle.publisher.net.http;

import com.vungle.publisher.db.model.LoggedException;
import java.util.List;
import javax.inject.Inject;
import javax.inject.Singleton;
import org.json.JSONException;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
@Singleton
public class ReportExceptionsHttpTransactionFactory extends HttpTransaction.Factory {

    @Inject
    ReportExceptionsHttpRequest.Factory a;

    @Inject
    ReportExceptionsHttpResponseHandler.Factory b;

    @Inject
    public ReportExceptionsHttpTransactionFactory() {
    }

    public final HttpTransaction a(List<LoggedException> list) throws JSONException {
        HttpRequest httpRequestA = this.a.a(list);
        ReportExceptionsHttpResponseHandler reportExceptionsHttpResponseHandler = this.b.a.get();
        reportExceptionsHttpResponseHandler.a = list;
        return super.a(httpRequestA, reportExceptionsHttpResponseHandler);
    }
}

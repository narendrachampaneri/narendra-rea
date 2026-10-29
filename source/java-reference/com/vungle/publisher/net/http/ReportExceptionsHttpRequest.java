package com.vungle.publisher.net.http;

import com.vungle.publisher.db.model.LoggedException;
import com.vungle.publisher.protocol.message.ReportExceptions;
import java.util.List;
import javax.inject.Inject;
import javax.inject.Provider;
import javax.inject.Singleton;
import org.json.JSONException;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public class ReportExceptionsHttpRequest extends IngestHttpRequest {
    @Inject
    public ReportExceptionsHttpRequest() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.vungle.publisher.net.http.HttpRequest
    public final HttpRequest.b a() {
        return HttpRequest.b.reportExceptions;
    }

    /* JADX INFO: compiled from: vungle */
    @Singleton
    public static class Factory extends IngestHttpRequest.Factory<ReportExceptionsHttpRequest> {

        @Inject
        ReportExceptions.Factory a;

        @Inject
        Provider<ReportExceptionsHttpRequest> d;

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.net.http.HttpRequest.Factory
        public final /* synthetic */ HttpRequest b() {
            return this.d.get();
        }

        public final ReportExceptionsHttpRequest a(List<LoggedException> list) throws JSONException {
            ReportExceptionsHttpRequest reportExceptionsHttpRequestD = c();
            ReportExceptions reportExceptions = this.a.a.get();
            reportExceptions.a = list;
            reportExceptionsHttpRequestD.d = reportExceptions.c();
            return reportExceptionsHttpRequestD;
        }

        @Override // com.vungle.publisher.net.http.IngestHttpRequest.Factory
        protected final String a() {
            return "api/v1/sdkErrors";
        }
    }
}

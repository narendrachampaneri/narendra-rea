package com.vungle.publisher.net.http;

import com.vungle.publisher.db.model.LoggedException;
import java.io.IOException;
import java.util.List;
import javax.inject.Inject;
import javax.inject.Provider;
import javax.inject.Singleton;
import org.json.JSONException;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public class ReportExceptionsHttpResponseHandler extends FireAndForgetHttpResponseHandler {
    List<LoggedException> a;

    @Inject
    LoggedException.Factory b;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.vungle.publisher.ct
    public final void a(HttpTransaction httpTransaction, HttpResponse httpResponse) throws JSONException, IOException {
        super.a(httpTransaction, httpResponse);
        this.b.a((List) this.a);
    }

    /* JADX INFO: compiled from: vungle */
    @Singleton
    public static class Factory {

        @Inject
        Provider<ReportExceptionsHttpResponseHandler> a;

        @Inject
        public Factory() {
        }
    }
}

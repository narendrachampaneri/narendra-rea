package com.vungle.publisher.net.http;

import com.newrelic.agent.android.instrumentation.HttpInstrumentation;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import javax.inject.Inject;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
@Singleton
public class HttpURLConnectionFactory {
    @Inject
    public HttpURLConnectionFactory() {
    }

    public static HttpURLConnection a(String str) throws IOException {
        return (HttpURLConnection) HttpInstrumentation.openConnection(new URL(str).openConnection());
    }
}

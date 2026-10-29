package com.chartboost.sdk.impl;

import com.newrelic.agent.android.instrumentation.HttpInstrumentation;
import java.io.IOException;
import java.net.URI;
import java.util.Map;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpDelete;
import org.apache.http.client.methods.HttpEntityEnclosingRequestBase;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpHead;
import org.apache.http.client.methods.HttpOptions;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpPut;
import org.apache.http.client.methods.HttpTrace;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.entity.ByteArrayEntity;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;

/* JADX INFO: loaded from: classes.dex */
public class x implements z {
    protected final HttpClient a;

    public x(HttpClient httpClient) {
        this.a = httpClient;
    }

    private static void a(HttpUriRequest httpUriRequest, Map<String, String> map) {
        for (String str : map.keySet()) {
            httpUriRequest.setHeader(str, map.get(str));
        }
    }

    @Override // com.chartboost.sdk.impl.z
    public HttpResponse a(l<?> lVar, Map<String, String> map) throws com.chartboost.sdk.impl.a, IOException {
        HttpUriRequest httpUriRequestB = b(lVar, map);
        a(httpUriRequestB, map);
        a(httpUriRequestB, lVar.i());
        a(httpUriRequestB);
        HttpParams params = httpUriRequestB.getParams();
        int iT = lVar.t();
        HttpConnectionParams.setConnectionTimeout(params, 5000);
        HttpConnectionParams.setSoTimeout(params, iT);
        HttpClient httpClient = this.a;
        return !(httpClient instanceof HttpClient) ? httpClient.execute(httpUriRequestB) : HttpInstrumentation.execute(httpClient, httpUriRequestB);
    }

    static HttpUriRequest b(l<?> lVar, Map<String, String> map) throws com.chartboost.sdk.impl.a {
        switch (lVar.a()) {
            case -1:
                byte[] bArrM = lVar.m();
                if (bArrM != null) {
                    HttpPost httpPost = new HttpPost(lVar.d());
                    httpPost.addHeader("Content-Type", lVar.l());
                    httpPost.setEntity(new ByteArrayEntity(bArrM));
                    return httpPost;
                }
                return new HttpGet(lVar.d());
            case 0:
                return new HttpGet(lVar.d());
            case 1:
                HttpPost httpPost2 = new HttpPost(lVar.d());
                httpPost2.addHeader("Content-Type", lVar.p());
                a(httpPost2, lVar);
                return httpPost2;
            case 2:
                HttpPut httpPut = new HttpPut(lVar.d());
                httpPut.addHeader("Content-Type", lVar.p());
                a(httpPut, lVar);
                return httpPut;
            case 3:
                return new HttpDelete(lVar.d());
            case 4:
                return new HttpHead(lVar.d());
            case 5:
                return new HttpOptions(lVar.d());
            case 6:
                return new HttpTrace(lVar.d());
            case 7:
                a aVar = new a(lVar.d());
                aVar.addHeader("Content-Type", lVar.p());
                a(aVar, lVar);
                return aVar;
            default:
                throw new IllegalStateException("Unknown request method.");
        }
    }

    private static void a(HttpEntityEnclosingRequestBase httpEntityEnclosingRequestBase, l<?> lVar) throws com.chartboost.sdk.impl.a {
        byte[] bArrQ = lVar.q();
        if (bArrQ != null) {
            httpEntityEnclosingRequestBase.setEntity(new ByteArrayEntity(bArrQ));
        }
    }

    protected void a(HttpUriRequest httpUriRequest) throws IOException {
    }

    public static final class a extends HttpEntityEnclosingRequestBase {
        public a() {
        }

        public a(String str) {
            setURI(URI.create(str));
        }

        @Override // org.apache.http.client.methods.HttpRequestBase, org.apache.http.client.methods.HttpUriRequest
        public String getMethod() {
            return "PATCH";
        }
    }
}

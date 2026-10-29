package com.inmobi.commons.network;

import android.net.http.Headers;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import com.inmobi.commons.network.abstraction.INetworkListener;
import com.newrelic.agent.android.instrumentation.HttpInstrumentation;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.ProtocolException;
import java.net.URL;

/* JADX INFO: loaded from: classes.dex */
public class NetworkRequestTask implements Runnable {
    private Request a;
    private INetworkListener b;
    private HttpURLConnection c;

    NetworkRequestTask(Request request, INetworkListener iNetworkListener) {
        this.a = request;
        this.b = iNetworkListener;
    }

    @Override // java.lang.Runnable
    public void run() throws Throwable {
        try {
            String queryParams = this.a.getQueryParams();
            String postBody = this.a.getPostBody();
            String url = this.a.getUrl();
            if (queryParams != null && !"".equals(queryParams.trim())) {
                url = url + "?" + queryParams;
            }
            Log.internal(InternalSDKUtil.LOGGING_TAG, "URL:" + url);
            this.c = a(url);
            if (this.a.getRequestMethod() != Request.Method.GET && (postBody == null || "".equals(postBody))) {
                this.b.onRequestFailed(this.a, new Response(ErrorCode.INTERNAL_ERROR));
                return;
            }
            if (this.a.getRequestMethod() != Request.Method.GET) {
                Log.debug(InternalSDKUtil.LOGGING_TAG, "Post body:" + postBody);
                b(postBody);
            }
            a();
        } catch (Exception e) {
            Response response = new Response(ErrorCode.NETWORK_ERROR);
            if (this.b != null) {
                this.b.onRequestFailed(this.a, response);
            }
            Log.debug(InternalSDKUtil.LOGGING_TAG, "Failed to make network request", e);
        }
    }

    private HttpURLConnection a(String str) throws IOException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) HttpInstrumentation.openConnection(new URL(str).openConnection());
        a(httpURLConnection);
        return httpURLConnection;
    }

    private void a(HttpURLConnection httpURLConnection) throws ProtocolException {
        httpURLConnection.setConnectTimeout(this.a.getTimeout());
        httpURLConnection.setReadTimeout(this.a.getTimeout());
        for (String str : this.a.getHeaders().keySet()) {
            httpURLConnection.setRequestProperty(str, this.a.getHeaders().get(str));
        }
        httpURLConnection.setUseCaches(false);
        Request.Method requestMethod = this.a.getRequestMethod();
        if (requestMethod != Request.Method.GET) {
            httpURLConnection.setDoOutput(true);
            httpURLConnection.setDoInput(true);
        }
        httpURLConnection.setRequestMethod(requestMethod.toString());
        httpURLConnection.setRequestProperty(Headers.CONTENT_TYPE, "application/x-www-form-urlencoded");
    }

    private void b(String str) throws Throwable {
        BufferedWriter bufferedWriter;
        this.c.setRequestProperty("Content-Length", Integer.toString(str.length()));
        try {
            bufferedWriter = new BufferedWriter(new OutputStreamWriter(this.c.getOutputStream()));
            try {
                bufferedWriter.write(str);
                a(bufferedWriter);
            } catch (Throwable th) {
                th = th;
                a(bufferedWriter);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            bufferedWriter = null;
        }
    }

    private void a() throws Throwable {
        BufferedReader bufferedReader;
        BufferedReader bufferedReader2 = null;
        try {
            Log.debug(InternalSDKUtil.LOGGING_TAG, "Http Status Code: " + this.c.getResponseCode());
            int responseCode = this.c.getResponseCode();
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Status Code: " + responseCode);
            try {
                if (responseCode == 200) {
                    bufferedReader = new BufferedReader(new InputStreamReader(this.c.getInputStream(), "UTF-8"));
                    try {
                        StringBuilder sb = new StringBuilder();
                        while (true) {
                            String line = bufferedReader.readLine();
                            if (line == null) {
                                break;
                            } else {
                                sb.append(line).append("\n");
                            }
                        }
                        String string = sb.toString();
                        Log.debug(InternalSDKUtil.LOGGING_TAG, "Response: " + string);
                        Response response = new Response(string, this.c.getResponseCode(), this.c.getHeaderFields());
                        if (this.b != null) {
                            this.b.onRequestSucceded(this.a, response);
                        }
                        bufferedReader2 = bufferedReader;
                    } catch (Throwable th) {
                        th = th;
                        this.c.disconnect();
                        a(bufferedReader);
                        throw th;
                    }
                } else {
                    Response response2 = new Response(null, this.c.getResponseCode(), this.c.getHeaderFields());
                    if (this.b != null) {
                        this.b.onRequestFailed(this.a, response2);
                    }
                }
                this.c.disconnect();
                a(bufferedReader2);
            } catch (Throwable th2) {
                th = th2;
                bufferedReader = bufferedReader2;
            }
        } catch (Exception e) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Failed to retrieve response", e);
            Response response3 = new Response(ErrorCode.CONNECTION_ERROR);
            if (this.b != null) {
                this.b.onRequestFailed(this.a, response3);
            }
        } catch (OutOfMemoryError e2) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Out of memory error received while retieving network response", e2);
            Response response4 = new Response(ErrorCode.INTERNAL_ERROR);
            if (this.b != null) {
                this.b.onRequestFailed(this.a, response4);
            }
        }
    }

    private void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e) {
                Log.debug(InternalSDKUtil.LOGGING_TAG, "Exception closing resource: " + closeable, e);
            }
        }
    }
}

package com.newrelic.agent.android.instrumentation.okhttp2;

import com.newrelic.agent.android.Agent;
import com.newrelic.agent.android.instrumentation.TransactionState;
import com.newrelic.agent.android.instrumentation.TransactionStateUtil;
import com.newrelic.agent.android.logging.AgentLog;
import com.newrelic.agent.android.logging.AgentLogManager;
import com.squareup.okhttp.CacheControl;
import com.squareup.okhttp.Headers;
import com.squareup.okhttp.Request;
import com.squareup.okhttp.RequestBody;
import java.net.URL;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class RequestBuilderExtension extends Request.Builder {
    private static final AgentLog log = AgentLogManager.getAgentLog();
    private Request.Builder impl;
    private TransactionState transactionState;

    public RequestBuilderExtension(Request.Builder impl) {
        this.impl = impl;
        setCrossProcessHeader();
    }

    public Request.Builder url(String url) {
        return this.impl.url(url);
    }

    public Request.Builder url(URL url) {
        return this.impl.url(url);
    }

    public Request.Builder header(String name, String value) {
        return this.impl.header(name, value);
    }

    public Request.Builder addHeader(String name, String value) {
        return this.impl.addHeader(name, value);
    }

    public Request.Builder removeHeader(String name) {
        return this.impl.removeHeader(name);
    }

    public Request.Builder headers(Headers headers) {
        return this.impl.headers(headers);
    }

    public Request.Builder cacheControl(CacheControl cacheControl) {
        return this.impl.cacheControl(cacheControl);
    }

    public Request.Builder get() {
        return this.impl.get();
    }

    public Request.Builder head() {
        return this.impl.head();
    }

    public Request.Builder post(RequestBody body) {
        return this.impl.post(body);
    }

    public Request.Builder delete() {
        return this.impl.delete();
    }

    public Request.Builder put(RequestBody body) {
        return this.impl.put(body);
    }

    public Request.Builder patch(RequestBody body) {
        return this.impl.patch(body);
    }

    public Request.Builder method(String method, RequestBody body) {
        return this.impl.method(method, body);
    }

    public Request.Builder tag(Object tag) {
        return this.impl.tag(tag);
    }

    public Request build() {
        return this.impl.build();
    }

    private void setCrossProcessHeader() {
        String crossProcessId = Agent.getCrossProcessId();
        if (crossProcessId != null) {
            this.impl.addHeader(TransactionStateUtil.CROSS_PROCESS_ID_HEADER.toLowerCase(Locale.ENGLISH), crossProcessId);
        }
    }
}

package com.newrelic.agent.android.instrumentation.okhttp2;

import com.newrelic.agent.android.logging.AgentLog;
import com.newrelic.agent.android.logging.AgentLogManager;
import com.squareup.okhttp.Handshake;
import com.squareup.okhttp.Headers;
import com.squareup.okhttp.Protocol;
import com.squareup.okhttp.Request;
import com.squareup.okhttp.Response;
import com.squareup.okhttp.ResponseBody;
import java.io.IOException;
import okio.Buffer;
import okio.BufferedSource;

/* JADX INFO: loaded from: classes.dex */
public class ResponseBuilderExtension extends Response.Builder {
    private static final AgentLog log = AgentLogManager.getAgentLog();
    private Response.Builder impl;

    public ResponseBuilderExtension(Response.Builder impl) {
        this.impl = impl;
    }

    public Response.Builder request(Request request) {
        return this.impl.request(request);
    }

    public Response.Builder protocol(Protocol protocol) {
        return this.impl.protocol(protocol);
    }

    public Response.Builder code(int code) {
        return this.impl.code(code);
    }

    public Response.Builder message(String message) {
        return this.impl.message(message);
    }

    public Response.Builder handshake(Handshake handshake) {
        return this.impl.handshake(handshake);
    }

    public Response.Builder header(String name, String value) {
        return this.impl.header(name, value);
    }

    public Response.Builder addHeader(String name, String value) {
        return this.impl.addHeader(name, value);
    }

    public Response.Builder removeHeader(String name) {
        return this.impl.removeHeader(name);
    }

    public Response.Builder headers(Headers headers) {
        return this.impl.headers(headers);
    }

    public Response.Builder body(ResponseBody body) {
        if (body != null) {
            try {
                BufferedSource source = body.source();
                if (source != null) {
                    Buffer buffer = new Buffer();
                    source.readAll(buffer);
                    return this.impl.body(new PrebufferedResponseBody(body, buffer));
                }
            } catch (IOException e) {
                log.error("IOException reading from source: ", e);
            } catch (IllegalStateException e2) {
            }
        }
        return this.impl.body(body);
    }

    public Response.Builder networkResponse(Response networkResponse) {
        return this.impl.networkResponse(networkResponse);
    }

    public Response.Builder cacheResponse(Response cacheResponse) {
        return this.impl.cacheResponse(cacheResponse);
    }

    public Response.Builder priorResponse(Response priorResponse) {
        return this.impl.priorResponse(priorResponse);
    }

    public Response build() {
        return this.impl.build();
    }
}

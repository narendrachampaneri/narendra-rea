package com.amazon.insights.core.http;

import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public interface HttpClient {

    public enum HttpMethod {
        GET,
        POST
    }

    public interface Interceptor {
        void after(Response response);

        void before(Request request);
    }

    public interface Request {
        Request addHeader(String str, String str2);

        Request addParam(String str, String str2);

        Map<String, String> getHeaders();

        HttpMethod getMethod();

        Map<String, String> getParams();

        String getPostBody();

        byte[] getPostBodyBytes();

        String getUrl();

        Request removeHeader(String str);

        Request setMethod(HttpMethod httpMethod);

        Request setPostBody(String str);

        Request setPostBody(byte[] bArr);

        Request setUrl(String str);

        String toString();
    }

    public interface Response {
        Response addHeader(String str, String str2);

        int getCode();

        String getHeader(String str);

        Map<String, String> getHeaders();

        String getMessage();

        Request getOriginatingRequest();

        long getRequestSize();

        String getResponse();

        long getResponseSize();

        Response setCode(int i);

        Response setMessage(String str);

        Response setOriginatingRequest(Request request);

        Response setRequestSize(long j);

        Response setResponse(String str);

        Response setResponseSize(long j);

        String toString();
    }

    void addInterceptor(Interceptor interceptor);

    Response execute(Request request, Integer num);

    Request newRequest();
}

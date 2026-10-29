package com.amazon.insights.core.http;

import com.amazon.insights.core.log.Logger;
import com.amazon.insights.core.util.DateUtil;
import com.amazon.insights.core.util.StringUtil;
import com.newrelic.agent.android.instrumentation.HttpInstrumentation;
import io.fabric.sdk.android.services.network.HttpRequest;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.text.DateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.zip.GZIPInputStream;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.HttpStatus;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.entity.ByteArrayEntity;

/* JADX INFO: loaded from: classes2.dex */
public class DefaultHttpClient implements HttpClient {
    public static final String DATE_HEADER = "Date";
    public static final int IO_EXCEPTION_RESPONSE_CODE = -1000;
    public static final String REQUESTATTEMPTS_HEADER = "x-amzn-RequestAttempts";
    public static final String REQUESTTIME_HEADER = "x-amzn-RequestTime";
    public static final String SERVERINFO_HEADER = "x-amzn-ServerInfo";
    private static final String TAG = "DefaultHttpClient";
    private static final String TIME_FORMAT = "yyyy-MM-dd'T'HH:mm:ssZ";
    private static final Logger logger = Logger.getLogger(HttpClient.class);
    private List<HttpClient.Interceptor> interceptors = new LinkedList();
    private DateFormat df = DateUtil.createLocaleIndependentDateFormatter(TIME_FORMAT);

    public static class DefaultRequest implements HttpClient.Request {
        protected byte[] postBody;
        protected String url;
        protected Map<String, String> params = new HashMap();
        protected Map<String, String> headers = new HashMap();
        protected HttpClient.HttpMethod method = HttpClient.HttpMethod.GET;

        @Override // com.amazon.insights.core.http.HttpClient.Request
        public HttpClient.Request addParam(String name, String value) {
            this.params.put(name, value);
            return this;
        }

        @Override // com.amazon.insights.core.http.HttpClient.Request
        public HttpClient.Request addHeader(String name, String value) {
            this.headers.put(name, value);
            return this;
        }

        @Override // com.amazon.insights.core.http.HttpClient.Request
        public HttpClient.Request removeHeader(String name) {
            Iterator<Map.Entry<String, String>> itr = this.headers.entrySet().iterator();
            while (itr.hasNext()) {
                Map.Entry<String, String> entry = itr.next();
                if (entry.getKey().equals(name)) {
                    itr.remove();
                    break;
                }
            }
            return this;
        }

        @Override // com.amazon.insights.core.http.HttpClient.Request
        public HttpClient.Request setPostBody(String postBody) {
            try {
                this.postBody = postBody.getBytes("UTF-8");
            } catch (UnsupportedEncodingException e) {
                this.postBody = null;
            }
            return this;
        }

        @Override // com.amazon.insights.core.http.HttpClient.Request
        public HttpClient.Request setMethod(HttpClient.HttpMethod method) {
            this.method = method;
            return this;
        }

        @Override // com.amazon.insights.core.http.HttpClient.Request
        public HttpClient.Request setUrl(String url) {
            this.url = url;
            return this;
        }

        @Override // com.amazon.insights.core.http.HttpClient.Request
        public Map<String, String> getParams() {
            return this.params;
        }

        @Override // com.amazon.insights.core.http.HttpClient.Request
        public Map<String, String> getHeaders() {
            return this.headers;
        }

        @Override // com.amazon.insights.core.http.HttpClient.Request
        public String getPostBody() {
            try {
                if (this.postBody != null) {
                    return new String(this.postBody, "UTF-8");
                }
                return null;
            } catch (UnsupportedEncodingException e) {
                return null;
            }
        }

        @Override // com.amazon.insights.core.http.HttpClient.Request
        public HttpClient.HttpMethod getMethod() {
            return this.method;
        }

        @Override // com.amazon.insights.core.http.HttpClient.Request
        public String getUrl() {
            return this.url;
        }

        @Override // com.amazon.insights.core.http.HttpClient.Request
        public String toString() {
            StringBuffer sb = new StringBuffer();
            sb.append("{\n\t\"method\" : \"" + this.method + "\",\n");
            sb.append("\t\"url\" : \"" + this.url + "\",\n");
            sb.append("\t\"postBody\" : \"" + getPostBody() + "\",\n");
            sb.append("\t\"params\" : {\n");
            for (Map.Entry<String, String> entry : this.params.entrySet()) {
                sb.append("\t\t\"" + entry.getKey() + "\" : \"" + entry.getValue() + "\",\n");
            }
            sb.append("\t},\n\t\"headers\" : {\n");
            for (Map.Entry<String, String> entry2 : this.headers.entrySet()) {
                sb.append("\t\t\"" + entry2.getKey() + "\" : \"" + entry2.getValue() + "\",\n");
            }
            sb.append("\t}\n}\n");
            return sb.toString();
        }

        @Override // com.amazon.insights.core.http.HttpClient.Request
        public HttpClient.Request setPostBody(byte[] postBody) {
            if (postBody != null) {
                this.postBody = (byte[]) postBody.clone();
            } else {
                this.postBody = null;
            }
            return this;
        }

        @Override // com.amazon.insights.core.http.HttpClient.Request
        public byte[] getPostBodyBytes() {
            if (this.postBody != null) {
                return (byte[]) this.postBody.clone();
            }
            return null;
        }
    }

    public static class DefaultResponse implements HttpClient.Response {
        protected int code;
        protected String message;
        protected HttpClient.Request originatingRequest;
        protected String response;
        protected long requestSize = 0;
        protected long responseSize = 0;
        protected Map<String, String> headersMap = new HashMap();

        static HttpClient.Response createResponse() {
            return new DefaultResponse();
        }

        @Override // com.amazon.insights.core.http.HttpClient.Response
        public HttpClient.Response addHeader(String name, String value) {
            this.headersMap.put(name, value);
            return this;
        }

        @Override // com.amazon.insights.core.http.HttpClient.Response
        public HttpClient.Response setCode(int code) {
            this.code = code;
            return this;
        }

        @Override // com.amazon.insights.core.http.HttpClient.Response
        public HttpClient.Response setMessage(String message) {
            this.message = message;
            return this;
        }

        @Override // com.amazon.insights.core.http.HttpClient.Response
        public HttpClient.Response setResponse(String response) {
            this.response = response;
            return this;
        }

        @Override // com.amazon.insights.core.http.HttpClient.Response
        public HttpClient.Response setOriginatingRequest(HttpClient.Request originatingRequest) {
            this.originatingRequest = originatingRequest;
            return this;
        }

        @Override // com.amazon.insights.core.http.HttpClient.Response
        public HttpClient.Request getOriginatingRequest() {
            return this.originatingRequest;
        }

        @Override // com.amazon.insights.core.http.HttpClient.Response
        public HttpClient.Response setRequestSize(long requestSize) {
            this.requestSize = requestSize;
            return this;
        }

        @Override // com.amazon.insights.core.http.HttpClient.Response
        public long getRequestSize() {
            return this.requestSize;
        }

        @Override // com.amazon.insights.core.http.HttpClient.Response
        public HttpClient.Response setResponseSize(long responseSize) {
            this.responseSize = responseSize;
            return this;
        }

        @Override // com.amazon.insights.core.http.HttpClient.Response
        public long getResponseSize() {
            return this.responseSize;
        }

        @Override // com.amazon.insights.core.http.HttpClient.Response
        public Map<String, String> getHeaders() {
            return this.headersMap;
        }

        @Override // com.amazon.insights.core.http.HttpClient.Response
        public String getHeader(String name) {
            if (StringUtil.isNullOrEmpty(name)) {
                return null;
            }
            for (Map.Entry<String, String> entry : this.headersMap.entrySet()) {
                if (entry.getKey().equalsIgnoreCase(name)) {
                    String value = entry.getValue();
                    return value;
                }
            }
            return null;
        }

        @Override // com.amazon.insights.core.http.HttpClient.Response
        public int getCode() {
            return this.code;
        }

        @Override // com.amazon.insights.core.http.HttpClient.Response
        public String getMessage() {
            return this.message;
        }

        @Override // com.amazon.insights.core.http.HttpClient.Response
        public String getResponse() {
            return this.response;
        }

        @Override // com.amazon.insights.core.http.HttpClient.Response
        public String toString() {
            StringBuffer sb = new StringBuffer();
            sb.append("{\n\t\"code\" : \"" + this.code + "\",\n\t\"message\" : \"" + this.message + "\",\n\t\"response\" : \"" + this.response + "\",\n\t\"headers\" : {\n");
            for (Map.Entry<String, String> entry : this.headersMap.entrySet()) {
                sb.append("\t\t\"" + entry.getKey() + "\" : \"" + entry.getValue() + "\",\n");
            }
            sb.append("\t}\n}\n");
            return sb.toString();
        }
    }

    @Override // com.amazon.insights.core.http.HttpClient
    public HttpClient.Request newRequest() {
        return new DefaultRequest();
    }

    @Override // com.amazon.insights.core.http.HttpClient
    public void addInterceptor(HttpClient.Interceptor interceptor) {
        if (interceptor != null) {
            this.interceptors.add(interceptor);
        }
    }

    @Override // com.amazon.insights.core.http.HttpClient
    public HttpClient.Response execute(HttpClient.Request request, Integer retries) {
        if (retries == null) {
            retries = 1;
        }
        request.addHeader("Date", getCurrentDateTime());
        for (HttpClient.Interceptor i : this.interceptors) {
            i.before(request);
        }
        HttpUriRequest httpRequest = buildHttpRequest(request);
        HttpClient.Response response = executeHttpRequest(httpRequest, retries.intValue());
        if (response != null) {
            response.setOriginatingRequest(request);
        }
        for (HttpClient.Interceptor i2 : this.interceptors) {
            i2.after(response);
        }
        return response;
    }

    HttpUriRequest buildHttpRequest(HttpClient.Request request) {
        HttpUriRequest httpRequest = null;
        switch (request.getMethod()) {
            case GET:
                StringBuffer query = new StringBuffer();
                if (!request.getParams().isEmpty()) {
                    query.append("?");
                    for (Map.Entry<String, String> entry : request.getParams().entrySet()) {
                        String paramString = entry.getKey() + "=" + URLEncoder.encode(entry.getValue());
                        if (query.length() > 1) {
                            query.append("&");
                            query.append(paramString);
                        } else {
                            query.append(paramString);
                        }
                    }
                }
                httpRequest = new HttpGet(request.getUrl() + query.toString());
                break;
            case POST:
                httpRequest = new HttpPost(request.getUrl());
                if (request.getPostBodyBytes() != null && request.getPostBodyBytes().length > 0) {
                    ByteArrayEntity baEntity = new ByteArrayEntity(request.getPostBodyBytes());
                    ((HttpPost) httpRequest).setEntity(baEntity);
                }
                break;
        }
        if (httpRequest != null) {
            for (Map.Entry<String, String> entry2 : request.getHeaders().entrySet()) {
                httpRequest.addHeader(entry2.getKey(), entry2.getValue());
            }
        }
        return httpRequest;
    }

    private String getCurrentDateTime() {
        return this.df.format(new Date());
    }

    long calculateRequestSize(HttpUriRequest request) {
        if (request != null) {
            try {
                long size = 0 + ((long) request.getRequestLine().toString().length());
                Header[] arr$ = request.getAllHeaders();
                for (Header header : arr$) {
                    size = size + ((long) header.getName().length()) + ((long) header.getValue().length()) + 2;
                }
                if (request.getMethod().equalsIgnoreCase("post")) {
                    return size + ((HttpPost) request).getEntity().getContentLength();
                }
                return size;
            } catch (Exception e) {
                return 0L;
            }
        }
        return 0L;
    }

    long calculateResponseSize(HttpResponse response) {
        if (response != null) {
            try {
                long size = 0 + ((long) response.getStatusLine().toString().length());
                Header[] arr$ = response.getAllHeaders();
                for (Header header : arr$) {
                    size = size + ((long) header.getName().length()) + ((long) header.getValue().length()) + 2;
                }
                return size;
            } catch (Exception e) {
                return 0L;
            }
        }
        return 0L;
    }

    /* JADX INFO: Removed unreachable split cross block B:87:0x0022 */
    private HttpClient.Response executeHttpRequest(HttpUriRequest request, int retries) {
        HttpClient.Response response = DefaultResponse.createResponse();
        org.apache.http.client.HttpClient httpClient = HttpUtil.getHttpClient();
        HttpResponse httpResponse = null;
        long startTime = System.currentTimeMillis();
        int totalAttempts = retries >= 0 ? retries + 1 : 1;
        int attempts = 1;
        while (attempts <= totalAttempts) {
            try {
                if (!(httpClient instanceof org.apache.http.client.HttpClient)) {
                    httpResponse = httpClient.execute(request);
                    break;
                }
                httpResponse = HttpInstrumentation.execute(httpClient, request);
                break;
            } catch (ClientProtocolException e) {
                response.setCode(HttpStatus.SC_BAD_REQUEST).setMessage(String.format("Issue making request to service, %s", e.toString()));
            } catch (IOException e2) {
                attempts++;
                response.setCode(-1000).setMessage(String.format("Unable to communicate with service, %s", e2.toString()));
            }
        }
        long endTime = System.currentTimeMillis();
        response.addHeader("x-amzn-RequestTime", Long.toString(endTime - startTime));
        response.addHeader("x-amzn-RequestAttempts", Integer.toString(attempts));
        if (httpResponse != null) {
            response.setCode(httpResponse.getStatusLine().getStatusCode()).setMessage(httpResponse.getStatusLine().getReasonPhrase()).setRequestSize(calculateRequestSize(request));
            HttpEntity entity = httpResponse.getEntity();
            String body = null;
            if (entity != null) {
                InputStream instream = null;
                try {
                    try {
                        try {
                            Header contentEncoding = httpResponse.getFirstHeader("Content-Encoding");
                            instream = (contentEncoding == null || !contentEncoding.getValue().equalsIgnoreCase(HttpRequest.ENCODING_GZIP)) ? entity.getContent() : new GZIPInputStream(entity.getContent());
                            body = StringUtil.convertStreamToUTF8String(instream);
                            response.setResponseSize(calculateResponseSize(httpResponse) + ((long) body.length()));
                            if (instream != null) {
                                try {
                                    instream.close();
                                } catch (IOException e3) {
                                }
                            }
                        } catch (Throwable th) {
                            if (instream != null) {
                                try {
                                    instream.close();
                                } catch (IOException e4) {
                                }
                            }
                            throw th;
                        }
                    } catch (IOException e5) {
                        response.setCode(500).setMessage(String.format("Issue with response from service, %s", e5.toString()));
                        if (instream != null) {
                            try {
                                instream.close();
                            } catch (IOException e6) {
                            }
                        }
                    }
                } catch (IllegalStateException e7) {
                    body = null;
                    response.setCode(500).setMessage(String.format("Issue recieving response from service, %s", e7.toString()));
                    if (instream != null) {
                        try {
                            instream.close();
                        } catch (IOException e8) {
                        }
                    }
                } catch (Exception e9) {
                    body = null;
                    request.abort();
                    response.setCode(500).setMessage(String.format("Issue with response from service, %s", e9.toString()));
                    if (instream != null) {
                        try {
                            instream.close();
                        } catch (IOException e10) {
                        }
                    }
                }
            }
            if (body != null) {
                response.setResponse(body);
                Header[] headers = httpResponse.getAllHeaders();
                if (headers != null && headers.length > 0) {
                    for (int i = 0; i < headers.length; i++) {
                        response.addHeader(headers[i].getName(), headers[i].getValue());
                    }
                }
            }
        }
        return response;
    }
}

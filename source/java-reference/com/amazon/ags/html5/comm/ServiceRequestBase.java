package com.amazon.ags.html5.comm;

import java.io.UnsupportedEncodingException;
import java.net.URISyntaxException;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;
import org.apache.http.client.methods.HttpRequestBase;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ServiceRequestBase {
    private static final String CHAR_SET = "UTF-8";
    private final boolean authenticationRequired;
    private final String endPoint;
    protected String requestBody;
    private final Map<String, String> headerParams = new HashMap();
    private final Map<String, String> urlParams = new HashMap();

    abstract HttpRequestBase prepareHttpRequestBase() throws URISyntaxException, UnsupportedEncodingException;

    public ServiceRequestBase(String endPoint, boolean authenticationRequired) {
        this.authenticationRequired = authenticationRequired;
        this.endPoint = endPoint;
    }

    public String constructUri() throws UnsupportedEncodingException {
        StringBuilder strB = new StringBuilder(this.endPoint);
        if (strB.charAt(strB.length() - 1) == '/') {
            strB.deleteCharAt(strB.length() - 1);
        }
        boolean first = true;
        for (Map.Entry<String, String> param : getUrlParams().entrySet()) {
            String encodedKey = URLEncoder.encode(param.getKey(), "UTF-8");
            String encodedValue = URLEncoder.encode(param.getValue(), "UTF-8");
            strB.append(first ? "?" : "&").append(encodedKey).append("=").append(encodedValue);
            first = false;
        }
        return strB.toString();
    }

    String getBody() {
        return this.requestBody != null ? this.requestBody : "";
    }

    public void setRequestBody(String requestBody) {
        this.requestBody = requestBody;
    }

    public final void putHeaderParameter(String key, String value) {
        this.headerParams.put(key, value);
    }

    public final void putUrlParameter(String key, String value) {
        this.urlParams.put(key, value);
    }

    public final Map<String, String> getHeaderParams() {
        return this.headerParams;
    }

    public final Map<String, String> getUrlParams() {
        return this.urlParams;
    }

    public final boolean isAuthenticationRequired() {
        return this.authenticationRequired;
    }

    public String getEndpoint() {
        return this.endPoint;
    }
}

package com.inmobi.commons.network;

import com.inmobi.commons.internal.InternalSDKUtil;
import com.newrelic.agent.android.instrumentation.JSONObjectInstrumentation;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class Request {
    protected static HashMap<String, Object> mHeaders;
    private Format a;
    private String c;
    private Method d;
    private final String b = "User-Agent";
    private int e = 0;
    protected HashMap<String, Object> mReqParams = new HashMap<>();

    public enum Format {
        KEY_VAL,
        JSON
    }

    public enum Method {
        GET,
        POST,
        PUT
    }

    public Request(String str, Format format, Method method) {
        this.a = Format.KEY_VAL;
        this.c = null;
        this.d = Method.POST;
        mHeaders = new HashMap<>();
        RequestBuilderUtils.fillIdentityMap(this.mReqParams, null, true);
        mHeaders.put("User-Agent", InternalSDKUtil.getUserAgent());
        this.a = format;
        this.c = str;
        this.d = method;
    }

    private String a() {
        Map<String, String> encodedMap = InternalSDKUtil.getEncodedMap(this.mReqParams);
        switch (this.a) {
            case KEY_VAL:
                return InternalSDKUtil.encodeMapAndconvertToDelimitedString(this.mReqParams, "&");
            case JSON:
                JSONObject jSONObject = new JSONObject(encodedMap);
                return !(jSONObject instanceof JSONObject) ? jSONObject.toString() : JSONObjectInstrumentation.toString(jSONObject);
            default:
                return null;
        }
    }

    protected String getPostBody() {
        if (this.d != Method.GET) {
            return a();
        }
        return null;
    }

    protected String getQueryParams() {
        if (this.d == Method.GET) {
            return a();
        }
        return null;
    }

    protected String getUrl() {
        return this.c;
    }

    protected void setUrl(String str) {
        if ((str != null) & ("".equals(str.trim()) ? false : true)) {
            this.c = str;
        }
    }

    protected Method getRequestMethod() {
        return this.d;
    }

    public int getTimeout() {
        return this.e;
    }

    public void setTimeout(int i) {
        this.e = i;
    }

    public Map<String, String> getHeaders() {
        return InternalSDKUtil.getEncodedMap(mHeaders);
    }

    public void fillAppInfo() {
        RequestBuilderUtils.fillAppInfoMap(this.mReqParams);
    }

    public void fillDemogInfo() {
        RequestBuilderUtils.fillDemogMap(this.mReqParams);
    }

    public void fillDeviceInfo() {
        RequestBuilderUtils.fillDeviceMap(this.mReqParams);
    }

    public void fillLocationInfo() {
        RequestBuilderUtils.fillLocationMap(this.mReqParams);
    }

    public void fillCustomInfo(Map<String, Object> map) {
        if (map != null) {
            this.mReqParams.putAll(map);
        }
    }
}

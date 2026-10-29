package com.newrelic.agent.android.harvest;

import com.newrelic.agent.android.Agent;
import com.newrelic.agent.android.FeatureFlag;
import com.newrelic.agent.android.harvest.type.HarvestableArray;
import com.newrelic.agent.android.harvest.type.HarvestableObject;
import com.newrelic.agent.android.logging.AgentLog;
import com.newrelic.agent.android.logging.AgentLogManager;
import com.newrelic.agent.android.measurement.http.HttpErrorMeasurement;
import com.newrelic.agent.android.util.SafeJsonPrimitive;
import com.newrelic.com.google.gson.JsonArray;
import com.newrelic.com.google.gson.JsonObject;
import io.fabric.sdk.android.services.common.CommonUtils;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Collections;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class HttpError extends HarvestableArray {
    private static final AgentLog log = AgentLogManager.getAgentLog();
    private String appData;
    private long count;
    private String digest;
    private int httpStatusCode;
    private Map<String, String> params;
    private String responseBody;
    private String stackTrace;
    private Long timestamp;
    private String url;

    public HttpError() {
    }

    public HttpError(String url, int httpStatusCode, String responseBody, String stackTrace, Map<String, String> params) {
        this.url = url;
        this.httpStatusCode = httpStatusCode;
        this.responseBody = responseBody;
        this.stackTrace = stackTrace;
        this.params = params;
        this.count = 1L;
        this.digest = computeHash();
    }

    public HttpError(HttpErrorMeasurement m) {
        this(m.getUrl(), m.getHttpStatusCode(), m.getResponseBody(), m.getStackTrace(), m.getParams());
        setTimestamp(Long.valueOf(m.getStartTime()));
    }

    @Override // com.newrelic.agent.android.harvest.type.HarvestableArray, com.newrelic.agent.android.harvest.type.BaseHarvestable, com.newrelic.agent.android.harvest.type.Harvestable
    public JsonArray asJsonArray() {
        int bodyLimit = Harvest.getHarvestConfiguration().getResponse_body_limit();
        JsonArray array = new JsonArray();
        array.add(SafeJsonPrimitive.factory(this.url));
        array.add(SafeJsonPrimitive.factory(Integer.valueOf(this.httpStatusCode)));
        array.add(SafeJsonPrimitive.factory(Long.valueOf(this.count)));
        String body = "";
        if (FeatureFlag.featureEnabled(FeatureFlag.HttpResponseBodyCapture)) {
            body = optional(this.responseBody);
            if (body.length() > bodyLimit) {
                log.warning("HTTP Error response BODY is too large. Truncating to " + bodyLimit + " bytes.");
                body = body.substring(0, bodyLimit);
            }
        } else {
            log.warning("not enabled");
        }
        array.add(SafeJsonPrimitive.factory(Agent.getEncoder().encode(body.getBytes())));
        array.add(SafeJsonPrimitive.factory(optional(this.stackTrace)));
        JsonObject customParams = new JsonObject();
        if (this.params == null) {
            this.params = Collections.emptyMap();
        }
        customParams.add("custom_params", HarvestableObject.fromMap(this.params).asJson());
        array.add(customParams);
        array.add(SafeJsonPrimitive.factory(optional(this.appData)));
        return array;
    }

    public void incrementCount() {
        this.count++;
    }

    public String getHash() {
        return this.digest;
    }

    public void digest() {
        this.digest = computeHash();
    }

    private String computeHash() {
        try {
            MessageDigest digester = MessageDigest.getInstance(CommonUtils.SHA1_INSTANCE);
            digester.update(this.url.getBytes());
            digester.update(ByteBuffer.allocate(8).putInt(this.httpStatusCode).array());
            if (this.stackTrace != null && this.stackTrace.length() > 0) {
                digester.update(this.stackTrace.getBytes());
            }
            return new String(digester.digest());
        } catch (NoSuchAlgorithmException e) {
            log.error("Unable to initialize SHA-1 hash algorithm");
            return null;
        }
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public void setHttpStatusCode(int httpStatusCode) {
        this.httpStatusCode = httpStatusCode;
    }

    public void setCount(long count) {
        this.count = count;
    }

    public void setResponseBody(String responseBody) {
        this.responseBody = responseBody;
    }

    public void setStackTrace(String stackTrace) {
        this.stackTrace = stackTrace;
    }

    public void setParams(Map<String, String> params) {
        this.params = params;
    }

    public void setAppData(String appData) {
        this.appData = appData;
    }

    public Long getTimestamp() {
        return this.timestamp;
    }

    public Map<String, String> getParams() {
        return this.params;
    }

    public void setTimestamp(Long timestamp) {
        this.timestamp = timestamp;
    }
}

package com.inmobi.commons.cache;

import com.amazon.identity.auth.device.dataobject.AppInfo;
import com.inmobi.androidsdk.IMBrowserActivity;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import com.inmobi.commons.network.RequestBuilderUtils;
import com.mopub.common.AdType;
import com.newrelic.agent.android.instrumentation.HttpInstrumentation;
import com.newrelic.agent.android.instrumentation.JSONObjectInstrumentation;
import com.newrelic.agent.android.tracing.TraceMachine;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;
import java.util.Timer;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class ProductCacheConfig extends ProductConfig {
    public static final int DEFAULT_EXPIRY = 432000;
    public static final int DEFAULT_INTERVAL = 60;
    public static final int DEFAULT_MAX_RETRY = 3;
    private static Timer a = new Timer();
    private AtomicBoolean b;
    private Map<String, String> c;
    private CacheController.Validator d;
    private RetryMechanism e;
    private CacheController.Committer f;
    private long g;

    private class a {
        private String b;
        private long c;

        private a() {
        }
    }

    public Map<String, String> getMap() {
        return this.c;
    }

    public void setMap(Map<String, String> map) {
        this.c = map;
    }

    public CacheController.Validator getValidator() {
        return this.d;
    }

    public void setValidator(CacheController.Validator validator) {
        this.d = validator;
    }

    public ProductCacheConfig(JSONObject jSONObject, CacheController.Committer committer) {
        this(jSONObject);
        this.f = committer;
    }

    public ProductCacheConfig(JSONObject jSONObject) {
        this.b = new AtomicBoolean(false);
        this.c = new HashMap();
        this.d = null;
        this.e = new RetryMechanism(3, TraceMachine.UNHEALTHY_TRACE_TIMEOUT, a);
        try {
            loadFromJSON(jSONObject);
        } catch (Exception e) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "JSON retrieved is invalid.");
        }
    }

    public ProductConfig getConfig() {
        return this;
    }

    public final void loadFromJSON(JSONObject jSONObject) {
        setExpiry(InternalSDKUtil.getIntFromJSON(jSONObject, "expiry", DEFAULT_EXPIRY));
        setMaxRetry(InternalSDKUtil.getIntFromJSON(jSONObject, "maxRetry", 3));
        setRetryInterval(InternalSDKUtil.getIntFromJSON(jSONObject, "retryInterval", 60));
        this.g = InternalSDKUtil.getLongFromJSON(jSONObject, "lastModified", 0L);
        setUrl(InternalSDKUtil.getStringFromJSON(jSONObject, "url", ""));
        setProtocol(InternalSDKUtil.getStringFromJSON(jSONObject, "protocol", AdType.NATIVE));
        this.e = new RetryMechanism(getMaxRetry(), getRetryInterval() * 1000, a);
        setTimestamp(InternalSDKUtil.getIntFromJSON(jSONObject, "timestamp", 0));
        setData(InternalSDKUtil.getStringFromJSON(jSONObject, IMBrowserActivity.EXPANDDATA, null));
    }

    public String getData(CacheController.Validator validator) {
        if (validator != null) {
            this.d = validator;
        }
        setRetryNumber(0);
        if ((getTimestamp() + getExpiry()) - ((int) (System.currentTimeMillis() / 1000)) <= 0) {
            b();
        }
        return getRawData();
    }

    public JSONObject toJSON() {
        JSONObject jSONObjectInit;
        JSONException e;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObjectInit = JSONObjectInstrumentation.init("{expiry:" + getExpiry() + AppInfo.DELIM + "maxRetry:" + getMaxRetry() + AppInfo.DELIM + "retryInterval:" + getRetryInterval() + AppInfo.DELIM + "protocol:" + getProtocol() + ",timestamp:" + getTimestamp() + "}");
            try {
                jSONObjectInit.put("url", getUrl());
                jSONObjectInit.put(IMBrowserActivity.EXPANDDATA, getRawData());
                jSONObjectInit.put("lastModified", this.g);
            } catch (JSONException e2) {
                e = e2;
                Log.internal(InternalSDKUtil.LOGGING_TAG, "Ill formed JSON product(" + getUrl() + ") toString", e);
            }
        } catch (JSONException e3) {
            jSONObjectInit = jSONObject;
            e = e3;
        }
        return jSONObjectInit;
    }

    public String toString() {
        JSONObject json = toJSON();
        return !(json instanceof JSONObject) ? json.toString() : JSONObjectInstrumentation.toString(json);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() throws Exception {
        try {
            a aVarC = c();
            String str = aVarC.b;
            if (str != null) {
                if (this.d == null || this.d.validate(a(str))) {
                    setData(str);
                    setTimestamp((int) (System.currentTimeMillis() / 1000));
                    this.g = aVarC.c;
                    Log.internal(InternalSDKUtil.LOGGING_TAG, "Product with url " + getUrl() + " accepted data " + getRawData());
                    this.f.onCommit();
                    return;
                }
                throw new IOException("Invalid config.");
            }
            setTimestamp((int) (System.currentTimeMillis() / 1000));
            this.g = aVarC.c;
            this.f.onCommit();
        } catch (Exception e) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Error connecting to url, or " + getUrl() + " did not return 200. Purge cache update.", e);
            throw e;
        }
    }

    private void b() {
        if (this.b.compareAndSet(false, true)) {
            this.e.rescheduleTimer(new RetryMechanism.RetryRunnable() { // from class: com.inmobi.commons.cache.ProductCacheConfig.1
                @Override // com.inmobi.commons.cache.RetryMechanism.RetryRunnable
                public void run() throws Exception {
                    try {
                        if (InternalSDKUtil.checkNetworkAvailibility(InternalSDKUtil.getContext())) {
                            ProductCacheConfig.this.a();
                            return;
                        }
                        throw new IOException("Network unavailable");
                    } catch (Exception e) {
                        throw e;
                    }
                }

                @Override // com.inmobi.commons.cache.RetryMechanism.RetryRunnable
                public void completed() {
                    ProductCacheConfig.this.b.set(false);
                }
            });
        }
    }

    protected void reset() {
        setExpiry(0);
        setRetryInterval(0);
        setMaxRetry(0);
        setTimestamp(0);
        setUrl(null);
        setProtocol(null);
        setData(null);
    }

    private a c() throws IOException {
        String url;
        String str = "";
        HashMap map = new HashMap();
        RequestBuilderUtils.fillIdentityMap(map, null, true);
        RequestBuilderUtils.fillAppInfoMap(map);
        String strEncodeMapAndconvertToDelimitedString = InternalSDKUtil.encodeMapAndconvertToDelimitedString(map, "&");
        if (strEncodeMapAndconvertToDelimitedString != null && !"".equals(strEncodeMapAndconvertToDelimitedString)) {
            if (getUrl().endsWith("?")) {
                url = getUrl() + strEncodeMapAndconvertToDelimitedString;
            } else if (getUrl().contains("?")) {
                url = getUrl() + "&" + strEncodeMapAndconvertToDelimitedString;
            } else {
                url = getUrl() + "?" + strEncodeMapAndconvertToDelimitedString;
            }
        } else {
            url = getUrl();
        }
        URL url2 = new URL(url);
        Log.internal(InternalSDKUtil.LOGGING_TAG, "Sending request to " + url + " to retreive cache..");
        HttpURLConnection httpURLConnection = (HttpURLConnection) HttpInstrumentation.openConnection(url2.openConnection());
        httpURLConnection.setRequestProperty("User-Agent", InternalSDKUtil.getUserAgent());
        httpURLConnection.setIfModifiedSince(this.g);
        httpURLConnection.setRequestMethod("GET");
        int responseCode = httpURLConnection.getResponseCode();
        if (responseCode == 304) {
            a aVar = new a();
            aVar.b = null;
            aVar.c = httpURLConnection.getLastModified();
            return aVar;
        }
        if (responseCode != 200) {
            throw new IOException("Server did not return 200. ");
        }
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
        while (true) {
            String line = bufferedReader.readLine();
            if (line != null) {
                str = str + line;
            } else {
                bufferedReader.close();
                a aVar2 = new a();
                aVar2.b = str;
                aVar2.c = httpURLConnection.getLastModified();
                return aVar2;
            }
        }
    }

    public String getData(Map<String, String> map, CacheController.Validator validator) {
        if (map != null) {
            this.c = map;
        }
        return getData(validator);
    }
}

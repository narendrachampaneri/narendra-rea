package com.amazon.insights.core.configuration;

import com.amazon.insights.core.InsightsContext;
import com.amazon.insights.core.http.HttpClient;
import com.amazon.insights.core.idresolver.Id;
import com.amazon.insights.core.log.Logger;
import com.amazon.insights.core.system.Preferences;
import com.amazon.insights.core.util.Preconditions;
import com.newrelic.agent.android.instrumentation.JSONObjectInstrumentation;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class HttpCachingConfiguration implements Configuration {
    private static final String CONFIG_KEY = "configuration";
    private static final String CONFIG_KEY_LAST_SYNC = "configuration.lastSyncDate";
    private static final long DEFAULT_SYNC_INTERVAL = 3600000;
    private static final String ENDPOINT = "https://applab-sdk.amazon.com/1.0";
    private static final String ENDPOINT_PATH = "%s/applications/%s/configuration";
    private static final String UNIQUE_ID_HEADER_NAME = "x-amzn-UniqueId";
    private static final Logger logger = Logger.getLogger(HttpCachingConfiguration.class);
    private final ExecutorService backgroundExecutor;
    private final InsightsContext context;
    private final Map<String, String> overrideProperties;
    private AtomicLong lastSync = new AtomicLong(0);
    private AtomicBoolean isUpdateInProgress = new AtomicBoolean(false);
    private Map<String, String> properties = new ConcurrentHashMap();

    public static HttpCachingConfiguration newInstance(InsightsContext context, Map<String, String> overrideProperties) {
        return new HttpCachingConfiguration(context, Executors.newSingleThreadExecutor(), overrideProperties);
    }

    HttpCachingConfiguration(InsightsContext context, ExecutorService executor, Map<String, String> overrideProperties) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(executor);
        Preconditions.checkNotNull(overrideProperties);
        this.context = context;
        this.overrideProperties = overrideProperties;
        this.backgroundExecutor = executor;
        JSONObject configJson = null;
        Preferences preferences = getContext().getSystem().getPreferences();
        if (preferences != null) {
            try {
                this.lastSync.set(preferences.getLong(CONFIG_KEY_LAST_SYNC, 0L));
            } catch (ClassCastException e) {
                this.lastSync.set(0L);
            }
            String configurationJsonString = preferences.getString(CONFIG_KEY, null);
            if (configurationJsonString != null) {
                try {
                    configJson = JSONObjectInstrumentation.init(configurationJsonString);
                } catch (JSONException e2) {
                    logger.e("could not create Json object of Config", e2);
                    this.lastSync.set(0L);
                }
            }
        }
        updateMappings(configJson);
    }

    @Override // com.amazon.insights.core.configuration.Configuration
    public Long getLong(String propertyName) {
        Long value = null;
        String valueString = this.properties.get(propertyName);
        if (valueString != null) {
            try {
                value = Long.decode(valueString);
            } catch (Exception ex) {
                logger.e(String.format("Could not get Long for propertyName: %s", propertyName), ex);
            }
        }
        evaluateLastSync();
        return value;
    }

    @Override // com.amazon.insights.core.configuration.Configuration
    public String getString(String propertyName) {
        String value = this.properties.get(propertyName);
        evaluateLastSync();
        return value;
    }

    @Override // com.amazon.insights.core.configuration.Configuration
    public Integer getInt(String propertyName) {
        Integer value = null;
        String valueString = this.properties.get(propertyName);
        if (valueString != null) {
            try {
                value = Integer.decode(valueString);
            } catch (Exception ex) {
                logger.e(String.format("Could not get Integer for propertyName: %s", propertyName), ex);
            }
        }
        evaluateLastSync();
        return value;
    }

    @Override // com.amazon.insights.core.configuration.Configuration
    public Double getDouble(String propertyName) {
        Double value = null;
        String valueString = this.properties.get(propertyName);
        if (valueString != null) {
            try {
                value = Double.valueOf(Double.parseDouble(valueString));
            } catch (Exception ex) {
                logger.e(String.format("Could not get Double for propertyName: %s", propertyName), ex);
            }
        }
        evaluateLastSync();
        return value;
    }

    @Override // com.amazon.insights.core.configuration.Configuration
    public Boolean getBoolean(String propertyName) {
        Boolean value = null;
        String valueString = this.properties.get(propertyName);
        if (valueString != null) {
            try {
                value = Boolean.valueOf(Boolean.parseBoolean(valueString));
            } catch (Exception ex) {
                logger.e(String.format("Could not get Boolean for propertyName: %s", propertyName), ex);
            }
        }
        evaluateLastSync();
        return value;
    }

    @Override // com.amazon.insights.core.configuration.Configuration
    public Short getShort(String propertyName) {
        Short value = null;
        String valueString = this.properties.get(propertyName);
        if (valueString != null) {
            try {
                if (this.properties.containsKey(propertyName)) {
                    value = Short.decode(valueString);
                }
            } catch (Exception ex) {
                logger.e(String.format("Could not get Short for propertyName: %s", propertyName), ex);
            }
        }
        evaluateLastSync();
        return value;
    }

    @Override // com.amazon.insights.core.configuration.Configuration
    public Long optLong(String propertyName, Long optValue) {
        Long value = getLong(propertyName);
        return value != null ? value : optValue;
    }

    @Override // com.amazon.insights.core.configuration.Configuration
    public String optString(String propertyName, String optValue) {
        String value = getString(propertyName);
        return value != null ? value : optValue;
    }

    @Override // com.amazon.insights.core.configuration.Configuration
    public Integer optInt(String propertyName, Integer optValue) {
        Integer value = getInt(propertyName);
        return value != null ? value : optValue;
    }

    @Override // com.amazon.insights.core.configuration.Configuration
    public Short optShort(String propertyName, Short optValue) {
        Short value = getShort(propertyName);
        return value != null ? value : optValue;
    }

    @Override // com.amazon.insights.core.configuration.Configuration
    public Double optDouble(String propertyName, Double optValue) {
        Double value = getDouble(propertyName);
        return value != null ? value : optValue;
    }

    @Override // com.amazon.insights.core.configuration.Configuration
    public Boolean optBoolean(String propertyName, Boolean optValue) {
        Boolean value = getBoolean(propertyName);
        return value != null ? value : optValue;
    }

    @Override // com.amazon.insights.core.configuration.Configuration
    public void refresh() {
        evaluateLastSync();
    }

    private String optStringInternal(String propertyName, String optValue) {
        String value = this.properties.get(propertyName);
        return value != null ? value : optValue;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateMappings(JSONObject configJson) {
        HashMap<String, String> newProperties = new HashMap<>();
        if (configJson != null) {
            Iterator<?> keys = configJson.keys();
            while (keys.hasNext()) {
                String key = keys.next();
                try {
                    String value = configJson.getString(key);
                    newProperties.put(key, value);
                } catch (JSONException e) {
                    logger.e("could not update property mappings", e);
                }
            }
        }
        for (Map.Entry<String, String> entry : this.overrideProperties.entrySet()) {
            newProperties.put(entry.getKey(), entry.getValue());
        }
        this.properties.putAll(newProperties);
    }

    void syncConfiguration() {
        if (getIsUpdateInProgress().compareAndSet(false, true)) {
            getBackgroundExecutor().submit(new Runnable() { // from class: com.amazon.insights.core.configuration.HttpCachingConfiguration.1
                @Override // java.lang.Runnable
                public void run() {
                    String retryValue;
                    JSONObject configJson = null;
                    try {
                        if (!HttpCachingConfiguration.this.context.getSystem().getConnectivity().isConnected()) {
                            HttpCachingConfiguration.logger.v("Device not connected to sync config");
                        } else {
                            HttpClient.Request httpRequest = HttpCachingConfiguration.this.createHttpRequest();
                            if (httpRequest != null) {
                                int retries = 1;
                                if (HttpCachingConfiguration.this.properties.containsKey("configRequestRetries") && (retryValue = (String) HttpCachingConfiguration.this.properties.get("configRequestRetries")) != null) {
                                    try {
                                        retries = Integer.decode(retryValue);
                                    } catch (Exception ex) {
                                        HttpCachingConfiguration.logger.e(String.format("Could not get the http request retry value", new Object[0]), ex);
                                    }
                                }
                                HttpClient.Response response = HttpCachingConfiguration.this.getContext().getHttpClient().execute(httpRequest, retries);
                                if (response.getCode() != 200) {
                                    HttpCachingConfiguration.logger.e("service error: " + response.getMessage() + "(" + response.getCode() + ")");
                                } else {
                                    try {
                                        configJson = JSONObjectInstrumentation.init(response.getResponse());
                                    } catch (JSONException e) {
                                        HttpCachingConfiguration.logger.e("error parsing service response", e);
                                    }
                                }
                            }
                            if (configJson != null) {
                                String configValues = !(configJson instanceof JSONObject) ? configJson.toString() : JSONObjectInstrumentation.toString(configJson);
                                if (HttpCachingConfiguration.logger.isLoggingEnabled(Logger.LogLevel.VERBOSE)) {
                                    HttpCachingConfiguration.logger.v("AppIntelligence config: " + configValues);
                                }
                                Preferences preferences = HttpCachingConfiguration.this.getContext().getSystem().getPreferences();
                                preferences.putString(HttpCachingConfiguration.CONFIG_KEY, configValues);
                                HttpCachingConfiguration.this.updateMappings(configJson);
                            }
                        }
                        long now = System.currentTimeMillis();
                        HttpCachingConfiguration.this.setLastSync(now);
                    } catch (Exception e2) {
                        HttpCachingConfiguration.logger.e("There was an error while attempting to sync the configuration", e2);
                    } finally {
                        HttpCachingConfiguration.this.getIsUpdateInProgress().set(false);
                    }
                }
            });
        }
    }

    HttpClient.Request createHttpRequest() {
        Preconditions.checkState(getContext().getHttpClient() != null, "An httpClient must be created in order to resolve configuration via http");
        String operationUrl = String.format(ENDPOINT_PATH, optStringInternal("configEndpoint", ENDPOINT), getContext().getCredentials().getApplicationKey());
        Id uniqueId = getContext().getUniqueId();
        HttpClient.Request httpRequest = createHttpRequestInstance();
        httpRequest.setUrl(operationUrl);
        httpRequest.setMethod(HttpClient.HttpMethod.GET);
        httpRequest.addHeader(UNIQUE_ID_HEADER_NAME, uniqueId != null ? uniqueId.getValue() : "");
        return httpRequest;
    }

    HttpClient.Request createHttpRequestInstance() {
        return this.context.getHttpClient().newRequest();
    }

    private void evaluateLastSync() {
        long syncInterval = DEFAULT_SYNC_INTERVAL;
        String syncIntervalString = this.properties.get("syncInterval");
        if (syncIntervalString != null) {
            try {
                syncInterval = Long.decode(syncIntervalString).longValue();
            } catch (Exception ex) {
                logger.e(String.format("Could not get Long for propertyName: %s", "syncInterval"), ex);
            }
        }
        long now = System.currentTimeMillis();
        long syncDelta = now - getLastSync();
        if (syncDelta > syncInterval) {
            syncConfiguration();
        }
    }

    private long getLastSync() {
        return this.lastSync.get();
    }

    void setLastSync(long lastSync) {
        this.lastSync.set(lastSync);
        Preferences preferences = getContext().getSystem().getPreferences();
        preferences.putLong(CONFIG_KEY_LAST_SYNC, this.lastSync.get());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public InsightsContext getContext() {
        return this.context;
    }

    private ExecutorService getBackgroundExecutor() {
        return this.backgroundExecutor;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public AtomicBoolean getIsUpdateInProgress() {
        return this.isUpdateInProgress;
    }
}

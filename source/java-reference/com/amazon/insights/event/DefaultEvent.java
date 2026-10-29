package com.amazon.insights.event;

import com.amazon.insights.Event;
import com.amazon.insights.core.InsightsContext;
import com.amazon.insights.core.idresolver.Id;
import com.amazon.insights.core.log.Logger;
import com.amazon.insights.core.system.AppDetails;
import com.amazon.insights.core.system.DeviceDetails;
import com.amazon.insights.core.util.DateUtil;
import com.amazon.insights.core.util.JSONBuilder;
import com.amazon.insights.core.util.JSONSerializable;
import com.amazon.insights.core.util.SDKInfo;
import com.newrelic.agent.android.instrumentation.JSONObjectInstrumentation;
import java.math.BigDecimal;
import java.util.Collections;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class DefaultEvent implements InternalEvent, JSONSerializable {
    private static Logger logger = Logger.getLogger(DefaultEvent.class);
    private final AppDetails appDetails;
    private final String applicationKey;
    private final DeviceDetails deviceDetails;
    private final String eventType;
    private final String sdkName;
    private final String sdkVersion;
    private final Long timestamp;
    private final Id uniqueId;
    private final Map<String, String> attributes = new ConcurrentHashMap();
    private final Map<String, Number> metrics = new ConcurrentHashMap();

    public static DefaultEvent createFromEvent(InsightsContext context, Long timestamp, Event copyEvent) {
        return new DefaultEvent(copyEvent.getEventType(), copyEvent.getAllAttributes(), copyEvent.getAllMetrics(), context.getCredentials().getApplicationKey(), context.getSDKInfo(), timestamp, context.getUniqueId(), context.getSystem().getAppDetails(), context.getSystem().getDeviceDetails());
    }

    public static DefaultEvent newInstance(InsightsContext context, Long timestamp, String eventType) {
        return new DefaultEvent(eventType, null, null, context.getCredentials().getApplicationKey(), context.getSDKInfo(), timestamp, context.getUniqueId(), context.getSystem().getAppDetails(), context.getSystem().getDeviceDetails());
    }

    DefaultEvent(String eventType, Map<String, String> attributes, Map<String, Number> metrics, String applicationKey, SDKInfo sdkInfo, Long timestamp, Id uniqueId, AppDetails appDetails, DeviceDetails deviceDetails) {
        this.applicationKey = applicationKey;
        this.sdkName = sdkInfo.getName();
        this.sdkVersion = sdkInfo.getVersion();
        this.timestamp = timestamp;
        this.uniqueId = uniqueId;
        this.eventType = eventType;
        this.appDetails = appDetails;
        this.deviceDetails = deviceDetails;
        if (attributes != null) {
            for (Map.Entry<String, String> kvp : attributes.entrySet()) {
                addAttribute(kvp.getKey(), kvp.getValue());
            }
        }
        if (metrics != null) {
            for (Map.Entry<String, Number> kvp2 : metrics.entrySet()) {
                addMetric(kvp2.getKey(), kvp2.getValue());
            }
        }
    }

    @Override // com.amazon.insights.Event
    public void addAttribute(String name, String value) {
        if (name != null) {
            if (value != null) {
                this.attributes.put(name, value);
            } else {
                this.attributes.remove(name);
            }
        }
    }

    @Override // com.amazon.insights.Event
    public boolean hasAttribute(String attributeName) {
        if (attributeName == null) {
            return false;
        }
        return this.attributes.containsKey(attributeName);
    }

    @Override // com.amazon.insights.Event
    public void addMetric(String name, Number value) {
        if (name != null) {
            if (value != null) {
                this.metrics.put(name, value);
            } else {
                this.metrics.remove(name);
            }
        }
    }

    @Override // com.amazon.insights.Event
    public boolean hasMetric(String metricName) {
        if (metricName == null) {
            return false;
        }
        return this.metrics.containsKey(metricName);
    }

    @Override // com.amazon.insights.Event
    public String getEventType() {
        return this.eventType;
    }

    @Override // com.amazon.insights.Event
    public String getAttribute(String name) {
        if (name == null) {
            return null;
        }
        return this.attributes.get(name);
    }

    @Override // com.amazon.insights.Event
    public Number getMetric(String name) {
        if (name == null) {
            return null;
        }
        return this.metrics.get(name);
    }

    @Override // com.amazon.insights.event.InternalEvent
    public String getApplicationKey() {
        return this.applicationKey;
    }

    @Override // com.amazon.insights.event.InternalEvent
    public Long getEventTimestamp() {
        return this.timestamp;
    }

    @Override // com.amazon.insights.event.InternalEvent
    public Id getUniqueId() {
        return this.uniqueId;
    }

    @Override // com.amazon.insights.event.InternalEvent
    public String getSdkName() {
        return this.sdkName;
    }

    @Override // com.amazon.insights.event.InternalEvent
    public String getSdkVersion() {
        return this.sdkVersion;
    }

    @Override // com.amazon.insights.Event
    public DefaultEvent withAttribute(String name, String value) {
        addAttribute(name, value);
        return this;
    }

    @Override // com.amazon.insights.Event
    public DefaultEvent withMetric(String name, Number value) {
        addMetric(name, value);
        return this;
    }

    @Override // com.amazon.insights.Event
    public Map<String, String> getAllAttributes() {
        return Collections.unmodifiableMap(this.attributes);
    }

    @Override // com.amazon.insights.Event
    public Map<String, Number> getAllMetrics() {
        return Collections.unmodifiableMap(this.metrics);
    }

    public String toString() {
        JSONObject json = toJSONObject();
        try {
            return !(json instanceof JSONObject) ? json.toString(4) : JSONObjectInstrumentation.toString(json, 4);
        } catch (JSONException e) {
            return !(json instanceof JSONObject) ? json.toString() : JSONObjectInstrumentation.toString(json);
        }
    }

    @Override // com.amazon.insights.core.util.JSONSerializable
    public JSONObject toJSONObject() {
        Locale locale = this.deviceDetails.locale();
        String localeString = locale != null ? locale.toString() : "UNKNOWN";
        JSONBuilder builder = new JSONBuilder(this);
        builder.withAttribute("application_key", getApplicationKey());
        builder.withAttribute("event_type", getEventType());
        builder.withAttribute("unique_id", getUniqueId().getValue());
        builder.withAttribute("timestamp", DateUtil.isoDateFromMillis(getEventTimestamp().longValue()));
        builder.withAttribute("platform", this.deviceDetails.platform());
        builder.withAttribute("platform_version", this.deviceDetails.platformVersion());
        builder.withAttribute("make", this.deviceDetails.manufacturer());
        builder.withAttribute("model", this.deviceDetails.model());
        builder.withAttribute("locale", localeString);
        builder.withAttribute("sdk_version", this.sdkVersion);
        builder.withAttribute("sdk_name", this.sdkName);
        builder.withAttribute("app_version_name", this.appDetails.versionName());
        builder.withAttribute("app_version_code", this.appDetails.versionCode());
        builder.withAttribute("app_package_name", this.appDetails.packageName());
        JSONObject attributesJson = new JSONObject();
        for (Map.Entry<String, String> entry : getAllAttributes().entrySet()) {
            try {
                attributesJson.put(entry.getKey(), entry.getValue());
            } catch (JSONException e) {
            }
        }
        JSONObject metricsJson = new JSONObject();
        for (Map.Entry<String, Number> entry2 : getAllMetrics().entrySet()) {
            if (entry2.getValue().getClass() != null) {
                try {
                    metricsJson.put(entry2.getKey(), new BigDecimal(entry2.getValue().toString()));
                } catch (JSONException e2) {
                    logger.w("error serializing metric. key:'" + entry2.getKey() + "', value: " + entry2.getValue().toString(), e2);
                }
            }
        }
        if (attributesJson.length() > 0) {
            builder.withAttribute("attributes", attributesJson);
        }
        if (metricsJson.length() > 0) {
            builder.withAttribute("metrics", metricsJson);
        }
        return builder.toJSONObject();
    }
}

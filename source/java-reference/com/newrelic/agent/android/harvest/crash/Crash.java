package com.newrelic.agent.android.harvest.crash;

import com.amazon.identity.auth.device.endpoint.AbstractTokenRequest;
import com.newrelic.agent.android.Agent;
import com.newrelic.agent.android.AgentImpl;
import com.newrelic.agent.android.FeatureFlag;
import com.newrelic.agent.android.analytics.AnalyticAttribute;
import com.newrelic.agent.android.analytics.AnalyticsEvent;
import com.newrelic.agent.android.crashes.CrashReporter;
import com.newrelic.agent.android.harvest.ActivityHistory;
import com.newrelic.agent.android.harvest.DataToken;
import com.newrelic.agent.android.harvest.Harvest;
import com.newrelic.agent.android.harvest.type.HarvestableObject;
import com.newrelic.agent.android.tracing.TraceMachine;
import com.newrelic.agent.android.util.SafeJsonPrimitive;
import com.newrelic.agent.android.util.Util;
import com.newrelic.com.google.gson.JsonArray;
import com.newrelic.com.google.gson.JsonElement;
import com.newrelic.com.google.gson.JsonObject;
import com.newrelic.com.google.gson.JsonParser;
import com.newrelic.com.google.gson.JsonPrimitive;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public class Crash extends HarvestableObject {
    public static final int PROTOCOL_VERSION = 1;
    private ActivityHistory activityHistory;
    private final boolean analyticsEnabled;
    private final String appToken;
    private ApplicationInfo applicationInfo;
    private final String buildId;
    private DeviceInfo deviceInfo;
    private Collection<AnalyticsEvent> events;
    private ExceptionInfo exceptionInfo;
    private Set<AnalyticAttribute> sessionAttributes;
    private List<ThreadInfo> threads;
    private final long timestamp;
    private final UUID uuid;

    public static String getBuildId() {
        return "80937926-fb54-47a7-9dbf-8d50d24581db";
    }

    public Crash(UUID uuid, String buildId, long timestamp) {
        AgentImpl agentImpl = Agent.getImpl();
        this.uuid = uuid;
        this.buildId = buildId;
        this.timestamp = timestamp;
        this.appToken = CrashReporter.getAgentConfiguration().getApplicationToken();
        this.deviceInfo = new DeviceInfo(agentImpl.getDeviceInformation(), agentImpl.getEnvironmentInformation());
        this.applicationInfo = new ApplicationInfo(agentImpl.getApplicationInformation());
        this.exceptionInfo = new ExceptionInfo();
        this.threads = new ArrayList();
        this.activityHistory = new ActivityHistory(new ArrayList());
        this.sessionAttributes = new HashSet();
        this.events = new HashSet();
        this.analyticsEnabled = false;
    }

    public Crash(Throwable throwable) {
        this(throwable, new HashSet(), new HashSet(), false);
    }

    public Crash(Throwable throwable, Set<AnalyticAttribute> sessionAttributes, Collection<AnalyticsEvent> events, boolean analyticsEnabled) {
        AgentImpl agentImpl = Agent.getImpl();
        Throwable cause = getRootCause(throwable);
        this.uuid = new UUID(Util.getRandom().nextLong(), Util.getRandom().nextLong());
        this.buildId = getBuildId();
        this.timestamp = System.currentTimeMillis() / 1000;
        this.appToken = CrashReporter.getAgentConfiguration().getApplicationToken();
        this.deviceInfo = new DeviceInfo(agentImpl.getDeviceInformation(), agentImpl.getEnvironmentInformation());
        this.applicationInfo = new ApplicationInfo(agentImpl.getApplicationInformation());
        this.exceptionInfo = new ExceptionInfo(cause);
        this.threads = ThreadInfo.extractThreads(cause);
        this.activityHistory = TraceMachine.getActivityHistory();
        this.sessionAttributes = sessionAttributes;
        this.events = events;
        this.analyticsEnabled = analyticsEnabled;
    }

    public long getTimestamp() {
        return this.timestamp;
    }

    public UUID getUuid() {
        return this.uuid;
    }

    public ExceptionInfo getExceptionInfo() {
        return this.exceptionInfo;
    }

    public void setSessionAttributes(Set<AnalyticAttribute> sessionAttributes) {
        this.sessionAttributes = sessionAttributes;
    }

    public void setAnalyticsEvents(List<AnalyticsEvent> events) {
        this.events = events;
    }

    @Override // com.newrelic.agent.android.harvest.type.HarvestableObject, com.newrelic.agent.android.harvest.type.BaseHarvestable, com.newrelic.agent.android.harvest.type.Harvestable
    public JsonObject asJsonObject() {
        JsonObject data = new JsonObject();
        data.add("protocolVersion", new JsonPrimitive((Number) 1));
        data.add("platform", new JsonPrimitive(AbstractTokenRequest.ANDROID_OS_NAME));
        data.add(AnalyticAttribute.UUID_ATTRIBUTE, SafeJsonPrimitive.factory(this.uuid.toString()));
        data.add("buildId", SafeJsonPrimitive.factory(this.buildId));
        data.add("timestamp", SafeJsonPrimitive.factory(Long.valueOf(this.timestamp)));
        data.add("appToken", SafeJsonPrimitive.factory(this.appToken));
        data.add("deviceInfo", this.deviceInfo.asJsonObject());
        data.add("appInfo", this.applicationInfo.asJsonObject());
        data.add("exception", this.exceptionInfo.asJsonObject());
        data.add("threads", getThreadsAsJson());
        data.add("activityHistory", this.activityHistory.asJsonArrayWithoutDuration());
        if (this.analyticsEnabled && FeatureFlag.featureEnabled(FeatureFlag.AnalyticsEvents)) {
            JsonObject attributeObject = new JsonObject();
            if (this.sessionAttributes != null) {
                for (AnalyticAttribute attribute : this.sessionAttributes) {
                    data.add(attribute.getName(), attribute.asJsonElement());
                }
            }
            data.add("sessionAttributes", attributeObject);
            JsonArray eventArray = new JsonArray();
            if (this.events != null) {
                for (AnalyticsEvent event : this.events) {
                    eventArray.add(event.asJsonObject());
                }
            }
            data.add("analyticsEvents", eventArray);
        }
        DataToken dataToken = Harvest.getHarvestConfiguration().getDataToken();
        if (dataToken != null) {
            data.add("dataToken", dataToken.asJsonArray());
        }
        return data;
    }

    public static Crash crashFromJsonString(String json) {
        JsonElement element = new JsonParser().parse(json);
        JsonObject crashObject = element.getAsJsonObject();
        String uuid = crashObject.get(AnalyticAttribute.UUID_ATTRIBUTE).getAsString();
        String buildIdentifier = crashObject.get("buildId").getAsString();
        long timestamp = crashObject.get("timestamp").getAsLong();
        Crash crash = new Crash(UUID.fromString(uuid), buildIdentifier, timestamp);
        crash.deviceInfo = DeviceInfo.newFromJson(crashObject.get("deviceInfo").getAsJsonObject());
        crash.applicationInfo = ApplicationInfo.newFromJson(crashObject.get("appInfo").getAsJsonObject());
        crash.exceptionInfo = ExceptionInfo.newFromJson(crashObject.get("exception").getAsJsonObject());
        crash.threads = ThreadInfo.newListFromJson(crashObject.get("threads").getAsJsonArray());
        crash.activityHistory = ActivityHistory.newFromJson(crashObject.get("activityHistory").getAsJsonArray());
        return crash;
    }

    protected static Throwable getRootCause(Throwable throwable) {
        if (throwable != null) {
            Throwable cause = throwable.getCause();
            if (cause != null) {
                return getRootCause(cause);
            }
            return throwable;
        }
        return new Throwable("Unknown cause");
    }

    protected JsonArray getThreadsAsJson() {
        JsonArray data = new JsonArray();
        if (this.threads != null) {
            for (ThreadInfo thread : this.threads) {
                data.add(thread.asJsonObject());
            }
        }
        return data;
    }
}

package com.newrelic.agent.android.tracing;

import com.newrelic.agent.android.Agent;
import com.newrelic.agent.android.Measurements;
import com.newrelic.agent.android.TaskQueue;
import com.newrelic.agent.android.activity.NamedActivity;
import com.newrelic.agent.android.harvest.ActivitySighting;
import com.newrelic.agent.android.harvest.ConnectInformation;
import com.newrelic.agent.android.harvest.type.HarvestableArray;
import com.newrelic.agent.android.logging.AgentLog;
import com.newrelic.agent.android.logging.AgentLogManager;
import com.newrelic.agent.android.metric.Metric;
import com.newrelic.agent.android.metric.MetricNames;
import com.newrelic.agent.android.util.SafeJsonPrimitive;
import com.newrelic.com.google.gson.Gson;
import com.newrelic.com.google.gson.JsonArray;
import com.newrelic.com.google.gson.JsonObject;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes.dex */
public class ActivityTrace extends HarvestableArray {
    public static final int MAX_TRACES = 2000;
    private static final String SIZE_NORMAL = "NORMAL";
    public static final String TRACE_VERSION = "1.0";
    public long lastUpdatedAt;
    private NamedActivity measuredActivity;
    public ActivitySighting previousActivity;
    public Trace rootTrace;
    public long startedAt;
    private Map<Sample.SampleType, Collection<Sample>> vitals;
    private static final HashMap<String, String> ENVIRONMENT_TYPE = new HashMap<String, String>() { // from class: com.newrelic.agent.android.tracing.ActivityTrace.1
        {
            put("type", "ENVIRONMENT");
        }
    };
    private static final HashMap<String, String> VITALS_TYPE = new HashMap<String, String>() { // from class: com.newrelic.agent.android.tracing.ActivityTrace.2
        {
            put("type", "VITALS");
        }
    };
    private static final HashMap<String, String> ACTIVITY_HISTORY_TYPE = new HashMap<String, String>() { // from class: com.newrelic.agent.android.tracing.ActivityTrace.3
        {
            put("type", "ACTIVITY_HISTORY");
        }
    };
    private final ConcurrentHashMap<UUID, Trace> traces = new ConcurrentHashMap<>();
    private int traceCount = 0;
    private final Set<UUID> missingChildren = Collections.synchronizedSet(new HashSet());
    private long reportAttemptCount = 0;
    private boolean complete = false;
    private final HashMap<String, String> params = new HashMap<>();
    private final AgentLog log = AgentLogManager.getAgentLog();
    public final Metric networkCountMetric = new Metric(MetricNames.ACTIVITY_NETWORK_METRIC_COUNT_FORMAT);
    public final Metric networkTimeMetric = new Metric(MetricNames.ACTIVITY_NETWORK_METRIC_TIME_FORMAT);

    public ActivityTrace() {
    }

    public ActivityTrace(Trace rootTrace) {
        this.rootTrace = rootTrace;
        this.lastUpdatedAt = rootTrace.entryTimestamp;
        this.startedAt = this.lastUpdatedAt;
        this.params.put("traceVersion", "1.0");
        this.params.put("type", "ACTIVITY");
        this.measuredActivity = (NamedActivity) Measurements.startActivity(rootTrace.displayName);
        this.measuredActivity.setStartTime(rootTrace.entryTimestamp);
    }

    public String getId() {
        if (this.rootTrace == null) {
            return null;
        }
        return this.rootTrace.myUUID.toString();
    }

    public void addTrace(Trace trace) {
        this.missingChildren.add(trace.myUUID);
        this.lastUpdatedAt = System.currentTimeMillis();
    }

    public void addCompletedTrace(Trace trace) {
        if (trace.getType() == TraceType.NETWORK) {
            this.networkCountMetric.sample(1.0d);
            this.networkTimeMetric.sample(trace.getDurationAsSeconds());
        }
        trace.traceMachine = null;
        this.missingChildren.remove(trace.myUUID);
        if (this.traceCount > 2000) {
            this.log.verbose("Maximum trace limit reached, discarding trace " + trace.myUUID);
            return;
        }
        this.traces.put(trace.myUUID, trace);
        this.traceCount++;
        if (trace.exitTimestamp > this.rootTrace.exitTimestamp) {
            this.rootTrace.exitTimestamp = trace.exitTimestamp;
        }
        if (this.log.getLevel() == 4) {
            this.log.verbose("Added trace " + trace.myUUID.toString() + " missing children: " + this.missingChildren.size());
        }
        this.lastUpdatedAt = System.currentTimeMillis();
    }

    public boolean hasMissingChildren() {
        return !this.missingChildren.isEmpty();
    }

    public boolean isComplete() {
        return this.complete;
    }

    public void discard() {
        this.log.debug("Discarding trace of " + this.rootTrace.displayName + ":" + this.rootTrace.myUUID.toString() + "(" + this.traces.size() + " traces)");
        this.rootTrace.traceMachine = null;
        this.complete = true;
        Measurements.endActivityWithoutMeasurement(this.measuredActivity);
    }

    public void complete() {
        this.log.debug("Completing trace of " + this.rootTrace.displayName + ":" + this.rootTrace.myUUID.toString() + "(" + this.traces.size() + " traces)");
        if (this.rootTrace.exitTimestamp == 0) {
            this.rootTrace.exitTimestamp = System.currentTimeMillis();
        }
        if (this.traces.isEmpty()) {
            this.rootTrace.traceMachine = null;
            this.complete = true;
            Measurements.endActivityWithoutMeasurement(this.measuredActivity);
        } else {
            this.measuredActivity.setEndTime(this.rootTrace.exitTimestamp);
            Measurements.endActivity(this.measuredActivity);
            this.rootTrace.traceMachine = null;
            this.complete = true;
            TaskQueue.queue(this);
        }
    }

    public Map<UUID, Trace> getTraces() {
        return this.traces;
    }

    @Override // com.newrelic.agent.android.harvest.type.HarvestableArray, com.newrelic.agent.android.harvest.type.BaseHarvestable, com.newrelic.agent.android.harvest.type.Harvestable
    public JsonArray asJsonArray() {
        JsonArray tree = new JsonArray();
        if (!this.complete) {
            this.log.verbose("Attempted to serialize trace " + this.rootTrace.myUUID.toString() + " but it has yet to be finalized");
            return null;
        }
        tree.add(new Gson().toJsonTree(this.params, GSON_STRING_MAP_TYPE));
        tree.add(SafeJsonPrimitive.factory(Long.valueOf(this.rootTrace.entryTimestamp)));
        tree.add(SafeJsonPrimitive.factory(Long.valueOf(this.rootTrace.exitTimestamp)));
        tree.add(SafeJsonPrimitive.factory(this.rootTrace.displayName));
        JsonArray segments = new JsonArray();
        segments.add(getEnvironment());
        segments.add(traceToTree(this.rootTrace));
        segments.add(getVitalsAsJson());
        if (this.previousActivity != null) {
            segments.add(getPreviousActivityAsJson());
        }
        tree.add(segments);
        return tree;
    }

    private JsonArray traceToTree(Trace trace) {
        JsonArray segment = new JsonArray();
        trace.prepareForSerialization();
        segment.add(new Gson().toJsonTree(trace.getParams(), GSON_STRING_MAP_TYPE));
        segment.add(SafeJsonPrimitive.factory(Long.valueOf(trace.entryTimestamp)));
        segment.add(SafeJsonPrimitive.factory(Long.valueOf(trace.exitTimestamp)));
        segment.add(SafeJsonPrimitive.factory(trace.displayName));
        JsonArray threadData = new JsonArray();
        threadData.add(SafeJsonPrimitive.factory(Long.valueOf(trace.threadId)));
        threadData.add(SafeJsonPrimitive.factory(trace.threadName));
        segment.add(threadData);
        if (trace.getChildren().isEmpty()) {
            segment.add(new JsonArray());
        } else {
            JsonArray children = new JsonArray();
            for (UUID traceUUID : trace.getChildren()) {
                Trace childTrace = this.traces.get(traceUUID);
                if (childTrace != null) {
                    children.add(traceToTree(childTrace));
                }
            }
            segment.add(children);
        }
        return segment;
    }

    private JsonArray getEnvironment() {
        JsonArray environment = new JsonArray();
        environment.add(new Gson().toJsonTree(ENVIRONMENT_TYPE, GSON_STRING_MAP_TYPE));
        ConnectInformation connectInformation = new ConnectInformation(Agent.getApplicationInformation(), Agent.getDeviceInformation());
        environment.addAll(connectInformation.asJsonArray());
        HashMap<String, String> environmentParams = new HashMap<>();
        environmentParams.put("size", SIZE_NORMAL);
        environment.add(new Gson().toJsonTree(environmentParams, GSON_STRING_MAP_TYPE));
        return environment;
    }

    public void setVitals(Map<Sample.SampleType, Collection<Sample>> vitals) {
        this.vitals = vitals;
    }

    private JsonArray getVitalsAsJson() {
        JsonArray jsonArray = new JsonArray();
        jsonArray.add(new Gson().toJsonTree(VITALS_TYPE, GSON_STRING_MAP_TYPE));
        JsonObject vitalsMap = new JsonObject();
        if (this.vitals != null) {
            for (Map.Entry<Sample.SampleType, Collection<Sample>> entry : this.vitals.entrySet()) {
                JsonArray samplesJsonArray = new JsonArray();
                for (Sample sample : entry.getValue()) {
                    if (sample.getTimestamp() <= this.lastUpdatedAt) {
                        samplesJsonArray.add(sample.asJsonArray());
                    }
                }
                vitalsMap.add(entry.getKey().toString(), samplesJsonArray);
            }
        }
        jsonArray.add(vitalsMap);
        return jsonArray;
    }

    private JsonArray getPreviousActivityAsJson() {
        JsonArray historyJson = new JsonArray();
        historyJson.add(new Gson().toJsonTree(ACTIVITY_HISTORY_TYPE, GSON_STRING_MAP_TYPE));
        historyJson.addAll(this.previousActivity.asJsonArray());
        return historyJson;
    }

    public void setLastUpdatedAt(long lastUpdatedAt) {
        this.lastUpdatedAt = lastUpdatedAt;
    }

    public long getLastUpdatedAt() {
        return this.lastUpdatedAt;
    }

    public long getReportAttemptCount() {
        return this.reportAttemptCount;
    }

    public void incrementReportAttemptCount() {
        this.reportAttemptCount++;
    }

    public String getActivityName() {
        int hashIndex;
        if (this.rootTrace == null) {
            return "<activity>";
        }
        String activityName = this.rootTrace.displayName;
        if (activityName != null && (hashIndex = activityName.indexOf("#")) > 0) {
            return activityName.substring(0, hashIndex);
        }
        return activityName;
    }
}

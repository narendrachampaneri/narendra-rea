package com.newrelic.agent.android.harvest;

import com.amazon.identity.auth.device.authorization.AuthorizationResponseParser;
import com.newrelic.agent.android.analytics.AnalyticAttribute;
import com.newrelic.agent.android.harvest.type.HarvestableArray;
import com.newrelic.agent.android.metric.Metric;
import com.newrelic.agent.android.metric.MetricStore;
import com.newrelic.com.google.gson.Gson;
import com.newrelic.com.google.gson.JsonArray;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public class MachineMeasurements extends HarvestableArray {
    private final MetricStore metrics = new MetricStore();

    public void addMetric(String name, double value) {
        Metric metric = new Metric(name);
        metric.sample(value);
        addMetric(metric);
    }

    public void addMetric(Metric metric) {
        this.metrics.add(metric);
    }

    public void clear() {
        this.metrics.clear();
    }

    public boolean isEmpty() {
        return this.metrics.isEmpty();
    }

    public MetricStore getMetrics() {
        return this.metrics;
    }

    @Override // com.newrelic.agent.android.harvest.type.HarvestableArray, com.newrelic.agent.android.harvest.type.BaseHarvestable, com.newrelic.agent.android.harvest.type.Harvestable
    public JsonArray asJsonArray() {
        JsonArray metricArray = new JsonArray();
        for (Metric metric : this.metrics.getAll()) {
            JsonArray metricJson = new JsonArray();
            HashMap<String, String> header = new HashMap<>();
            header.put(AnalyticAttribute.EVENT_NAME_ATTRIBUTE, metric.getName());
            header.put(AuthorizationResponseParser.SCOPE, metric.getStringScope());
            metricJson.add(new Gson().toJsonTree(header, GSON_STRING_MAP_TYPE));
            metricJson.add(metric.asJsonObject());
            metricArray.add(metricJson);
        }
        return metricArray;
    }
}

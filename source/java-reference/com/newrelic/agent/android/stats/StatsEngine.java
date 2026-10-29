package com.newrelic.agent.android.stats;

import com.newrelic.agent.android.TaskQueue;
import com.newrelic.agent.android.harvest.HarvestAdapter;
import com.newrelic.agent.android.metric.Metric;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes.dex */
public class StatsEngine extends HarvestAdapter {
    public static final StatsEngine INSTANCE = new StatsEngine();
    public boolean enabled = true;
    private ConcurrentHashMap<String, Metric> statsMap = new ConcurrentHashMap<>();

    private StatsEngine() {
    }

    public static StatsEngine get() {
        return INSTANCE;
    }

    public void inc(String name) {
        Metric m = lazyGet(name);
        synchronized (m) {
            m.increment();
        }
    }

    public void inc(String name, long count) {
        Metric m = lazyGet(name);
        synchronized (m) {
            m.increment(count);
        }
    }

    public void sample(String name, float value) {
        Metric m = lazyGet(name);
        synchronized (m) {
            m.sample(value);
        }
    }

    public void sampleTimeMs(String name, long time) {
        sample(name, time / 1000.0f);
    }

    public static void populateMetrics() {
        for (Map.Entry<String, Metric> entry : INSTANCE.getStatsMap().entrySet()) {
            Metric metric = entry.getValue();
            TaskQueue.queue(metric);
        }
    }

    @Override // com.newrelic.agent.android.harvest.HarvestAdapter, com.newrelic.agent.android.harvest.HarvestLifecycleAware
    public void onHarvest() {
        populateMetrics();
        reset();
    }

    public static void reset() {
        INSTANCE.getStatsMap().clear();
    }

    public static synchronized void disable() {
        INSTANCE.enabled = false;
    }

    public static synchronized void enable() {
        INSTANCE.enabled = true;
    }

    public ConcurrentHashMap<String, Metric> getStatsMap() {
        return this.statsMap;
    }

    private Metric lazyGet(String name) {
        Metric m = this.statsMap.get(name);
        if (m == null) {
            m = new Metric(name);
            if (this.enabled) {
                this.statsMap.put(name, m);
            }
        }
        return m;
    }
}

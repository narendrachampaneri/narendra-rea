package com.inmobi.commons.metric;

/* JADX INFO: loaded from: classes.dex */
public class Logger {
    private Storage c;
    private MetricConfigParams a = new MetricConfigParams();
    private Integer b = 2147483646;
    private Queuer d = new Queuer();
    private MetricsCallback e = null;

    public interface MetricsCallback {
        void dataCollected(EventLog eventLog);

        void movedMetricDataToFileMemory(String str);

        void reportingFailure();

        void reportingStartedWithRequest(String str);

        void reportingSuccess();
    }

    public Logger(int i, String str) {
        this.c = null;
        this.c = new Storage(i, str, this.d, this.a);
    }

    public Logger(int i, String str, Storage.PreProcessor preProcessor) {
        this.c = null;
        this.c = new Storage(i, str, this.d, this.a, preProcessor);
    }

    public void setMetricConfigParams(MetricConfigParams metricConfigParams) {
        if (metricConfigParams != null) {
            this.a = metricConfigParams;
            this.c.a = metricConfigParams;
        }
    }

    protected void finalize() throws Throwable {
        this.c.saveToLatest();
        super.finalize();
    }

    public void logEvent(EventLog eventLog) {
        this.c.readNumberOfEventsAndTimeStampFromPersistent();
        if (this.e != null) {
            this.e.dataCollected(eventLog);
        }
        this.d.log(eventLog);
        if (this.d.a() >= this.a.getDumpThreshhold()) {
            this.c.saveLocalCache();
        }
        if (this.c.getEvents() >= this.a.getMaxInQueue() || this.c.getTimestamp() + ((long) this.a.getNextRetryInterval()) <= System.currentTimeMillis() / 1000) {
            new Thread(new Runnable() { // from class: com.inmobi.commons.metric.Logger.1
                @Override // java.lang.Runnable
                public void run() {
                    Logger.this.c.sendFile();
                }
            }).start();
        }
    }

    public boolean startNewSample() {
        boolean z = false;
        synchronized (this.b) {
            Integer num = this.b;
            this.b = Integer.valueOf(this.b.intValue() + 1);
            if (this.b.intValue() >= this.a.getSamplingFactor()) {
                this.b = 0;
                z = true;
            }
        }
        return z;
    }

    public void setCallback(MetricsCallback metricsCallback) {
        this.e = metricsCallback;
        this.c.setCallback(metricsCallback);
    }
}

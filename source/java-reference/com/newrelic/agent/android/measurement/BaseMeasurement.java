package com.newrelic.agent.android.measurement;

import com.newrelic.agent.android.logging.AgentLog;
import com.newrelic.agent.android.logging.AgentLogManager;

/* JADX INFO: loaded from: classes.dex */
public class BaseMeasurement implements Measurement {
    private static final AgentLog log = AgentLogManager.getAgentLog();
    private long endTime;
    private long exclusiveTime;
    private boolean finished;
    private String name;
    private String scope;
    private long startTime;
    private ThreadInfo threadInfo;
    private MeasurementType type;

    public BaseMeasurement(MeasurementType measurementType) {
        setType(measurementType);
    }

    public BaseMeasurement(Measurement measurement) {
        setType(measurement.getType());
        setName(measurement.getName());
        setScope(measurement.getScope());
        setStartTime(measurement.getStartTime());
        setEndTime(measurement.getEndTime());
        setExclusiveTime(measurement.getExclusiveTime());
        setThreadInfo(measurement.getThreadInfo());
        this.finished = measurement.isFinished();
    }

    void setType(MeasurementType type) {
        throwIfFinished();
        this.type = type;
    }

    public void setName(String name) {
        throwIfFinished();
        this.name = name;
    }

    public void setScope(String scope) {
        throwIfFinished();
        this.scope = scope;
    }

    public void setStartTime(long startTime) {
        throwIfFinished();
        this.startTime = startTime;
    }

    public void setEndTime(long endTime) {
        throwIfFinished();
        if (endTime < this.startTime) {
            log.error("Measurement end time must not precede start time - startTime: " + this.startTime + " endTime: " + endTime);
        } else {
            this.endTime = endTime;
        }
    }

    public void setExclusiveTime(long exclusiveTime) {
        throwIfFinished();
        this.exclusiveTime = exclusiveTime;
    }

    @Override // com.newrelic.agent.android.measurement.Measurement
    public MeasurementType getType() {
        return this.type;
    }

    @Override // com.newrelic.agent.android.measurement.Measurement
    public String getName() {
        return this.name;
    }

    @Override // com.newrelic.agent.android.measurement.Measurement
    public String getScope() {
        return this.scope;
    }

    @Override // com.newrelic.agent.android.measurement.Measurement
    public long getStartTime() {
        return this.startTime;
    }

    @Override // com.newrelic.agent.android.measurement.Measurement
    public double getStartTimeInSeconds() {
        return this.startTime / 1000.0d;
    }

    @Override // com.newrelic.agent.android.measurement.Measurement
    public long getEndTime() {
        return this.endTime;
    }

    @Override // com.newrelic.agent.android.measurement.Measurement
    public double getEndTimeInSeconds() {
        return this.endTime / 1000.0d;
    }

    @Override // com.newrelic.agent.android.measurement.Measurement
    public long getExclusiveTime() {
        return this.exclusiveTime;
    }

    @Override // com.newrelic.agent.android.measurement.Measurement
    public double getExclusiveTimeInSeconds() {
        return this.exclusiveTime / 1000.0d;
    }

    @Override // com.newrelic.agent.android.measurement.Measurement
    public double asDouble() {
        throw new UnsupportedOperationException();
    }

    @Override // com.newrelic.agent.android.measurement.Measurement
    public ThreadInfo getThreadInfo() {
        return this.threadInfo;
    }

    public void setThreadInfo(ThreadInfo threadInfo) {
        this.threadInfo = threadInfo;
    }

    @Override // com.newrelic.agent.android.measurement.Measurement
    public boolean isInstantaneous() {
        return this.endTime == 0;
    }

    @Override // com.newrelic.agent.android.measurement.Measurement
    public void finish() {
        if (this.finished) {
            throw new MeasurementException("Finish called on already finished Measurement");
        }
        this.finished = true;
    }

    @Override // com.newrelic.agent.android.measurement.Measurement
    public boolean isFinished() {
        return this.finished;
    }

    private void throwIfFinished() {
        if (this.finished) {
            throw new MeasurementException("Attempted to modify finished Measurement");
        }
    }

    public String toString() {
        return "BaseMeasurement{type=" + this.type + ", name='" + this.name + "', scope='" + this.scope + "', startTime=" + this.startTime + ", endTime=" + this.endTime + ", exclusiveTime=" + this.exclusiveTime + ", threadInfo=" + this.threadInfo + ", finished=" + this.finished + '}';
    }
}

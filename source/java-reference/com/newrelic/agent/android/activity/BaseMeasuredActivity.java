package com.newrelic.agent.android.activity;

import com.newrelic.agent.android.measurement.Measurement;
import com.newrelic.agent.android.measurement.MeasurementException;
import com.newrelic.agent.android.measurement.MeasurementPool;
import com.newrelic.agent.android.measurement.ThreadInfo;
import com.newrelic.agent.android.tracing.TraceMachine;

/* JADX INFO: loaded from: classes.dex */
public class BaseMeasuredActivity implements MeasuredActivity {
    private boolean autoInstrumented;
    private long endTime;
    private Measurement endingMeasurement;
    private ThreadInfo endingThread;
    private boolean finished;
    private MeasurementPool measurementPool;
    private String name;
    private long startTime;
    private Measurement startingMeasurement;
    private ThreadInfo startingThread;

    @Override // com.newrelic.agent.android.activity.MeasuredActivity
    public String getName() {
        return this.name;
    }

    @Override // com.newrelic.agent.android.activity.MeasuredActivity
    public String getMetricName() {
        return TraceMachine.formatActivityMetricName(this.name);
    }

    @Override // com.newrelic.agent.android.activity.MeasuredActivity
    public String getBackgroundMetricName() {
        return TraceMachine.formatActivityBackgroundMetricName(this.name);
    }

    @Override // com.newrelic.agent.android.activity.MeasuredActivity
    public long getStartTime() {
        return this.startTime;
    }

    @Override // com.newrelic.agent.android.activity.MeasuredActivity
    public long getEndTime() {
        return this.endTime;
    }

    @Override // com.newrelic.agent.android.activity.MeasuredActivity
    public ThreadInfo getStartingThread() {
        return this.startingThread;
    }

    @Override // com.newrelic.agent.android.activity.MeasuredActivity
    public ThreadInfo getEndingThread() {
        return this.endingThread;
    }

    @Override // com.newrelic.agent.android.activity.MeasuredActivity
    public boolean isAutoInstrumented() {
        return this.autoInstrumented;
    }

    @Override // com.newrelic.agent.android.activity.MeasuredActivity
    public Measurement getStartingMeasurement() {
        return this.startingMeasurement;
    }

    @Override // com.newrelic.agent.android.activity.MeasuredActivity
    public Measurement getEndingMeasurement() {
        return this.endingMeasurement;
    }

    @Override // com.newrelic.agent.android.activity.MeasuredActivity
    public MeasurementPool getMeasurementPool() {
        return this.measurementPool;
    }

    @Override // com.newrelic.agent.android.activity.MeasuredActivity
    public void setName(String name) {
        throwIfFinished();
        this.name = name;
    }

    public void setStartTime(long startTime) {
        throwIfFinished();
        this.startTime = startTime;
    }

    public void setEndTime(long endTime) {
        throwIfFinished();
        this.endTime = endTime;
    }

    public void setStartingThread(ThreadInfo startingThread) {
        throwIfFinished();
        this.startingThread = startingThread;
    }

    public void setEndingThread(ThreadInfo endingThread) {
        throwIfFinished();
        this.endingThread = endingThread;
    }

    public void setAutoInstrumented(boolean autoInstrumented) {
        throwIfFinished();
        this.autoInstrumented = autoInstrumented;
    }

    public void setStartingMeasurement(Measurement startingMeasurement) {
        throwIfFinished();
        this.startingMeasurement = startingMeasurement;
    }

    public void setEndingMeasurement(Measurement endingMeasurement) {
        throwIfFinished();
        this.endingMeasurement = endingMeasurement;
    }

    public void setMeasurementPool(MeasurementPool measurementPool) {
        throwIfFinished();
        this.measurementPool = measurementPool;
    }

    @Override // com.newrelic.agent.android.activity.MeasuredActivity
    public void finish() {
        this.finished = true;
    }

    @Override // com.newrelic.agent.android.activity.MeasuredActivity
    public boolean isFinished() {
        return this.finished;
    }

    private void throwIfFinished() {
        if (this.finished) {
            throw new MeasurementException("Cannot modify finished Activity");
        }
    }
}

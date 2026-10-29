package com.newrelic.agent.android.measurement;

/* JADX INFO: loaded from: classes.dex */
public class ActivityMeasurement extends BaseMeasurement {
    public ActivityMeasurement(String name, long startTime, long endTime) {
        super(MeasurementType.Activity);
        setName(name);
        setStartTime(startTime);
        setEndTime(endTime);
    }
}

package com.amazon.ags.client.whispersync.metrics;

import android.util.Log;
import com.amazon.ags.client.metrics.IllegalConstructionException;
import com.amazon.ags.client.metrics.events.GameCircleGenericEvent;
import com.amazon.ags.client.whispersync.model.SyncableType;
import io.fabric.sdk.android.services.events.EventsFilesManager;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class WhispersyncMetricsFactory {
    private static final String COUNT_FAILURE_METRIC_LABEL = "COUNT_FAILURE";
    private static final String COUNT_METRIC_LABEL = "COUNT";
    private static final String COUNT_SUCCESS_METRIC_LABEL = "COUNT_SUCCESS";
    private static final String TAG = "GC_Whispersync_Metrics";
    private static final String TIME_METRIC_LABEL = "TIME";

    public static GameCircleGenericEvent createTimeEvent(String name, long timeValue) {
        return createBooleanGenericEvent(name, null, Long.valueOf(timeValue), null);
    }

    public static GameCircleGenericEvent createCountEvent(String name, int countValue) {
        return createBooleanGenericEvent(name, Integer.valueOf(countValue), null, null);
    }

    public static GameCircleGenericEvent createBooleanCountEvent(String name, int countValue, boolean succeeded) {
        return createBooleanGenericEvent(name, Integer.valueOf(countValue), null, Boolean.valueOf(succeeded));
    }

    public static GameCircleGenericEvent createGenericEvent(String name, Integer countValue, Long timeValue) {
        return createBooleanGenericEvent(name, countValue, timeValue, null);
    }

    public static GameCircleGenericEvent createSyncableTypeEvent(String name, SyncableType type) {
        return createBooleanGenericEvent(name + EventsFilesManager.ROLL_OVER_FILE_NAME_SEPARATOR + type.name(), 1, null, null);
    }

    public static GameCircleGenericEvent createBooleanGenericEvent(String name, Integer countValue, Long timeValue, Boolean succeeded) {
        Map<String, String> attributes = new HashMap<>();
        Map<String, Integer> countMetrics = new HashMap<>();
        Map<String, Long> timeMetrics = new HashMap<>();
        if (countValue != null) {
            if (succeeded != null) {
                if (succeeded.booleanValue()) {
                    countMetrics.put(COUNT_SUCCESS_METRIC_LABEL, countValue);
                } else {
                    countMetrics.put(COUNT_FAILURE_METRIC_LABEL, countValue);
                }
            } else {
                countMetrics.put(COUNT_METRIC_LABEL, countValue);
            }
        }
        if (timeValue != null) {
            timeMetrics.put(TIME_METRIC_LABEL, timeValue);
        }
        try {
            return new GameCircleGenericEvent(name, attributes, countMetrics, timeMetrics);
        } catch (IllegalConstructionException e) {
            Log.w(TAG, "Failed to construct metric [" + name + "]");
            return null;
        }
    }
}

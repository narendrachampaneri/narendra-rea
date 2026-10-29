package com.inmobi.commons.internal;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import com.inmobi.commons.analytics.bootstrapper.AnalyticsInitializer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class ActivityRecognitionSampler {
    static Looper b;
    static Handler c;
    static List<ActivitySample> d = new ArrayList();
    static HandlerThread a = new HandlerThread("ActivityDetectionSampler");

    public static class ActivitySample {
        private long a;
        private int b;

        public long getTimestamp() {
            return this.a;
        }

        public int getActivity() {
            return this.b;
        }

        public ActivitySample(int i, long j) {
            this.b = i;
            this.a = j;
        }
    }

    static {
        a.start();
        b = a.getLooper();
        c = new Handler(b) { // from class: com.inmobi.commons.internal.ActivityRecognitionSampler.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                switch (message.what) {
                    case 1:
                        int detectedActivity = ActivityRecognitionManager.getDetectedActivity();
                        if (detectedActivity != -1) {
                            if (ActivityRecognitionSampler.d.size() <= AnalyticsInitializer.getConfigParams().getThinIceConfig().getActivityDetectionMaxSize()) {
                                ActivityRecognitionSampler.d.add(new ActivitySample(detectedActivity, System.currentTimeMillis()));
                            }
                        }
                        ActivityRecognitionSampler.b();
                        break;
                }
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b() {
        if (AnalyticsInitializer.getConfigParams().getThinIceConfig().isActivityDetectionEnabled()) {
            c.sendMessageDelayed(c.obtainMessage(1), AnalyticsInitializer.getConfigParams().getThinIceConfig().getActivityDetectionInterval());
        }
    }

    public static void start() {
        if (!c.hasMessages(1)) {
            c.sendEmptyMessage(1);
        }
    }

    public static void stop() {
        c.removeMessages(1);
        d.clear();
    }

    public static List<ActivitySample> getCollectedList() {
        return AnalyticsInitializer.getConfigParams().getThinIceConfig().isActivityDetectionEnabled() ? d : Collections.emptyList();
    }
}

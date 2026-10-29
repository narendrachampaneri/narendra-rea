package com.appsomniacs.core;

import android.app.Application;
import android.content.Context;
import android.support.multidex.MultiDex;
import com.appsomniacs.da3.R;
import com.google.android.gms.analytics.GoogleAnalytics;
import com.google.android.gms.analytics.Tracker;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public class GoogleAnalyticsInfusedApplication extends Application {
    HashMap<TrackerName, Tracker> mTrackers = new HashMap<>();

    public enum TrackerName {
        APP_TRACKER,
        GLOBAL_TRACKER,
        ECOMMERCE_TRACKER
    }

    @Override // android.content.ContextWrapper
    protected void attachBaseContext(Context base) {
        super.attachBaseContext(base);
        MultiDex.install(this);
    }

    public synchronized Tracker getTracker(TrackerName trackerId) {
        Tracker t;
        if (!this.mTrackers.containsKey(trackerId)) {
            GoogleAnalytics analytics = GoogleAnalytics.getInstance(this);
            if (trackerId == TrackerName.APP_TRACKER) {
                t = analytics.newTracker(R.xml.app_tracker);
            } else if (trackerId == TrackerName.GLOBAL_TRACKER) {
                t = analytics.newTracker(R.xml.global_tracker);
            } else {
                t = analytics.newTracker(R.xml.ecommerce_tracker);
            }
            this.mTrackers.put(trackerId, t);
        }
        return this.mTrackers.get(trackerId);
    }
}

package com.amazon.ags.html5.factory;

import android.app.Activity;
import android.util.Log;
import com.amazon.ags.api.AmazonGamesCallback;
import com.amazon.ags.api.AmazonGamesFeature;
import java.util.EnumSet;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public final class AGSClientInstanceCoordinator {
    private static final String TAG = "GC_" + AGSClientInstanceCoordinator.class.getSimpleName();
    private static AGSClientInstanceCoordinator instance = null;
    private Activity currentActivity;
    private EnumSet<AmazonGamesFeature> features;
    private AmazonGamesCallback latestAmazonGamesCallback;
    private Set<AGSClientInstanceCoordinatorListener> listeners = new HashSet();

    public static synchronized AGSClientInstanceCoordinator initialize(Activity activity, AmazonGamesCallback amazonGamesCallback, EnumSet<AmazonGamesFeature> features) {
        if (instance != null) {
            Log.d(TAG, "AGSClientInstanceCoordinator already initialized.");
            instance.updateActivity(activity);
            instance.updateCallback(amazonGamesCallback);
            instance.updateFeatures(features);
        } else {
            instance = new AGSClientInstanceCoordinator(activity, amazonGamesCallback, features);
        }
        return instance;
    }

    public static synchronized AGSClientInstanceCoordinator getInstance() {
        if (instance == null) {
            Log.e(TAG, "AGSClientInstanceCoordinator must be initialized before using");
            throw new IllegalAccessError("AGSClientInstanceCoordinator must be initialized before using");
        }
        return instance;
    }

    private AGSClientInstanceCoordinator(Activity activity, AmazonGamesCallback amazonGamesCallback, EnumSet<AmazonGamesFeature> features) {
        this.currentActivity = activity;
        this.latestAmazonGamesCallback = amazonGamesCallback;
        this.features = features;
    }

    public Activity getCurrentActivity() {
        return this.currentActivity;
    }

    public void updateActivity(Activity activity) {
        this.currentActivity = activity;
        for (AGSClientInstanceCoordinatorListener listener : this.listeners) {
            listener.notifyCurrentActivityChanged(this.currentActivity);
        }
    }

    public void addAGSClientInstanceCoordinatorListener(AGSClientInstanceCoordinatorListener listener) {
        this.listeners.add(listener);
    }

    public void updateCallback(AmazonGamesCallback amazonGamesCallback) {
        this.latestAmazonGamesCallback = amazonGamesCallback;
    }

    public AmazonGamesCallback getLatestCallback() {
        return this.latestAmazonGamesCallback;
    }

    public EnumSet<AmazonGamesFeature> getEnabledFeatures() {
        return this.features;
    }

    public void updateFeatures(EnumSet<AmazonGamesFeature> newFeatures) {
        this.features = newFeatures;
    }
}

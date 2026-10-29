package com.mopub.common;

import android.app.Activity;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import java.lang.ref.WeakReference;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class MoPubLifecycleManager implements LifecycleListener {
    private static MoPubLifecycleManager sInstance;

    @NonNull
    private final Set<LifecycleListener> mLifecycleListeners = new HashSet();

    @NonNull
    private final WeakReference<Activity> mMainActivity;

    private MoPubLifecycleManager(Activity mainActivity) {
        this.mMainActivity = new WeakReference<>(mainActivity);
    }

    @NonNull
    public static synchronized MoPubLifecycleManager getInstance(Activity mainActivity) {
        if (sInstance == null) {
            sInstance = new MoPubLifecycleManager(mainActivity);
        }
        return sInstance;
    }

    public void addLifecycleListener(@Nullable LifecycleListener listener) {
        Activity activity;
        if (listener != null && this.mLifecycleListeners.add(listener) && (activity = this.mMainActivity.get()) != null) {
            listener.onCreate(activity);
            listener.onStart(activity);
        }
    }

    @Override // com.mopub.common.LifecycleListener
    public void onCreate(@NonNull Activity activity) {
        for (LifecycleListener lifecycleListener : this.mLifecycleListeners) {
            lifecycleListener.onCreate(activity);
        }
    }

    @Override // com.mopub.common.LifecycleListener
    public void onStart(@NonNull Activity activity) {
        for (LifecycleListener lifecycleListener : this.mLifecycleListeners) {
            lifecycleListener.onStart(activity);
        }
    }

    @Override // com.mopub.common.LifecycleListener
    public void onPause(@NonNull Activity activity) {
        for (LifecycleListener lifecycleListener : this.mLifecycleListeners) {
            lifecycleListener.onPause(activity);
        }
    }

    @Override // com.mopub.common.LifecycleListener
    public void onResume(@NonNull Activity activity) {
        for (LifecycleListener lifecycleListener : this.mLifecycleListeners) {
            lifecycleListener.onResume(activity);
        }
    }

    @Override // com.mopub.common.LifecycleListener
    public void onRestart(@NonNull Activity activity) {
        for (LifecycleListener lifecycleListener : this.mLifecycleListeners) {
            lifecycleListener.onRestart(activity);
        }
    }

    @Override // com.mopub.common.LifecycleListener
    public void onStop(@NonNull Activity activity) {
        for (LifecycleListener lifecycleListener : this.mLifecycleListeners) {
            lifecycleListener.onRestart(activity);
        }
    }

    @Override // com.mopub.common.LifecycleListener
    public void onDestroy(@NonNull Activity activity) {
        for (LifecycleListener lifecycleListener : this.mLifecycleListeners) {
            lifecycleListener.onRestart(activity);
        }
    }

    @Override // com.mopub.common.LifecycleListener
    public void onBackPressed(@NonNull Activity activity) {
        for (LifecycleListener lifecycleListener : this.mLifecycleListeners) {
            lifecycleListener.onBackPressed(activity);
        }
    }
}

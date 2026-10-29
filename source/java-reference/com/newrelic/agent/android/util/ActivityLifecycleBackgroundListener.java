package com.newrelic.agent.android.util;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import com.newrelic.agent.android.background.ApplicationStateMonitor;
import com.newrelic.agent.android.logging.AgentLog;
import com.newrelic.agent.android.logging.AgentLogManager;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public class ActivityLifecycleBackgroundListener extends UiBackgroundListener implements Application.ActivityLifecycleCallbacks {
    private static final AgentLog log = AgentLogManager.getAgentLog();
    private AtomicBoolean isInBackground = new AtomicBoolean(false);

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        log.info("ActivityLifecycleBackgroundListener.onActivityResumed");
        if (this.isInBackground.getAndSet(false)) {
            Runnable runner = new Runnable() { // from class: com.newrelic.agent.android.util.ActivityLifecycleBackgroundListener.1
                @Override // java.lang.Runnable
                public void run() {
                    ApplicationStateMonitor.getInstance().activityStarted();
                }
            };
            this.executor.submit(runner);
        }
    }

    @Override // com.newrelic.agent.android.util.UiBackgroundListener, android.content.ComponentCallbacks2
    public void onTrimMemory(int level) {
        log.info("ActivityLifecycleBackgroundListener.onTrimMemory level: " + level);
        if (20 == level) {
            this.isInBackground.set(true);
        }
        super.onTrimMemory(level);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle savedInstanceState) {
        log.info("ActivityLifecycleBackgroundListener.onActivityCreated");
        this.isInBackground.set(false);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
        log.info("ActivityLifecycleBackgroundListener.onActivityDestroyed");
        this.isInBackground.set(false);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
        if (this.isInBackground.compareAndSet(true, false)) {
            Runnable runner = new Runnable() { // from class: com.newrelic.agent.android.util.ActivityLifecycleBackgroundListener.2
                @Override // java.lang.Runnable
                public void run() {
                    ActivityLifecycleBackgroundListener.log.debug("ActivityLifecycleBackgroundListener.onActivityStarted - notifying ApplicationStateMonitor");
                    ApplicationStateMonitor.getInstance().activityStarted();
                }
            };
            this.executor.submit(runner);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        if (this.isInBackground.compareAndSet(false, true)) {
            Runnable runner = new Runnable() { // from class: com.newrelic.agent.android.util.ActivityLifecycleBackgroundListener.3
                @Override // java.lang.Runnable
                public void run() {
                    ActivityLifecycleBackgroundListener.log.debug("ActivityLifecycleBackgroundListener.onActivityPaused - notifying ApplicationStateMonitor");
                    ApplicationStateMonitor.getInstance().uiHidden();
                }
            };
            this.executor.submit(runner);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle outState) {
    }
}

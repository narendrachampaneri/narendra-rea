package com.newrelic.agent.android.util;

import android.content.ComponentCallbacks2;
import android.content.res.Configuration;
import com.newrelic.agent.android.background.ApplicationStateMonitor;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: loaded from: classes.dex */
public class UiBackgroundListener implements ComponentCallbacks2 {
    protected final ScheduledExecutorService executor = Executors.newSingleThreadScheduledExecutor(new NamedThreadFactory("UiBackgroundListener"));

    @Override // android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration newConfig) {
    }

    @Override // android.content.ComponentCallbacks
    public void onLowMemory() {
    }

    @Override // android.content.ComponentCallbacks2
    public void onTrimMemory(int level) {
        switch (level) {
            case 20:
                Runnable runner = new Runnable() { // from class: com.newrelic.agent.android.util.UiBackgroundListener.1
                    @Override // java.lang.Runnable
                    public void run() {
                        ApplicationStateMonitor.getInstance().uiHidden();
                    }
                };
                this.executor.submit(runner);
                break;
        }
    }
}

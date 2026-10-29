package com.newrelic.agent.android.background;

import com.newrelic.agent.android.logging.AgentLog;
import com.newrelic.agent.android.logging.AgentLogManager;
import com.newrelic.agent.android.util.NamedThreadFactory;
import java.util.ArrayList;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: loaded from: classes.dex */
public class ApplicationStateMonitor implements Runnable {
    private static ApplicationStateMonitor instance;
    private static final AgentLog log = AgentLogManager.getAgentLog();
    private final int activitySnoozeTimeInMilliseconds;
    protected final ArrayList<ApplicationStateListener> applicationStateListeners;
    private AtomicLong count;
    protected final ScheduledThreadPoolExecutor executor;
    private final Lock foregroundLock;
    protected AtomicBoolean foregrounded;
    private final Lock snoozeLock;
    private AtomicLong snoozeStartTime;

    private ApplicationStateMonitor() {
        this(5, 5, TimeUnit.SECONDS, 5000);
    }

    ApplicationStateMonitor(int initialDelay, int period, TimeUnit timeUnit, int snoozeTimeInMilliseconds) {
        this.count = new AtomicLong(0L);
        this.snoozeStartTime = new AtomicLong(0L);
        this.snoozeLock = new ReentrantLock();
        this.applicationStateListeners = new ArrayList<>();
        this.foregrounded = new AtomicBoolean(true);
        this.foregroundLock = new ReentrantLock();
        this.executor = new ScheduledThreadPoolExecutor(1, new NamedThreadFactory("AppStateMon"));
        this.activitySnoozeTimeInMilliseconds = snoozeTimeInMilliseconds;
        this.executor.scheduleAtFixedRate(this, initialDelay, period, timeUnit);
        log.info("Application state monitor has started");
    }

    public static ApplicationStateMonitor getInstance() {
        if (instance == null) {
            instance = new ApplicationStateMonitor();
        }
        return instance;
    }

    public void addApplicationStateListener(ApplicationStateListener listener) {
        synchronized (this.applicationStateListeners) {
            this.applicationStateListeners.add(listener);
        }
    }

    public void removeApplicationStateListener(ApplicationStateListener listener) {
        synchronized (this.applicationStateListeners) {
            this.applicationStateListeners.remove(listener);
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.foregroundLock.lock();
            if (this.foregrounded.get() && getSnoozeTime() >= this.activitySnoozeTimeInMilliseconds) {
                notifyApplicationInBackground();
                this.foregrounded.set(false);
            }
        } finally {
            this.foregroundLock.unlock();
        }
    }

    public void uiHidden() {
        Runnable runner = new Runnable() { // from class: com.newrelic.agent.android.background.ApplicationStateMonitor.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    ApplicationStateMonitor.this.foregroundLock.lock();
                    if (ApplicationStateMonitor.this.foregrounded.get()) {
                        ApplicationStateMonitor.log.info("UI has become hidden (app backgrounded)");
                        ApplicationStateMonitor.this.notifyApplicationInBackground();
                        ApplicationStateMonitor.this.foregrounded.set(false);
                    }
                } finally {
                    ApplicationStateMonitor.this.foregroundLock.unlock();
                }
            }
        };
        this.executor.execute(runner);
    }

    public void activityStopped() {
        Runnable runner = new Runnable() { // from class: com.newrelic.agent.android.background.ApplicationStateMonitor.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    ApplicationStateMonitor.this.foregroundLock.lock();
                    try {
                        ApplicationStateMonitor.this.snoozeLock.lock();
                        if (ApplicationStateMonitor.this.count.decrementAndGet() == 0) {
                            ApplicationStateMonitor.this.snoozeStartTime.set(System.currentTimeMillis());
                        }
                        ApplicationStateMonitor.this.snoozeLock.unlock();
                        ApplicationStateMonitor.this.foregroundLock.unlock();
                    } catch (Throwable th) {
                        ApplicationStateMonitor.this.snoozeLock.unlock();
                        throw th;
                    }
                } catch (Throwable th2) {
                    ApplicationStateMonitor.this.foregroundLock.unlock();
                    throw th2;
                }
            }
        };
        this.executor.execute(runner);
    }

    public void activityStarted() {
        Runnable runner = new Runnable() { // from class: com.newrelic.agent.android.background.ApplicationStateMonitor.3
            @Override // java.lang.Runnable
            public void run() {
                try {
                    ApplicationStateMonitor.this.foregroundLock.lock();
                    try {
                        ApplicationStateMonitor.this.snoozeLock.lock();
                        if (ApplicationStateMonitor.this.count.incrementAndGet() == 1) {
                            ApplicationStateMonitor.this.snoozeStartTime.set(0L);
                        }
                        ApplicationStateMonitor.this.snoozeLock.unlock();
                        if (!ApplicationStateMonitor.this.foregrounded.get()) {
                            ApplicationStateMonitor.log.verbose("Application appears to be in the foreground");
                            ApplicationStateMonitor.this.notifyApplicationInForeground();
                            ApplicationStateMonitor.this.foregrounded.set(true);
                        }
                        ApplicationStateMonitor.this.foregroundLock.unlock();
                    } catch (Throwable th) {
                        ApplicationStateMonitor.this.snoozeLock.unlock();
                        throw th;
                    }
                } catch (Throwable th2) {
                    ApplicationStateMonitor.this.foregroundLock.unlock();
                    throw th2;
                }
            }
        };
        this.executor.execute(runner);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyApplicationInBackground() {
        ArrayList<ApplicationStateListener> listeners;
        log.verbose("Application appears to have gone to the background");
        synchronized (this.applicationStateListeners) {
            listeners = new ArrayList<>(this.applicationStateListeners);
        }
        ApplicationStateEvent e = new ApplicationStateEvent(this);
        for (ApplicationStateListener listener : listeners) {
            listener.applicationBackgrounded(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyApplicationInForeground() {
        ArrayList<ApplicationStateListener> listeners;
        synchronized (this.applicationStateListeners) {
            listeners = new ArrayList<>(this.applicationStateListeners);
        }
        ApplicationStateEvent e = new ApplicationStateEvent(this);
        for (ApplicationStateListener listener : listeners) {
            listener.applicationForegrounded(e);
        }
    }

    private long getSnoozeTime() {
        long snoozeValue = 0;
        try {
            this.foregroundLock.lock();
            try {
                this.snoozeLock.lock();
                long snoozeTime = this.snoozeStartTime.get();
                if (snoozeTime != 0) {
                    snoozeValue = System.currentTimeMillis() - snoozeTime;
                }
                this.snoozeLock.unlock();
                this.foregroundLock.unlock();
                return snoozeValue;
            } catch (Throwable th) {
                this.snoozeLock.unlock();
                throw th;
            }
        } catch (Throwable th2) {
            this.foregroundLock.unlock();
            throw th2;
        }
    }

    public ScheduledThreadPoolExecutor getExecutor() {
        return this.executor;
    }
}

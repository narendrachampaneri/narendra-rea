package com.newrelic.agent.android.analytics;

import com.newrelic.agent.android.logging.AgentLog;
import com.newrelic.agent.android.logging.AgentLogManager;
import io.fabric.sdk.android.services.settings.SettingsJsonConstants;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
public class EventManagerImpl implements EventManager {
    private List<AnalyticsEvent> events;
    private AtomicInteger eventsEjected;
    private AtomicInteger eventsRecorded;
    private long firstEventTimestamp;
    private AtomicBoolean initialized;
    private int maxBufferTimeInSec;
    private int maxEventPoolSize;
    private static final AgentLog log = AgentLogManager.getAgentLog();
    public static int DEFAULT_MAX_EVENT_BUFFER_TIME = SettingsJsonConstants.ANALYTICS_FLUSH_INTERVAL_SECS_DEFAULT;
    public static int DEFAULT_MAX_EVENT_BUFFER_SIZE = 1000;

    public EventManagerImpl() {
        this(DEFAULT_MAX_EVENT_BUFFER_SIZE, DEFAULT_MAX_EVENT_BUFFER_TIME);
    }

    public EventManagerImpl(int maxEventPoolSize, int maxBufferTimeInSec) {
        this.initialized = new AtomicBoolean(false);
        this.eventsRecorded = new AtomicInteger(0);
        this.eventsEjected = new AtomicInteger(0);
        this.events = Collections.synchronizedList(new ArrayList(maxEventPoolSize));
        this.maxBufferTimeInSec = maxBufferTimeInSec;
        this.maxEventPoolSize = maxEventPoolSize;
        this.firstEventTimestamp = 0L;
        this.eventsRecorded.set(0);
        this.eventsEjected.set(0);
    }

    @Override // com.newrelic.agent.android.analytics.EventManager
    public void initialize() {
        if (!this.initialized.compareAndSet(false, true)) {
            log.verbose("EventManagerImpl has already been initialized.  Bypassing...");
            return;
        }
        this.firstEventTimestamp = 0L;
        this.eventsRecorded.set(0);
        this.eventsEjected.set(0);
        empty();
    }

    @Override // com.newrelic.agent.android.analytics.EventManager
    public void shutdown() {
        this.initialized.set(false);
    }

    @Override // com.newrelic.agent.android.analytics.EventManager
    public int size() {
        return this.events.size();
    }

    @Override // com.newrelic.agent.android.analytics.EventManager
    public void empty() {
        this.events.clear();
        this.firstEventTimestamp = 0L;
    }

    @Override // com.newrelic.agent.android.analytics.EventManager
    public boolean isTransmitRequired() {
        return (!this.initialized.get() && this.events.size() > 0) || isMaxEventBufferTimeExceeded();
    }

    @Override // com.newrelic.agent.android.analytics.EventManager
    public boolean addEvent(AnalyticsEvent event) {
        int eventsRecorded = this.eventsRecorded.incrementAndGet();
        if (this.events.size() == 0) {
            log.verbose("EventManagerImpl.addEvent - Queue is currently empty, setting first event timestamp to " + System.currentTimeMillis());
            this.firstEventTimestamp = System.currentTimeMillis();
        }
        if (this.events.size() >= this.maxEventPoolSize) {
            this.eventsEjected.incrementAndGet();
            int index = (int) (Math.random() * ((double) eventsRecorded));
            if (index >= this.maxEventPoolSize) {
                return true;
            }
            this.events.remove(index);
        }
        return this.events.add(event);
    }

    @Override // com.newrelic.agent.android.analytics.EventManager
    public int getEventsRecorded() {
        return this.eventsRecorded.get();
    }

    @Override // com.newrelic.agent.android.analytics.EventManager
    public int getEventsEjected() {
        return this.eventsEjected.get();
    }

    @Override // com.newrelic.agent.android.analytics.EventManager
    public boolean isMaxEventBufferTimeExceeded() {
        return this.firstEventTimestamp > 0 && System.currentTimeMillis() - this.firstEventTimestamp > ((long) (this.maxBufferTimeInSec * 1000));
    }

    @Override // com.newrelic.agent.android.analytics.EventManager
    public boolean isMaxEventPoolSizeExceeded() {
        return this.events.size() > this.maxEventPoolSize;
    }

    @Override // com.newrelic.agent.android.analytics.EventManager
    public int getMaxEventPoolSize() {
        return this.maxEventPoolSize;
    }

    @Override // com.newrelic.agent.android.analytics.EventManager
    public void setMaxEventPoolSize(int maxSize) {
        this.maxEventPoolSize = maxSize;
    }

    @Override // com.newrelic.agent.android.analytics.EventManager
    public void setMaxEventBufferTime(int maxBufferTimeInSec) {
        this.maxBufferTimeInSec = maxBufferTimeInSec;
    }

    @Override // com.newrelic.agent.android.analytics.EventManager
    public int getMaxEventBufferTime() {
        return this.maxBufferTimeInSec;
    }

    @Override // com.newrelic.agent.android.analytics.EventManager
    public Collection<AnalyticsEvent> getQueuedEvents() {
        return Collections.unmodifiableCollection(this.events);
    }
}

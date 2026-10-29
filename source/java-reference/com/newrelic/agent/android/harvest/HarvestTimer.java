package com.newrelic.agent.android.harvest;

import com.newrelic.agent.android.logging.AgentLog;
import com.newrelic.agent.android.logging.AgentLogManager;
import com.newrelic.agent.android.stats.TicToc;
import com.newrelic.agent.android.util.NamedThreadFactory;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: loaded from: classes.dex */
public class HarvestTimer implements Runnable {
    private static final long DEFAULT_HARVEST_PERIOD = 60000;
    private static final long HARVEST_PERIOD_LEEWAY = 1000;
    private static final long NEVER_TICKED = -1;
    protected final Harvester harvester;
    protected long lastTickTime;
    private long startTimeMs;
    private final ScheduledExecutorService scheduler = Executors.newSingleThreadScheduledExecutor(new NamedThreadFactory("Harvester"));
    private final AgentLog log = AgentLogManager.getAgentLog();
    private ScheduledFuture tickFuture = null;
    protected long period = 60000;
    private Lock lock = new ReentrantLock();

    public HarvestTimer(Harvester harvester) {
        this.harvester = harvester;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.lock.lock();
            tickIfReady();
        } catch (Exception e) {
            this.log.error("HarvestTimer: Exception in timer tick: " + e.getMessage());
            e.printStackTrace();
            AgentHealth.noticeException(e);
        } finally {
            this.lock.unlock();
        }
    }

    private void tickIfReady() {
        long lastTickDelta = timeSinceLastTick();
        if (1000 + lastTickDelta < this.period && lastTickDelta != -1) {
            this.log.debug("HarvestTimer: Tick is too soon (" + lastTickDelta + " delta) Last tick time: " + this.lastTickTime + " . Skipping.");
            return;
        }
        this.log.debug("HarvestTimer: time since last tick: " + lastTickDelta);
        long tickStart = now();
        try {
            tick();
        } catch (Exception e) {
            this.log.error("HarvestTimer: Exception in timer tick: " + e.getMessage());
            e.printStackTrace();
            AgentHealth.noticeException(e);
        }
        this.lastTickTime = tickStart;
        this.log.debug("Set last tick time to: " + this.lastTickTime);
    }

    protected void tick() {
        this.log.debug("Harvest: tick");
        TicToc t = new TicToc();
        t.tic();
        try {
            this.harvester.execute();
        } catch (Exception e) {
            this.log.error("HarvestTimer: Exception in harvest execute: " + e.getMessage());
            e.printStackTrace();
            AgentHealth.noticeException(e);
        }
        this.log.debug("Harvest: executed");
        if (this.harvester.isDisabled()) {
            stop();
        }
        long tickDelta = t.toc();
        this.log.debug("HarvestTimer tick took " + tickDelta + "ms");
    }

    public void start() {
        if (isRunning()) {
            this.log.warning("HarvestTimer: Attempting to start while already running");
            return;
        }
        if (this.period <= 0) {
            this.log.error("HarvestTimer: Refusing to start with a period of 0 ms");
            return;
        }
        this.log.debug("HarvestTimer: Starting with a period of " + this.period + "ms");
        this.startTimeMs = System.currentTimeMillis();
        this.tickFuture = this.scheduler.scheduleAtFixedRate(this, 0L, this.period, TimeUnit.MILLISECONDS);
        this.harvester.start();
    }

    public void stop() {
        if (!isRunning()) {
            this.log.warning("HarvestTimer: Attempting to stop when not running");
            return;
        }
        cancelPendingTasks();
        this.log.debug("HarvestTimer: Stopped.");
        this.startTimeMs = 0L;
        this.harvester.stop();
    }

    public void shutdown() {
        cancelPendingTasks();
        this.scheduler.shutdownNow();
    }

    public void tickNow() {
        try {
            this.scheduler.schedule(new Runnable() { // from class: com.newrelic.agent.android.harvest.HarvestTimer.1
                @Override // java.lang.Runnable
                public void run() {
                    this.tick();
                }
            }, 0L, TimeUnit.SECONDS).get();
        } catch (Exception e) {
            this.log.error("Exception waiting for tickNow to finish: " + e.getMessage());
            e.printStackTrace();
            AgentHealth.noticeException(e);
        }
    }

    public boolean isRunning() {
        return this.tickFuture != null;
    }

    public void setPeriod(long period) {
        this.period = period;
    }

    public long timeSinceLastTick() {
        if (this.lastTickTime == 0) {
            return -1L;
        }
        return now() - this.lastTickTime;
    }

    public long timeSinceStart() {
        if (this.startTimeMs == 0) {
            return 0L;
        }
        return now() - this.startTimeMs;
    }

    private long now() {
        return System.currentTimeMillis();
    }

    protected void cancelPendingTasks() {
        try {
            this.lock.lock();
            if (this.tickFuture != null) {
                this.tickFuture.cancel(true);
                this.tickFuture = null;
            }
        } finally {
            this.lock.unlock();
        }
    }
}

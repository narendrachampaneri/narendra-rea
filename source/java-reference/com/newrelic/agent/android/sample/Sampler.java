package com.newrelic.agent.android.sample;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Debug;
import android.os.Process;
import com.newrelic.agent.android.harvest.AgentHealth;
import com.newrelic.agent.android.logging.AgentLog;
import com.newrelic.agent.android.logging.AgentLogManager;
import com.newrelic.agent.android.metric.Metric;
import com.newrelic.agent.android.stats.TicToc;
import com.newrelic.agent.android.tracing.ActivityTrace;
import com.newrelic.agent.android.tracing.Sample;
import com.newrelic.agent.android.tracing.TraceLifecycleAware;
import com.newrelic.agent.android.tracing.TraceMachine;
import com.newrelic.agent.android.util.NamedThreadFactory;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: loaded from: classes.dex */
public class Sampler implements TraceLifecycleAware, Runnable {
    private static final int KB_IN_MB = 1024;
    private static final long SAMPLE_FREQ_MS = 100;
    protected static final long SAMPLE_FREQ_MS_MAX = 250;
    protected static Sampler sampler;
    private final ActivityManager activityManager;
    private RandomAccessFile appStatFile;
    private Long lastAppCpuTime;
    private Long lastCpuTime;
    private RandomAccessFile procStatFile;
    protected ScheduledFuture sampleFuture;
    private Metric samplerServiceMetric;
    private static final int[] PID = {Process.myPid()};
    private static final AgentLog log = AgentLogManager.getAgentLog();
    private static final ReentrantLock samplerLock = new ReentrantLock();
    protected static boolean cpuSamplingDisabled = false;
    private final EnumMap<Sample.SampleType, Collection<Sample>> samples = new EnumMap<>(Sample.SampleType.class);
    private final ScheduledExecutorService scheduler = Executors.newSingleThreadScheduledExecutor(new NamedThreadFactory("Sampler"));
    protected final AtomicBoolean isRunning = new AtomicBoolean(false);
    protected long sampleFreqMs = SAMPLE_FREQ_MS;

    protected Sampler(Context context) {
        this.activityManager = (ActivityManager) context.getSystemService("activity");
        this.samples.put(Sample.SampleType.MEMORY, new ArrayList());
        this.samples.put(Sample.SampleType.CPU, new ArrayList());
    }

    public static void init(Context context) {
        samplerLock.lock();
        try {
            if (sampler == null) {
                sampler = new Sampler(context);
                sampler.sampleFreqMs = SAMPLE_FREQ_MS;
                sampler.samplerServiceMetric = new Metric("samplerServiceTime");
                TraceMachine.addTraceListener(sampler);
                log.debug("Sampler initialized");
            }
        } catch (Exception e) {
            log.error("Sampler init failed: " + e.getMessage());
            shutdown();
        } finally {
            samplerLock.unlock();
        }
    }

    public static void start() {
        samplerLock.lock();
        try {
            if (sampler != null) {
                sampler.schedule();
                log.debug("Sampler started");
            }
        } finally {
            samplerLock.unlock();
        }
    }

    public static void stop() {
        samplerLock.lock();
        try {
            if (sampler != null) {
                sampler.stop(false);
                log.debug("Sampler stopped");
            }
        } finally {
            samplerLock.unlock();
        }
    }

    public static void stopNow() {
        samplerLock.lock();
        try {
            if (sampler != null) {
                sampler.stop(true);
                log.debug("Sampler hard stopped");
            }
        } finally {
            samplerLock.unlock();
        }
    }

    public static void shutdown() {
        samplerLock.lock();
        try {
            if (sampler != null) {
                TraceMachine.removeTraceListener(sampler);
                stop();
                sampler = null;
                log.debug("Sampler shutdown");
            }
        } finally {
            samplerLock.unlock();
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            if (this.isRunning.get()) {
                sample();
            }
        } catch (Exception e) {
            log.error("Caught exception while running the sampler", e);
            AgentHealth.noticeException(e);
        }
    }

    protected void schedule() {
        samplerLock.lock();
        try {
            if (!this.isRunning.get()) {
                clear();
                this.sampleFuture = this.scheduler.scheduleWithFixedDelay(this, 0L, this.sampleFreqMs, TimeUnit.MILLISECONDS);
                this.isRunning.set(true);
                log.debug(String.format("Sampler scheduler started; sampling will occur every %d ms.", Long.valueOf(this.sampleFreqMs)));
            }
        } catch (Exception e) {
            log.error("Sampler scheduling failed: " + e.getMessage());
            AgentHealth.noticeException(e);
        } finally {
            samplerLock.unlock();
        }
    }

    protected void stop(boolean immediate) {
        samplerLock.lock();
        try {
            if (this.isRunning.get()) {
                this.isRunning.set(false);
                if (this.sampleFuture != null) {
                    this.sampleFuture.cancel(immediate);
                }
                resetCpuSampler();
                log.debug("Sampler canceled");
            }
        } catch (Exception e) {
            log.error("Sampler stop failed: " + e.getMessage());
            AgentHealth.noticeException(e);
        } finally {
            samplerLock.unlock();
        }
    }

    protected static boolean isRunning() {
        return (sampler == null || sampler.sampleFuture == null || sampler.sampleFuture.isDone()) ? false : true;
    }

    protected void monitorSamplerServiceTime(double serviceTime) {
        this.samplerServiceMetric.sample(serviceTime);
        Double serviceTimeAvg = Double.valueOf(this.samplerServiceMetric.getTotal() / this.samplerServiceMetric.getCount());
        if (serviceTimeAvg.doubleValue() > this.sampleFreqMs) {
            log.debug("Sampler: sample service time has been exceeded. Increase by 10%");
            this.sampleFreqMs = Math.min((long) (this.sampleFreqMs * 1.1f), SAMPLE_FREQ_MS_MAX);
            if (this.sampleFuture != null) {
                this.sampleFuture.cancel(true);
            }
            this.sampleFuture = this.scheduler.scheduleWithFixedDelay(this, 0L, this.sampleFreqMs, TimeUnit.MILLISECONDS);
            log.debug(String.format("Sampler scheduler restarted; sampling will now occur every %d ms.", Long.valueOf(this.sampleFreqMs)));
            this.samplerServiceMetric.clear();
        }
    }

    protected void sample() {
        TicToc timer = new TicToc();
        samplerLock.lock();
        try {
            try {
                timer.tic();
                Sample memorySample = sampleMemory();
                if (memorySample != null) {
                    getSampleCollection(Sample.SampleType.MEMORY).add(memorySample);
                }
                Sample cpuSample = sampleCpu();
                if (cpuSample != null) {
                    getSampleCollection(Sample.SampleType.CPU).add(cpuSample);
                }
                samplerLock.unlock();
            } catch (Exception e) {
                log.error("Sampling failed: " + e.getMessage());
                AgentHealth.noticeException(e);
                samplerLock.unlock();
            }
            monitorSamplerServiceTime(timer.toc());
        } catch (Throwable th) {
            samplerLock.unlock();
            throw th;
        }
    }

    protected void clear() {
        for (Collection<Sample> sampleCollection : this.samples.values()) {
            sampleCollection.clear();
        }
    }

    public static Sample sampleMemory() {
        if (sampler == null) {
            return null;
        }
        return sampleMemory(sampler.activityManager);
    }

    public static Sample sampleMemory(ActivityManager activityManager) {
        int totalPss;
        try {
            Debug.MemoryInfo[] memInfo = activityManager.getProcessMemoryInfo(PID);
            if (memInfo.length > 0 && (totalPss = memInfo[0].getTotalPss()) >= 0) {
                Sample sample = new Sample(Sample.SampleType.MEMORY);
                sample.setSampleValue(((double) totalPss) / 1024.0d);
                return sample;
            }
        } catch (Exception e) {
            log.error("Sample memory failed: " + e.getMessage());
            AgentHealth.noticeException(e);
        }
        return null;
    }

    protected static Sample sampleCpuInstance() {
        if (sampler == null) {
            return null;
        }
        return sampler.sampleCpu();
    }

    public Sample sampleCpu() {
        if (cpuSamplingDisabled) {
            return null;
        }
        try {
            if (this.procStatFile == null || this.appStatFile == null) {
                this.procStatFile = new RandomAccessFile("/proc/stat", "r");
                this.appStatFile = new RandomAccessFile("/proc/" + PID[0] + "/stat", "r");
            } else {
                this.procStatFile.seek(0L);
                this.appStatFile.seek(0L);
            }
            String procStatString = this.procStatFile.readLine();
            String appStatString = this.appStatFile.readLine();
            String[] procStats = procStatString.split(" ");
            String[] appStats = appStatString.split(" ");
            long cpuTime = Long.parseLong(procStats[2]) + Long.parseLong(procStats[3]) + Long.parseLong(procStats[4]) + Long.parseLong(procStats[5]) + Long.parseLong(procStats[6]) + Long.parseLong(procStats[7]) + Long.parseLong(procStats[8]);
            long appTime = Long.parseLong(appStats[13]) + Long.parseLong(appStats[14]);
            if (this.lastCpuTime == null && this.lastAppCpuTime == null) {
                this.lastCpuTime = Long.valueOf(cpuTime);
                this.lastAppCpuTime = Long.valueOf(appTime);
                return null;
            }
            Sample sample = new Sample(Sample.SampleType.CPU);
            sample.setSampleValue(((appTime - this.lastAppCpuTime.longValue()) / (cpuTime - this.lastCpuTime.longValue())) * 100.0d);
            this.lastCpuTime = Long.valueOf(cpuTime);
            this.lastAppCpuTime = Long.valueOf(appTime);
            return sample;
        } catch (Exception e) {
            cpuSamplingDisabled = true;
            log.debug("Exception hit while CPU sampling: " + e.getMessage());
            AgentHealth.noticeException(e);
            return null;
        }
    }

    private void resetCpuSampler() {
        this.lastCpuTime = null;
        this.lastAppCpuTime = null;
        if (this.appStatFile != null && this.procStatFile != null) {
            try {
                this.appStatFile.close();
                this.procStatFile.close();
                this.appStatFile = null;
                this.procStatFile = null;
            } catch (IOException e) {
                log.debug("Exception hit while resetting CPU sampler: " + e.getMessage());
                AgentHealth.noticeException(e);
            }
        }
    }

    public static Map<Sample.SampleType, Collection<Sample>> copySamples() {
        samplerLock.lock();
        try {
            if (sampler == null) {
                samplerLock.unlock();
                return new HashMap();
            }
            EnumMap<Sample.SampleType, Collection<Sample>> copy = new EnumMap<>((EnumMap<K, ? extends Collection<Sample>>) sampler.samples);
            for (K key : sampler.samples.keySet()) {
                copy.put(key, new ArrayList<>(sampler.samples.get(key)));
            }
            return Collections.unmodifiableMap(copy);
        } finally {
            samplerLock.unlock();
        }
    }

    private Collection<Sample> getSampleCollection(Sample.SampleType type) {
        return this.samples.get(type);
    }

    @Override // com.newrelic.agent.android.tracing.TraceLifecycleAware
    public void onEnterMethod() {
        if (!this.isRunning.get()) {
            start();
        }
    }

    @Override // com.newrelic.agent.android.tracing.TraceLifecycleAware
    public void onExitMethod() {
    }

    @Override // com.newrelic.agent.android.tracing.TraceLifecycleAware
    public void onTraceStart(ActivityTrace activityTrace) {
        start();
    }

    @Override // com.newrelic.agent.android.tracing.TraceLifecycleAware
    public void onTraceComplete(ActivityTrace activityTrace) {
        stop();
        activityTrace.setVitals(copySamples());
        clear();
    }
}

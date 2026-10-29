package com.amazon.device.ads;

import android.util.SparseArray;

/* JADX INFO: loaded from: classes.dex */
abstract class StartUpWaiter implements Configuration.ConfigurationListener, Settings.SettingsListener {
    static final int CALLBACK_ON_MAIN_THREAD = 0;
    static final int DEFAULT = 1;
    private static final SparseArray<ThreadUtils.RunnableExecutor> executors = new SparseArray<>();
    private int callbackType = 1;
    private final Configuration configuration;
    private final Settings settings;

    protected abstract void startUpFailed();

    protected abstract void startUpReady();

    static {
        putRunnableExecutor(0, new ThreadUtils.MainThreadScheduler());
        putRunnableExecutor(1, new ThreadUtils.ThreadPoolScheduler());
    }

    public StartUpWaiter(Settings settings, Configuration configuration) {
        this.settings = settings;
        this.configuration = configuration;
    }

    public void start() {
        this.settings.listenForSettings(this);
    }

    public void startAndCallbackOnMainThread() {
        this.callbackType = 0;
        start();
    }

    @Override // com.amazon.device.ads.Settings.SettingsListener
    public void settingsLoaded() {
        this.configuration.queueConfigurationListener(this);
    }

    @Override // com.amazon.device.ads.Configuration.ConfigurationListener
    public void onConfigurationReady() {
        Runnable proc = new Runnable() { // from class: com.amazon.device.ads.StartUpWaiter.1
            @Override // java.lang.Runnable
            public void run() {
                StartUpWaiter.this.startUpReady();
            }
        };
        onFinished(proc);
    }

    @Override // com.amazon.device.ads.Configuration.ConfigurationListener
    public void onConfigurationFailure() {
        Runnable proc = new Runnable() { // from class: com.amazon.device.ads.StartUpWaiter.2
            @Override // java.lang.Runnable
            public void run() {
                StartUpWaiter.this.startUpFailed();
            }
        };
        onFinished(proc);
    }

    private void onFinished(Runnable proc) {
        getExecutor(this.callbackType).execute(proc);
    }

    Settings getSettings() {
        return this.settings;
    }

    Configuration getConfiguration() {
        return this.configuration;
    }

    static ThreadUtils.RunnableExecutor getExecutor(int callbackType) {
        return executors.get(callbackType, executors.get(1));
    }

    static void putRunnableExecutor(int callbackType, ThreadUtils.RunnableExecutor executor) {
        if (executor == null) {
            executors.remove(callbackType);
        } else {
            executors.put(callbackType, executor);
        }
    }
}

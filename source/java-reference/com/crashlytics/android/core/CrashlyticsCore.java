package com.crashlytics.android.core;

import android.R;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.widget.ScrollView;
import android.widget.TextView;
import com.crashlytics.android.answers.Answers;
import com.crashlytics.android.core.internal.CrashEventDataProvider;
import com.crashlytics.android.core.internal.models.SessionEventData;
import io.fabric.sdk.android.Fabric;
import io.fabric.sdk.android.Kit;
import io.fabric.sdk.android.services.common.ApiKey;
import io.fabric.sdk.android.services.common.CommonUtils;
import io.fabric.sdk.android.services.common.Crash;
import io.fabric.sdk.android.services.common.ExecutorUtils;
import io.fabric.sdk.android.services.common.IdManager;
import io.fabric.sdk.android.services.concurrency.DependsOn;
import io.fabric.sdk.android.services.concurrency.Priority;
import io.fabric.sdk.android.services.concurrency.PriorityCallable;
import io.fabric.sdk.android.services.concurrency.Task;
import io.fabric.sdk.android.services.concurrency.UnmetDependencyException;
import io.fabric.sdk.android.services.network.DefaultHttpRequestFactory;
import io.fabric.sdk.android.services.network.HttpMethod;
import io.fabric.sdk.android.services.network.HttpRequest;
import io.fabric.sdk.android.services.network.HttpRequestFactory;
import io.fabric.sdk.android.services.persistence.FileStore;
import io.fabric.sdk.android.services.persistence.FileStoreImpl;
import io.fabric.sdk.android.services.persistence.PreferenceStore;
import io.fabric.sdk.android.services.persistence.PreferenceStoreImpl;
import io.fabric.sdk.android.services.settings.PromptSettingsData;
import io.fabric.sdk.android.services.settings.SessionSettingsData;
import io.fabric.sdk.android.services.settings.Settings;
import io.fabric.sdk.android.services.settings.SettingsData;
import java.io.File;
import java.net.URL;
import java.util.Collections;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import javax.net.ssl.HttpsURLConnection;

/* JADX INFO: loaded from: classes.dex */
@DependsOn({CrashEventDataProvider.class})
public class CrashlyticsCore extends Kit<Void> {
    static final float CLS_DEFAULT_PROCESS_DELAY = 1.0f;
    static final String COLLECT_CUSTOM_KEYS = "com.crashlytics.CollectCustomKeys";
    static final String COLLECT_CUSTOM_LOGS = "com.crashlytics.CollectCustomLogs";
    static final String CRASHLYTICS_API_ENDPOINT = "com.crashlytics.ApiEndpoint";
    static final String CRASHLYTICS_REQUIRE_BUILD_ID = "com.crashlytics.RequireBuildId";
    static final boolean CRASHLYTICS_REQUIRE_BUILD_ID_DEFAULT = true;
    static final String CRASH_MARKER_FILE_NAME = "crash_marker";
    static final int DEFAULT_MAIN_HANDLER_TIMEOUT_SEC = 4;
    private static final String INITIALIZATION_MARKER_FILE_NAME = "initialization_marker";
    static final int MAX_ATTRIBUTES = 64;
    static final int MAX_ATTRIBUTE_SIZE = 1024;
    private static final String PREF_ALWAYS_SEND_REPORTS_KEY = "always_send_reports_opt_in";
    private static final boolean SHOULD_PROMPT_BEFORE_SENDING_REPORTS_DEFAULT = false;
    public static final String TAG = "CrashlyticsCore";
    private String apiKey;
    private final ConcurrentHashMap<String, String> attributes;
    private String buildId;
    private CrashlyticsFileMarker crashMarker;
    private float delay;
    private boolean disabled;
    private CrashlyticsExecutorServiceWrapper executorServiceWrapper;
    private CrashEventDataProvider externalCrashEventDataProvider;
    private FileStore fileStore;
    private CrashlyticsUncaughtExceptionHandler handler;
    private HttpRequestFactory httpRequestFactory;
    private CrashlyticsFileMarker initializationMarker;
    private String installerPackageName;
    private CrashlyticsListener listener;
    private String packageName;
    private final PinningInfoProvider pinningInfo;
    private File sdkDir;
    private final long startTime;
    private String userEmail;
    private String userId;
    private String userName;
    private String versionCode;
    private String versionName;

    public static class Builder {
        private float delay = -1.0f;
        private boolean disabled = false;
        private CrashlyticsListener listener;
        private PinningInfoProvider pinningInfoProvider;

        public Builder delay(float delay) {
            if (delay <= 0.0f) {
                throw new IllegalArgumentException("delay must be greater than 0");
            }
            if (this.delay > 0.0f) {
                throw new IllegalStateException("delay already set.");
            }
            this.delay = delay;
            return this;
        }

        public Builder listener(CrashlyticsListener listener) {
            if (listener == null) {
                throw new IllegalArgumentException("listener must not be null.");
            }
            if (this.listener != null) {
                throw new IllegalStateException("listener already set.");
            }
            this.listener = listener;
            return this;
        }

        @Deprecated
        public Builder pinningInfo(PinningInfoProvider pinningInfoProvider) {
            if (pinningInfoProvider == null) {
                throw new IllegalArgumentException("pinningInfoProvider must not be null.");
            }
            if (this.pinningInfoProvider != null) {
                throw new IllegalStateException("pinningInfoProvider already set.");
            }
            this.pinningInfoProvider = pinningInfoProvider;
            return this;
        }

        public Builder disabled(boolean isDisabled) {
            this.disabled = isDisabled;
            return this;
        }

        public CrashlyticsCore build() {
            if (this.delay < 0.0f) {
                this.delay = 1.0f;
            }
            return new CrashlyticsCore(this.delay, this.listener, this.pinningInfoProvider, this.disabled);
        }
    }

    public CrashlyticsCore() {
        this(1.0f, null, null, false);
    }

    CrashlyticsCore(float delay, CrashlyticsListener listener, PinningInfoProvider pinningInfo, boolean disabled) {
        this(delay, listener, pinningInfo, disabled, ExecutorUtils.buildSingleThreadExecutorService("Crashlytics Exception Handler"));
    }

    CrashlyticsCore(float delay, CrashlyticsListener listener, PinningInfoProvider pinningInfo, boolean disabled, ExecutorService crashHandlerExecutor) {
        this.userId = null;
        this.userEmail = null;
        this.userName = null;
        this.delay = delay;
        this.listener = listener == null ? new NoOpListener() : listener;
        this.pinningInfo = pinningInfo;
        this.disabled = disabled;
        this.executorServiceWrapper = new CrashlyticsExecutorServiceWrapper(crashHandlerExecutor);
        this.attributes = new ConcurrentHashMap<>();
        this.startTime = System.currentTimeMillis();
    }

    @Override // io.fabric.sdk.android.Kit
    protected boolean onPreExecute() {
        Context context = super.getContext();
        return onPreExecute(context);
    }

    boolean onPreExecute(Context context) {
        if (this.disabled) {
            return false;
        }
        this.apiKey = new ApiKey().getValue(context);
        if (this.apiKey == null) {
            return false;
        }
        Fabric.getLogger().i(TAG, "Initializing Crashlytics " + getVersion());
        this.fileStore = new FileStoreImpl(this);
        this.crashMarker = new CrashlyticsFileMarker(CRASH_MARKER_FILE_NAME, this.fileStore);
        this.initializationMarker = new CrashlyticsFileMarker(INITIALIZATION_MARKER_FILE_NAME, this.fileStore);
        try {
            setAndValidateKitProperties(context, this.apiKey);
            UnityVersionProvider unityVersionProvider = new ManifestUnityVersionProvider(context, getPackageName());
            boolean initializeSynchronously = didPreviousInitializationFail();
            checkForPreviousCrash();
            installExceptionHandler(unityVersionProvider);
            if (initializeSynchronously && CommonUtils.canTryConnection(context)) {
                finishInitSynchronously();
                return false;
            }
            return true;
        } catch (CrashlyticsMissingDependencyException e) {
            throw new UnmetDependencyException(e);
        } catch (Exception e2) {
            Fabric.getLogger().e(TAG, "Crashlytics was not started due to an exception during initialization", e2);
            return false;
        }
    }

    private void setAndValidateKitProperties(Context context, String apiKey) throws PackageManager.NameNotFoundException {
        CrashlyticsPinningInfoProvider infoProvider = this.pinningInfo != null ? new CrashlyticsPinningInfoProvider(this.pinningInfo) : null;
        this.httpRequestFactory = new DefaultHttpRequestFactory(Fabric.getLogger());
        this.httpRequestFactory.setPinningInfoProvider(infoProvider);
        this.packageName = context.getPackageName();
        this.installerPackageName = getIdManager().getInstallerPackageName();
        Fabric.getLogger().d(TAG, "Installer package name is: " + this.installerPackageName);
        PackageManager packageManager = context.getPackageManager();
        PackageInfo packageInfo = packageManager.getPackageInfo(this.packageName, 0);
        this.versionCode = Integer.toString(packageInfo.versionCode);
        this.versionName = packageInfo.versionName == null ? IdManager.DEFAULT_VERSION_NAME : packageInfo.versionName;
        this.buildId = CommonUtils.resolveBuildId(context);
        getBuildIdValidator(this.buildId, isRequiringBuildId(context)).validate(apiKey, this.packageName);
    }

    private void installExceptionHandler(UnityVersionProvider unityVersionProvider) {
        try {
            Fabric.getLogger().d(TAG, "Installing exception handler...");
            this.handler = new CrashlyticsUncaughtExceptionHandler(Thread.getDefaultUncaughtExceptionHandler(), this.executorServiceWrapper, getIdManager(), unityVersionProvider, this.fileStore, this);
            this.handler.openSession();
            Thread.setDefaultUncaughtExceptionHandler(this.handler);
            Fabric.getLogger().d(TAG, "Successfully installed exception handler.");
        } catch (Exception e) {
            Fabric.getLogger().e(TAG, "There was a problem installing the exception handler.", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.fabric.sdk.android.Kit
    public Void doInBackground() {
        markInitializationStarted();
        this.handler.cleanInvalidTempFiles();
        try {
            try {
                SettingsData settingsData = Settings.getInstance().awaitSettingsData();
                if (settingsData == null) {
                    Fabric.getLogger().w(TAG, "Received null settings, skipping initialization!");
                    markInitializationComplete();
                } else if (settingsData.featuresData.collectReports) {
                    this.handler.finalizeSessions();
                    CreateReportSpiCall call = getCreateReportSpiCall(settingsData);
                    if (call == null) {
                        Fabric.getLogger().w(TAG, "Unable to create a call to upload reports.");
                        markInitializationComplete();
                    } else {
                        new ReportUploader(call).uploadReports(this.delay);
                        markInitializationComplete();
                    }
                } else {
                    Fabric.getLogger().d(TAG, "Collection of crash reports disabled in Crashlytics settings.");
                    markInitializationComplete();
                }
            } catch (Exception e) {
                Fabric.getLogger().e(TAG, "Crashlytics encountered a problem during asynchronous initialization.", e);
                markInitializationComplete();
            }
            return null;
        } catch (Throwable th) {
            markInitializationComplete();
            throw th;
        }
    }

    @Override // io.fabric.sdk.android.Kit
    public String getIdentifier() {
        return "com.crashlytics.sdk.android.crashlytics-core";
    }

    @Override // io.fabric.sdk.android.Kit
    public String getVersion() {
        return "2.3.8.97";
    }

    public static CrashlyticsCore getInstance() {
        return (CrashlyticsCore) Fabric.getKit(CrashlyticsCore.class);
    }

    public PinningInfoProvider getPinningInfoProvider() {
        if (this.disabled) {
            return null;
        }
        return this.pinningInfo;
    }

    public void logException(Throwable throwable) {
        if (!this.disabled && ensureFabricWithCalled("prior to logging exceptions.")) {
            if (throwable == null) {
                Fabric.getLogger().log(5, TAG, "Crashlytics is ignoring a request to log a null exception.");
            } else {
                this.handler.writeNonFatalException(Thread.currentThread(), throwable);
            }
        }
    }

    public void log(String msg) {
        doLog(3, TAG, msg);
    }

    private void doLog(int priority, String tag, String msg) {
        if (!this.disabled && ensureFabricWithCalled("prior to logging messages.")) {
            long timestamp = System.currentTimeMillis() - this.startTime;
            this.handler.writeToLog(timestamp, formatLogMessage(priority, tag, msg));
        }
    }

    public void log(int priority, String tag, String msg) {
        doLog(priority, tag, msg);
        Fabric.getLogger().log(priority, "" + tag, "" + msg, true);
    }

    public void setUserIdentifier(String identifier) {
        if (!this.disabled) {
            this.userId = sanitizeAttribute(identifier);
            this.handler.cacheUserData(this.userId, this.userName, this.userEmail);
        }
    }

    public void setUserName(String name) {
        if (!this.disabled) {
            this.userName = sanitizeAttribute(name);
            this.handler.cacheUserData(this.userId, this.userName, this.userEmail);
        }
    }

    public void setUserEmail(String email) {
        if (!this.disabled) {
            this.userEmail = sanitizeAttribute(email);
            this.handler.cacheUserData(this.userId, this.userName, this.userEmail);
        }
    }

    public void setString(String key, String value) {
        if (!this.disabled) {
            if (key == null) {
                Context context = getContext();
                if (context != null && CommonUtils.isAppDebuggable(context)) {
                    throw new IllegalArgumentException("Custom attribute key must not be null.");
                }
                Fabric.getLogger().e(TAG, "Attempting to set custom attribute with null key, ignoring.", null);
                return;
            }
            String key2 = sanitizeAttribute(key);
            if (this.attributes.size() >= 64 && !this.attributes.containsKey(key2)) {
                Fabric.getLogger().d(TAG, "Exceeded maximum number of custom attributes (64)");
            } else {
                this.attributes.put(key2, value == null ? "" : sanitizeAttribute(value));
                this.handler.cacheKeyData(this.attributes);
            }
        }
    }

    public void setBool(String key, boolean value) {
        setString(key, Boolean.toString(value));
    }

    public void setDouble(String key, double value) {
        setString(key, Double.toString(value));
    }

    public void setFloat(String key, float value) {
        setString(key, Float.toString(value));
    }

    public void setInt(String key, int value) {
        setString(key, Integer.toString(value));
    }

    public void setLong(String key, long value) {
        setString(key, Long.toString(value));
    }

    public void crash() {
        new CrashTest().indexOutOfBounds();
    }

    public boolean verifyPinning(URL url) {
        try {
            return internalVerifyPinning(url);
        } catch (Exception e) {
            Fabric.getLogger().e(TAG, "Could not verify SSL pinning", e);
            return false;
        }
    }

    @Deprecated
    public synchronized void setListener(CrashlyticsListener listener) {
        Fabric.getLogger().w(TAG, "Use of setListener is deprecated.");
        if (listener == null) {
            throw new IllegalArgumentException("listener must not be null.");
        }
        this.listener = listener;
    }

    static void recordLoggedExceptionEvent(String sessionId) {
        Answers answers = (Answers) Fabric.getKit(Answers.class);
        if (answers != null) {
            answers.onException(new Crash.LoggedException(sessionId));
        }
    }

    static void recordFatalExceptionEvent(String sessionId) {
        Answers answers = (Answers) Fabric.getKit(Answers.class);
        if (answers != null) {
            answers.onException(new Crash.FatalException(sessionId));
        }
    }

    Map<String, String> getAttributes() {
        return Collections.unmodifiableMap(this.attributes);
    }

    BuildIdValidator getBuildIdValidator(String buildId, boolean requireBuildId) {
        return new BuildIdValidator(buildId, requireBuildId);
    }

    String getPackageName() {
        return this.packageName;
    }

    String getApiKey() {
        return this.apiKey;
    }

    String getInstallerPackageName() {
        return this.installerPackageName;
    }

    String getVersionName() {
        return this.versionName;
    }

    String getVersionCode() {
        return this.versionCode;
    }

    String getOverridenSpiEndpoint() {
        return CommonUtils.getStringsFileValue(getContext(), CRASHLYTICS_API_ENDPOINT);
    }

    String getBuildId() {
        return this.buildId;
    }

    CrashlyticsUncaughtExceptionHandler getHandler() {
        return this.handler;
    }

    String getUserIdentifier() {
        if (getIdManager().canCollectUserIds()) {
            return this.userId;
        }
        return null;
    }

    String getUserEmail() {
        if (getIdManager().canCollectUserIds()) {
            return this.userEmail;
        }
        return null;
    }

    String getUserName() {
        if (getIdManager().canCollectUserIds()) {
            return this.userName;
        }
        return null;
    }

    private void finishInitSynchronously() {
        PriorityCallable<Void> callable = new PriorityCallable<Void>() { // from class: com.crashlytics.android.core.CrashlyticsCore.1
            @Override // java.util.concurrent.Callable
            public Void call() throws Exception {
                return CrashlyticsCore.this.doInBackground();
            }

            @Override // io.fabric.sdk.android.services.concurrency.PriorityTask, io.fabric.sdk.android.services.concurrency.PriorityProvider
            public Priority getPriority() {
                return Priority.IMMEDIATE;
            }
        };
        for (Task task : getDependencies()) {
            callable.addDependency(task);
        }
        Future<Void> future = getFabric().getExecutorService().submit(callable);
        Fabric.getLogger().d(TAG, "Crashlytics detected incomplete initialization on previous app launch. Will initialize synchronously.");
        try {
            future.get(4L, TimeUnit.SECONDS);
        } catch (InterruptedException e) {
            Fabric.getLogger().e(TAG, "Crashlytics was interrupted during initialization.", e);
        } catch (ExecutionException e2) {
            Fabric.getLogger().e(TAG, "Problem encountered during Crashlytics initialization.", e2);
        } catch (TimeoutException e3) {
            Fabric.getLogger().e(TAG, "Crashlytics timed out during initialization.", e3);
        }
    }

    void markInitializationStarted() {
        this.executorServiceWrapper.executeSyncLoggingException(new Callable<Void>() { // from class: com.crashlytics.android.core.CrashlyticsCore.2
            @Override // java.util.concurrent.Callable
            public Void call() throws Exception {
                CrashlyticsCore.this.initializationMarker.create();
                Fabric.getLogger().d(CrashlyticsCore.TAG, "Initialization marker file created.");
                return null;
            }
        });
    }

    void markInitializationComplete() {
        this.executorServiceWrapper.executeAsync(new Callable<Boolean>() { // from class: com.crashlytics.android.core.CrashlyticsCore.3
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public Boolean call() throws Exception {
                try {
                    boolean removed = CrashlyticsCore.this.initializationMarker.remove();
                    Fabric.getLogger().d(CrashlyticsCore.TAG, "Initialization marker file removed: " + removed);
                    return Boolean.valueOf(removed);
                } catch (Exception e) {
                    Fabric.getLogger().e(CrashlyticsCore.TAG, "Problem encountered deleting Crashlytics initialization marker.", e);
                    return false;
                }
            }
        });
    }

    boolean didPreviousInitializationFail() {
        return ((Boolean) this.executorServiceWrapper.executeSyncLoggingException(new Callable<Boolean>() { // from class: com.crashlytics.android.core.CrashlyticsCore.4
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public Boolean call() throws Exception {
                return Boolean.valueOf(CrashlyticsCore.this.initializationMarker.isPresent());
            }
        })).booleanValue();
    }

    void setExternalCrashEventDataProvider(CrashEventDataProvider provider) {
        this.externalCrashEventDataProvider = provider;
    }

    SessionEventData getExternalCrashEventData() {
        if (this.externalCrashEventDataProvider == null) {
            return null;
        }
        SessionEventData eventData = this.externalCrashEventDataProvider.getCrashEventData();
        return eventData;
    }

    boolean internalVerifyPinning(URL url) {
        if (getPinningInfoProvider() == null) {
            return false;
        }
        HttpRequest httpRequest = this.httpRequestFactory.buildHttpRequest(HttpMethod.GET, url.toString());
        HttpsURLConnection conn = (HttpsURLConnection) httpRequest.getConnection();
        conn.setInstanceFollowRedirects(false);
        httpRequest.code();
        return true;
    }

    File getSdkDirectory() {
        if (this.sdkDir == null) {
            this.sdkDir = new FileStoreImpl(this).getFilesDir();
        }
        return this.sdkDir;
    }

    boolean shouldPromptUserBeforeSendingCrashReports() {
        return ((Boolean) Settings.getInstance().withSettings(new Settings.SettingsAccess<Boolean>() { // from class: com.crashlytics.android.core.CrashlyticsCore.5
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // io.fabric.sdk.android.services.settings.Settings.SettingsAccess
            public Boolean usingSettings(SettingsData settingsData) {
                if (settingsData.featuresData.promptEnabled) {
                    return Boolean.valueOf(CrashlyticsCore.this.shouldSendReportsWithoutPrompting() ? false : true);
                }
                return false;
            }
        }, false)).booleanValue();
    }

    boolean shouldSendReportsWithoutPrompting() {
        PreferenceStore prefStore = new PreferenceStoreImpl(this);
        return prefStore.get().getBoolean(PREF_ALWAYS_SEND_REPORTS_KEY, false);
    }

    @SuppressLint({"CommitPrefEdits"})
    void setShouldSendUserReportsWithoutPrompting(boolean send) {
        PreferenceStore prefStore = new PreferenceStoreImpl(this);
        prefStore.save(prefStore.edit().putBoolean(PREF_ALWAYS_SEND_REPORTS_KEY, send));
    }

    boolean canSendWithUserApproval() {
        return ((Boolean) Settings.getInstance().withSettings(new Settings.SettingsAccess<Boolean>() { // from class: com.crashlytics.android.core.CrashlyticsCore.6
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // io.fabric.sdk.android.services.settings.Settings.SettingsAccess
            public Boolean usingSettings(SettingsData settingsData) {
                boolean send = true;
                Activity activity = CrashlyticsCore.this.getFabric().getCurrentActivity();
                if (activity != null && !activity.isFinishing() && CrashlyticsCore.this.shouldPromptUserBeforeSendingCrashReports()) {
                    send = CrashlyticsCore.this.getSendDecisionFromUser(activity, settingsData.promptData);
                }
                return Boolean.valueOf(send);
            }
        }, true)).booleanValue();
    }

    CreateReportSpiCall getCreateReportSpiCall(SettingsData settingsData) {
        if (settingsData != null) {
            return new DefaultCreateReportSpiCall(this, getOverridenSpiEndpoint(), settingsData.appData.reportsUrl, this.httpRequestFactory);
        }
        return null;
    }

    private void checkForPreviousCrash() {
        Boolean foundPreviousCrash = (Boolean) this.executorServiceWrapper.executeSyncLoggingException(new CrashMarkerCheck(this.crashMarker));
        if (Boolean.TRUE.equals(foundPreviousCrash)) {
            try {
                this.listener.crashlyticsDidDetectCrashDuringPreviousExecution();
            } catch (Exception e) {
                Fabric.getLogger().e(TAG, "Exception thrown by CrashlyticsListener while notifying of previous crash.", e);
            }
        }
    }

    void createCrashMarker() {
        this.crashMarker.create();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean getSendDecisionFromUser(final Activity context, final PromptSettingsData promptData) {
        final DialogStringResolver stringResolver = new DialogStringResolver(context, promptData);
        final OptInLatch latch = new OptInLatch();
        context.runOnUiThread(new Runnable() { // from class: com.crashlytics.android.core.CrashlyticsCore.7
            @Override // java.lang.Runnable
            public void run() {
                AlertDialog.Builder builder = new AlertDialog.Builder(context);
                DialogInterface.OnClickListener sendClickListener = new DialogInterface.OnClickListener() { // from class: com.crashlytics.android.core.CrashlyticsCore.7.1
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialog, int which) {
                        latch.setOptIn(true);
                        dialog.dismiss();
                    }
                };
                float density = context.getResources().getDisplayMetrics().density;
                int textViewPadding = CrashlyticsCore.dipsToPixels(density, 5);
                TextView textView = new TextView(context);
                textView.setAutoLinkMask(15);
                textView.setText(stringResolver.getMessage());
                textView.setTextAppearance(context, R.style.TextAppearance.Medium);
                textView.setPadding(textViewPadding, textViewPadding, textViewPadding, textViewPadding);
                textView.setFocusable(false);
                ScrollView scrollView = new ScrollView(context);
                scrollView.setPadding(CrashlyticsCore.dipsToPixels(density, 14), CrashlyticsCore.dipsToPixels(density, 2), CrashlyticsCore.dipsToPixels(density, 10), CrashlyticsCore.dipsToPixels(density, 12));
                scrollView.addView(textView);
                builder.setView(scrollView).setTitle(stringResolver.getTitle()).setCancelable(false).setNeutralButton(stringResolver.getSendButtonTitle(), sendClickListener);
                if (promptData.showCancelButton) {
                    DialogInterface.OnClickListener cancelClickListener = new DialogInterface.OnClickListener() { // from class: com.crashlytics.android.core.CrashlyticsCore.7.2
                        @Override // android.content.DialogInterface.OnClickListener
                        public void onClick(DialogInterface dialog, int id) {
                            latch.setOptIn(false);
                            dialog.dismiss();
                        }
                    };
                    builder.setNegativeButton(stringResolver.getCancelButtonTitle(), cancelClickListener);
                }
                if (promptData.showAlwaysSendButton) {
                    DialogInterface.OnClickListener alwaysSendClickListener = new DialogInterface.OnClickListener() { // from class: com.crashlytics.android.core.CrashlyticsCore.7.3
                        @Override // android.content.DialogInterface.OnClickListener
                        public void onClick(DialogInterface dialog, int id) {
                            CrashlyticsCore.this.setShouldSendUserReportsWithoutPrompting(true);
                            latch.setOptIn(true);
                            dialog.dismiss();
                        }
                    };
                    builder.setPositiveButton(stringResolver.getAlwaysSendButtonTitle(), alwaysSendClickListener);
                }
                builder.show();
            }
        });
        Fabric.getLogger().d(TAG, "Waiting for user opt-in.");
        latch.await();
        return latch.getOptIn();
    }

    static SessionSettingsData getSessionSettingsData() {
        SettingsData settingsData = Settings.getInstance().awaitSettingsData();
        if (settingsData == null) {
            return null;
        }
        return settingsData.sessionData;
    }

    private static boolean isRequiringBuildId(Context context) {
        return CommonUtils.getBooleanResourceValue(context, CRASHLYTICS_REQUIRE_BUILD_ID, true);
    }

    private static String formatLogMessage(int priority, String tag, String msg) {
        return CommonUtils.logPriorityToString(priority) + "/" + tag + " " + msg;
    }

    private static boolean ensureFabricWithCalled(String msg) {
        CrashlyticsCore instance = getInstance();
        if (instance != null && instance.handler != null) {
            return true;
        }
        Fabric.getLogger().e(TAG, "Crashlytics must be initialized by calling Fabric.with(Context) " + msg, null);
        return false;
    }

    private static String sanitizeAttribute(String input) {
        if (input != null) {
            String input2 = input.trim();
            if (input2.length() > 1024) {
                return input2.substring(0, 1024);
            }
            return input2;
        }
        return input;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int dipsToPixels(float density, int dips) {
        return (int) (dips * density);
    }

    /* JADX INFO: loaded from: classes2.dex */
    private static class OptInLatch {
        private final CountDownLatch latch;
        private boolean send;

        private OptInLatch() {
            this.send = false;
            this.latch = new CountDownLatch(1);
        }

        void setOptIn(boolean optIn) {
            this.send = optIn;
            this.latch.countDown();
        }

        boolean getOptIn() {
            return this.send;
        }

        void await() {
            try {
                this.latch.await();
            } catch (InterruptedException e) {
            }
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    private static final class CrashMarkerCheck implements Callable<Boolean> {
        private final CrashlyticsFileMarker crashMarker;

        public CrashMarkerCheck(CrashlyticsFileMarker crashMarker) {
            this.crashMarker = crashMarker;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Callable
        public Boolean call() throws Exception {
            if (!this.crashMarker.isPresent()) {
                return Boolean.FALSE;
            }
            Fabric.getLogger().d(CrashlyticsCore.TAG, "Found previous crash marker.");
            this.crashMarker.remove();
            return Boolean.TRUE;
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    private static final class NoOpListener implements CrashlyticsListener {
        private NoOpListener() {
        }

        @Override // com.crashlytics.android.core.CrashlyticsListener
        public void crashlyticsDidDetectCrashDuringPreviousExecution() {
        }
    }
}

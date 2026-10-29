package com.amazon.ags.api;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import com.amazon.ags.VersionInfo;
import com.amazon.ags.api.achievements.AchievementsClient;
import com.amazon.ags.api.leaderboards.LeaderboardsClient;
import com.amazon.ags.api.overlay.PopUpLocation;
import com.amazon.ags.api.player.PlayerClient;
import com.amazon.ags.api.whispersync.WhispersyncClient;
import com.amazon.ags.client.AGResponseHandleImpl;
import com.amazon.ags.client.KindleFireBindingCallback;
import com.amazon.ags.client.KindleFireProxy;
import com.amazon.ags.client.KindleFireSoftkeyBeachballManager;
import com.amazon.ags.client.KindleFireStatus;
import com.amazon.ags.client.LifecycleCallbacks;
import com.amazon.ags.client.RequestResponseImpl;
import com.amazon.ags.client.achievements.AchievementsClientImpl;
import com.amazon.ags.client.leaderboards.LeaderboardsClientImpl;
import com.amazon.ags.client.metrics.EventCollectorClient;
import com.amazon.ags.client.metrics.IllegalConstructionException;
import com.amazon.ags.client.metrics.events.GameCircleGenericEvent;
import com.amazon.ags.client.player.PlayerClientImpl;
import com.amazon.ags.client.session.InitializeSessionResponse;
import com.amazon.ags.client.session.SessionEvent;
import com.amazon.ags.client.session.SessionEventQueue;
import com.amazon.ags.client.whispersync.WhispersyncClientImpl;
import com.amazon.ags.constants.AuthorizeKeys;
import com.amazon.ags.constants.ServiceActionCode;
import com.amazon.ags.constants.metrics.EventNames;
import com.amazon.ags.constants.metrics.MetricConstants;
import com.amazon.ags.html5.content.ContentManager;
import com.amazon.ags.html5.content.GCVariationManager;
import com.amazon.ags.html5.factory.AGSClientInstanceCoordinator;
import com.amazon.ags.html5.factory.ServiceFactory;
import com.amazon.ags.html5.overlay.PopUpPrefs;
import com.amazon.ags.html5.util.GlobalState;
import com.amazon.ags.jni.AGSJniHandler;
import com.amazon.ags.storage.EncryptionStringObfuscator;
import com.amazon.ags.storage.StringObfuscator;
import com.amazon.identity.auth.device.authorization.api.AmazonAuthorizationManager;
import io.fabric.sdk.android.services.common.CommonUtils;
import java.security.MessageDigest;
import java.util.Date;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes.dex */
public final class AmazonGamesClient implements AmazonGames {
    private static AmazonGamesClient INSTANCE = null;
    private static final int MAX_THREADS = 2;
    private static final String TAG = "GameCircleClient";
    private AchievementsClientImpl achievementsClient;
    private ContentManager contentManager;
    private EventCollectorClient eventCollectorClient;
    private ExecutorService executorService;
    private GlobalState globalState;
    private KindleFireSoftkeyBeachballManager kindleFireSoftkeyBeachballManager;
    private LeaderboardsClientImpl leaderboardsClient;
    private PlayerClientImpl playerClient;
    private ServiceFactory serviceFactory;
    private Date sessionStartTime;
    private Handler uiThreadHandler;
    private boolean initialized = false;
    private boolean kindleFire = false;
    private SessionEventQueue sessionEventQueue = new SessionEventQueue();
    private GCVariationManager variationManager = new GCVariationManager();

    static {
        AGSJniHandler.loadLibrary();
        INSTANCE = null;
    }

    private AmazonGamesClient(Activity activity, AmazonGamesCallback callback, EnumSet<AmazonGamesFeature> features) {
        AGSClientInstanceCoordinator.initialize(activity, callback, features);
        this.executorService = Executors.newFixedThreadPool(2);
        this.uiThreadHandler = new Handler(Looper.getMainLooper());
        EventCollectorClient.initialize(activity.getApplicationContext());
        this.eventCollectorClient = EventCollectorClient.getInstance();
        this.globalState = new GlobalState();
        this.achievementsClient = new AchievementsClientImpl();
        this.leaderboardsClient = new LeaderboardsClientImpl();
        this.playerClient = new PlayerClientImpl(this.globalState);
    }

    public static synchronized void initialize(Activity activity, AmazonGamesCallback callback, EnumSet<AmazonGamesFeature> features) {
        StringObfuscator stringObfuscator = new EncryptionStringObfuscator(generateSignature());
        boolean apiKeyExists = false;
        Log.d(TAG, "SDK Version: " + VersionInfo.getSDKVersion().toString());
        try {
            AmazonAuthorizationManager authorizationManager = new AmazonAuthorizationManager(activity, null);
            String gameId = authorizationManager.getAppId();
            if (!TextUtils.isEmpty(gameId)) {
                apiKeyExists = true;
            }
        } catch (Exception e) {
            Log.e(TAG, "Unable to read api key.  GameCircle requires an api key to be included in 'assets/api_key.txt'.  GameCircle will not initialize.", e);
        }
        GameCircleGenericEvent.packageName = activity.getPackageManager().getInstallerPackageName(activity.getPackageName());
        if (apiKeyExists) {
            boolean reinitialize = false;
            if (INSTANCE != null) {
                Log.i(TAG, "AmazonGamesClient.initialize() has already been called.  Reinitializing.");
                reinitialize = true;
            } else {
                Log.i(TAG, "AmazonGamesClient not yet initialized.  Initializing.");
                INSTANCE = new AmazonGamesClient(activity, callback, features);
            }
            INSTANCE.initialize_internal(callback, activity, reinitialize, stringObfuscator, features);
            WhispersyncClientImpl.initialize(activity.getApplicationContext(), stringObfuscator, INSTANCE.eventCollectorClient);
        } else if (callback != null) {
            AmazonGamesStatus status = AmazonGamesStatus.CANNOT_INITIALIZE;
            callback.onServiceNotReady(status);
        }
    }

    @SuppressLint({"NewApi"})
    private synchronized void initialize_internal(AmazonGamesCallback amazonGamesCallback, Activity activity, boolean reinitialize, StringObfuscator stringObfuscator, EnumSet<AmazonGamesFeature> features) {
        this.sessionStartTime = new Date();
        this.sessionEventQueue.enqueue(new SessionEvent(ServiceActionCode.START_SESSION));
        if (this.eventCollectorClient != null) {
            this.eventCollectorClient.submitEvents();
        }
        if (reinitialize) {
            AGSClientInstanceCoordinator.getInstance().updateActivity(activity);
            AGSClientInstanceCoordinator.getInstance().updateCallback(amazonGamesCallback);
            AGSClientInstanceCoordinator.getInstance().updateFeatures(features);
            if (this.serviceFactory != null) {
                this.serviceFactory.onResume();
            }
            if (isInitialized()) {
                if (this.eventCollectorClient != null) {
                    this.eventCollectorClient.resumeInsightsSession();
                }
                AGSClientInstanceCoordinator.getInstance().getLatestCallback().onServiceReady(INSTANCE);
            }
        } else {
            Context appContext = activity.getApplicationContext();
            this.executorService.execute(new AnonymousClass1(appContext, activity, stringObfuscator, reinitialize, amazonGamesCallback));
            if (Build.VERSION.SDK_INT >= 14) {
                activity.getApplication().registerActivityLifecycleCallbacks(new LifecycleCallbacks(features));
            }
        }
    }

    /* JADX INFO: renamed from: com.amazon.ags.api.AmazonGamesClient$1, reason: invalid class name */
    /* JADX INFO: loaded from: classes2.dex */
    class AnonymousClass1 implements Runnable {
        final /* synthetic */ Activity val$activity;
        final /* synthetic */ AmazonGamesCallback val$amazonGamesCallback;
        final /* synthetic */ Context val$appContext;
        final /* synthetic */ boolean val$reinitialize;
        final /* synthetic */ StringObfuscator val$stringObfuscator;

        AnonymousClass1(Context context, Activity activity, StringObfuscator stringObfuscator, boolean z, AmazonGamesCallback amazonGamesCallback) {
            this.val$appContext = context;
            this.val$activity = activity;
            this.val$stringObfuscator = stringObfuscator;
            this.val$reinitialize = z;
            this.val$amazonGamesCallback = amazonGamesCallback;
        }

        @Override // java.lang.Runnable
        public void run() {
            Date startTime = new Date();
            Log.d(AmazonGamesClient.TAG, "initialize_internal() executing on thread:" + Thread.currentThread().getName());
            AmazonGamesClient.this.contentManager = new ContentManager(this.val$appContext);
            AmazonGamesClient.this.contentManager.initializeContent(AmazonGamesClient.this.executorService, AmazonGamesClient.this.variationManager, new C00041(startTime));
        }

        /* JADX INFO: renamed from: com.amazon.ags.api.AmazonGamesClient$1$1, reason: invalid class name and collision with other inner class name */
        class C00041 implements ContentManager.ContentInitializationCallback {
            final /* synthetic */ Date val$startTime;

            C00041(Date date) {
                this.val$startTime = date;
            }

            @Override // com.amazon.ags.html5.content.ContentManager.ContentInitializationCallback
            public void onInitialized() {
                AmazonGamesClient.this.uiThreadHandler.post(new Runnable() { // from class: com.amazon.ags.api.AmazonGamesClient.1.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        AmazonGamesClient.this.serviceFactory = ServiceFactory.initialize(AGSClientInstanceCoordinator.getInstance().getCurrentActivity().getApplicationContext(), AnonymousClass1.this.val$activity.getPackageName(), AmazonGamesClient.this.contentManager, AmazonGamesClient.this.eventCollectorClient, AnonymousClass1.this.val$stringObfuscator, AmazonGamesClient.this.variationManager, AmazonGamesClient.this.globalState);
                        KindleFireProxy kindleFireProxy = AmazonGamesClient.this.serviceFactory.getKindleFireProxy();
                        AmazonGamesClient.this.setKindleFire(kindleFireProxy.isKindle());
                        kindleFireProxy.bindToGameCircleService(new KindleFireBindingCallback() { // from class: com.amazon.ags.api.AmazonGamesClient.1.1.1.1
                            @Override // com.amazon.ags.client.KindleFireBindingCallback
                            public void onFailure(KindleFireStatus status) {
                                AmazonGamesClient.this.initializeSession(AnonymousClass1.this.val$reinitialize, C00041.this.val$startTime);
                            }

                            @Override // com.amazon.ags.client.KindleFireBindingCallback
                            public void onBound() {
                                AmazonGamesClient.this.initializeSession(AnonymousClass1.this.val$reinitialize, C00041.this.val$startTime);
                            }
                        });
                    }
                });
            }

            @Override // com.amazon.ags.html5.content.ContentManager.ContentInitializationCallback
            public void onFailure() {
                AmazonGamesClient.this.uiThreadHandler.post(new Runnable() { // from class: com.amazon.ags.api.AmazonGamesClient.1.1.2
                    @Override // java.lang.Runnable
                    public void run() {
                        AmazonGamesStatus status = AmazonGamesStatus.CANNOT_INITIALIZE;
                        AmazonGamesClient.this.reportInitializeEvent(AnonymousClass1.this.val$reinitialize, C00041.this.val$startTime, new Date(), false, status);
                        AnonymousClass1.this.val$amazonGamesCallback.onServiceNotReady(status);
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initializeSession(final boolean reinitialize, final Date startTime) {
        this.serviceFactory.getSessionClient().initializeSession().setCallback(new AGResponseCallback<InitializeSessionResponse>() { // from class: com.amazon.ags.api.AmazonGamesClient.2
            @Override // com.amazon.ags.api.AGResponseCallback
            public void onComplete(InitializeSessionResponse result) {
                try {
                    if (result.isError()) {
                        AmazonGamesStatus status = AmazonGamesStatus.CANNOT_INITIALIZE;
                        AmazonGamesClient.this.serviceFactory.disableToastCreation();
                        AmazonGamesClient.this.reportInitializeEvent(reinitialize, startTime, new Date(), false, status);
                        AGSClientInstanceCoordinator.getInstance().getLatestCallback().onServiceNotReady(status);
                    } else if (AuthorizeKeys.AUTHORIZED.equals(result.getAuthorizeResult()) && AmazonGamesClient.INSTANCE != null) {
                        AmazonGamesClient.INSTANCE.initialized = true;
                        AmazonGamesStatus status2 = AmazonGamesStatus.SERVICE_CONNECTED;
                        AmazonGamesClient.this.serviceFactory.enableToastCreation();
                        AmazonGamesClient.this.reportInitializeEvent(reinitialize, startTime, new Date(), true, status2);
                        if (AmazonGamesClient.this.achievementsClient != null) {
                            AmazonGamesClient.this.achievementsClient.setServiceHelper(AmazonGamesClient.this.serviceFactory.getServiceHelper());
                            AmazonGamesClient.this.achievementsClient.setOverlayClient(AmazonGamesClient.this.serviceFactory.getOverlayClient());
                        }
                        if (AmazonGamesClient.this.leaderboardsClient != null) {
                            AmazonGamesClient.this.leaderboardsClient.setServiceHelper(AmazonGamesClient.this.serviceFactory.getServiceHelper());
                            AmazonGamesClient.this.leaderboardsClient.setOverlayClient(AmazonGamesClient.this.serviceFactory.getOverlayClient());
                        }
                        if (AmazonGamesClient.this.playerClient != null) {
                            AmazonGamesClient.this.playerClient.setServiceHelper(AmazonGamesClient.this.serviceFactory.getServiceHelper());
                        }
                        AmazonGamesClient.this.initializeJni();
                        WhispersyncClientImpl.getInstance().synchronizeOnInitialization();
                        Application application = AGSClientInstanceCoordinator.getInstance().getCurrentActivity().getApplication();
                        if (application != null && AmazonGamesClient.this.isKindleFire()) {
                            AmazonGamesClient.this.kindleFireSoftkeyBeachballManager = new KindleFireSoftkeyBeachballManager(application);
                        }
                        AGSClientInstanceCoordinator.getInstance().getLatestCallback().onServiceReady(AmazonGamesClient.INSTANCE);
                        if (AmazonGamesClient.this.eventCollectorClient != null) {
                            AmazonGamesClient.this.eventCollectorClient.resumeInsightsSession();
                        }
                    } else {
                        AmazonGamesStatus status3 = AmazonGamesStatus.NOT_AUTHORIZED;
                        AmazonGamesClient.this.serviceFactory.disableToastCreation();
                        AmazonGamesClient.this.reportInitializeEvent(reinitialize, startTime, new Date(), false, status3);
                        AGSClientInstanceCoordinator.getInstance().getLatestCallback().onServiceNotReady(status3);
                        AmazonGamesClient.shutdown();
                    }
                } finally {
                    if (AmazonGamesClient.this.serviceFactory != null && AmazonGamesClient.this.sessionEventQueue != null) {
                        AmazonGamesClient.this.sessionEventQueue.setSessionClient(AmazonGamesClient.this.serviceFactory.getSessionClient(), AmazonGamesClient.this.executorService);
                    }
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void reportInitializeEvent(boolean reinitialize, Date startTime, Date endTime, boolean success, AmazonGamesStatus status) {
        GameCircleGenericEvent event;
        if (this.eventCollectorClient == null) {
            Log.w(TAG, "Null collector. Cannot report initialization event.");
            return;
        }
        if (!this.eventCollectorClient.isReportingEnabled()) {
            Log.i(TAG, "Reporting is disabled. Cannot report initialization event.");
            return;
        }
        Map<String, String> attributes = new HashMap<>();
        Map<String, Integer> countMetrics = new HashMap<>();
        Map<String, Long> timeMetrics = new HashMap<>();
        attributes.put(MetricConstants.MetricStringValueAttributesKeys.STATUS.name(), status.toString());
        timeMetrics.put("initializationTime", Long.valueOf(endTime.getTime() - startTime.getTime()));
        if (success) {
            countMetrics.put("initializationSuccess", 1);
        } else {
            countMetrics.put("initializationFail", 1);
        }
        try {
            if (reinitialize) {
                event = new GameCircleGenericEvent(EventNames.GameCircleReinitialization.name(), attributes, countMetrics, timeMetrics);
            } else {
                event = new GameCircleGenericEvent(EventNames.GameCircleInitialization.name(), attributes, countMetrics, timeMetrics);
            }
            this.eventCollectorClient.reportGenericEvent(event);
        } catch (IllegalConstructionException e) {
            Log.w(TAG, "Could not construct GameCircleInitialization event. It will not be reported.");
        }
    }

    private void reportSessionEvent(Date startTime, Date endTime) {
        if (this.eventCollectorClient == null) {
            Log.w(TAG, "Null collector. Cannot report session event.");
            return;
        }
        if (!this.eventCollectorClient.isReportingEnabled()) {
            Log.i(TAG, "Reporting is disabled. Cannot report session event.");
            return;
        }
        Map<String, String> attributes = new HashMap<>();
        Map<String, Integer> countMetrics = new HashMap<>();
        Map<String, Long> timeMetrics = new HashMap<>();
        long sessionLength = endTime.getTime() - startTime.getTime();
        attributes.put(MetricConstants.MetricStringValueAttributesKeys.GAME_DATA_SIZE_KB.name(), "");
        attributes.put(MetricConstants.MetricStringValueAttributesKeys.SESSION_LENGTH.name(), String.valueOf(sessionLength));
        timeMetrics.put(MetricConstants.MetricStringValueAttributesKeys.SESSION_LENGTH.name(), Long.valueOf(sessionLength));
        try {
            GameCircleGenericEvent event = new GameCircleGenericEvent(EventNames.GameSession.name(), attributes, countMetrics, timeMetrics);
            this.eventCollectorClient.reportGenericEvent(event);
        } catch (IllegalConstructionException e) {
            Log.w(TAG, "Could not construct session event. It will not be reported.");
        }
    }

    public static boolean isInitialized() {
        return INSTANCE != null && INSTANCE.initialized;
    }

    public static AmazonGames getInstance() {
        AmazonGames instance = INSTANCE;
        if (INSTANCE == null) {
            Log.w(TAG, "AmazonGamesClient is not initialized.  Please call AmazonGamesClient.initialize() first.");
            return instance;
        }
        if (!INSTANCE.initialized) {
            Log.w(TAG, "AmazonGamesClient is not ready.  Please wait for the callback before attempting to retrieve the instance.");
            return null;
        }
        return instance;
    }

    public static WhispersyncClient getWhispersyncClient() {
        return WhispersyncClientImpl.getInstance();
    }

    @Override // com.amazon.ags.api.AmazonGames
    public LeaderboardsClient getLeaderboardsClient() {
        return this.leaderboardsClient;
    }

    @Override // com.amazon.ags.api.AmazonGames
    public AchievementsClient getAchievementsClient() {
        return this.achievementsClient;
    }

    @Override // com.amazon.ags.api.AmazonGames
    public PlayerClient getPlayerClient() {
        return this.playerClient;
    }

    @Override // com.amazon.ags.api.AmazonGames
    public void initializeJni() {
        AGSJniHandler.initializeJni(this);
    }

    @Override // com.amazon.ags.api.AmazonGames
    public void setPopUpLocation(PopUpLocation location) {
        PopUpPrefs.INSTANCE.setLocation(location);
    }

    @Override // com.amazon.ags.api.AmazonGames
    public AGResponseHandle<RequestResponse> showGameCircle(Object... userData) {
        if (isInitialized() && this.serviceFactory != null) {
            return this.serviceFactory.getOverlayClient().showGameCircle(userData);
        }
        AGResponseHandleImpl<RequestResponse> handle = new AGResponseHandleImpl<>(userData);
        handle.setResponse(new RequestResponseImpl(24, ErrorCode.UNRECOVERABLE));
        return handle;
    }

    @Override // com.amazon.ags.api.AmazonGames
    public AGResponseHandle<RequestResponse> showSignInPage(Object... userData) {
        if (isInitialized() && this.serviceFactory != null) {
            return this.serviceFactory.getOverlayClient().showSignInPage(userData);
        }
        AGResponseHandleImpl<RequestResponse> handle = new AGResponseHandleImpl<>(userData);
        handle.setResponse(new RequestResponseImpl(24, ErrorCode.UNRECOVERABLE));
        return handle;
    }

    private static byte[] generateSignature() {
        try {
            String key1 = AmazonGamesClient.class.getName();
            String key2 = ServiceFactory.class.getName();
            String key = key1 + key2;
            byte[] keyBytes = key.getBytes("UTF-8");
            MessageDigest md = MessageDigest.getInstance(CommonUtils.MD5_INSTANCE);
            return md.digest(keyBytes);
        } catch (Exception e) {
            return null;
        }
    }

    public static synchronized void release() {
        if (INSTANCE != null) {
            INSTANCE.release_internal();
        }
    }

    private synchronized void release_internal() {
        if (this.eventCollectorClient != null) {
            this.eventCollectorClient.pauseInsightsSession();
        }
        Date sessionEndTime = new Date();
        if (this.sessionStartTime != null && this.sessionStartTime.getTime() > 0 && sessionEndTime.after(this.sessionStartTime)) {
            reportSessionEvent(this.sessionStartTime, new Date());
            this.sessionStartTime = null;
        }
        this.sessionEventQueue.enqueue(new SessionEvent(ServiceActionCode.STOP_SESSION));
        if (this.serviceFactory != null) {
            this.serviceFactory.onPause();
        }
        if (this.eventCollectorClient != null) {
            this.eventCollectorClient.submitEvents();
        }
    }

    public static synchronized void shutdown() {
        if (INSTANCE != null) {
            INSTANCE.shutdown_internal();
        }
    }

    private synchronized void shutdown_internal() {
        if (INSTANCE != null) {
            INSTANCE.initialized = false;
            this.achievementsClient.shutdown();
            this.leaderboardsClient.shutdown();
            this.playerClient.shutdown();
            if (this.eventCollectorClient != null) {
                this.eventCollectorClient.pauseInsightsSession();
                this.eventCollectorClient = null;
            }
            release_internal();
            this.serviceFactory.shutdown();
            this.serviceFactory = null;
            this.achievementsClient = null;
            this.leaderboardsClient = null;
            this.playerClient = null;
            this.sessionEventQueue = null;
            this.executorService = null;
            this.uiThreadHandler = null;
            this.sessionStartTime = null;
            this.contentManager.shutdown();
            this.contentManager = null;
        }
        INSTANCE = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isKindleFire() {
        return this.kindleFire;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setKindleFire(boolean kindleFire) {
        this.kindleFire = kindleFire;
    }
}

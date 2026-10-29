package com.amazon.ags.html5.factory;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.webkit.WebView;
import com.amazon.ags.VersionInfo;
import com.amazon.ags.api.AmazonGamesFeature;
import com.amazon.ags.auth.AuthManager;
import com.amazon.ags.client.KindleFireIPCProxy;
import com.amazon.ags.client.KindleFireProxy;
import com.amazon.ags.client.OverlayClient;
import com.amazon.ags.client.metrics.EventCollectorClient;
import com.amazon.ags.client.session.SessionClient;
import com.amazon.ags.client.whispersync.WhispersyncClientImpl;
import com.amazon.ags.constants.ClientConfigKeys;
import com.amazon.ags.constants.NativeCallKeys;
import com.amazon.ags.constants.OfflineCacheTypes;
import com.amazon.ags.constants.ToastKeys;
import com.amazon.ags.html5.comm.HttpNetworkClient;
import com.amazon.ags.html5.comm.NetworkCallFactory;
import com.amazon.ags.html5.comm.NetworkClient;
import com.amazon.ags.html5.comm.UserAgentIdentifier;
import com.amazon.ags.html5.content.ContentManager;
import com.amazon.ags.html5.content.ContentVersion;
import com.amazon.ags.html5.content.GCVariationManager;
import com.amazon.ags.html5.javascript.BackgroundTaskHandler;
import com.amazon.ags.html5.javascript.CallHandlerBase;
import com.amazon.ags.html5.javascript.JavascriptRepository;
import com.amazon.ags.html5.javascript.NativeAuthCallHandler;
import com.amazon.ags.html5.javascript.NativeCacheCallHandler;
import com.amazon.ags.html5.javascript.NativeCallHandler;
import com.amazon.ags.html5.javascript.NativeGlobalStateCallHandler;
import com.amazon.ags.html5.javascript.NativeKindleFireStateCallHandler;
import com.amazon.ags.html5.javascript.NativeSettingsCallHandler;
import com.amazon.ags.html5.javascript.NativeToastCallHandler;
import com.amazon.ags.html5.javascript.ReportEventHandler;
import com.amazon.ags.html5.javascript.domain.JavascriptInterface;
import com.amazon.ags.html5.javascript.event.JavascriptEventsManager;
import com.amazon.ags.html5.javascript.event.NativeJavascriptEventsCallHandler;
import com.amazon.ags.html5.overlay.OverlayManager;
import com.amazon.ags.html5.overlay.OverlaySessionInformation;
import com.amazon.ags.html5.overlay.toasts.ClickableToastFactoryImpl;
import com.amazon.ags.html5.service.AsynchronousReplyMessenger;
import com.amazon.ags.html5.service.ServiceHelper;
import com.amazon.ags.html5.service.WebViewServiceHelper;
import com.amazon.ags.html5.util.BrowserUtil;
import com.amazon.ags.html5.util.ClientConfig;
import com.amazon.ags.html5.util.DeviceInfo;
import com.amazon.ags.html5.util.EmailUtil;
import com.amazon.ags.html5.util.GlobalState;
import com.amazon.ags.html5.util.ImageManager;
import com.amazon.ags.html5.util.LocalizationUtil;
import com.amazon.ags.html5.util.NetworkUtil;
import com.amazon.ags.html5.util.WebViewFactory;
import com.amazon.ags.storage.AGSAsyncOfflineEventManager;
import com.amazon.ags.storage.OfflineDataCache;
import com.amazon.ags.storage.OfflineEventManager;
import com.amazon.ags.storage.SQLiteOfflineDataCache;
import com.amazon.ags.storage.SQLiteOfflineEventStorage;
import com.amazon.ags.storage.StringObfuscator;
import java.util.ArrayList;
import java.util.EnumSet;
import java.util.List;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import org.apache.http.client.HttpClient;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.params.ConnManagerParams;
import org.apache.http.conn.params.ConnPerRouteBean;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.params.CoreProtocolPNames;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;

/* JADX INFO: loaded from: classes.dex */
public final class ServiceFactory {
    private static final int ACHIEVEMENTS_CACHE_VERSION = 1;
    private static final int LEADERBOARDS_CACHE_VERSION = 1;
    private static final int MINIMUM_THREAD_POOL_SIZE = 5;
    private static final int PLAYER_PROFILE_CACHE_VERSION = 1;
    private static final int SETTINGS_CACHE_VERSION = 1;
    private static String showToastsFlag;
    private OfflineDataCache achOfflineDataCache;
    private final String applicationName;
    private final EventCollectorClient eventCollectorClient;
    private final GCVariationManager gcVariationManager;
    private ContentVersion initializedContentVersion;
    private JavascriptRepository javascriptRepository;
    private final KindleFireProxy kindleFireProxy;
    private OfflineDataCache leaderboardOfflineDataCache;
    private final LocalizationUtil localizationUtil;
    private List<CallHandlerBase> nativeCallHandlers;
    private final NetworkClient networkClient;
    private OfflineEventManager offlineEventManager;
    private OverlayClient overlayClient;
    private OverlayManager overlayManager;
    private OfflineDataCache playerProfileOfflineDataCache;
    private AsynchronousReplyMessenger replyMessenger;
    private ServiceHelper serviceHelper;
    private final SessionClient sessionClient;
    private final OfflineDataCache settingsDataCache;
    private final ThreadPoolExecutor threadPoolExecutor;
    private final ClickableToastFactoryImpl toastFactory;
    private WebViewFactory webViewFactory;
    private static final String TAG = "GC_" + ServiceFactory.class.getSimpleName();
    private static ServiceFactory instance = null;
    private static boolean debugLoggingEnabled = false;
    private final Handler uiThreadHandler = new Handler(Looper.getMainLooper());
    private final Object toastLock = new Object();

    public static synchronized ServiceFactory initialize(Context appContext, String packageName, ContentManager contentManager, EventCollectorClient eventCollectorClient, StringObfuscator stringObfuscator, GCVariationManager variationManager, GlobalState globalState) {
        if (instance != null) {
            Log.d(TAG, "ServiceFactory already initialized.");
        } else {
            instance = new ServiceFactory(appContext, packageName, contentManager, eventCollectorClient, stringObfuscator, variationManager, globalState);
        }
        return instance;
    }

    public static synchronized ServiceFactory getInstance() {
        if (instance == null) {
            Log.e(TAG, "ServiceFactory must be initialized before using");
            throw new IllegalAccessError("ServiceFactory must be initialized before using");
        }
        return instance;
    }

    private ServiceFactory(Context appContext, String packageName, ContentManager contentManager, EventCollectorClient eventCollectorClient, StringObfuscator stringObfuscator, GCVariationManager variationManager, GlobalState globalState) {
        this.gcVariationManager = variationManager;
        PackageManager packageManager = appContext.getPackageManager();
        ApplicationInfo applicationInfo = null;
        try {
            applicationInfo = packageManager.getApplicationInfo(packageName, 0);
        } catch (Exception e) {
            Log.w(TAG, "Unable to retrieve application name");
        }
        this.applicationName = (String) (applicationInfo != null ? packageManager.getApplicationLabel(applicationInfo) : "");
        this.javascriptRepository = contentManager;
        this.initializedContentVersion = contentManager.getInitializedContentVersion();
        this.eventCollectorClient = eventCollectorClient;
        showToastsFlag = ToastKeys.SHOW_TOASTS_UNDEFINED;
        this.localizationUtil = new LocalizationUtil(appContext);
        NetworkUtil networkUtil = new NetworkUtil(appContext);
        BrowserUtil browserUtil = new BrowserUtil(appContext);
        EmailUtil emailUtil = new EmailUtil(appContext);
        ImageManager imageManager = new ImageManager(contentManager);
        this.achOfflineDataCache = new SQLiteOfflineDataCache(appContext, OfflineCacheTypes.ACHIEVEMENTS_CACHE, 1);
        this.leaderboardOfflineDataCache = new SQLiteOfflineDataCache(appContext, OfflineCacheTypes.LEADERBOARDS_CACHE, 1);
        this.playerProfileOfflineDataCache = new SQLiteOfflineDataCache(appContext, OfflineCacheTypes.PLAYER_PROFILE_CACHE, 1);
        this.settingsDataCache = new SQLiteOfflineDataCache(appContext, OfflineCacheTypes.SETTINGS_CACHE, 1);
        ClientConfig clientConfig = new ClientConfig();
        clientConfig.load(this.settingsDataCache.getCacheItem(ClientConfigKeys.SETTINGS_CACHE_KEY));
        this.gcVariationManager.getCachedVariations();
        int threadPoolSize = (int) clientConfig.get(ClientConfigKeys.THREAD_POOL_SIZE);
        threadPoolSize = threadPoolSize < 5 ? 5 : threadPoolSize;
        int threadTimeout = (int) clientConfig.get(ClientConfigKeys.THREAD_TIMEOUT);
        this.threadPoolExecutor = new ThreadPoolExecutor(5, threadPoolSize, threadTimeout, TimeUnit.MILLISECONDS, new SynchronousQueue(), new ThreadPoolExecutor.AbortPolicy());
        AuthManager authManager = new AuthManager(clientConfig);
        DefaultHttpClient client = new DefaultHttpClient();
        ClientConnectionManager mgr = client.getConnectionManager();
        HttpParams params = client.getParams();
        UserAgentIdentifier userAgentIdentifier = new UserAgentIdentifier(VersionInfo.getSDKVersion(), this.initializedContentVersion);
        params.setParameter(CoreProtocolPNames.USER_AGENT, userAgentIdentifier.getUserAgent());
        ConnManagerParams.setMaxTotalConnections(params, (int) clientConfig.get(ClientConfigKeys.HTTP_MAX_TOTAL_CONNECTIONS));
        ConnManagerParams.setMaxConnectionsPerRoute(params, new ConnPerRouteBean((int) clientConfig.get(ClientConfigKeys.HTTP_MAX_CONNECTIONS_PER_ROUTE)));
        ConnManagerParams.setTimeout(params, clientConfig.get(ClientConfigKeys.HTTP_CONNECTION_POOL_TIMEOUT_MILLIS));
        HttpConnectionParams.setConnectionTimeout(params, (int) clientConfig.get(ClientConfigKeys.HTTP_CONNECTION_TIMEOUT_MILLIS));
        HttpConnectionParams.setSoTimeout(params, (int) clientConfig.get(ClientConfigKeys.HTTP_SOCKET_TIMEOUT_MILLIS));
        HttpClient httpClient = new DefaultHttpClient(new ThreadSafeClientConnManager(params, mgr.getSchemeRegistry()), params);
        this.kindleFireProxy = new KindleFireIPCProxy(appContext);
        DeviceInfo deviceInfo = new DeviceInfo(this.kindleFireProxy);
        this.networkClient = new HttpNetworkClient(httpClient, this.kindleFireProxy, authManager, deviceInfo, eventCollectorClient, this.localizationUtil);
        this.webViewFactory = new WebViewFactory(appContext, this.javascriptRepository);
        ScheduledExecutorService scheduledExecutorService = Executors.newScheduledThreadPool(1);
        this.replyMessenger = new AsynchronousReplyMessenger(this.uiThreadHandler, scheduledExecutorService);
        this.toastFactory = new ClickableToastFactoryImpl(this.uiThreadHandler, this.webViewFactory, contentManager, this.localizationUtil);
        OverlaySessionInformation overlaySessionInformation = new OverlaySessionInformation(VersionInfo.getGameCircleVersion().getVersion(), VersionInfo.getSDKVersion().getVersion(), this.initializedContentVersion.getVersion(), this.applicationName, this.localizationUtil, deviceInfo);
        this.overlayManager = new OverlayManager(appContext, this.uiThreadHandler, this.toastFactory, this.kindleFireProxy, overlaySessionInformation, this.gcVariationManager, imageManager);
        WebView backgroundWebView = this.webViewFactory.getBackgroundWebview();
        globalState.addListener(eventCollectorClient);
        EnumSet<AmazonGamesFeature> developerSpecifiedFeatures = AGSClientInstanceCoordinator.getInstance().getEnabledFeatures();
        StringBuilder featureStrings = new StringBuilder();
        for (AmazonGamesFeature feature : developerSpecifiedFeatures) {
            featureStrings.append(feature.name());
            featureStrings.append(";");
        }
        int lastFeatureSeparatorIndex = featureStrings.lastIndexOf(";");
        if (lastFeatureSeparatorIndex > -1) {
            featureStrings.deleteCharAt(lastFeatureSeparatorIndex);
        }
        globalState.put(NativeCallKeys.DEV_FEATURES, featureStrings.toString());
        NetworkCallFactory networkCallFactory = new NetworkCallFactory(authManager, this.uiThreadHandler, globalState, this.localizationUtil, this.networkClient);
        this.nativeCallHandlers = new ArrayList();
        this.nativeCallHandlers.add(networkCallFactory);
        JavascriptInterface backgroundJavascriptInterface = getJavascriptInterface(backgroundWebView, "backgroundwebview");
        backgroundWebView.addJavascriptInterface(backgroundJavascriptInterface, "hostinterface");
        this.serviceHelper = new WebViewServiceHelper(appContext, this.javascriptRepository, backgroundJavascriptInterface, this.replyMessenger, backgroundWebView, this.uiThreadHandler);
        SQLiteOfflineEventStorage offlineEventCache = new SQLiteOfflineEventStorage(appContext, stringObfuscator, "offlineEvents");
        this.offlineEventManager = new AGSAsyncOfflineEventManager(offlineEventCache, networkUtil, this.serviceHelper, globalState);
        JavascriptEventsManager javascriptEventsManager = new JavascriptEventsManager();
        this.nativeCallHandlers.add(new NativeCallHandler(appContext, this.uiThreadHandler, networkUtil, browserUtil, emailUtil, this.offlineEventManager, imageManager, this.localizationUtil, this.gcVariationManager));
        this.nativeCallHandlers.add(new NativeToastCallHandler(appContext, this.uiThreadHandler, this.overlayManager));
        this.nativeCallHandlers.add(new NativeCacheCallHandler(this.uiThreadHandler, this.achOfflineDataCache, this.leaderboardOfflineDataCache, this.playerProfileOfflineDataCache));
        this.nativeCallHandlers.add(new NativeAuthCallHandler(this.uiThreadHandler, authManager));
        this.nativeCallHandlers.add(new NativeGlobalStateCallHandler(this.uiThreadHandler, globalState));
        this.nativeCallHandlers.add(new NativeSettingsCallHandler(this.uiThreadHandler, this.settingsDataCache));
        this.nativeCallHandlers.add(new BackgroundTaskHandler(this.serviceHelper, this.uiThreadHandler));
        this.nativeCallHandlers.add(new ReportEventHandler(eventCollectorClient, this.uiThreadHandler));
        this.nativeCallHandlers.add(new NativeKindleFireStateCallHandler(appContext, this.uiThreadHandler, this.kindleFireProxy));
        this.nativeCallHandlers.add(new NativeJavascriptEventsCallHandler(this.uiThreadHandler, javascriptEventsManager));
        this.toastFactory.setServiceHelper(this.serviceHelper);
        this.javascriptRepository.loadBackgroundJavascript(backgroundWebView);
        this.overlayClient = new OverlayClient(this.serviceHelper);
        this.sessionClient = new SessionClient(this.serviceHelper);
        WhispersyncClientImpl.getInstance().setNetworkDependencies(this.networkClient, networkUtil, this.sessionClient, httpClient, authManager, javascriptEventsManager);
        eventCollectorClient.setAuthManager(authManager);
        eventCollectorClient.setGlobalState(globalState);
        eventCollectorClient.setContentVersion(this.initializedContentVersion);
        eventCollectorClient.setDeviceInfo(deviceInfo);
    }

    public WebViewFactory getWebViewFactory() {
        return this.webViewFactory;
    }

    public NetworkClient getNetworkClient() {
        return this.networkClient;
    }

    public JavascriptRepository getJavascriptRepository() {
        return this.javascriptRepository;
    }

    public ServiceHelper getServiceHelper() {
        return this.serviceHelper;
    }

    public SessionClient getSessionClient() {
        return this.sessionClient;
    }

    public EventCollectorClient getEventCollectorClient() {
        return this.eventCollectorClient;
    }

    public OverlayClient getOverlayClient() {
        return this.overlayClient;
    }

    public ContentVersion getInitializedContentVersion() {
        return this.initializedContentVersion;
    }

    public JavascriptInterface getJavascriptInterface(WebView webView, String id) {
        return new JavascriptInterface(id, this.replyMessenger, this.overlayManager, this.nativeCallHandlers, this.threadPoolExecutor, webView, this.toastLock);
    }

    public Handler getUiThreadHandler() {
        return this.uiThreadHandler;
    }

    public KindleFireProxy getKindleFireProxy() {
        return this.kindleFireProxy;
    }

    public LocalizationUtil getLocalizationUtil() {
        return this.localizationUtil;
    }

    public String getApplicationName() {
        return this.applicationName;
    }

    public static boolean isDebugLoggingEnabled() {
        return debugLoggingEnabled;
    }

    public static void setDebugLoggingEnabled(boolean debugLoggingEnabled2) {
        debugLoggingEnabled = debugLoggingEnabled2;
    }

    public void onPause() {
        this.toastFactory.dismissCurrentToast();
        if (this.offlineEventManager != null) {
            this.offlineEventManager.onPause();
        }
    }

    public void onResume() {
        if (this.offlineEventManager != null) {
            this.offlineEventManager.onResume();
        }
    }

    public void shutdown() {
        instance = null;
        this.achOfflineDataCache = null;
        this.leaderboardOfflineDataCache = null;
        this.playerProfileOfflineDataCache = null;
        this.offlineEventManager = null;
        this.serviceHelper = null;
        this.overlayClient = null;
        this.overlayManager = null;
        this.webViewFactory = null;
        this.nativeCallHandlers = null;
        this.replyMessenger = null;
        this.javascriptRepository = null;
        showToastsFlag = null;
    }

    private void resolveToastLock() {
        synchronized (this.toastLock) {
            this.toastLock.notifyAll();
        }
    }

    public void enableToastCreation() {
        showToastsFlag = ToastKeys.SHOW_TOASTS_TRUE;
        resolveToastLock();
    }

    public void disableToastCreation() {
        showToastsFlag = ToastKeys.SHOW_TOASTS_FALSE;
        resolveToastLock();
    }

    public static String getShowToastsString() {
        return showToastsFlag;
    }
}

package com.amazon.device.ads;

import android.R;
import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.mopub.common.AdType;
import java.util.Locale;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"InlinedApi"})
public class AdLayout extends FrameLayout implements Ad {
    private static final String CONTENT_DESCRIPTION_AD_LAYOUT = "adLayoutObject";
    public static final int DEFAULT_TIMEOUT = 20000;
    static final String LAYOUT_NOT_RUN_ERR_MSG = "Can't load an ad because the view size cannot be determined.";
    static final String LAYOUT_PARAMS_NULL_ERR_MSG = "Can't load an ad because layout parameters are blank. Use setLayoutParams() to specify dimensions for this AdLayout.";
    static final String LOADING_IN_PROGRESS_LOG_MSG = "Can't load an ad because ad loading is already in progress";
    private static final String LOGTAG = AdLayout.class.getSimpleName();
    private static ScheduledThreadPoolExecutor threadPool = new ScheduledThreadPoolExecutor(1);
    private View activityRootView;
    private AdController adController;
    private final AdControllerFactory adControllerFactory;
    private AdListenerExecutor adListenerExecutor;
    private final AdListenerExecutorFactory adListenerExecutorFactory;
    private final AdLoadStarter adLoadStarter;
    private final AdRegistrationExecutor adRegistration;
    private final AdSize adSize;
    private AdTargetingOptions adTargetingOptions;
    private boolean attached;
    private final Context context;
    private Destroyable currentDestroyable;
    private View currentView;
    private boolean hasRegisterBroadcastReciever;
    private boolean isDestroyed;
    private boolean isInForeground;
    private boolean isInitialized;
    private boolean isParentViewMissingAtLoadTime;
    private int lastVisibility;
    private final MobileAdsLogger logger;
    private final MobileAdsLoggerFactory loggerFactory;
    private AtomicBoolean needsToLoadAdOnLayout;
    private BroadcastReceiver screenStateReceiver;
    private boolean shouldDisableWebViewHardwareAcceleration;

    static {
        threadPool.setKeepAliveTime(60L, TimeUnit.SECONDS);
    }

    public AdLayout(Activity activity) {
        this(activity, AdSize.SIZE_AUTO);
    }

    public AdLayout(Activity activity, AdSize adSize) {
        this(activity, adSize, new MobileAdsLoggerFactory(), new AdControllerFactory(), AdRegistration.getAmazonAdRegistrationExecutor(), new AdLoadStarter());
    }

    AdLayout(Activity activity, AdSize adSize, MobileAdsLoggerFactory loggerFactory, AdControllerFactory adControllerFactory, AdRegistrationExecutor adRegistration, AdLoadStarter adLoadStarter) {
        this(activity, adSize, loggerFactory, new AdListenerExecutorFactory(loggerFactory), adControllerFactory, adRegistration, adLoadStarter);
    }

    AdLayout(Activity activity, AdSize adSize, MobileAdsLoggerFactory loggerFactory, AdListenerExecutorFactory adListenerExecutorFactory, AdControllerFactory adControllerFactory, AdRegistrationExecutor adRegistration, AdLoadStarter adLoadStarter) {
        super(activity);
        this.hasRegisterBroadcastReciever = false;
        this.attached = false;
        this.lastVisibility = 8;
        this.needsToLoadAdOnLayout = new AtomicBoolean(false);
        this.isParentViewMissingAtLoadTime = false;
        this.activityRootView = null;
        this.adTargetingOptions = null;
        this.isDestroyed = false;
        this.isInitialized = false;
        this.context = activity;
        this.adSize = adSize;
        this.loggerFactory = loggerFactory;
        this.logger = this.loggerFactory.createMobileAdsLogger(LOGTAG);
        this.adListenerExecutorFactory = adListenerExecutorFactory;
        this.adControllerFactory = adControllerFactory;
        this.adRegistration = adRegistration;
        this.adLoadStarter = adLoadStarter;
    }

    public AdLayout(Context context, AttributeSet attrs) {
        this(context, attrs, new MobileAdsLoggerFactory(), new AdControllerFactory(), AdRegistration.getAmazonAdRegistrationExecutor(), new AdLoadStarter());
    }

    AdLayout(Context context, AttributeSet attrs, MobileAdsLoggerFactory loggerFactory, AdControllerFactory adControllerFactory, AdRegistrationExecutor adRegistration, AdLoadStarter adLoadStarter) {
        this(context, attrs, loggerFactory, new AdListenerExecutorFactory(loggerFactory), adControllerFactory, adRegistration, adLoadStarter);
    }

    AdLayout(Context context, AttributeSet attrs, MobileAdsLoggerFactory loggerFactory, AdListenerExecutorFactory adListenerExecutorFactory, AdControllerFactory adControllerFactory, AdRegistrationExecutor adRegistration, AdLoadStarter adLoadStarter) {
        super(context, attrs);
        this.hasRegisterBroadcastReciever = false;
        this.attached = false;
        this.lastVisibility = 8;
        this.needsToLoadAdOnLayout = new AtomicBoolean(false);
        this.isParentViewMissingAtLoadTime = false;
        this.activityRootView = null;
        this.adTargetingOptions = null;
        this.isDestroyed = false;
        this.isInitialized = false;
        this.context = context;
        this.adSize = determineAdSize(attrs);
        this.loggerFactory = loggerFactory;
        this.logger = this.loggerFactory.createMobileAdsLogger(LOGTAG);
        this.adListenerExecutorFactory = adListenerExecutorFactory;
        this.adControllerFactory = adControllerFactory;
        this.adRegistration = adRegistration;
        this.adLoadStarter = adLoadStarter;
    }

    public AdLayout(Context context, AttributeSet attrs, int defStyle) {
        this(context, attrs, defStyle, new MobileAdsLoggerFactory(), new AdControllerFactory(), AdRegistration.getAmazonAdRegistrationExecutor(), new AdLoadStarter());
    }

    AdLayout(Context context, AttributeSet attrs, int defStyle, MobileAdsLoggerFactory loggerFactory, AdControllerFactory adControllerFactory, AdRegistrationExecutor adRegistration, AdLoadStarter adLoadStarter) {
        this(context, attrs, defStyle, loggerFactory, new AdListenerExecutorFactory(loggerFactory), adControllerFactory, adRegistration, adLoadStarter);
    }

    AdLayout(Context context, AttributeSet attrs, int defStyle, MobileAdsLoggerFactory loggerFactory, AdListenerExecutorFactory adListenerExecutorFactory, AdControllerFactory adControllerFactory, AdRegistrationExecutor adRegistration, AdLoadStarter adLoadStarter) {
        super(context, attrs, defStyle);
        this.hasRegisterBroadcastReciever = false;
        this.attached = false;
        this.lastVisibility = 8;
        this.needsToLoadAdOnLayout = new AtomicBoolean(false);
        this.isParentViewMissingAtLoadTime = false;
        this.activityRootView = null;
        this.adTargetingOptions = null;
        this.isDestroyed = false;
        this.isInitialized = false;
        this.context = context;
        this.adSize = determineAdSize(attrs);
        this.loggerFactory = loggerFactory;
        this.logger = this.loggerFactory.createMobileAdsLogger(LOGTAG);
        this.adListenerExecutorFactory = adListenerExecutorFactory;
        this.adControllerFactory = adControllerFactory;
        this.adRegistration = adRegistration;
        this.adLoadStarter = adLoadStarter;
    }

    private AdSize determineAdSize(AttributeSet attrs) {
        String adSizeAttributeValue = getAttributeValue(attrs, "http://schemas.android.com/apk/lib/com.amazon.device.ads", "adSize");
        if (adSizeAttributeValue == null) {
            String oldAdsXmlNamespace = "http://schemas.android.com/apk/res/" + this.context.getPackageName();
            adSizeAttributeValue = getAttributeValue(attrs, oldAdsXmlNamespace, "adSize");
            if (adSizeAttributeValue != null) {
                this.logger.forceLog(MobileAdsLogger.Level.WARN, "DEPRECATED - Please use the XML namespace \"http://schemas.android.com/apk/lib/com.amazon.device.ads\" for specifying AdLayout properties.", new Object[0]);
                if (adSizeAttributeValue.toLowerCase(Locale.US).equals(AdType.CUSTOM)) {
                    this.logger.forceLog(MobileAdsLogger.Level.ERROR, "Using \"custom\" or \"CUSTOM\" for the \"adSize\" property is no longer supported. Please specifiy a size or remove the property to use Auto Ad Size.", new Object[0]);
                    throw new IllegalArgumentException("Using \"custom\" or \"CUSTOM\" for the \"adSize\" property is no longer supported. Please specifiy a size or remove the property to use Auto Ad Size.");
                }
            }
        }
        AdSize adSize = parseAdSize(adSizeAttributeValue);
        return adSize;
    }

    MobileAdsLogger getLogger() {
        return this.logger;
    }

    boolean shouldDisableWebViewHardwareAcceleration() {
        return this.shouldDisableWebViewHardwareAcceleration;
    }

    void setShouldDisableWebViewHardwareAcceleration(boolean shouldDisableWebViewHardwareAcceleration) {
        this.shouldDisableWebViewHardwareAcceleration = shouldDisableWebViewHardwareAcceleration;
        if (this.adController != null) {
            this.adController.requestDisableHardwareAcceleration(this.shouldDisableWebViewHardwareAcceleration);
        }
    }

    void initializeIfNecessary() {
        if (!isInitialized()) {
            long initStart = System.nanoTime();
            this.logger.d("Initializing AdLayout.");
            this.adRegistration.initializeAds(this.context);
            setContentDescription(CONTENT_DESCRIPTION_AD_LAYOUT);
            if (isInEditMode()) {
                TextView textView = new TextView(this.context);
                textView.setText("AdLayout");
                textView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                textView.setGravity(17);
                addView(textView);
                this.isInitialized = true;
                return;
            }
            this.isInForeground = getVisibility() == 0;
            setHorizontalScrollBarEnabled(false);
            setVerticalScrollBarEnabled(false);
            this.isInitialized = true;
            if (this.adListenerExecutor == null) {
                setListener(null);
            }
            initializeAdController();
            if (isWebViewDatabaseNull()) {
                this.logger.forceLog(MobileAdsLogger.Level.ERROR, "Disabling ads. Local cache file is inaccessible so ads will fail if we try to create a WebView. Details of this Android bug found at: http://code.google.com/p/android/issues/detail?id=10789", new Object[0]);
                this.isInitialized = false;
            } else {
                this.adController.getMetricsCollector().startMetricInMillisecondsFromNanoseconds(Metrics.MetricType.AD_LAYOUT_INITIALIZATION, initStart);
                this.adController.getMetricsCollector().stopMetric(Metrics.MetricType.AD_LAYOUT_INITIALIZATION);
            }
        }
    }

    private void initializeAdController() {
        AdSize size;
        if (this.adController == null) {
            if (this.adSize == null) {
                size = AdSize.SIZE_AUTO;
            } else {
                size = this.adSize;
            }
            setAdController(createAdController(size, this.context));
            this.adController.requestDisableHardwareAcceleration(this.shouldDisableWebViewHardwareAcceleration);
        }
    }

    private void setAdController(AdController adController) {
        this.adController = adController;
        this.adController.setCallback(createAdControlCallback());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public AdController getAdController() {
        initializeIfNecessary();
        if (this.adController == null) {
            initializeAdController();
        }
        return this.adController;
    }

    private static String getAttributeValue(AttributeSet attrs, String namespace, String name) {
        return attrs.getAttributeValue(namespace, name);
    }

    private static AdSize parseAdSize(String string) {
        AdSize adSize = AdSize.SIZE_AUTO;
        if (string != null) {
            String string2 = string.toLowerCase(Locale.US);
            if (string2.equals("autonoscale")) {
                return AdSize.SIZE_AUTO_NO_SCALE;
            }
            if (!string2.equals("auto")) {
                String[] sizes = string2.split("x");
                int width = 0;
                int height = 0;
                if (sizes.length == 2) {
                    width = NumberUtils.parseInt(sizes[0], 0);
                    height = NumberUtils.parseInt(sizes[1], 0);
                }
                return new AdSize(width, height);
            }
            return adSize;
        }
        return adSize;
    }

    private AdController createAdController(AdSize size, Context context) {
        return this.adControllerFactory.buildAdController(context, size);
    }

    AdControlCallback createAdControlCallback() {
        return new AdLayoutAdControlCallback();
    }

    boolean isWebViewDatabaseNull() {
        return !getAdController().canShowViews();
    }

    AdData getAdData() {
        return getAdController().getAdData();
    }

    boolean isInitialized() {
        return this.isInitialized;
    }

    private void registerScreenStateBroadcastReceiver() {
        if (!this.hasRegisterBroadcastReciever) {
            this.hasRegisterBroadcastReciever = true;
            this.screenStateReceiver = new BroadcastReceiver() { // from class: com.amazon.device.ads.AdLayout.1
                @Override // android.content.BroadcastReceiver
                public void onReceive(Context context, Intent intent) {
                    if (intent.getAction().equals("android.intent.action.SCREEN_OFF") && AdLayout.this.isInForeground) {
                        AdLayout.this.getAdController().closeAd();
                    }
                }
            };
            IntentFilter filter = new IntentFilter("android.intent.action.SCREEN_OFF");
            filter.addAction("android.intent.action.USER_PRESENT");
            this.context.getApplicationContext().registerReceiver(this.screenStateReceiver, filter);
        }
    }

    private void unregisterScreenStateBroadcastReceiver() {
        if (this.hasRegisterBroadcastReciever) {
            this.hasRegisterBroadcastReciever = false;
            this.context.getApplicationContext().unregisterReceiver(this.screenStateReceiver);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (!isInEditMode()) {
            this.attached = true;
            registerScreenStateBroadcastReceiver();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.attached = false;
        collapseAd();
        unregisterScreenStateBroadcastReceiver();
    }

    @Override // android.view.View
    protected void onWindowVisibilityChanged(int visibility) {
        if (this.attached && this.lastVisibility != visibility) {
            if (visibility != 0) {
                this.isInForeground = false;
                collapseAd();
                unregisterScreenStateBroadcastReceiver();
            } else if (visibility == 0) {
                this.isInForeground = true;
            }
        }
    }

    private void collapseAd() {
        if (getAdController().getAdState().equals(AdState.EXPANDED)) {
            ThreadUtils.scheduleOnMainThread(new Runnable() { // from class: com.amazon.device.ads.AdLayout.2
                @Override // java.lang.Runnable
                public void run() {
                    if (AdLayout.this.getAdController().getAdState().equals(AdState.EXPANDED)) {
                        AdLayout.this.getAdController().closeAd();
                    }
                }
            });
        }
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean changed, int left, int top, int right, int bottom) {
        if (!this.isDestroyed) {
            int width = right - left;
            int height = bottom - top;
            super.onLayout(changed, left, top, right, bottom);
            if (!isInEditMode()) {
                getAdController().setWindowDimensions(width, height);
                if (getAndSetNeedsToLoadAdOnLayout(false)) {
                    startAdLoadUponLayout();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startAdLoadUponLayout() {
        AdTargetingOptions options = this.adTargetingOptions;
        AdSlot adSlot = new AdSlot(getAdController(), options).setDeferredLoad(true);
        this.adLoadStarter.loadAds(getAdController().getTimeout(), options, adSlot);
        if (!getAndResetIsPrepared()) {
            onRequestError("Could not load ad on layout.");
        }
    }

    @Override // com.amazon.device.ads.Ad
    public int getTimeout() {
        AdController adController = getAdController();
        if (adController == null) {
            return -1;
        }
        return getAdController().getTimeout();
    }

    @Override // com.amazon.device.ads.Ad
    public void setTimeout(int timeout) {
        AdController adController = getAdController();
        if (adController != null) {
            adController.setTimeout(timeout);
        }
    }

    public AdSize getAdSize() {
        AdController adController = getAdController();
        if (adController == null) {
            return null;
        }
        return adController.getAdSize();
    }

    @Override // com.amazon.device.ads.Ad
    public boolean loadAd() {
        return loadAd(new AdTargetingOptions());
    }

    @Override // com.amazon.device.ads.Ad
    public boolean loadAd(AdTargetingOptions options) {
        if (options == null) {
            options = new AdTargetingOptions();
        }
        this.adTargetingOptions = options;
        if (getNeedsToLoadAdOnLayout()) {
            this.logger.e(LOADING_IN_PROGRESS_LOG_MSG);
            return false;
        }
        initializeIfNecessary();
        if (!isInitialized()) {
            this.logger.e("The ad could not be initialized properly.");
            return false;
        }
        if (!isReadyToLoad()) {
            switch (getAdController().getAdState()) {
                case INVALID:
                    this.logger.e("An ad could not be loaded because of an unknown issue with web views.");
                    return false;
                case DESTROYED:
                    this.logger.e("An ad could not be loaded because the AdLayout has been destroyed.");
                    return false;
                case EXPANDED:
                    this.logger.e("An ad could not be loaded because another ad is currently expanded.");
                    return false;
                default:
                    this.logger.e(LOADING_IN_PROGRESS_LOG_MSG);
                    return false;
            }
        }
        this.adLoadStarter.loadAds(getAdController().getTimeout(), options, new AdSlot(getAdController(), options));
        if (getNeedsToLoadAdOnLayout()) {
            return true;
        }
        return getAndResetIsPrepared();
    }

    private boolean isReadyToLoad() {
        return AdState.READY_TO_LOAD.equals(getAdController().getAdState()) || AdState.SHOWING.equals(getAdController().getAdState());
    }

    boolean prepareAd(boolean deferredLoad) {
        if (deferredLoad) {
            this.logger.d("Skipping ad layout preparation steps because the layout is already prepared.");
            return true;
        }
        if (!isReadyToLoad()) {
            return false;
        }
        if (getNeedsToLoadAdOnLayout()) {
            this.logger.e(LOADING_IN_PROGRESS_LOG_MSG);
            return false;
        }
        if (getAdSize().isAuto()) {
            this.logger.d("Ad size to be determined automatically.");
        }
        setIsParentViewMissingAtLoadTime();
        if (getAdSize().isAuto() && getAdController().areWindowDimensionsSet()) {
            return true;
        }
        if (isLayoutRequested() && getAdSize().isAuto() && !isParentViewMissingAtLoadTime()) {
            deferAdLoadToLayoutEvent();
            return false;
        }
        if (!isParentViewMissingAtLoadTime()) {
            return true;
        }
        this.logger.d("The ad's parent view is missing at load time.");
        return loadAdWhenParentViewMissing();
    }

    private boolean loadAdWhenParentViewMissing() {
        if (getLayoutParams() == null) {
            Metrics.getInstance().getMetricsCollector().incrementMetric(Metrics.MetricType.AD_FAILED_NULL_LAYOUT_PARAMS);
            onRequestError(LAYOUT_PARAMS_NULL_ERR_MSG);
            return false;
        }
        if (AndroidTargetUtils.isAtLeastAndroidAPI(11)) {
            setActivityRootView();
            if (isActivityRootViewNull()) {
                onRequestError("Ad load failed because root view could not be obtained from the activity.");
                return false;
            }
            if (isActivityRootViewLayoutRequested()) {
                this.logger.d("Activity root view layout is requested.");
                deferAdLoadToLayoutEvent();
                setOnLayoutChangeListenerForRoot();
                return false;
            }
            setFloatingWindowDimensions();
            return true;
        }
        setFloatingWindowDimensions();
        return true;
    }

    void adFailed(AdError adError) {
        getAdController().adFailed(adError);
    }

    void bypassAdRenderingProcess() {
        getAdController().setAdState(AdState.RENDERING);
        getAdController().adRendered("custom-render");
    }

    void adShown() {
        getAdController().adShown();
    }

    void setOnLayoutChangeListenerForRoot() {
        OnLayoutChangeListenerUtil.setOnLayoutChangeListenerForRoot(this);
    }

    private static class OnLayoutChangeListenerUtil {
        private OnLayoutChangeListenerUtil() {
        }

        @TargetApi(11)
        protected static void setOnLayoutChangeListenerForRoot(final AdLayout adLayout) {
            View.OnLayoutChangeListener listener = new View.OnLayoutChangeListener() { // from class: com.amazon.device.ads.AdLayout.OnLayoutChangeListenerUtil.1
                @Override // android.view.View.OnLayoutChangeListener
                public void onLayoutChange(View v, int left, int top, int right, int bottom, int oldLeft, int oldTop, int oldRight, int oldBottom) {
                    if (adLayout.getAndSetNeedsToLoadAdOnLayout(false)) {
                        adLayout.setFloatingWindowDimensions();
                        adLayout.startAdLoadUponLayout();
                        adLayout.activityRootView.removeOnLayoutChangeListener(this);
                    }
                }
            };
            adLayout.activityRootView.addOnLayoutChangeListener(listener);
        }
    }

    void setFloatingWindowDimensions() {
        if (getLayoutParams().width == -1 || getLayoutParams().height == -1) {
            this.logger.d("The requested ad will scale based on the screen's dimensions because at least one AdLayout dimension is set to MATCH_PARENT but the AdLayout is currently missing a fixed-size parent view.");
        }
        int floatingWindowWidth = resolveLayoutParamForFloatingAd(true);
        int floatingWindowHeight = resolveLayoutParamForFloatingAd(false);
        getAdController().setWindowDimensions(floatingWindowWidth, floatingWindowHeight);
    }

    int resolveLayoutParamForFloatingAd(boolean isWidth) {
        int value = isWidth ? getLayoutParams().width : getLayoutParams().height;
        if (value == -1) {
            if (isActivityRootViewNull()) {
                return getRawScreenDimension(isWidth);
            }
            return getActivityRootViewDimension(isWidth);
        }
        if (value == -2) {
            return 0;
        }
        return value;
    }

    int getRawScreenDimension(boolean isWidth) {
        WindowManager wm = (WindowManager) this.context.getSystemService("window");
        DisplayMetrics metrics = new DisplayMetrics();
        wm.getDefaultDisplay().getMetrics(metrics);
        return isWidth ? metrics.widthPixels : metrics.heightPixels;
    }

    void deferAdLoadToLayoutEvent() {
        setNeedsToLoadAdOnLayout(true);
        scheduleTaskForCheckingIfLayoutHasRun();
    }

    void scheduleTaskForCheckingIfLayoutHasRun() {
        Runnable runnable = new Runnable() { // from class: com.amazon.device.ads.AdLayout.3
            @Override // java.lang.Runnable
            public void run() {
                AdLayout.this.failLoadIfLayoutHasNotRun();
            }
        };
        threadPool.schedule(runnable, getTimeout(), TimeUnit.MILLISECONDS);
    }

    void failLoadIfLayoutHasNotRun() {
        if (getAndSetNeedsToLoadAdOnLayout(false)) {
            Metrics.getInstance().getMetricsCollector().incrementMetric(Metrics.MetricType.AD_FAILED_LAYOUT_NOT_RUN);
            onRequestError(LAYOUT_NOT_RUN_ERR_MSG);
        }
    }

    boolean getNeedsToLoadAdOnLayout() {
        return this.needsToLoadAdOnLayout.get();
    }

    void setNeedsToLoadAdOnLayout(boolean value) {
        this.needsToLoadAdOnLayout.set(value);
    }

    boolean getAndSetNeedsToLoadAdOnLayout(boolean value) {
        return this.needsToLoadAdOnLayout.getAndSet(value);
    }

    boolean getAndResetIsPrepared() {
        return getAdController().getAndResetIsPrepared();
    }

    private void onRequestError(String message) {
        getAdController().onRequestError(message);
    }

    boolean isParentViewMissingAtLoadTime() {
        return this.isParentViewMissingAtLoadTime;
    }

    void setIsParentViewMissingAtLoadTime() {
        this.isParentViewMissingAtLoadTime = getParent() == null;
    }

    void setIsParentViewMissingAtLoadTime(boolean parentViewMissingAtLoadTime) {
        this.isParentViewMissingAtLoadTime = parentViewMissingAtLoadTime;
    }

    View getActivityRootView() {
        return this.activityRootView;
    }

    void setActivityRootView() {
        this.activityRootView = ((Activity) this.context).getWindow().getDecorView().findViewById(R.id.content).getRootView();
    }

    boolean isActivityRootViewLayoutRequested() {
        return this.activityRootView.isLayoutRequested();
    }

    boolean isActivityRootViewNull() {
        return this.activityRootView == null;
    }

    int getActivityRootViewDimension(boolean isWidth) {
        return isWidth ? this.activityRootView.getWidth() : this.activityRootView.getHeight();
    }

    @Override // com.amazon.device.ads.Ad
    public void setListener(AdListener adListener) {
        if (adListener == null) {
            adListener = new DefaultAdListener(LOGTAG);
        }
        this.adListenerExecutor = this.adListenerExecutorFactory.createAdListenerExecutor(adListener);
    }

    AdListenerExecutor getAdListenerExecutor() {
        return this.adListenerExecutor;
    }

    @Override // com.amazon.device.ads.Ad
    public boolean isLoading() {
        AdController adController = getAdController();
        if (adController == null) {
            return false;
        }
        return getAdController().getAdState().equals(AdState.LOADING);
    }

    public boolean isAdLoading() {
        return isLoading();
    }

    public void destroy() {
        if (isInitialized()) {
            this.logger.d("Destroying the AdLayout");
            this.isDestroyed = true;
            unregisterScreenStateBroadcastReceiver();
            getAdController().destroy();
        }
    }

    class AdLayoutAdControlCallback implements AdControlCallback {
        private AdProperties properties;

        AdLayoutAdControlCallback() {
        }

        @Override // com.amazon.device.ads.AdControlCallback
        public boolean isAdReady(boolean deferredLoad) {
            return AdLayout.this.prepareAd(deferredLoad);
        }

        @Override // com.amazon.device.ads.AdControlCallback
        public void onAdLoaded(AdProperties adProperties) {
            this.properties = adProperties;
            AdLayout.this.getAdController().render();
        }

        @Override // com.amazon.device.ads.AdControlCallback
        @SuppressLint({"InlinedApi"})
        public void onAdRendered() {
            AdLayout.this.getAdController().getMetricsCollector().startMetric(Metrics.MetricType.AD_SHOW_LATENCY);
            if (AdLayout.this.currentView != null) {
                AdLayout.this.removeView(AdLayout.this.currentView);
            }
            if (AdLayout.this.currentDestroyable != null) {
                AdLayout.this.currentDestroyable.destroy();
            }
            AdLayout.this.currentView = AdLayout.this.getAdController().getView();
            AdLayout.this.currentDestroyable = AdLayout.this.getAdController().getDestroyable();
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1, 17);
            AdLayout.this.addView(AdLayout.this.currentView, layoutParams);
            notifyAdShowing(this.properties);
        }

        void notifyAdShowing(AdProperties adProperties) {
            AdLayout.this.adShown();
            AdLayout.this.getAdListenerExecutor().onAdLoaded(AdLayout.this, adProperties);
        }

        @Override // com.amazon.device.ads.AdControlCallback
        public void onAdFailed(AdError adError) {
            if (AdError.ErrorCode.NETWORK_TIMEOUT.equals(adError.getCode())) {
                AdLayout.this.adController = null;
            }
            AdLayout.this.getAdListenerExecutor().onAdFailedToLoad(AdLayout.this, adError);
        }

        @Override // com.amazon.device.ads.AdControlCallback
        public void onAdEvent(AdEvent event) {
            handleAdEvent(event);
        }

        boolean handleAdEvent(AdEvent event) {
            switch (event.getAdEventType()) {
                case EXPANDED:
                    AdLayout.this.getAdListenerExecutor().onAdExpanded(AdLayout.this);
                    return true;
                case CLOSED:
                    AdLayout.this.getAdListenerExecutor().onAdCollapsed(AdLayout.this);
                    return true;
                case RESIZED:
                    Rect positionOnScreen = (Rect) event.getParameters().getParameter(AdEvent.POSITION_ON_SCREEN);
                    AdLayout.this.getAdListenerExecutor().onAdResized(AdLayout.this, positionOnScreen);
                    return true;
                default:
                    return false;
            }
        }

        @Override // com.amazon.device.ads.AdControlCallback
        public int adClosing() {
            return AdLayout.this.getAdController().getAdState().equals(AdState.EXPANDED) ? 0 : 2;
        }

        @Override // com.amazon.device.ads.AdControlCallback
        public void postAdRendered() {
        }

        @Override // com.amazon.device.ads.AdControlCallback
        public void onAdExpired() {
        }
    }
}

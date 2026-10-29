package com.amazon.device.ads;

import com.applovin.impl.sdk.NativeAdImpl;
import com.newrelic.agent.android.instrumentation.JSONObjectInstrumentation;
import com.vungle.publisher.FullScreenAdActivity;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
class Configuration {
    private static final String AAX_MSDK_CONFIG_ENDPOINT = "/msdk/getConfig";
    private static final String AAX_PROD_US_HOSTNAME = "mads.amazon-adsystem.com";
    protected static final String CONFIG_APP_DEFINED_MARKETPLACE = "config-appDefinedMarketplace";
    protected static final String CONFIG_LASTFETCHTIME = "config-lastFetchTime";
    protected static final String CONFIG_TTL = "config-ttl";
    protected static final String CONFIG_VERSION_NAME = "configVersion";
    protected static final int CURRENT_CONFIG_VERSION = 3;
    protected static final int MAX_CONFIG_TTL = 172800000;
    protected static final int MAX_NO_RETRY_TTL = 300000;
    private final AdvertisingIdentifier advertisingIdentifier;
    private String appDefinedMarketplace;
    private final DebugProperties debugProperties;
    private final MobileAdsInfoStore infoStore;
    private boolean isAppDefinedMarketplaceSet;
    private final AtomicBoolean isFetching;
    private boolean isFirstParty;
    private Boolean lastTestModeValue;
    private final List<ConfigurationListener> listeners;
    private final MobileAdsLogger logger;
    private final Metrics metrics;
    private final PermissionChecker permissionChecker;
    private PreferredMarketplaceRetriever pfmRetriever;
    private final Settings settings;
    private final SystemTime systemTime;
    private final ThreadUtils.ThreadRunner threadRunner;
    private final WebRequest.WebRequestFactory webRequestFactory;
    private static final String LOGTAG = Configuration.class.getSimpleName();
    private static Configuration instance = new Configuration();

    interface ConfigurationListener {
        void onConfigurationFailure();

        void onConfigurationReady();
    }

    public static class ConfigOption {
        private final boolean allowEmpty;
        private final Class<?> dataType;
        private final String debugProperty;
        private final String responseKey;
        private final String settingsName;
        public static final ConfigOption AAX_HOSTNAME = new ConfigOption("config-aaxHostname", String.class, "aaxHostname", DebugProperties.DEBUG_AAX_AD_HOSTNAME);
        public static final ConfigOption SIS_URL = new ConfigOption("config-sisURL", String.class, "sisURL", DebugProperties.DEBUG_SIS_URL);
        public static final ConfigOption AD_PREF_URL = new ConfigOption("config-adPrefURL", String.class, "adPrefURL", DebugProperties.DEBUG_AD_PREF_URL);
        public static final ConfigOption MADS_HOSTNAME = new ConfigOption("config-madsHostname", String.class, "madsHostname", DebugProperties.DEBUG_MADS_HOSTNAME, true);
        public static final ConfigOption SIS_DOMAIN = new ConfigOption("config-sisDomain", String.class, "sisDomain", DebugProperties.DEBUG_SIS_DOMAIN);
        public static final ConfigOption SEND_GEO = new ConfigOption("config-sendGeo", Boolean.class, "sendGeo", DebugProperties.DEBUG_SEND_GEO);
        public static final ConfigOption TRUNCATE_LAT_LON = new ConfigOption("config-truncateLatLon", Boolean.class, "truncateLatLon", DebugProperties.DEBUG_TRUNCATE_LAT_LON);
        public static final ConfigOption[] configOptions = {AAX_HOSTNAME, SIS_URL, AD_PREF_URL, MADS_HOSTNAME, SIS_DOMAIN, SEND_GEO, TRUNCATE_LAT_LON};

        protected ConfigOption(String settingsName, Class<?> dataType, String responseKey, String debugProperty) {
            this(settingsName, dataType, responseKey, debugProperty, false);
        }

        protected ConfigOption(String settingsName, Class<?> dataType, String responseKey, String debugProperty, boolean allowEmpty) {
            this.settingsName = settingsName;
            this.responseKey = responseKey;
            this.dataType = dataType;
            this.debugProperty = debugProperty;
            this.allowEmpty = allowEmpty;
        }

        String getSettingsName() {
            return this.settingsName;
        }

        String getResponseKey() {
            return this.responseKey;
        }

        Class<?> getDataType() {
            return this.dataType;
        }

        String getDebugProperty() {
            return this.debugProperty;
        }

        boolean getAllowEmpty() {
            return this.allowEmpty;
        }
    }

    protected Configuration() {
        this(new MobileAdsLoggerFactory(), new PermissionChecker(), new WebRequest.WebRequestFactory(), DebugProperties.getInstance(), Settings.getInstance(), MobileAdsInfoStore.getInstance(), new SystemTime(), Metrics.getInstance(), new AdvertisingIdentifier(), ThreadUtils.getThreadRunner());
    }

    Configuration(MobileAdsLoggerFactory loggerFactory, PermissionChecker permissionChecker, WebRequest.WebRequestFactory webRequestFactory, DebugProperties debugProperties, Settings settings, MobileAdsInfoStore infoStore, SystemTime systemTime, Metrics metrics, AdvertisingIdentifier advertisingIdentifier, ThreadUtils.ThreadRunner threadRunner) {
        this.appDefinedMarketplace = null;
        this.isAppDefinedMarketplaceSet = false;
        this.listeners = new ArrayList(5);
        this.isFetching = new AtomicBoolean(false);
        this.lastTestModeValue = null;
        this.isFirstParty = false;
        this.pfmRetriever = new PreferredMarketplaceRetriever.NullPreferredMarketplaceRetriever();
        this.logger = loggerFactory.createMobileAdsLogger(LOGTAG);
        this.permissionChecker = permissionChecker;
        this.webRequestFactory = webRequestFactory;
        this.debugProperties = debugProperties;
        this.settings = settings;
        this.infoStore = infoStore;
        this.systemTime = systemTime;
        this.metrics = metrics;
        this.advertisingIdentifier = advertisingIdentifier;
        this.threadRunner = threadRunner;
    }

    public static final Configuration getInstance() {
        return instance;
    }

    public String getAppDefinedMarketplace() {
        return this.appDefinedMarketplace;
    }

    public void setAppDefinedMarketplace(String appDefinedMarketplace) {
        this.appDefinedMarketplace = appDefinedMarketplace;
        this.isAppDefinedMarketplaceSet = true;
    }

    public void setIsFirstParty(boolean isFirstParty) {
        this.isFirstParty = isFirstParty;
    }

    boolean isFirstParty() {
        return this.isFirstParty;
    }

    public boolean hasValue(ConfigOption configOption) {
        return !StringUtils.isNullOrWhiteSpace(getString(configOption));
    }

    public String getString(ConfigOption configOption) {
        String value = this.debugProperties.getDebugPropertyAsString(configOption.getDebugProperty(), null);
        if (value == null) {
            return this.settings.getString(configOption.getSettingsName(), null);
        }
        return value;
    }

    public boolean getBoolean(ConfigOption configOption) {
        return getBooleanWithDefault(configOption, false);
    }

    public boolean getBooleanWithDefault(ConfigOption configOption, boolean defaultValue) {
        return this.debugProperties.containsDebugProperty(configOption.getDebugProperty()) ? this.debugProperties.getDebugPropertyAsBoolean(configOption.getDebugProperty(), Boolean.valueOf(defaultValue)).booleanValue() : this.settings.getBoolean(configOption.getSettingsName(), defaultValue);
    }

    protected boolean shouldFetch() {
        if (hasAppDefinedMarketplaceChanged() || this.settings.getInt(CONFIG_VERSION_NAME, 0) != 3) {
            return true;
        }
        long currentTime = this.systemTime.currentTimeMillis();
        long lastFetchTime = this.settings.getLong(CONFIG_LASTFETCHTIME, 0L);
        long ttl = this.settings.getLong(CONFIG_TTL, 172800000L);
        if (lastFetchTime == 0) {
            this.logger.d("No configuration found. A new configuration will be retrieved.");
            return true;
        }
        if (currentTime - lastFetchTime > ttl) {
            this.logger.d("The configuration has expired. A new configuration will be retrieved.");
            return true;
        }
        if (this.lastTestModeValue == null || this.lastTestModeValue.booleanValue() == this.settings.getBoolean("testingEnabled", false)) {
            return this.debugProperties.getDebugPropertyAsBoolean(DebugProperties.DEBUG_SHOULD_FETCH_CONFIG, false).booleanValue();
        }
        this.logger.d("The testing mode has changed. A new configuration will be retrieved.");
        return true;
    }

    private boolean hasAppDefinedMarketplaceChanged() {
        String storedAppDefinedMarketplace = this.settings.getString(CONFIG_APP_DEFINED_MARKETPLACE, null);
        if (!this.isAppDefinedMarketplaceSet) {
            return false;
        }
        this.isAppDefinedMarketplaceSet = false;
        if (this.appDefinedMarketplace != null && !this.appDefinedMarketplace.equals(storedAppDefinedMarketplace)) {
            this.settings.putLongWithNoFlush(CONFIG_LASTFETCHTIME, 0L);
            this.settings.putStringWithNoFlush(CONFIG_APP_DEFINED_MARKETPLACE, this.appDefinedMarketplace);
            this.settings.flush();
            this.infoStore.getRegistrationInfo().requestNewSISDeviceIdentifier();
            this.logger.d("New application-defined marketplace set. A new configuration will be retrieved.");
            return true;
        }
        if (storedAppDefinedMarketplace == null || this.appDefinedMarketplace != null) {
            return false;
        }
        this.settings.remove(CONFIG_APP_DEFINED_MARKETPLACE);
        this.infoStore.getRegistrationInfo().requestNewSISDeviceIdentifier();
        this.logger.d("Application-defined marketplace removed. A new configuration will be retrieved.");
        return true;
    }

    protected boolean isFetching() {
        return this.isFetching.get();
    }

    protected void setIsFetching(boolean isFetching) {
        this.isFetching.set(isFetching);
    }

    public synchronized void queueConfigurationListener(ConfigurationListener listener) {
        queueConfigurationListener(listener, true);
    }

    public synchronized void queueConfigurationListener(ConfigurationListener listener, boolean allowFetch) {
        if (isFetching()) {
            this.listeners.add(listener);
        } else if (shouldFetch()) {
            this.listeners.add(listener);
            if (allowFetch) {
                this.logger.d("Starting configuration fetching...");
                setIsFetching(true);
                beginFetch();
            }
        } else {
            listener.onConfigurationReady();
        }
    }

    protected void beginFetch() {
        this.threadRunner.execute(new Runnable() { // from class: com.amazon.device.ads.Configuration.1
            @Override // java.lang.Runnable
            public void run() {
                Configuration.this.fetchConfigurationOnBackgroundThread();
            }
        }, ThreadUtils.ExecutionStyle.SCHEDULE, ThreadUtils.ExecutionThread.BACKGROUND_THREAD);
    }

    protected synchronized void onFetchSuccess() {
        setIsFetching(false);
        ConfigurationListener[] toCall = getAndClearListeners();
        for (ConfigurationListener listener : toCall) {
            listener.onConfigurationReady();
        }
    }

    protected synchronized void onFetchFailure() {
        this.metrics.getMetricsCollector().incrementMetric(Metrics.MetricType.AAX_CONFIG_DOWNLOAD_FAILED);
        setIsFetching(false);
        ConfigurationListener[] toCall = getAndClearListeners();
        for (ConfigurationListener listener : toCall) {
            listener.onConfigurationFailure();
        }
    }

    protected synchronized ConfigurationListener[] getAndClearListeners() {
        ConfigurationListener[] toCall;
        ConfigurationListener[] toCall2 = new ConfigurationListener[this.listeners.size()];
        toCall = (ConfigurationListener[]) this.listeners.toArray(toCall2);
        this.listeners.clear();
        return toCall;
    }

    protected ConfigOption[] getConfigOptions() {
        return ConfigOption.configOptions;
    }

    protected void setLastTestModeValue(boolean testMode) {
        this.lastTestModeValue = Boolean.valueOf(testMode);
    }

    protected void fetchConfigurationOnBackgroundThread() {
        this.logger.d("In configuration fetcher background thread.");
        boolean passesInternetPermissionCheck = this.permissionChecker.hasInternetPermission(this.infoStore.getApplicationContext());
        if (!passesInternetPermissionCheck) {
            this.logger.e("Network task cannot commence because the INTERNET permission is missing from the app's manifest.");
            onFetchFailure();
            return;
        }
        AdvertisingIdentifier.Info advertisingIdentifierInfo = createAdvertisingIdentifierInfo();
        if (!advertisingIdentifierInfo.canDo()) {
            onFetchFailure();
            return;
        }
        WebRequest webRequest = createWebRequest(advertisingIdentifierInfo);
        try {
            WebRequest.WebResponse webResponse = webRequest.makeCall();
            JSONObject json = webResponse.getResponseReader().readAsJSON();
            try {
                ConfigOption[] arr$ = getConfigOptions();
                for (ConfigOption configOption : arr$) {
                    if (json.isNull(configOption.getResponseKey())) {
                        if (!configOption.getAllowEmpty()) {
                            throw new Exception("The configuration value for " + configOption.getResponseKey() + " must be present and not null.");
                        }
                        this.settings.removeWithNoFlush(configOption.getSettingsName());
                    } else {
                        writeSettingFromConfigOption(configOption, json);
                    }
                }
                if (json.isNull("ttl")) {
                    throw new Exception("The configuration value must be present and not null.");
                }
                long ttl = NumberUtils.convertToMillisecondsFromSeconds(json.getInt("ttl"));
                if (ttl > 172800000) {
                    ttl = 172800000;
                }
                this.settings.putLongWithNoFlush(CONFIG_TTL, ttl);
                this.settings.putLongWithNoFlush(CONFIG_LASTFETCHTIME, this.systemTime.currentTimeMillis());
                this.settings.putIntWithNoFlush(CONFIG_VERSION_NAME, 3);
                this.settings.flush();
                this.logger.d("Configuration fetched and saved.");
                onFetchSuccess();
            } catch (JSONException e) {
                this.logger.e("Unable to parse JSON response: %s", e.getMessage());
                onFetchFailure();
            } catch (Exception e2) {
                this.logger.e("Unexpected error during parsing: %s", e2.getMessage());
                onFetchFailure();
            }
        } catch (WebRequest.WebRequestException e3) {
            onFetchFailure();
        }
    }

    private void writeSettingFromConfigOption(ConfigOption configOption, JSONObject json) throws Exception {
        if (configOption.getDataType().equals(String.class)) {
            String value = json.getString(configOption.getResponseKey());
            if (!configOption.getAllowEmpty() && StringUtils.isNullOrWhiteSpace(value)) {
                throw new IllegalArgumentException("The configuration value must not be empty or contain only white spaces.");
            }
            this.settings.putStringWithNoFlush(configOption.getSettingsName(), value);
            return;
        }
        if (configOption.getDataType().equals(Boolean.class)) {
            this.settings.putBooleanWithNoFlush(configOption.getSettingsName(), json.getBoolean(configOption.getResponseKey()));
            return;
        }
        throw new IllegalArgumentException("Undefined configuration option type.");
    }

    protected WebRequest createWebRequest(AdvertisingIdentifier.Info advertisingIdentifierInfo) {
        WebRequest request = this.webRequestFactory.createJSONGetWebRequest();
        request.setExternalLogTag(LOGTAG);
        request.enableLog(true);
        request.setHost(this.debugProperties.getDebugPropertyAsString(DebugProperties.DEBUG_AAX_CONFIG_HOSTNAME, AAX_PROD_US_HOSTNAME));
        request.setPath(AAX_MSDK_CONFIG_ENDPOINT);
        request.setMetricsCollector(this.metrics.getMetricsCollector());
        request.setServiceCallLatencyMetric(Metrics.MetricType.AAX_CONFIG_DOWNLOAD_LATENCY);
        request.setUseSecure(this.debugProperties.getDebugPropertyAsBoolean(DebugProperties.DEBUG_AAX_CONFIG_USE_SECURE, true).booleanValue());
        RegistrationInfo registrationInfo = this.infoStore.getRegistrationInfo();
        DeviceInfo deviceInfo = this.infoStore.getDeviceInfo();
        request.putUnencodedQueryParameter("appId", registrationInfo.getAppKey());
        JSONObject dInfoProperty = deviceInfo.getDInfoProperty();
        request.putUnencodedQueryParameter("dinfo", !(dInfoProperty instanceof JSONObject) ? dInfoProperty.toString() : JSONObjectInstrumentation.toString(dInfoProperty));
        request.putUnencodedQueryParameter(FullScreenAdActivity.AD_ID_EXTRA_KEY, advertisingIdentifierInfo.getSISDeviceIdentifier());
        request.putUnencodedQueryParameter("sdkVer", Version.getSDKVersion());
        request.putUnencodedQueryParameter(NativeAdImpl.QUERY_PARAM_IS_FIRST_PLAY, Boolean.toString(this.isFirstParty));
        request.putUnencodedQueryParameter("mkt", this.settings.getString(CONFIG_APP_DEFINED_MARKETPLACE, null));
        request.putUnencodedQueryParameter("pfm", getPreferredMarketplace());
        boolean testingEnabled = this.settings.getBoolean("testingEnabled", false);
        setLastTestModeValue(testingEnabled);
        if (testingEnabled) {
            request.putUnencodedQueryParameter("testMode", "true");
        }
        request.setAdditionalQueryParamsString(this.debugProperties.getDebugPropertyAsString(DebugProperties.DEBUG_AAX_CONFIG_PARAMS, null));
        return request;
    }

    AdvertisingIdentifier.Info createAdvertisingIdentifierInfo() {
        this.advertisingIdentifier.setShouldSetCurrentAdvertisingIdentifier(this.settings.getInt(CONFIG_VERSION_NAME, 0) != 0);
        return this.advertisingIdentifier.getAdvertisingIdentifierInfo();
    }

    public void setPreferredMarketplaceRetriever(PreferredMarketplaceRetriever pfmRetriever) {
        this.pfmRetriever = pfmRetriever;
    }

    PreferredMarketplaceRetriever getPreferredMarketplaceRetriever() {
        return this.pfmRetriever;
    }

    private String getPreferredMarketplace() {
        return this.pfmRetriever.retrievePreferredMarketplace(MobileAdsInfoStore.getInstance().getApplicationContext());
    }
}

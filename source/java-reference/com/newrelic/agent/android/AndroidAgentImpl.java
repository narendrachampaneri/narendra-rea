package com.newrelic.agent.android;

import android.app.ActivityManager;
import android.app.Application;
import android.content.ComponentCallbacks;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.location.Address;
import android.location.Geocoder;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.Looper;
import android.os.StatFs;
import android.text.TextUtils;
import com.amazon.identity.auth.device.endpoint.AbstractTokenRequest;
import com.newrelic.agent.android.analytics.AnalyticAttribute;
import com.newrelic.agent.android.analytics.AnalyticsControllerImpl;
import com.newrelic.agent.android.api.common.TransactionData;
import com.newrelic.agent.android.api.v1.ConnectionEvent;
import com.newrelic.agent.android.api.v1.ConnectionListener;
import com.newrelic.agent.android.api.v1.DeviceForm;
import com.newrelic.agent.android.api.v2.TraceMachineInterface;
import com.newrelic.agent.android.background.ApplicationStateEvent;
import com.newrelic.agent.android.background.ApplicationStateListener;
import com.newrelic.agent.android.background.ApplicationStateMonitor;
import com.newrelic.agent.android.crashes.CrashReporter;
import com.newrelic.agent.android.harvest.AgentHealth;
import com.newrelic.agent.android.harvest.ApplicationInformation;
import com.newrelic.agent.android.harvest.ConnectInformation;
import com.newrelic.agent.android.harvest.DeviceInformation;
import com.newrelic.agent.android.harvest.EnvironmentInformation;
import com.newrelic.agent.android.harvest.Harvest;
import com.newrelic.agent.android.instrumentation.MetricCategory;
import com.newrelic.agent.android.logging.AgentLog;
import com.newrelic.agent.android.logging.AgentLogManager;
import com.newrelic.agent.android.metric.MetricNames;
import com.newrelic.agent.android.metric.MetricUnit;
import com.newrelic.agent.android.sample.MachineMeasurementConsumer;
import com.newrelic.agent.android.sample.Sampler;
import com.newrelic.agent.android.stats.StatsEngine;
import com.newrelic.agent.android.tracing.TraceMachine;
import com.newrelic.agent.android.util.ActivityLifecycleBackgroundListener;
import com.newrelic.agent.android.util.AndroidEncoder;
import com.newrelic.agent.android.util.Connectivity;
import com.newrelic.agent.android.util.Encoder;
import com.newrelic.agent.android.util.JsonCrashStore;
import com.newrelic.agent.android.util.PersistentUUID;
import com.newrelic.agent.android.util.SharedPrefsAnalyticAttributeStore;
import com.newrelic.agent.android.util.UiBackgroundListener;
import java.io.IOException;
import java.text.MessageFormat;
import java.util.Comparator;
import java.util.List;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import proguard.canary.NewRelicCanary;

/* JADX INFO: loaded from: classes.dex */
public class AndroidAgentImpl implements AgentImpl, ConnectionListener, ApplicationStateListener, TraceMachineInterface {
    private static final float LOCATION_ACCURACY_THRESHOLD = 500.0f;
    private final AgentConfiguration agentConfiguration;
    private ApplicationInformation applicationInformation;
    private final Context context;
    private DeviceInformation deviceInformation;
    private LocationListener locationListener;
    private MachineMeasurementConsumer machineMeasurementConsumer;
    private SavedState savedState;
    private static final AgentLog log = AgentLogManager.getAgentLog();
    private static final Comparator<TransactionData> cmp = new Comparator<TransactionData>() { // from class: com.newrelic.agent.android.AndroidAgentImpl.1
        @Override // java.util.Comparator
        public int compare(TransactionData lhs, TransactionData rhs) {
            if (lhs.getTimestamp() > rhs.getTimestamp()) {
                return -1;
            }
            if (lhs.getTimestamp() < rhs.getTimestamp()) {
                return 1;
            }
            return 0;
        }
    };
    private final Lock lock = new ReentrantLock();
    private final Encoder encoder = new AndroidEncoder();

    public AndroidAgentImpl(Context context, AgentConfiguration agentConfiguration) throws AgentInitializationException {
        ComponentCallbacks uiBackgroundListener;
        this.context = appContext(context);
        this.agentConfiguration = agentConfiguration;
        this.savedState = new SavedState(this.context);
        if (isDisabled()) {
            throw new AgentInitializationException("This version of the agent has been disabled");
        }
        initApplicationInformation();
        if (agentConfiguration.useLocationService() && this.context.getPackageManager().checkPermission("android.permission.ACCESS_FINE_LOCATION", getApplicationInformation().getPackageId()) == 0) {
            log.debug("Location stats enabled");
            addLocationListener();
        }
        TraceMachine.setTraceMachineInterface(this);
        agentConfiguration.setCrashStore(new JsonCrashStore(context));
        agentConfiguration.setAnalyticAttributeStore(new SharedPrefsAnalyticAttributeStore(context));
        ApplicationStateMonitor.getInstance().addApplicationStateListener(this);
        if (Build.VERSION.SDK_INT >= 14) {
            if (Agent.getUnityInstrumentationFlag().equals("YES")) {
                uiBackgroundListener = new ActivityLifecycleBackgroundListener();
                if (uiBackgroundListener instanceof Application.ActivityLifecycleCallbacks) {
                    try {
                        if (context.getApplicationContext() instanceof Application) {
                            Application application = (Application) context.getApplicationContext();
                            application.registerActivityLifecycleCallbacks((Application.ActivityLifecycleCallbacks) uiBackgroundListener);
                        }
                    } catch (Exception e) {
                    }
                }
            } else {
                uiBackgroundListener = new UiBackgroundListener();
            }
            context.registerComponentCallbacks(uiBackgroundListener);
        }
    }

    protected void initialize() {
        AnalyticsControllerImpl.getInstance();
        AnalyticsControllerImpl.initialize(this.agentConfiguration, this);
        Harvest.addHarvestListener(this.savedState);
        Harvest.initialize(this.agentConfiguration);
        Harvest.setHarvestConfiguration(this.savedState.getHarvestConfiguration());
        Harvest.setHarvestConnectInformation(this.savedState.getConnectInformation());
        Measurements.initialize();
        log.info(MessageFormat.format("New Relic Agent v{0}", Agent.getVersion()));
        log.verbose(MessageFormat.format("Application token: {0}", this.agentConfiguration.getApplicationToken()));
        this.machineMeasurementConsumer = new MachineMeasurementConsumer();
        Measurements.addMeasurementConsumer(this.machineMeasurementConsumer);
        StatsEngine.get().inc("Supportability/AgentHealth/UncaughtExceptionHandler/" + getUnhandledExceptionHandlerName());
        CrashReporter.initialize(this.agentConfiguration);
        Sampler.init(this.context);
    }

    @Override // com.newrelic.agent.android.AgentImpl
    public boolean updateSavedConnectInformation() {
        ConnectInformation savedConnectInformation = this.savedState.getConnectInformation();
        ConnectInformation newConnectInformation = new ConnectInformation(getApplicationInformation(), getDeviceInformation());
        String savedAppToken = this.savedState.getAppToken();
        if (newConnectInformation.equals(savedConnectInformation) && this.agentConfiguration.getApplicationToken().equals(savedAppToken)) {
            return false;
        }
        if (newConnectInformation.getApplicationInformation().isAppUpgrade(savedConnectInformation.getApplicationInformation())) {
            StatsEngine.get().inc(MetricNames.MOBILE_APP_UPGRADE);
            AnalyticAttribute attribute = new AnalyticAttribute(AnalyticAttribute.APP_UPGRADE_ATTRIBUTE, savedConnectInformation.getApplicationInformation().getAppVersion());
            AnalyticsControllerImpl.getInstance().addAttributeUnchecked(attribute, false);
        }
        this.savedState.clear();
        this.savedState.saveConnectInformation(newConnectInformation);
        this.savedState.saveAppToken(this.agentConfiguration.getApplicationToken());
        return true;
    }

    @Override // com.newrelic.agent.android.AgentImpl
    public DeviceInformation getDeviceInformation() {
        if (this.deviceInformation != null) {
            return this.deviceInformation;
        }
        DeviceInformation info = new DeviceInformation();
        info.setOsName(AbstractTokenRequest.ANDROID_OS_NAME);
        info.setOsVersion(Build.VERSION.RELEASE);
        info.setOsBuild(Build.VERSION.INCREMENTAL);
        info.setModel(Build.MODEL);
        info.setAgentName("AndroidAgent");
        info.setAgentVersion(Agent.getVersion());
        info.setManufacturer(Build.MANUFACTURER);
        info.setDeviceId(getUUID());
        info.setArchitecture(System.getProperty("os.arch"));
        info.setRunTime(System.getProperty("java.vm.version"));
        info.setSize(deviceForm(this.context).name().toLowerCase());
        this.deviceInformation = info;
        return this.deviceInformation;
    }

    @Override // com.newrelic.agent.android.AgentImpl
    public EnvironmentInformation getEnvironmentInformation() {
        EnvironmentInformation envInfo = new EnvironmentInformation();
        ActivityManager activityManager = (ActivityManager) this.context.getSystemService("activity");
        long[] free = new long[2];
        try {
            StatFs rootStatFs = new StatFs(Environment.getRootDirectory().getAbsolutePath());
            StatFs externalStatFs = new StatFs(Environment.getExternalStorageDirectory().getAbsolutePath());
            if (Build.VERSION.SDK_INT >= 18) {
                free[0] = rootStatFs.getAvailableBlocksLong() * rootStatFs.getBlockSizeLong();
                free[1] = externalStatFs.getAvailableBlocksLong() * rootStatFs.getBlockSizeLong();
            } else {
                free[0] = rootStatFs.getAvailableBlocks() * rootStatFs.getBlockSize();
                free[1] = externalStatFs.getAvailableBlocks() * externalStatFs.getBlockSize();
            }
        } catch (Exception e) {
            AgentHealth.noticeException(e);
        } finally {
            if (free[(char) 0] < 0) {
                free[0] = 0;
            }
            if (free[(char) 1] < 0) {
                free[1] = 0;
            }
            envInfo.setDiskAvailable(free);
        }
        envInfo.setMemoryUsage(Sampler.sampleMemory(activityManager).getSampleValue().asLong().longValue());
        envInfo.setOrientation(this.context.getResources().getConfiguration().orientation);
        envInfo.setNetworkStatus(getNetworkCarrier());
        envInfo.setNetworkWanType(getNetworkWanType());
        return envInfo;
    }

    public void initApplicationInformation() throws AgentInitializationException {
        String appName;
        if (this.applicationInformation != null) {
            log.debug("attempted to reinitialize ApplicationInformation.");
            return;
        }
        String packageName = this.context.getPackageName();
        PackageManager packageManager = this.context.getPackageManager();
        try {
            PackageInfo packageInfo = packageManager.getPackageInfo(packageName, 0);
            String appVersion = this.agentConfiguration.getCustomApplicationVersion();
            if (TextUtils.isEmpty(appVersion)) {
                if (packageInfo != null && packageInfo.versionName != null && packageInfo.versionName.length() > 0) {
                    appVersion = packageInfo.versionName;
                } else {
                    throw new AgentInitializationException("Your app doesn't appear to have a version defined. Ensure you have defined 'versionName' in your manifest.");
                }
            }
            log.debug("Using application version " + appVersion);
            try {
                ApplicationInfo info = packageManager.getApplicationInfo(packageName, 0);
                if (info != null) {
                    appName = packageManager.getApplicationLabel(info).toString();
                } else {
                    appName = packageName;
                }
            } catch (PackageManager.NameNotFoundException e) {
                log.warning(e.toString());
                appName = packageName;
            } catch (SecurityException e2) {
                log.warning(e2.toString());
                appName = packageName;
            }
            log.debug("Using application name " + appName);
            String build = this.agentConfiguration.getCustomBuildIdentifier();
            if (TextUtils.isEmpty(build)) {
                if (packageInfo != null) {
                    build = String.valueOf(packageInfo.versionCode);
                } else {
                    build = "";
                    log.warning("Your app doesn't appear to have a version code defined. Ensure you have defined 'versionCode' in your manifest.");
                }
            }
            log.debug("Using build  " + build);
            this.applicationInformation = new ApplicationInformation(appName, appVersion, packageName, build);
            this.applicationInformation.setVersionCode(packageInfo.versionCode);
        } catch (PackageManager.NameNotFoundException e3) {
            throw new AgentInitializationException("Could not determine package version: " + e3.getMessage());
        }
    }

    @Override // com.newrelic.agent.android.AgentImpl
    public ApplicationInformation getApplicationInformation() {
        return this.applicationInformation;
    }

    @Override // com.newrelic.agent.android.AgentImpl
    public long getSessionDurationMillis() {
        Harvest.getInstance();
        return Harvest.getMillisSinceStart();
    }

    private static DeviceForm deviceForm(Context context) {
        int deviceSize = context.getResources().getConfiguration().screenLayout & 15;
        switch (deviceSize) {
            case 1:
                return DeviceForm.SMALL;
            case 2:
                return DeviceForm.NORMAL;
            case 3:
                return DeviceForm.LARGE;
            default:
                if (deviceSize > 3) {
                    return DeviceForm.XLARGE;
                }
                return DeviceForm.UNKNOWN;
        }
    }

    private static Context appContext(Context context) {
        if (!(context instanceof Application)) {
            return context.getApplicationContext();
        }
        return context;
    }

    @Override // com.newrelic.agent.android.AgentImpl
    @Deprecated
    public void addTransactionData(TransactionData transactionData) {
    }

    @Override // com.newrelic.agent.android.AgentImpl
    @Deprecated
    public void mergeTransactionData(List<TransactionData> transactionDataList) {
    }

    @Override // com.newrelic.agent.android.AgentImpl
    @Deprecated
    public List<TransactionData> getAndClearTransactionData() {
        return null;
    }

    @Override // com.newrelic.agent.android.AgentImpl
    public String getCrossProcessId() {
        this.lock.lock();
        try {
            return this.savedState.getCrossProcessId();
        } finally {
            this.lock.unlock();
        }
    }

    @Override // com.newrelic.agent.android.AgentImpl
    public int getStackTraceLimit() {
        this.lock.lock();
        try {
            return this.savedState.getStackTraceLimit();
        } finally {
            this.lock.unlock();
        }
    }

    @Override // com.newrelic.agent.android.AgentImpl
    public int getResponseBodyLimit() {
        this.lock.lock();
        try {
            return this.savedState.getHarvestConfiguration().getResponse_body_limit();
        } finally {
            this.lock.unlock();
        }
    }

    @Override // com.newrelic.agent.android.AgentImpl
    public void start() {
        if (!isDisabled()) {
            initialize();
            Harvest.start();
        } else {
            stop(false);
        }
    }

    @Override // com.newrelic.agent.android.AgentImpl
    public void stop() {
        stop(true);
    }

    private void stop(boolean finalSendData) {
        Sampler.shutdown();
        TraceMachine.haltTracing();
        int eventsRecorded = AnalyticsControllerImpl.getInstance().getEventManager().getEventsRecorded();
        int eventsEjected = AnalyticsControllerImpl.getInstance().getEventManager().getEventsEjected();
        Measurements.addCustomMetric("Supportability/Events/Recorded", MetricCategory.NONE.name(), eventsRecorded, eventsEjected, eventsEjected, MetricUnit.OPERATIONS, MetricUnit.OPERATIONS);
        if (finalSendData) {
            if (isUIThread()) {
                StatsEngine.get().inc("Supportability/AgentHealth/HarvestOnMainThread");
            }
            Harvest.harvestNow();
        }
        AnalyticsControllerImpl.shutdown();
        TraceMachine.clearActivityHistory();
        Harvest.shutdown();
        Measurements.shutdown();
    }

    @Override // com.newrelic.agent.android.AgentImpl
    public void disable() {
        log.warning("PERMANENTLY DISABLING AGENT v" + Agent.getVersion());
        try {
            this.savedState.saveDisabledVersion(Agent.getVersion());
            try {
                stop(false);
            } finally {
                Agent.setImpl(NullAgentImpl.instance);
            }
        } catch (Throwable th) {
            try {
                stop(false);
                throw th;
            } finally {
                Agent.setImpl(NullAgentImpl.instance);
            }
        }
    }

    @Override // com.newrelic.agent.android.AgentImpl
    public boolean isDisabled() {
        return Agent.getVersion().equals(this.savedState.getDisabledVersion());
    }

    @Override // com.newrelic.agent.android.AgentImpl
    public String getNetworkCarrier() {
        return Connectivity.carrierNameFromContext(this.context);
    }

    @Override // com.newrelic.agent.android.AgentImpl
    public String getNetworkWanType() {
        return Connectivity.wanType(this.context);
    }

    public static void init(Context context, AgentConfiguration agentConfiguration) {
        try {
            Agent.setImpl(new AndroidAgentImpl(context, agentConfiguration));
            Agent.start();
        } catch (AgentInitializationException e) {
            log.error("Failed to initialize the agent: " + e.toString());
        }
    }

    @Override // com.newrelic.agent.android.api.v1.ConnectionListener
    @Deprecated
    public void connected(ConnectionEvent e) {
        log.error("AndroidAgentImpl: connected ");
    }

    @Override // com.newrelic.agent.android.api.v1.ConnectionListener
    @Deprecated
    public void disconnected(ConnectionEvent e) {
        this.savedState.clear();
    }

    @Override // com.newrelic.agent.android.background.ApplicationStateListener
    @Deprecated
    public void applicationForegrounded(ApplicationStateEvent e) {
        log.info("AndroidAgentImpl: application foregrounded ");
        start();
    }

    @Override // com.newrelic.agent.android.background.ApplicationStateListener
    @Deprecated
    public void applicationBackgrounded(ApplicationStateEvent e) {
        log.info("AndroidAgentImpl: application backgrounded ");
        stop();
    }

    @Override // com.newrelic.agent.android.AgentImpl
    public void setLocation(String countryCode, String adminRegion) {
        if (countryCode == null || adminRegion == null) {
            throw new IllegalArgumentException("Country code and administrative region are required.");
        }
    }

    public void setLocation(Location location) {
        Address address;
        if (location == null) {
            throw new IllegalArgumentException("Location must not be null.");
        }
        Geocoder coder = new Geocoder(this.context);
        List<Address> addresses = null;
        try {
            addresses = coder.getFromLocation(location.getLatitude(), location.getLongitude(), 1);
        } catch (IOException e) {
            log.error("Unable to geocode location: " + e.toString());
        }
        if (addresses != null && addresses.size() != 0 && (address = addresses.get(0)) != null) {
            String countryCode = address.getCountryCode();
            String adminArea = address.getAdminArea();
            if (countryCode != null && adminArea != null) {
                setLocation(countryCode, adminArea);
                removeLocationListener();
            }
        }
    }

    private void addLocationListener() {
        LocationManager locationManager = (LocationManager) this.context.getSystemService("location");
        if (locationManager == null) {
            log.error("Unable to retrieve reference to LocationManager. Disabling location listener.");
        } else {
            this.locationListener = new LocationListener() { // from class: com.newrelic.agent.android.AndroidAgentImpl.2
                @Override // android.location.LocationListener
                public void onLocationChanged(Location location) {
                    if (AndroidAgentImpl.this.isAccurate(location)) {
                        AndroidAgentImpl.this.setLocation(location);
                    }
                }

                @Override // android.location.LocationListener
                public void onProviderDisabled(String provider) {
                    if ("passive".equals(provider)) {
                        AndroidAgentImpl.this.removeLocationListener();
                    }
                }

                @Override // android.location.LocationListener
                public void onProviderEnabled(String provider) {
                }

                @Override // android.location.LocationListener
                public void onStatusChanged(String provider, int status, Bundle extras) {
                }
            };
            locationManager.requestLocationUpdates("passive", 1000L, 0.0f, this.locationListener);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeLocationListener() {
        if (this.locationListener != null) {
            LocationManager locationManager = (LocationManager) this.context.getSystemService("location");
            if (locationManager == null) {
                log.error("Unable to retrieve reference to LocationManager. Can't unregister location listener.");
                return;
            }
            synchronized (locationManager) {
                locationManager.removeUpdates(this.locationListener);
                this.locationListener = null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isAccurate(Location location) {
        return location != null && LOCATION_ACCURACY_THRESHOLD >= location.getAccuracy();
    }

    private String getUUID() throws Throwable {
        String uuid = this.savedState.getConnectInformation().getDeviceInformation().getDeviceId();
        if (TextUtils.isEmpty(uuid)) {
            PersistentUUID persistentUUID = new PersistentUUID(this.context);
            String uuid2 = persistentUUID.getPersistentUUID();
            this.savedState.saveDeviceId(uuid2);
            return uuid2;
        }
        return uuid;
    }

    private String getUnhandledExceptionHandlerName() {
        try {
            return Thread.getDefaultUncaughtExceptionHandler().getClass().getName();
        } catch (Exception e) {
            return "unknown";
        }
    }

    @Override // com.newrelic.agent.android.AgentImpl
    public Encoder getEncoder() {
        return this.encoder;
    }

    @Override // com.newrelic.agent.android.api.v2.TraceMachineInterface
    public long getCurrentThreadId() {
        return Thread.currentThread().getId();
    }

    @Override // com.newrelic.agent.android.api.v2.TraceMachineInterface
    public boolean isUIThread() {
        return Looper.myLooper() == Looper.getMainLooper();
    }

    @Override // com.newrelic.agent.android.api.v2.TraceMachineInterface
    public String getCurrentThreadName() {
        return Thread.currentThread().getName();
    }

    private void pokeCanary() {
        NewRelicCanary.canaryMethod();
    }

    protected SavedState getSavedState() {
        return this.savedState;
    }

    protected void setSavedState(SavedState savedState) {
        this.savedState = savedState;
    }
}

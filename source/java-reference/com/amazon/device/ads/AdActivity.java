package com.amazon.device.ads;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import com.newrelic.agent.android.api.v2.TraceFieldInterface;
import com.newrelic.agent.android.background.ApplicationStateMonitor;
import com.newrelic.agent.android.instrumentation.Instrumented;
import com.newrelic.agent.android.tracing.TraceMachine;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;

/* JADX INFO: loaded from: classes.dex */
@Instrumented
public class AdActivity extends Activity implements TraceFieldInterface {
    static final String ADAPTER_KEY = "adapter";
    private static final String LOGTAG = AdActivity.class.getSimpleName();
    private ActivityAdapterFactory activityAdapterFactory;
    private IAdActivityAdapter adapter;
    private AdRegistrationExecutor amazonAdRegistration;
    private MobileAdsLogger logger;

    public interface IAdActivityAdapter {
        boolean onBackPressed();

        void onConfigurationChanged(android.content.res.Configuration configuration);

        void onCreate();

        void onPause();

        void onResume();

        void onStop();

        void preOnCreate();

        void setActivity(Activity activity);
    }

    @Override // android.app.Activity
    protected void onStart() {
        super.onStart();
        ApplicationStateMonitor.getInstance().activityStarted();
    }

    public AdActivity() {
        this(new MobileAdsLoggerFactory(), AdRegistration.getAmazonAdRegistrationExecutor(), new ActivityAdapterFactory(new MobileAdsLoggerFactory()));
    }

    AdActivity(MobileAdsLoggerFactory loggerFactory, AdRegistrationExecutor amazonAdRegistration, ActivityAdapterFactory activityAdapterFactory) {
        this.logger = loggerFactory.createMobileAdsLogger(LOGTAG);
        this.amazonAdRegistration = amazonAdRegistration;
        this.activityAdapterFactory = activityAdapterFactory;
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        TraceMachine.startTracing(com.google.android.gms.ads.AdActivity.SIMPLE_CLASS_NAME);
        try {
            TraceMachine.enterMethod(this._nr_trace, "AdActivity#onCreate", null);
        } catch (NoSuchFieldError e) {
            TraceMachine.enterMethod(null, "AdActivity#onCreate", null);
        }
        initializeSdk();
        this.adapter = this.activityAdapterFactory.createAdapter(getIntent());
        if (this.adapter == null) {
            super.onCreate(bundle);
            finish();
            TraceMachine.exitMethod();
        } else {
            this.adapter.setActivity(this);
            this.adapter.preOnCreate();
            super.onCreate(bundle);
            this.adapter.onCreate();
            TraceMachine.exitMethod();
        }
    }

    private void initializeSdk() {
        if (this.logger == null) {
            setLoggerFactory(new MobileAdsLoggerFactory());
        }
        if (this.amazonAdRegistration == null) {
            setAmazonAdRegistrationExecutor(AdRegistration.getAmazonAdRegistrationExecutor());
        }
        if (this.activityAdapterFactory == null) {
            setActivityAdapterFactory(new ActivityAdapterFactory(new MobileAdsLoggerFactory()));
        }
        this.amazonAdRegistration.initializeAds(getApplicationContext());
    }

    void setLoggerFactory(MobileAdsLoggerFactory loggerFactory) {
        this.logger = loggerFactory.createMobileAdsLogger(LOGTAG);
    }

    void setAmazonAdRegistrationExecutor(AdRegistrationExecutor amazonAdRegistrationExecutor) {
        this.amazonAdRegistration = amazonAdRegistrationExecutor;
    }

    void setActivityAdapterFactory(ActivityAdapterFactory activityAdapterFactory) {
        this.activityAdapterFactory = activityAdapterFactory;
    }

    @Override // android.app.Activity
    public void onPause() {
        super.onPause();
        this.adapter.onPause();
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        this.adapter.onResume();
    }

    @Override // android.app.Activity
    public void onStop() {
        ApplicationStateMonitor.getInstance().activityStopped();
        this.adapter.onStop();
        super.onStop();
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(android.content.res.Configuration newConfig) {
        super.onConfigurationChanged(newConfig);
        this.adapter.onConfigurationChanged(newConfig);
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        if (!this.adapter.onBackPressed()) {
            super.onBackPressed();
        }
    }

    static class ActivityAdapterFactory {
        private final MobileAdsLogger logger;

        public ActivityAdapterFactory(MobileAdsLoggerFactory loggerFactory) {
            this.logger = loggerFactory.createMobileAdsLogger(AdActivity.LOGTAG);
        }

        IAdActivityAdapter createAdapter(Intent intent) {
            String adapterClassName = intent.getStringExtra(AdActivity.ADAPTER_KEY);
            if (adapterClassName == null) {
                this.logger.e("Unable to launch the AdActivity due to an internal error.");
                return null;
            }
            try {
                Class<?> adapterClass = Class.forName(adapterClassName);
                try {
                    Constructor<?> adapterConstructor = adapterClass.getDeclaredConstructor(new Class[0]);
                    try {
                        IAdActivityAdapter adapter = (IAdActivityAdapter) adapterConstructor.newInstance(new Object[0]);
                        return adapter;
                    } catch (IllegalAccessException e) {
                        this.logger.e("Illegal access exception when instantiating the adapter.");
                        return null;
                    } catch (IllegalArgumentException e2) {
                        this.logger.e("Illegal arguments given to the default constructor.");
                        return null;
                    } catch (InstantiationException e3) {
                        this.logger.e("Instantiation exception when instantiating the adapter.");
                        return null;
                    } catch (InvocationTargetException e4) {
                        this.logger.e("Invocation target exception when instantiating the adapter.");
                        return null;
                    }
                } catch (NoSuchMethodException e5) {
                    this.logger.e("No default constructor exists for the adapter.");
                    return null;
                } catch (SecurityException e6) {
                    this.logger.e("Security exception when trying to get the default constructor.");
                    return null;
                }
            } catch (ClassNotFoundException e7) {
                this.logger.e("Unable to get the adapter class.");
                return null;
            }
        }
    }
}

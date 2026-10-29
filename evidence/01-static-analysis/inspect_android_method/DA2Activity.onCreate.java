    @Override // org.cocos2dx.lib.Cocos2dxActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) throws Exception {
        super.onCreate(savedInstanceState);
        try {
            try {
                ApplicationInfo applicationInfo = getApplicationInfo();
                int i = applicationInfo.flags & 2;
                applicationInfo.flags = i;
                if (i != 0) {
                    NewRelic.withApplicationToken("AAfbeca5a9981874b750bc146f815eea5061fe838c").start(getApplication());
                } else {
                    NewRelic.withApplicationToken("AA3f2ddc0c0c2fcb54d2484561ab0776a4ad76718c").start(getApplication());
                }
                try {
                    Fabric.with(this, new Crashlytics(), new CrashlyticsNdk());
                    logUser();
                    ANDROID_ID = Settings.Secure.getString(getContext().getContentResolver(), "android_id");
                    logUser();
                    if (nativeIsPlatformAmazon()) {
                        ApplicationInfo applicationInfo2 = getApplicationInfo();
                        int i2 = applicationInfo2.flags & 2;
                        applicationInfo2.flags = i2;
                        if (i2 != 0) {
                            showDialog("Platform Debug Build Check", "Built for Amazon");
                        }
                    } else {
                        this.mGoogleApiClient = new GoogleApiClient.Builder(this).addConnectionCallbacks(this).addOnConnectionFailedListener(this).addApi(Games.API).addScope(Games.SCOPE_GAMES).build();
                    }
                    try {
                        if (!nativeIsPlatformAmazon()) {
                            ApplicationInfo applicationInfo3 = getApplicationInfo();
                            int i3 = applicationInfo3.flags & 2;
                            applicationInfo3.flags = i3;
                            if (i3 != 0) {
                                InMobi.initialize((Activity) this, "d2728786e8244c2bacc592337ce0fe63");
                            } else {
                                InMobi.initialize((Activity) this, "2fbee7e9bcc5474496fb292497a6e0a6");
                            }
                        }
                    } catch (Exception e) {
                        Crashlytics.logException(e);
                    }
                    int permissionCheck = ContextCompat.checkSelfPermission(getContext(), "android.permission.READ_PHONE_STATE");
                    if (permissionCheck == 0) {
                        PHONE_ID = ((TelephonyManager) getContext().getSystemService("phone")).getDeviceId();
                        if (PHONE_ID == null) {
                            PHONE_ID = "PHONE_ID_NULL_" + ANDROID_ID;
                        } else if (PHONE_ID.isEmpty()) {
                            PHONE_ID = "PHONE_ID_EMPTY_" + ANDROID_ID;
                        }
                    } else {
                        PHONE_ID = "PHONE_ID_PERMISSION_DENIED_" + ANDROID_ID;
                    }
                    if (!nativeIsPlatformAmazon()) {
                        try {
                            new MoPubConversionTracker().reportAppOpen(this);
                        } catch (Exception e2) {
                            Crashlytics.logException(e2);
                        }
                    }
                    nativeSetActivity(this);
                    try {
                        ZYWebView.setActivity(this);
                    } catch (Exception e3) {
                        Crashlytics.logException(e3);
                    }
                    if (isGooglePlayInstalled()) {
                        Tracker t = ((GoogleAnalyticsInfusedApplication) getApplication()).getTracker(GoogleAnalyticsInfusedApplication.TrackerName.APP_TRACKER);
                        t.enableAdvertisingIdCollection(true);
                        t.setScreenName("Start");
                        t.send(new HitBuilders.AppViewBuilder().build());
                        nativeInitGPGS(this);
                    }
                    ApplicationInfo applicationInfo4 = getApplicationInfo();
                    int i4 = applicationInfo4.flags & 2;
                    applicationInfo4.flags = i4;
                    if (i4 != 0) {
                    }
                    if (nativeIsPlatformAmazon()) {
                        ApplicationInfo applicationInfo5 = getApplicationInfo();
                        int i5 = applicationInfo5.flags & 2;
                        applicationInfo5.flags = i5;
                        if (i5 != 0) {
                        }
                        incrementIapAsyncOperationInProgressCounter();
                        setupAmazonIAPOnCreate();
                    } else {
                        ApplicationInfo applicationInfo6 = getApplicationInfo();
                        int i6 = applicationInfo6.flags & 2;
                        applicationInfo6.flags = i6;
                        if (i6 != 0) {
                        }
                    }
                    initializeInterstitial();
                    nativeOnActivityCreated(this, savedInstanceState);
                } catch (Exception e4) {
                    Log.e(TAG, e4.getMessage(), e4);
                    throw e4;
                }
            } catch (Exception e5) {
                Log.e(TAG, e5.getMessage(), e5);
                throw e5;
            }
        } catch (Throwable th) {
            try {
                Fabric.with(this, new Crashlytics(), new CrashlyticsNdk());
                logUser();
                throw th;
            } catch (Exception e6) {
                Log.e(TAG, e6.getMessage(), e6);
                throw e6;
            }
        }
    }
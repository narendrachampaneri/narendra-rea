package com.appsomniacs.da2;

import android.annotation.SuppressLint;
import android.app.ActionBar;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.graphics.Rect;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.provider.Settings;
import android.support.v4.content.ContextCompat;
import android.telephony.TelephonyManager;
import android.util.Log;
import android.view.Menu;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import android.widget.Toast;
import com.amazon.ags.api.AmazonGamesCallback;
import com.amazon.ags.api.AmazonGamesClient;
import com.amazon.ags.api.AmazonGamesFeature;
import com.amazon.ags.api.AmazonGamesStatus;
import com.amazon.device.ads.Ad;
import com.amazon.device.ads.AdError;
import com.amazon.device.ads.AdLayout;
import com.amazon.device.ads.AdProperties;
import com.amazon.device.ads.AdRegistration;
import com.amazon.device.ads.AdSize;
import com.amazon.device.ads.AdTargetingOptions;
import com.amazon.device.ads.ExtendedAdListener;
import com.amazon.device.ads.InterstitialAd;
import com.amazon.device.iap.PurchasingService;
import com.amazon.iap.util.DA2IapManager;
import com.amazon.iap.util.DA2PurchasingListener;
import com.amazon.iap.util.DA2Sku;
import com.android.util.IabHelper;
import com.android.util.IabResult;
import com.android.util.Inventory;
import com.android.util.Purchase;
import com.applovin.adview.AppLovinInterstitialAd;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdClickListener;
import com.applovin.sdk.AppLovinAdDisplayListener;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.AppLovinAdVideoPlaybackListener;
import com.applovin.sdk.AppLovinSdk;
import com.appsomniacs.core.GoogleAnalyticsInfusedApplication;
import com.chartboost.sdk.Chartboost;
import com.crashlytics.android.Crashlytics;
import com.crashlytics.android.ndk.CrashlyticsNdk;
import com.google.android.gms.analytics.GoogleAnalytics;
import com.google.android.gms.analytics.HitBuilders;
import com.google.android.gms.analytics.Tracker;
import com.google.android.gms.common.AccountPicker;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.games.Games;
import com.google.android.gms.location.places.PlacesStatusCodes;
import com.google.android.vending.licensing.AESObfuscator;
import com.google.android.vending.licensing.LicenseChecker;
import com.google.android.vending.licensing.LicenseCheckerCallback;
import com.google.android.vending.licensing.ServerManagedPolicy;
import com.google.example.games.basegameutils.BaseGameUtils;
import com.inmobi.analytics.InMobiAnalytics;
import com.inmobi.commons.InMobi;
import com.mopub.mobileads.MoPubConversionTracker;
import com.mopub.mobileads.MoPubErrorCode;
import com.mopub.mobileads.MoPubInterstitial;
import com.mopub.mobileads.MoPubView;
import com.newrelic.agent.android.NewRelic;
import io.fabric.sdk.android.Fabric;
import java.io.UnsupportedEncodingException;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import org.cocos2dx.lib.Cocos2dxActivity;
import org.cocos2dx.lib.Cocos2dxGLSurfaceView;
import org.go3k.utilities.ZYWebView;

/* JADX INFO: loaded from: classes.dex */
public class DA2Activity extends Cocos2dxActivity implements MoPubView.BannerAdListener, MoPubInterstitial.InterstitialAdListener, ExtendedAdListener, AppLovinAdLoadListener, AppLovinAdDisplayListener, AppLovinAdVideoPlaybackListener, AppLovinAdClickListener, GoogleApiClient.ConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener {
    private static String ANDROID_ID = null;
    private static final String BASE64_PUBLIC_KEY = "TVgOsg3llgWk1IF6HKUGCAEtPFZvUc88yaMAZyvauImCYY0NsT2RZtbNClMlBT070FOI1LGORZiyVoK8Mv7DVwrIY1yMzGzgWsLftWIUcvxP8J96PTSKJx8R7cEzrPf3nEDC4J4niPD8STqAYBNXyzfOHCthu01YaytIDCxlKv4SbIC8Ipgv4VnOO0BQwX4vU04jgETozZqUbNIBB44uxgUGcwuGilKVvaTRn9tUGJKroyqHULEuyULiPcfEJKKmCvWCCehVrf3akHqhDfKBorw4rk7u64PCeJisAZTO7siBu4Mevk32QcxIbKk5hYhWYbV3FTafPtymHySGM0AK1a1x5HENyPL3nqvv7kkM9ANUhXthchpzY3OmaVqeGONl3Gx8ESwB";
    private static final String BASE64_PUBLIC_KEY0 = "!@#$1234%^&*5678()90THIS_IS_A_SILLY_FILLER_TEXT_!@#$1234%^&*5678()90";
    private static final String BASE64_PUBLIC_KEY1 = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAh2KG+zjczjQ/Gk7L7ZI3jPMQb98BGQ1kEqJksQBVr";
    private static final String BASE64_PUBLIC_KEY2 = "!@#$1234%^&*5678()90NERD_BLAH_BLAH_!@#$1234%^&*5678()90";
    private static final String BASE64_PUBLIC_KEY3 = "oQYuS3jXe1AotSlIli3EDh37Fb+RrePQqTDXWkQ7IF7cc9ml/4LJFW/sf5Eghk6LGJPsKNmNbHiv";
    private static final String BASE64_PUBLIC_KEY4 = "lwj3oNsjraE3CO9ZP4nvQPeDhJMjvZQnNAWc2cgu7KWxyTqIJu+EMvROwS3bwn/goXmFmhNK4dFtA7h6fFPqb6doKVEgyD9uR7xxnit7aUhzbvQWr";
    private static final String BASE64_PUBLIC_KEY5 = "!@#$1234%^&*5678()90_HACKERS_SUCK_MY_BOTTOM_LINE_!@#$1234%^&*5678()90";
    private static final String BASE64_PUBLIC_KEY6 = "X3ErnXJJ+qpcSKZEUMfeLWxuSA5FTk5DPaSoBkzvvU3VY8PL8iDCpCGW4zOgMpF9XZ8sjUZix5U7t2Eg2psL5VDADSx3Tk2eIdMl+R7qyYbQvDAQIDAQAB";
    private static final String BASE64_PUBLIC_KEY7 = "GO_AWAY_PLEASE_!@#$1234%^&*5678()90";
    private static String PHONE_ID = null;
    private static final int REQUEST_CODE_EMAIL = 3453450;
    private static final byte[] SALT;
    private static int SALTSTEP = 0;
    private static final String TAG = "DA2";
    private static String USER_ID;
    private static String mBillingStatusMessage;
    private static SecureRandom m_rnd;
    private static HashMap<String, String> m_skuPriceLookup;
    private DA2IapManager da2AmazonIapManager;
    private int mCountOfIapHelperAsyncOperations;
    private GoogleApiClient mGoogleApiClient;
    private IabHelper mGooglePlayIabHelper;
    private IabHelper mGooglePlayIabHelper2;
    private boolean mGooglePlayIabHelperDestroyed;
    private LicenseChecker mGooglePlayLicenceChecker;
    private LicenseChecker mGooglePlayLicenceChecker2;
    private LicenseCheckerCallback mGooglePlayLicenseCheckerCallback;
    private Handler mHandler;
    private AmazonGamesClient m_amazonGamesClient;
    private static boolean m_hasPassedFLC = false;
    private static boolean m_hasPassedRLC = false;
    private static int RC_SIGN_IN = PlacesStatusCodes.USAGE_LIMIT_EXCEEDED;
    private boolean mResolvingConnectionFailure = false;
    private boolean mAutoStartSignInFlow = true;
    private boolean mGpgSignInClicked = false;
    private FrameLayout.LayoutParams m_bannerParam = null;
    private FrameLayout m_appLayout = null;
    private RelativeLayout.LayoutParams m_relBannerParam = null;
    private RelativeLayout m_relAppLayout = null;
    private MoPubView m_mopubView = null;
    private MoPubInterstitial m_mopubInterstitial = null;
    private AdLayout m_amazonAdView = null;
    private InterstitialAd m_amazonInterstitialAd = null;
    private AdTargetingOptions m_amazonAdTargetingOptions = new AdTargetingOptions().enableGeoLocation(true);
    private boolean m_isAmazonInterstitialAdReady = false;
    private boolean m_isAppLovinInterstitialAdReady = false;
    private boolean m_hasAmazonGamesClientInitializedJni = false;
    private AmazonGamesCallback m_amazonGamesCallback = new AmazonGamesCallback() { // from class: com.appsomniacs.da2.DA2Activity.2
        @Override // com.amazon.ags.api.AmazonGamesCallback
        public void onServiceNotReady(AmazonGamesStatus status) {
            Log.d(DA2Activity.TAG, "Amazon Service is NOT ready. Status:" + status.toString());
        }

        @Override // com.amazon.ags.api.AmazonGamesCallback
        public void onServiceReady(AmazonGamesClient amazonGamesClient) {
            Log.d(DA2Activity.TAG, "Amazon Service is ready.");
            DA2Activity.this.m_amazonGamesClient = amazonGamesClient;
            if (!DA2Activity.this.m_hasAmazonGamesClientInitializedJni) {
                Log.d(DA2Activity.TAG, "Amazon Service is starting initialized its JNI components.");
                DA2Activity.this.m_amazonGamesClient.initializeJni();
                DA2Activity.this.m_hasAmazonGamesClientInitializedJni = true;
                Log.d(DA2Activity.TAG, "Amazon Service has initialized its JNI components.");
            }
        }
    };
    EnumSet<AmazonGamesFeature> amazonGameFeatures = EnumSet.of(AmazonGamesFeature.Achievements, AmazonGamesFeature.Leaderboards);
    boolean m_isGooglePlayIabSetup = false;
    private IabHelper.QueryInventoryFinishedListener mGooglePlayIabGotInventoryListener = new IabHelper.QueryInventoryFinishedListener() { // from class: com.appsomniacs.da2.DA2Activity.10
        @Override // com.android.util.IabHelper.QueryInventoryFinishedListener
        public void onQueryInventoryFinished(IabResult result, Inventory inventory) {
            try {
                if (DA2Activity.this.mGooglePlayIabHelper == null) {
                    DA2Activity.this.decrementIapAsyncOperationsInProgressCounter();
                    return;
                }
                if (result.isFailure()) {
                    DA2Activity.this.complain("Failed to query purchased inventory: " + result);
                    DA2Activity.this.decrementIapAsyncOperationsInProgressCounter();
                    return;
                }
                List<String> skus = new ArrayList<>();
                skus.add("com.chadtowns.da2.propack");
                skus.add("com.chadtowns.da2.battlepack1");
                skus.add("com.chadtowns.da2.battlepack2");
                skus.add("com.chadtowns.da2.battlepack3");
                skus.add("com.chadtowns.da2.battlepack4");
                for (String sku : skus) {
                    Purchase purchase = inventory.getPurchase(sku);
                    if (purchase != null) {
                        String originalJson = purchase.getOriginalJson();
                        String signature = purchase.getSignature();
                        String productSku = purchase.getSku();
                        DA2Activity.this.incrementIapAsyncOperationInProgressCounter();
                        DA2Activity.nativeRegisterPurchase(originalJson, signature, productSku);
                    }
                }
                DA2Activity.this.decrementIapAsyncOperationsInProgressCounter();
            } catch (Throwable th) {
                DA2Activity.this.decrementIapAsyncOperationsInProgressCounter();
                throw th;
            }
        }
    };
    IabHelper.OnIabPurchaseFinishedListener mGooglePlayIabPurchaseFinishedListener = new IabHelper.OnIabPurchaseFinishedListener() { // from class: com.appsomniacs.da2.DA2Activity.16
        @Override // com.android.util.IabHelper.OnIabPurchaseFinishedListener
        public void onIabPurchaseFinished(IabResult result, Purchase purchase) {
            String toastMessage;
            String complainMessage;
            if (DA2Activity.this.mGooglePlayIabHelper == null) {
                String unused = DA2Activity.mBillingStatusMessage = " Upon purchase completion the IAB system was not present";
                return;
            }
            if (!result.isFailure()) {
                DA2Activity.nativeRegisterPurchase(purchase.getOriginalJson(), purchase.getSignature(), purchase.getSku());
                return;
            }
            switch (result.getResponse()) {
                case IabHelper.IABHELPER_USER_CANCELLED /* -1005 */:
                case 1:
                    toastMessage = "Purchase Cancelled.\nDid you mean to do that?";
                    complainMessage = null;
                    break;
                case 3:
                    toastMessage = null;
                    complainMessage = "The Google billing system is unavailable. Please try again soon!\n Contact support@appsomniacs.com for guidance if the issue persists.";
                    break;
                case 4:
                    toastMessage = null;
                    complainMessage = "Item is unavailable. Please try again. Your app may be out of date. If so please update and try again.";
                    break;
                case 7:
                    toastMessage = "You already own this Product";
                    complainMessage = "Google indicates you already own this product but the app does not want to acknowledge the purchase. Please contact support@appsomniacs.com to assist in fixing feature access.";
                    break;
                case 8:
                    toastMessage = null;
                    complainMessage = "Item is not owned.";
                    break;
                default:
                    toastMessage = null;
                    complainMessage = "Purchase Failure (result code: " + result.getResponse() + ")\nTry again. If the issue persists please contact support@appsomniacs.com for further assistance.";
                    break;
            }
            if (toastMessage != null && toastMessage.length() > 0) {
                try {
                    Toast.makeText(Cocos2dxActivity.getContext(), toastMessage, 1).show();
                } catch (Exception e) {
                    Log.e(DA2Activity.TAG, String.format("Failed to toast backout message in onIabPurchaseFinished(): %s", e.getMessage()), e);
                }
            }
            if (complainMessage != null && complainMessage.length() > 0) {
                DA2Activity.this.complain(String.format(Locale.US, complainMessage, new Object[0]));
            }
        }
    };
    IabHelper.OnConsumeFinishedListener mGooglePlayIabConsumeFinishedListener = new IabHelper.OnConsumeFinishedListener() { // from class: com.appsomniacs.da2.DA2Activity.17
        @Override // com.android.util.IabHelper.OnConsumeFinishedListener
        public void onConsumeFinished(Purchase purchase, IabResult result) {
            if (DA2Activity.this.mGooglePlayIabHelper == null) {
                String unused = DA2Activity.mBillingStatusMessage = " Upon consumption completion callback the IAB system was not present to complete the transaction.";
            } else if (!result.isSuccess()) {
                DA2Activity.this.complain("Error while consuming: " + result);
            }
        }
    };
    private Map<String, String> m_analyticsAttributeMap = new HashMap();

    public static native String nativeGetClaimedIdentity();

    private static native void nativeInitGPGS(DA2Activity dA2Activity);

    private static native void nativeInitSession();

    private static native boolean nativeIsPlatformAmazon();

    public static native void nativeOnActivityCreated(Activity activity, Bundle bundle);

    private static native void nativeOnActivityDestroyed(Activity activity);

    private static native void nativeOnActivityPaused(Activity activity);

    private static native void nativeOnActivityPausedDueToScreenLock();

    public static native void nativeOnActivityResult(Activity activity, int i, int i2, Intent intent);

    private static native void nativeOnActivityResumed(Activity activity);

    private static native void nativeOnActivitySaveInstanceState(Activity activity, Bundle bundle);

    private static native void nativeOnActivityStarted(Activity activity);

    private static native void nativeOnActivityStopped(Activity activity);

    private static native void nativeOnActivityWillStop(Activity activity);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nativeRegisterPurchase(String str, String str2, String str3);

    private static native void nativeResetInterstitial(Activity activity);

    private static native void nativeSetActivity(Activity activity);

    public static native void nativeSetIdentity(String str, String str2);

    static {
        SALTSTEP = 0;
        int i = SALTSTEP;
        SALTSTEP = i + 1;
        int i2 = SALTSTEP;
        SALTSTEP = i2 + 1;
        int i3 = SALTSTEP;
        SALTSTEP = i3 + 1;
        int i4 = SALTSTEP;
        SALTSTEP = i4 + 1;
        int i5 = SALTSTEP;
        SALTSTEP = i5 + 1;
        int i6 = SALTSTEP;
        SALTSTEP = i6 + 1;
        int i7 = SALTSTEP;
        SALTSTEP = i7 + 1;
        int i8 = SALTSTEP;
        SALTSTEP = i8 + 1;
        int i9 = SALTSTEP;
        SALTSTEP = i9 + 1;
        int i10 = SALTSTEP;
        SALTSTEP = i10 + 1;
        int i11 = SALTSTEP;
        SALTSTEP = i11 + 1;
        int i12 = SALTSTEP;
        SALTSTEP = i12 + 1;
        int i13 = SALTSTEP;
        SALTSTEP = i13 + 1;
        int i14 = SALTSTEP;
        SALTSTEP = i14 + 1;
        int i15 = SALTSTEP;
        SALTSTEP = i15 + 1;
        int i16 = SALTSTEP;
        SALTSTEP = i16 + 1;
        int i17 = SALTSTEP;
        SALTSTEP = i17 + 1;
        int i18 = SALTSTEP;
        SALTSTEP = i18 + 1;
        int i19 = SALTSTEP;
        SALTSTEP = i19 + 1;
        int i20 = SALTSTEP;
        SALTSTEP = i20 + 1;
        SALT = new byte[]{(byte) getRndSaltyByte(i), (byte) getRndSaltyByte(i2), (byte) getRndSaltyByte(i3), (byte) getRndSaltyByte(i4), (byte) getRndSaltyByte(i5), (byte) getRndSaltyByte(i6), (byte) getRndSaltyByte(i7), (byte) getRndSaltyByte(i8), (byte) getRndSaltyByte(i9), (byte) getRndSaltyByte(i10), (byte) getRndSaltyByte(i11), (byte) getRndSaltyByte(i12), (byte) getRndSaltyByte(i13), (byte) getRndSaltyByte(i14), (byte) getRndSaltyByte(i15), (byte) getRndSaltyByte(i16), (byte) getRndSaltyByte(i17), (byte) getRndSaltyByte(i18), (byte) getRndSaltyByte(i19), (byte) getRndSaltyByte(i20)};
        try {
            System.loadLibrary("AmazonGamesJni");
        } catch (UnsatisfiedLinkError e) {
            Log.w(TAG, "AmazonGamesJni Lib not found. Which is ok if not building for Amazon...\n" + e.toString());
        }
        try {
            System.loadLibrary("kamcord");
        } catch (UnsatisfiedLinkError e2) {
            Log.w(TAG, "Kamcord Lib not found. \n" + e2.toString());
        }
        System.loadLibrary("cocos2dcpp");
        mBillingStatusMessage = "";
        m_skuPriceLookup = new HashMap<>();
    }

    private static int getRndHalfInt() {
        if (m_rnd == null) {
            m_rnd = new SecureRandom();
        }
        return m_rnd.nextInt(1073741823);
    }

    private static int getRndSaltyByte(int step) {
        if (m_rnd == null) {
            m_rnd = new SecureRandom();
        }
        int num = m_rnd.nextInt(255);
        Byte[] rndByte = {Byte.valueOf((byte) (num - 128))};
        return rndByte[0].byteValue();
    }

    private void setupGooglePlayLicenceValidation() {
        if (nativeIsPlatformAmazon()) {
            m_hasPassedRLC = true;
            return;
        }
        this.mGooglePlayLicenseCheckerCallback = new AppsomniacsGooglePlayLicenseCheckerCallback();
        this.mGooglePlayLicenceChecker = new LicenseChecker(this, new ServerManagedPolicy(this, new AESObfuscator(SALT, getPackageName(), ANDROID_ID)), "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAh2KG+zjczjQ/Gk7L7ZI3jPMQb98BGQ1kEqJksQBVroQYuS3jXe1AotSlIli3EDh37Fb+RrePQqTDXWkQ7IF7cc9ml/4LJFW/sf5Eghk6LGJPsKNmNbHivlwj3oNsjraE3CO9ZP4nvQPeDhJMjvZQnNAWc2cgu7KWxyTqIJu+EMvROwS3bwn/goXmFmhNK4dFtA7h6fFPqb6doKVEgyD9uR7xxnit7aUhzbvQWrX3ErnXJJ+qpcSKZEUMfeLWxuSA5FTk5DPaSoBkzvvU3VY8PL8iDCpCGW4zOgMpF9XZ8sjUZix5U7t2Eg2psL5VDADSx3Tk2eIdMl+R7qyYbQvDAQIDAQAB");
        this.mGooglePlayLicenceChecker.checkAccess(this.mGooglePlayLicenseCheckerCallback);
        m_hasPassedRLC = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void displayResult(final String result) {
        if (this.mHandler != null) {
            this.mHandler.post(new Runnable() { // from class: com.appsomniacs.da2.DA2Activity.1
                @Override // java.lang.Runnable
                public void run() {
                    DA2Activity.this.alert(result);
                }
            });
        }
    }

    private class AppsomniacsGooglePlayLicenseCheckerCallback implements LicenseCheckerCallback {
        private AppsomniacsGooglePlayLicenseCheckerCallback() {
        }

        @Override // com.google.android.vending.licensing.LicenseCheckerCallback
        public void allow(int reason) {
            if (DA2Activity.this.isFinishing()) {
            }
        }

        @Override // com.google.android.vending.licensing.LicenseCheckerCallback
        public void dontAllow(int reason) {
            if (DA2Activity.this.isFinishing()) {
            }
        }

        @Override // com.google.android.vending.licensing.LicenseCheckerCallback
        public void applicationError(int errorCode) {
            if (!DA2Activity.this.isFinishing()) {
                String result = String.format("Error Code: %d", Integer.valueOf(errorCode));
                ApplicationInfo applicationInfo = DA2Activity.this.getApplicationInfo();
                int i = applicationInfo.flags & 2;
                applicationInfo.flags = i;
                if (i != 0) {
                    DA2Activity.this.displayResult(result);
                }
            }
        }
    }

    public void forceCrash(View view) {
        throw new RuntimeException("This is a crash");
    }

    private void logUser() {
        if (ANDROID_ID != null && ANDROID_ID.length() > 0) {
            Crashlytics.setUserIdentifier(ANDROID_ID);
        }
        if (USER_ID != null && USER_ID.length() > 0 && USER_ID.contains("@")) {
            Crashlytics.setUserEmail(USER_ID);
        }
        if (USER_ID != null && USER_ID.length() > 0) {
            Crashlytics.setUserName(USER_ID);
        }
    }

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

    @Override // android.app.Activity
    public boolean onPrepareOptionsMenu(Menu menu) {
        return false;
    }

    private void setupAmazonIAPOnCreate() {
        if (nativeIsPlatformAmazon()) {
            this.da2AmazonIapManager = new DA2IapManager(this);
            DA2PurchasingListener amazonPurchasingListener = new DA2PurchasingListener(this.da2AmazonIapManager);
            PurchasingService.registerListener(getApplicationContext(), amazonPurchasingListener);
        }
    }

    @SuppressLint({"InlinedApi"})
    private void initDefaultLayout() {
        ActionBar actionBar;
        getWindow().addFlags(524288);
        getWindow().addFlags(4194304);
        if (Build.VERSION.SDK_INT < 14) {
            getWindow().addFlags(1024);
        } else if (Build.VERSION.SDK_INT < 16) {
            getWindow().getDecorView().setSystemUiVisibility(2);
        } else if (Build.VERSION.SDK_INT < 19) {
            getWindow().getDecorView().setSystemUiVisibility(774);
        } else {
            getWindow().getDecorView().setSystemUiVisibility(4870);
        }
        if (Build.VERSION.SDK_INT > 10 && (actionBar = getActionBar()) != null) {
            actionBar.hide();
        }
        invalidateOptionsMenu();
    }

    void trySessionRequestedCompletedSetup(boolean isSessionEstablished) {
        if (nativeIsPlatformAmazon()) {
            tryVerifyInventory();
            return;
        }
        try {
            try {
                setupGooglePlayLicenceValidation();
                if (isSessionEstablished) {
                    try {
                        googlePlayIabSetup();
                    } catch (Exception e) {
                        Crashlytics.logException(e);
                        throw e;
                    }
                }
            } catch (Exception e2) {
                throw e2;
            }
        } catch (Exception ex) {
            ApplicationInfo applicationInfo = getApplicationInfo();
            int i = applicationInfo.flags & 2;
            applicationInfo.flags = i;
            if (i != 0) {
            }
            Crashlytics.logException(ex);
        }
    }

    static void sessionRequestCompleted(final boolean isSessionEstablished) {
        Context context = getContext();
        DA2Activity activity = (DA2Activity) context;
        if (activity != null) {
            if (Looper.myLooper() == Looper.getMainLooper()) {
                activity.trySessionRequestedCompletedSetup(isSessionEstablished);
            } else {
                activity.runOnUiThread(new Runnable() { // from class: com.appsomniacs.da2.DA2Activity.3
                    @Override // java.lang.Runnable
                    public void run() {
                        DA2Activity.sessionRequestCompleted(isSessionEstablished);
                    }
                });
            }
        }
    }

    void complain(String message) {
        Log.e(TAG, "**** DA2 Error: " + message);
        alert("Error: " + message);
    }

    void alert(String message) {
        try {
            AlertDialog.Builder bld = new AlertDialog.Builder(this);
            bld.setMessage(message);
            bld.setNeutralButton("OK", (DialogInterface.OnClickListener) null);
            bld.create().show();
        } catch (Exception e) {
            Crashlytics.logException(e);
            Log.e(TAG, String.format("Error showing alert(\"%s\") caused by: \"%s\"", message, e.getMessage(), e));
        }
    }

    @Override // org.cocos2dx.lib.Cocos2dxActivity
    public Cocos2dxGLSurfaceView onCreateView() {
        Cocos2dxGLSurfaceView glSurfaceView = new Cocos2dxGLSurfaceView(this);
        glSurfaceView.setEGLConfigChooser(5, 6, 5, 0, 16, 8);
        return glSurfaceView;
    }

    public static String getApplicationVersion() {
        Context context = getContext();
        DA2Activity activity = (DA2Activity) context;
        if (activity == null) {
            return "?.?.?";
        }
        PackageManager packageManager = context.getPackageManager();
        String packageName = context.getPackageName();
        try {
            return packageManager.getPackageInfo(packageName, 0).versionName;
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return "?.?.?";
        }
    }

    public static boolean isGooglePlayInstalled() {
        try {
            int val = GooglePlayServicesUtil.isGooglePlayServicesAvailable(getContext());
            return val == 0;
        } catch (Exception e) {
            Crashlytics.logException(e);
            Log.e(TAG, "Error validating Google Play was installed.", e);
            DA2Activity activity = (DA2Activity) getContext();
            if (activity == null) {
                return false;
            }
            activity.alert("Error occurred trying to detect if Google Play Services is available.");
            return false;
        }
    }

    public static boolean isAppInstalled(String uri) {
        Context context = getContext();
        DA2Activity activity = (DA2Activity) context;
        if (activity == null) {
            return false;
        }
        PackageManager pm = activity.getPackageManager();
        try {
            pm.getPackageInfo(uri, 1);
            return true;
        } catch (PackageManager.NameNotFoundException e) {
            return false;
        }
    }

    public static void openUri(String uri) {
        Intent i = new Intent("android.intent.action.VIEW");
        i.setData(Uri.parse(uri));
        if (getContext() != null) {
            getContext().startActivity(i);
        }
    }

    public static void setIdentity(final String accountName) {
        Context context = getContext();
        DA2Activity activity = (DA2Activity) context;
        if (activity != null) {
            if (Looper.myLooper() == Looper.getMainLooper()) {
                activity.trySetIdentity(accountName);
            } else {
                activity.runOnUiThread(new Runnable() { // from class: com.appsomniacs.da2.DA2Activity.4
                    @Override // java.lang.Runnable
                    public void run() {
                        DA2Activity.setIdentity(accountName);
                    }
                });
            }
        }
    }

    private void trySetIdentity(String accountName) {
        USER_ID = accountName;
        nativeSetIdentity(accountName, ANDROID_ID);
        logUser();
    }

    public static String getOsVersion() {
        return Build.VERSION.RELEASE;
    }

    public static boolean allowFullUtf8InJniCalls() {
        try {
            String[] stringArray = Build.VERSION.RELEASE.split("\\.");
            int[] intArray = new int[stringArray.length];
            if (stringArray.length <= 0) {
                return true;
            }
            String numberAsString = stringArray[0];
            intArray[0] = Integer.parseInt(numberAsString);
            return intArray[0] < 5;
        } catch (NumberFormatException e) {
            return true;
        }
    }

    private void initializeInterstitial() {
        if (nativeIsPlatformAmazon()) {
            initializeAmazonInterstitial();
        } else {
            initializeMopubInterstitial();
        }
        initializeAppLovinInterstitial();
    }

    private void loadInterstitial() {
        if (nativeIsPlatformAmazon()) {
            loadAmazonInterstitial();
            loadAppLovinInterstitial();
        } else {
            loadMopubInterstitial();
        }
    }

    private void initializeAppLovinInterstitial() {
        this.m_isAppLovinInterstitialAdReady = false;
        AppLovinSdk.initializeSdk(getContext());
        if (nativeIsPlatformAmazon()) {
        }
    }

    private void loadAppLovinInterstitial() {
    }

    private void initializeMopubInterstitial() {
        String adUnitId;
        if (this.m_mopubInterstitial == null) {
            if (isTablet(getContext())) {
                adUnitId = "9810efc33b5a4855b366a5976be60f40";
                ApplicationInfo applicationInfo = getApplicationInfo();
                int i = applicationInfo.flags & 2;
                applicationInfo.flags = i;
                if (i != 0) {
                    adUnitId = "f69388d72eba447d89b2af7f98fd2d47";
                }
            } else {
                adUnitId = "2ed112180a4e4d8f9b0a2d995d019740";
                ApplicationInfo applicationInfo2 = getApplicationInfo();
                int i2 = applicationInfo2.flags & 2;
                applicationInfo2.flags = i2;
                if (i2 != 0) {
                    adUnitId = "7aab546884a7453eb756f8a55f4a1d49";
                }
            }
            this.m_mopubInterstitial = new MoPubInterstitial(this, adUnitId);
            this.m_mopubInterstitial.setInterstitialAdListener(this);
        }
    }

    private void loadMopubInterstitial() {
        if (this.m_mopubInterstitial != null) {
            initializeMopubInterstitial();
        }
        this.m_mopubInterstitial.load();
    }

    private void initializeAmazonInterstitial() {
        AdRegistration.setAppKey("161f45bad9264cc99d03eb2fad19cb21");
        if (this.m_amazonInterstitialAd == null) {
            this.m_amazonInterstitialAd = new InterstitialAd(this);
            this.m_amazonInterstitialAd.setListener(this);
            this.m_isAmazonInterstitialAdReady = false;
        }
    }

    private void loadAmazonInterstitial() {
        if (this.m_amazonInterstitialAd == null) {
            initializeAmazonInterstitial();
            this.m_amazonInterstitialAd.loadAd(this.m_amazonAdTargetingOptions);
        } else if (!this.m_amazonInterstitialAd.isLoading() && !this.m_isAmazonInterstitialAdReady && !InterstitialAd.isAdShowing() && !this.m_amazonInterstitialAd.isShowing()) {
            this.m_isAmazonInterstitialAdReady = false;
            this.m_amazonInterstitialAd.loadAd(this.m_amazonAdTargetingOptions);
        }
    }

    public static boolean isTablet(Context context) {
        if (context == null) {
            return false;
        }
        boolean xlarge = (context.getResources().getConfiguration().screenLayout & 15) == 4;
        boolean large = (context.getResources().getConfiguration().screenLayout & 15) == 3;
        return xlarge || large;
    }

    private void initializeAdBanner() {
        if (nativeIsPlatformAmazon()) {
            initializeAmazonAdBanner();
        } else {
            initializeMopubAdBanner();
        }
    }

    private void initializeMopubAdBanner() {
        String adUnitId;
        if (this.m_mopubView == null) {
            destroyAdBanner();
            this.m_mopubView = new MoPubView(this);
            float scale = getApplicationContext().getResources().getDisplayMetrics().density;
            if (isTablet(getContext())) {
                adUnitId = "815fbd0e71604d529b39bac95a90433a";
                ApplicationInfo applicationInfo = getApplicationInfo();
                int i = applicationInfo.flags & 2;
                applicationInfo.flags = i;
                if (i != 0) {
                    adUnitId = "b1607fd0620f4213911cd6ba2bc44f16";
                }
                this.m_bannerParam = new FrameLayout.LayoutParams(728, 90);
            } else {
                adUnitId = "e920dac0641b4758a0b2d3e38c2a3448";
                ApplicationInfo applicationInfo2 = getApplicationInfo();
                int i2 = applicationInfo2.flags & 2;
                applicationInfo2.flags = i2;
                if (i2 != 0) {
                    adUnitId = "3f2c1a504f6c4ab9b1fe24a119b05a55";
                }
                this.m_bannerParam = new FrameLayout.LayoutParams((int) (320.0f * scale), (int) (50.0f * scale));
            }
            this.m_mopubView.setAdUnitId(adUnitId);
            this.m_mopubView.setBannerAdListener(this);
            this.m_mopubView.loadAd();
            this.m_appLayout = (FrameLayout) findViewById(android.R.id.content);
            this.m_bannerParam.gravity = 49;
            this.m_appLayout.addView(this.m_mopubView, this.m_bannerParam);
        }
    }

    private void initializeAmazonAdBanner() {
        if (this.m_amazonAdView == null) {
            destroyAdBanner();
            this.m_amazonAdView = new AdLayout(this, AdSize.SIZE_AUTO_NO_SCALE);
            this.m_appLayout = (FrameLayout) findViewById(android.R.id.content);
            FrameLayout.LayoutParams lp = new FrameLayout.LayoutParams(-1, -1);
            lp.gravity = 49;
            this.m_relAppLayout = new RelativeLayout(this);
            RelativeLayout.LayoutParams rlp = new RelativeLayout.LayoutParams(-1, -2);
            rlp.addRule(10);
            this.m_relAppLayout.addView(this.m_amazonAdView, rlp);
            this.m_appLayout.addView(this.m_relAppLayout, lp);
            this.m_amazonAdView.loadAd(this.m_amazonAdTargetingOptions);
        }
    }

    private void setBannerPositionTopWithPadding(float p_padding) {
        if (this.m_bannerParam != null) {
            this.m_bannerParam.gravity = 49;
            this.m_bannerParam.width = -2;
            this.m_bannerParam.height = -2;
            this.m_bannerParam.topMargin = (int) p_padding;
            this.m_appLayout.updateViewLayout(this.m_mopubView, this.m_bannerParam);
            this.m_mopubView.refreshDrawableState();
        }
    }

    private void destroyAdBanner() {
        if (this.m_amazonAdView != null) {
            this.m_amazonAdView.destroy();
            this.m_amazonAdView = null;
        }
        if (this.m_mopubView != null) {
            this.m_mopubView.destroy();
            this.m_mopubView = null;
        }
    }

    private void destroyInterstitial() {
        if (this.m_amazonInterstitialAd != null) {
            this.m_amazonInterstitialAd = null;
        }
        if (this.m_mopubInterstitial != null) {
            this.m_mopubInterstitial.destroy();
            this.m_mopubInterstitial = null;
        }
    }

    private boolean tryShowInterstitial() {
        if (nativeIsPlatformAmazon()) {
            if (this.m_amazonInterstitialAd == null) {
                initializeAmazonInterstitial();
                return tryShowInterstitial();
            }
            if (this.m_isAmazonInterstitialAdReady) {
                this.m_isAmazonInterstitialAdReady = false;
                return this.m_amazonInterstitialAd.showAd();
            }
            if (!this.m_amazonInterstitialAd.isLoading() && !this.m_amazonInterstitialAd.isShowing()) {
                this.m_amazonInterstitialAd.loadAd(this.m_amazonAdTargetingOptions);
            }
            if (AppLovinInterstitialAd.isAdReadyToDisplay(this)) {
                AppLovinInterstitialAd.show(this);
                this.m_isAppLovinInterstitialAdReady = false;
                return true;
            }
            return false;
        }
        if (this.m_mopubInterstitial == null) {
            initializeMopubInterstitial();
            return tryShowInterstitial();
        }
        if (this.m_mopubInterstitial.isReady()) {
            return this.m_mopubInterstitial.show();
        }
        this.m_mopubInterstitial.load();
        return false;
    }

    public static void createAdBanner() {
        Context context = getContext();
        DA2Activity activity = (DA2Activity) context;
        if (activity != null) {
            if (Looper.myLooper() == Looper.getMainLooper()) {
                activity.initializeAdBanner();
            } else {
                activity.runOnUiThread(new Runnable() { // from class: com.appsomniacs.da2.DA2Activity.5
                    @Override // java.lang.Runnable
                    public void run() {
                        DA2Activity.createAdBanner();
                    }
                });
            }
        }
    }

    public static void removeAdBanner() {
        Context context = getContext();
        DA2Activity activity = (DA2Activity) context;
        if (activity != null) {
            if (Looper.myLooper() == Looper.getMainLooper()) {
                activity.destroyAdBanner();
            } else {
                activity.runOnUiThread(new Runnable() { // from class: com.appsomniacs.da2.DA2Activity.6
                    @Override // java.lang.Runnable
                    public void run() {
                        DA2Activity.removeAdBanner();
                    }
                });
            }
        }
    }

    public static void prepareInterstitial() {
        Context context = getContext();
        DA2Activity activity = (DA2Activity) context;
        if (activity != null) {
            if (Looper.myLooper() == Looper.getMainLooper()) {
                activity.initializeInterstitial();
            } else {
                activity.runOnUiThread(new Runnable() { // from class: com.appsomniacs.da2.DA2Activity.7
                    @Override // java.lang.Runnable
                    public void run() {
                        DA2Activity.prepareInterstitial();
                    }
                });
            }
        }
    }

    public static void showInterstitial() {
        Context context = getContext();
        DA2Activity activity = (DA2Activity) context;
        if (activity != null) {
            if (Looper.myLooper() == Looper.getMainLooper()) {
                activity.tryShowInterstitial();
            } else {
                activity.runOnUiThread(new Runnable() { // from class: com.appsomniacs.da2.DA2Activity.8
                    @Override // java.lang.Runnable
                    public void run() {
                        DA2Activity.showInterstitial();
                    }
                });
            }
        }
    }

    public static boolean isConnected() {
        if (getContext() == null) {
            return false;
        }
        ConnectivityManager manager = (ConnectivityManager) getContext().getSystemService("connectivity");
        NetworkInfo networkInfo = manager.getActiveNetworkInfo();
        return networkInfo != null && networkInfo.isConnected();
    }

    @Override // android.app.Activity
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        if (requestCode == RC_SIGN_IN) {
            this.mGpgSignInClicked = false;
            this.mResolvingConnectionFailure = false;
            if (resultCode == -1) {
                if (this.mGoogleApiClient != null) {
                    this.mGoogleApiClient.connect();
                }
            } else {
                BaseGameUtils.showActivityResultError(this, requestCode, resultCode, com.appsomniacs.da3.R.string.signin_failure);
            }
        }
        if (requestCode == REQUEST_CODE_EMAIL && resultCode == -1) {
            String accountName = data.getStringExtra("authAccount");
            trySetIdentity(accountName);
        }
        if (this.mGooglePlayIabHelper != null) {
            if (!this.mGooglePlayIabHelper.handleActivityResult(requestCode, resultCode, data)) {
                nativeOnActivityResult(this, requestCode, resultCode, data);
                return;
            }
            return;
        }
        mBillingStatusMessage = " Upon handling an activity result the IAB system was not present";
    }

    @Override // org.cocos2dx.lib.Cocos2dxActivity, android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean hasWindowFocus) {
        initDefaultLayout();
    }

    @Override // org.cocos2dx.lib.Cocos2dxActivity, android.app.Activity
    protected void onPause() {
        Log.d(TAG, "DA2Activity.onPause() called.");
        super.onPause();
        try {
            Chartboost.onPause(this);
        } catch (Exception e) {
        }
        if (this.m_amazonGamesClient != null) {
            AmazonGamesClient.release();
        }
        if (nativeIsPlatformAmazon()) {
            this.da2AmazonIapManager.deactivate();
        }
        nativeOnActivityPaused(this);
    }

    @Override // org.cocos2dx.lib.Cocos2dxActivity
    protected void raiseScreenStateChange() {
        Context context = getContext();
        DA2Activity activity = (DA2Activity) context;
        if (activity != null) {
            if (Looper.myLooper() == Looper.getMainLooper()) {
                nativeOnActivityPausedDueToScreenLock();
                return;
            } else {
                activity.raiseScreenStateChange();
                return;
            }
        }
        Log.d(TAG, "Unable to raise screen state change to main thread.");
    }

    @Override // org.cocos2dx.lib.Cocos2dxActivity, android.app.Activity
    protected void onResume() {
        Log.d(TAG, "DA2Activity.onResume() called.");
        initDefaultLayout();
        super.onResume();
        try {
            Chartboost.onResume(this);
        } catch (Exception e) {
        }
        if (nativeIsPlatformAmazon()) {
            AmazonGamesClient.initialize(this, this.m_amazonGamesCallback, this.amazonGameFeatures);
            this.da2AmazonIapManager.activate();
            Log.d(TAG, "onResume: call getUserData");
            PurchasingService.getUserData();
            Log.d(TAG, "onResume: getPurchaseUpdates");
            PurchasingService.getPurchaseUpdates(false);
        }
        nativeOnActivityResumed(this);
        Log.d(TAG, "DA2Activity.onResume() call ending.");
    }

    @Override // org.cocos2dx.lib.Cocos2dxActivity, android.app.Activity
    protected void onDestroy() {
        Log.d(TAG, "DA2Activity.onDestroy() called");
        try {
            Chartboost.onDestroy(this);
        } catch (Exception e) {
        }
        googlePlayIabTryDisposeIabHelper();
        if (this.mGooglePlayLicenceChecker != null) {
            this.mGooglePlayLicenceChecker.onDestroy();
        }
        if (this.mGooglePlayLicenceChecker2 != null) {
            this.mGooglePlayLicenceChecker2.onDestroy();
        }
        destroyAdBanner();
        destroyInterstitial();
        if (Build.VERSION.SDK_INT < 14) {
            InMobiAnalytics.endSessionManually();
        }
        AmazonGamesClient.shutdown();
        super.onDestroy();
        if (this.m_amazonAdView != null) {
            this.m_amazonAdView.destroy();
        }
        nativeOnActivityDestroyed(this);
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(Bundle outState) {
        super.onSaveInstanceState(outState);
        nativeOnActivitySaveInstanceState(this, outState);
    }

    @Override // org.cocos2dx.lib.Cocos2dxActivity, android.app.Activity
    protected void onStart() {
        Log.d(TAG, "DA2Activity.onStart() called");
        super.onStart();
        if (this.mGoogleApiClient != null) {
            this.mGoogleApiClient.connect();
        }
        this.mHandler = new Handler();
        GoogleAnalytics.getInstance(this).reportActivityStart(this);
        initDefaultLayout();
        loadInterstitial();
        if (Build.VERSION.SDK_INT < 14) {
            InMobiAnalytics.startSessionManually();
        }
        if (nativeIsPlatformAmazon()) {
            PurchasingService.getUserData();
            Set<String> productSkus = new HashSet<>();
            for (DA2Sku mySku : DA2Sku.values()) {
                productSkus.add(mySku.getSku());
            }
            PurchasingService.getProductData(productSkus);
        }
        try {
            Chartboost.onStart(this);
        } catch (Exception e) {
        }
        nativeInitSession();
        nativeOnActivityStarted(this);
    }

    @Override // org.cocos2dx.lib.Cocos2dxActivity, android.app.Activity
    protected void onStop() {
        nativeOnActivityWillStop(this);
        Log.d(TAG, "DA2Activity.onStop() called");
        if (this.mGoogleApiClient != null) {
            this.mGoogleApiClient.disconnect();
        }
        try {
            Chartboost.onStop(this);
        } catch (Exception e) {
        }
        GoogleAnalytics.getInstance(this).reportActivityStop(this);
        if (Build.VERSION.SDK_INT < 14) {
            InMobiAnalytics.endSessionManually();
        }
        super.onStop();
        nativeOnActivityStopped(this);
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        try {
            if (!Chartboost.onBackPressed()) {
                super.onBackPressed();
            }
        } catch (Exception e) {
        }
    }

    @Override // com.applovin.sdk.AppLovinAdLoadListener
    public void adReceived(AppLovinAd ad) {
        this.m_isAppLovinInterstitialAdReady = AppLovinInterstitialAd.isAdReadyToDisplay(this);
        if (ad.isVideoAd()) {
        }
    }

    @Override // com.applovin.sdk.AppLovinAdLoadListener
    public void failedToReceiveAd(int errorCode) {
        nativeResetInterstitial(this);
    }

    @Override // com.applovin.sdk.AppLovinAdDisplayListener
    public void adDisplayed(AppLovinAd ad) {
        nativeResetInterstitial(this);
    }

    @Override // com.applovin.sdk.AppLovinAdDisplayListener
    public void adHidden(AppLovinAd ad) {
        nativeResetInterstitial(this);
    }

    @Override // com.applovin.sdk.AppLovinAdVideoPlaybackListener
    public void videoPlaybackBegan(AppLovinAd ad) {
    }

    @Override // com.applovin.sdk.AppLovinAdVideoPlaybackListener
    public void videoPlaybackEnded(AppLovinAd ad, double percentViewed, boolean fullyWatched) {
        nativeResetInterstitial(this);
    }

    @Override // com.applovin.sdk.AppLovinAdClickListener
    public void adClicked(AppLovinAd ad) {
    }

    @Override // com.amazon.device.ads.AdListener
    public void onAdCollapsed(Ad ad) {
        nativeResetInterstitial(this);
    }

    @Override // com.amazon.device.ads.AdListener
    public void onAdDismissed(Ad ad) {
        if (this.m_amazonInterstitialAd != null && ad == this.m_amazonInterstitialAd) {
            this.m_amazonInterstitialAd.loadAd(this.m_amazonAdTargetingOptions);
        }
        nativeResetInterstitial(this);
    }

    @Override // com.amazon.device.ads.AdListener
    public void onAdExpanded(Ad ad) {
    }

    @Override // com.amazon.device.ads.AdListener
    public void onAdFailedToLoad(Ad ad, AdError error) {
        if (this.m_amazonInterstitialAd != null && ad == this.m_amazonInterstitialAd) {
            this.m_amazonInterstitialAd.loadAd(this.m_amazonAdTargetingOptions);
        }
        nativeResetInterstitial(this);
    }

    @Override // com.amazon.device.ads.AdListener
    public void onAdLoaded(Ad ad, AdProperties adProperties) {
        if (this.m_amazonInterstitialAd == ad) {
            this.m_isAmazonInterstitialAdReady = true;
        }
    }

    @Override // com.amazon.device.ads.ExtendedAdListener
    public void onAdResized(Ad ad, Rect rect) {
    }

    @Override // com.amazon.device.ads.ExtendedAdListener
    public void onAdExpired(Ad ad) {
    }

    @Override // com.mopub.mobileads.MoPubView.BannerAdListener
    public void onBannerClicked(MoPubView moPubView) {
    }

    @Override // com.mopub.mobileads.MoPubView.BannerAdListener
    public void onBannerCollapsed(MoPubView moPubView) {
    }

    @Override // com.mopub.mobileads.MoPubView.BannerAdListener
    public void onBannerExpanded(MoPubView moPubView) {
    }

    @Override // com.mopub.mobileads.MoPubView.BannerAdListener
    public void onBannerFailed(MoPubView moPubView, MoPubErrorCode moPubErrorCode) {
    }

    @Override // com.mopub.mobileads.MoPubView.BannerAdListener
    public void onBannerLoaded(MoPubView moPubView) {
        if (moPubView != null) {
        }
    }

    @Override // com.mopub.mobileads.MoPubInterstitial.InterstitialAdListener
    public void onInterstitialClicked(MoPubInterstitial interstitial) {
    }

    @Override // com.mopub.mobileads.MoPubInterstitial.InterstitialAdListener
    public void onInterstitialDismissed(MoPubInterstitial interstitial) {
        this.m_mopubInterstitial.load();
    }

    @Override // com.mopub.mobileads.MoPubInterstitial.InterstitialAdListener
    public void onInterstitialFailed(MoPubInterstitial interstitial, MoPubErrorCode mopubErrorCode) {
        this.m_mopubInterstitial.load();
    }

    @Override // com.mopub.mobileads.MoPubInterstitial.InterstitialAdListener
    public void onInterstitialLoaded(MoPubInterstitial interstitial) {
    }

    @Override // com.mopub.mobileads.MoPubInterstitial.InterstitialAdListener
    public void onInterstitialShown(MoPubInterstitial interstitial) {
        nativeResetInterstitial(this);
    }

    public static boolean isBillingPossible() {
        Context context = getContext();
        DA2Activity activity = (DA2Activity) context;
        if (activity != null) {
            boolean result = activity.tryIsGpIapPossible();
            return result;
        }
        mBillingStatusMessage = "Unable to validate billing mechanism (Invalid Context).";
        return false;
    }

    private boolean tryIsGpIapPossible() {
        if (nativeIsPlatformAmazon()) {
            return this.mCountOfIapHelperAsyncOperations == 0;
        }
        if (this.mGooglePlayIabHelper == null || mBillingStatusMessage == null) {
            if (this.mGooglePlayIabHelper == null) {
                complain("mGooglePlayIabHelper == null");
            }
            if (mBillingStatusMessage == null) {
                complain("mBillingStatusMessage == null");
            }
            mBillingStatusMessage = String.format("Billing is not initialized. Close the app, remove any modifications or blockers (re-install), and retry. %s", mBillingStatusMessage);
            return false;
        }
        return mBillingStatusMessage.equalsIgnoreCase(new String(""));
    }

    public static boolean isBillingMechanismReady() {
        Context context = getContext();
        DA2Activity activity = (DA2Activity) context;
        if (activity != null) {
            boolean result = activity.tryIsIapReady();
            return result;
        }
        mBillingStatusMessage = "Billing mechanism is not ready.";
        return false;
    }

    private boolean tryIsIapReady() {
        if (nativeIsPlatformAmazon()) {
            return true;
        }
        return (this.mGooglePlayIabHelper == null || tryIsIapOperationPending() || this.mGooglePlayIabHelperDestroyed) ? false : true;
    }

    public static boolean isIapOperationPending() {
        Context context = getContext();
        DA2Activity activity = (DA2Activity) context;
        if (activity != null) {
            boolean result = activity.tryIsIapOperationPending();
            return result;
        }
        mBillingStatusMessage = "Billing operation is pending.";
        return false;
    }

    private boolean tryIsIapOperationPending() {
        return this.mCountOfIapHelperAsyncOperations > 0;
    }

    public static String getBillingSystemFailureMessage() {
        return mBillingStatusMessage;
    }

    private void googlePlayIabSetup() {
        if (!nativeIsPlatformAmazon() && !this.m_isGooglePlayIabSetup) {
            this.mCountOfIapHelperAsyncOperations = 0;
            this.mGooglePlayIabHelperDestroyed = false;
            mBillingStatusMessage = "";
            this.mGooglePlayIabHelper = new IabHelper(this, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAh2KG+zjczjQ/Gk7L7ZI3jPMQb98BGQ1kEqJksQBVroQYuS3jXe1AotSlIli3EDh37Fb+RrePQqTDXWkQ7IF7cc9ml/4LJFW/sf5Eghk6LGJPsKNmNbHivlwj3oNsjraE3CO9ZP4nvQPeDhJMjvZQnNAWc2cgu7KWxyTqIJu+EMvROwS3bwn/goXmFmhNK4dFtA7h6fFPqb6doKVEgyD9uR7xxnit7aUhzbvQWrX3ErnXJJ+qpcSKZEUMfeLWxuSA5FTk5DPaSoBkzvvU3VY8PL8iDCpCGW4zOgMpF9XZ8sjUZix5U7t2Eg2psL5VDADSx3Tk2eIdMl+R7qyYbQvDAQIDAQAB");
            ApplicationInfo applicationInfo = getApplicationInfo();
            int i = applicationInfo.flags & 2;
            applicationInfo.flags = i;
            if (i == 0) {
                this.mGooglePlayIabHelper.enableDebugLogging(true, TAG);
            } else {
                this.mGooglePlayIabHelper.enableDebugLogging(true, TAG);
            }
            this.mGooglePlayIabHelper.startSetup(new IabHelper.OnIabSetupFinishedListener() { // from class: com.appsomniacs.da2.DA2Activity.9
                @Override // com.android.util.IabHelper.OnIabSetupFinishedListener
                public void onIabSetupFinished(IabResult result) {
                    if (!result.isSuccess()) {
                        DA2Activity.this.complain("Problem setting up in-app billing: " + result);
                        DA2Activity.this.showDialog("Error", "Problem setting up in-app billing: " + result.getMessage());
                    } else {
                        DA2Activity.this.tryVerifyInventory();
                    }
                }
            });
        }
    }

    public static void startingPurchaseValidation(String sku) {
        Context context = getContext();
        DA2Activity activity = (DA2Activity) context;
        if (activity != null) {
            activity.incrementIapAsyncOperationInProgressCounter();
        } else {
            Log.e(TAG, "Activity not found! Trying to signal completion of purchase validation.");
        }
    }

    public static void completedPurchaseValidation(boolean success, int code, String sku) {
        Context context = getContext();
        DA2Activity activity = (DA2Activity) context;
        if (activity != null) {
            activity.trySignalCompletedPurchaseValidation(success, code, sku);
        } else {
            Log.e(TAG, "Activity not found! Trying to signal completion of purchase validation.");
        }
    }

    private void trySignalCompletedPurchaseValidation(boolean success, int code, String sku) {
        if (!success) {
            try {
                showDialog("Purchase Validation Failed", "[" + code + "]:[" + sku + "]");
            } finally {
                decrementIapAsyncOperationsInProgressCounter();
            }
        }
    }

    public static String getLocalizedPurchasePrice(String sku) {
        Context context = getContext();
        DA2Activity activity = (DA2Activity) context;
        return activity != null ? activity.tryGetLocalizedPurchasePrice(sku) : "";
    }

    private String tryGetLocalizedPurchasePrice(String sku) {
        if (nativeIsPlatformAmazon()) {
        }
        return m_skuPriceLookup.containsKey(sku) ? m_skuPriceLookup.get(sku) : "";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void decrementIapAsyncOperationsInProgressCounter() {
        Log.i(TAG, "IapAsyncOperationInProgressCounter--");
        this.mCountOfIapHelperAsyncOperations--;
        if (!nativeIsPlatformAmazon() && this.mCountOfIapHelperAsyncOperations == 0 && this.mGooglePlayIabHelperDestroyed) {
            googlePlayIabTryDisposeIabHelper();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void incrementIapAsyncOperationInProgressCounter() {
        Log.i(TAG, "IapAsyncOperationInProgressCounter++");
        this.mCountOfIapHelperAsyncOperations++;
    }

    private synchronized void googlePlayIabTryDisposeIabHelper() {
        if (this.mGooglePlayIabHelperDestroyed && this.mCountOfIapHelperAsyncOperations <= 0 && this.mGooglePlayIabHelper != null) {
            this.mGooglePlayIabHelper.dispose();
            this.mGooglePlayIabHelper = null;
        }
    }

    private void tryRequestExit() {
        finish();
    }

    public static void requestExit() {
        Context context = getContext();
        DA2Activity activity = (DA2Activity) context;
        if (activity != null) {
            if (Looper.myLooper() == Looper.getMainLooper()) {
                activity.tryRequestExit();
            } else {
                activity.runOnUiThread(new Runnable() { // from class: com.appsomniacs.da2.DA2Activity.11
                    @Override // java.lang.Runnable
                    public void run() {
                        DA2Activity.requestExit();
                    }
                });
            }
        }
    }

    public void registerPurchase(String receipt, String sku) {
        if (nativeIsPlatformAmazon()) {
            nativeRegisterPurchase(receipt, "", sku);
        }
    }

    private boolean tryInitGPGS() {
        try {
            Log.i(TAG, "INITIALIZING GPGS");
            nativeInitGPGS(this);
            Log.i(TAG, "INITIALIZING GPGS Completed");
            return true;
        } catch (Exception e) {
            String msg = String.format("Google Play Games Services failed to initialize: %s", e.getMessage());
            Log.e(TAG, msg);
            alert(msg);
            return false;
        }
    }

    public static boolean initGPGS() {
        if (!isGooglePlayInstalled()) {
            return false;
        }
        Context context = getContext();
        DA2Activity activity = (DA2Activity) context;
        if (activity == null) {
            return false;
        }
        if (Looper.myLooper() == Looper.getMainLooper()) {
            return activity.tryInitGPGS();
        }
        Runnable runner = new Runnable() { // from class: com.appsomniacs.da2.DA2Activity.12
            @Override // java.lang.Runnable
            public void run() {
                synchronized (this) {
                    DA2Activity.initGPGS();
                    notify();
                }
            }
        };
        activity.runOnUiThread(runner);
        try {
            runner.wait();
            return true;
        } catch (InterruptedException e) {
            String errorMsg = String.format("Google Play Games Services failed to initialize: %s", e.getMessage());
            try {
                if (activity != null) {
                    try {
                        activity.alert(errorMsg);
                    } catch (Exception alertException) {
                        Log.e(TAG, "Current Activity is not DA2", alertException);
                        Log.e(TAG, errorMsg);
                        return false;
                    }
                }
                Log.e(TAG, errorMsg);
                return false;
            } catch (Throwable th) {
                Log.e(TAG, errorMsg);
                return false;
            }
        }
    }

    private void tryRequestIdentity() {
        if (nativeIsPlatformAmazon()) {
            PurchasingService.getUserData();
            return;
        }
        try {
            Intent intent = AccountPicker.newChooseAccountIntent(null, null, new String[]{"com.google"}, false, "Assign ownership:", null, null, null);
            startActivityForResult(intent, REQUEST_CODE_EMAIL);
        } catch (ActivityNotFoundException e) {
            complain(String.format("Google Play Services Required to make purchases at this time. Actual Error:\n%s", e.getMessage()));
        }
    }

    public static void requestIdentity() {
        Context context = getContext();
        DA2Activity activity = (DA2Activity) context;
        if (activity != null) {
            if (Looper.myLooper() == Looper.getMainLooper()) {
                activity.tryRequestIdentity();
            } else {
                activity.runOnUiThread(new Runnable() { // from class: com.appsomniacs.da2.DA2Activity.13
                    @Override // java.lang.Runnable
                    public void run() {
                        DA2Activity.requestIdentity();
                    }
                });
            }
        }
    }

    private void tryPurchaseItem(String sku, String payload) {
        try {
            mBillingStatusMessage = "";
            if (nativeIsPlatformAmazon()) {
                PurchasingService.purchase(sku);
            } else if (isBillingMechanismReady()) {
                this.mGooglePlayIabHelper.launchPurchaseFlow(this, sku, 0, this.mGooglePlayIabPurchaseFinishedListener, payload);
            }
        } catch (Exception e) {
            mBillingStatusMessage = e.getMessage();
        }
    }

    public void tryVerifyInventory() {
        try {
            if (nativeIsPlatformAmazon()) {
                PurchasingService.getPurchaseUpdates(true);
            } else if (this.mGooglePlayIabHelper != null) {
                List<String> skus = new ArrayList<>();
                skus.add("com.chadtowns.da2.propack");
                skus.add("com.chadtowns.da2.battlepack1");
                skus.add("com.chadtowns.da2.battlepack2");
                skus.add("com.chadtowns.da2.battlepack3");
                skus.add("com.chadtowns.da2.battlepack4");
                incrementIapAsyncOperationInProgressCounter();
                this.mGooglePlayIabHelper.queryInventoryAsync(false, skus, this.mGooglePlayIabGotInventoryListener);
            }
        } catch (Exception e) {
            decrementIapAsyncOperationsInProgressCounter();
            String msg = String.format("Unable to verify purchases: \"%s\" Please restart the application. If this continues please capture this screen and contact support@appsomniacs.com", e.getMessage());
            Log.e(TAG, msg, e);
            alert(msg);
        }
    }

    public static void verifyInventory() {
        Context context = getContext();
        DA2Activity activity = (DA2Activity) context;
        if (activity != null) {
            if (Looper.myLooper() == Looper.getMainLooper()) {
                activity.tryVerifyInventory();
            } else {
                activity.runOnUiThread(new Runnable() { // from class: com.appsomniacs.da2.DA2Activity.14
                    @Override // java.lang.Runnable
                    public void run() {
                        DA2Activity.verifyInventory();
                    }
                });
            }
        }
    }

    public static void purchaseItem(final String sku, final String payload) {
        Context context = getContext();
        DA2Activity activity = (DA2Activity) context;
        if (activity != null) {
            if (Looper.myLooper() == Looper.getMainLooper()) {
                activity.tryPurchaseItem(sku, payload);
            } else {
                activity.runOnUiThread(new Runnable() { // from class: com.appsomniacs.da2.DA2Activity.15
                    @Override // java.lang.Runnable
                    public void run() {
                        DA2Activity.purchaseItem(sku, payload);
                    }
                });
            }
        }
    }

    private void analyticsBeginSection(String sectionName) {
        if (sectionName != null) {
            if (!nativeIsPlatformAmazon()) {
                Tracker t = ((GoogleAnalyticsInfusedApplication) getApplication()).getTracker(GoogleAnalyticsInfusedApplication.TrackerName.APP_TRACKER);
                t.enableAdvertisingIdCollection(true);
                t.setScreenName(sectionName);
                t.send(new HitBuilders.AppViewBuilder().build());
            }
            InMobiAnalytics.beginSection(sectionName);
        }
    }

    private void analyticsEndSection(String sectionName) {
        if (sectionName != null) {
            InMobiAnalytics.endSection(sectionName);
        }
    }

    private void analyticsEventOccured(String eventName) {
        if (eventName != null && eventName.length() != 0) {
            InMobiAnalytics.tagEvent(eventName, this.m_analyticsAttributeMap);
            if (isGooglePlayInstalled()) {
                Tracker t = ((GoogleAnalyticsInfusedApplication) getApplication()).getTracker(GoogleAnalyticsInfusedApplication.TrackerName.APP_TRACKER);
                t.enableAdvertisingIdCollection(true);
                t.send(new HitBuilders.EventBuilder().setCategory("Event").setAction(eventName).build());
            }
        }
    }

    public static void static_analyticsBeginSection(String sectionName) {
        if (sectionName != null) {
            Context context = getContext();
            DA2Activity activity = (DA2Activity) context;
            if (activity != null) {
                activity.analyticsBeginSection(sectionName);
            }
        }
    }

    public static void static_analyticsEndSection(String sectionName) {
        if (sectionName != null && sectionName.length() != 0) {
            Context context = getContext();
            DA2Activity activity = (DA2Activity) context;
            if (activity != null) {
                activity.analyticsEndSection(sectionName);
            }
        }
    }

    public static void static_analyticsEventOccured(String eventName) {
        if (eventName != null && eventName.length() != 0) {
            Context context = getContext();
            DA2Activity activity = (DA2Activity) context;
            if (activity != null) {
                activity.analyticsBeginSection(eventName);
            }
        }
    }

    private void analyticsAddAttributeMapValue(String key, String value) {
        this.m_analyticsAttributeMap.put(key, value);
    }

    private void analyticsRemoveAttributeMapValue(String key) {
        this.m_analyticsAttributeMap.remove(key);
    }

    private void analyticsClearAttributeMapValue() {
        this.m_analyticsAttributeMap.clear();
    }

    public static String convertCStringToJniSafeString(byte[] input) {
        try {
            return new String(input, "UTF-8");
        } catch (UnsupportedEncodingException e) {
            Log.e(TAG, "Couldn't convert the jbyteArray to UTF-8");
            return "UTF8_CONVERT_FAIL";
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks
    public void onConnected(Bundle bundle) {
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks
    public void onConnectionSuspended(int i) {
        if (this.mGoogleApiClient != null) {
            this.mGoogleApiClient.connect();
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener
    public void onConnectionFailed(ConnectionResult connectionResult) {
        if (!this.mResolvingConnectionFailure) {
            if (this.mGpgSignInClicked || this.mAutoStartSignInFlow) {
                this.mAutoStartSignInFlow = false;
                this.mGpgSignInClicked = false;
                this.mResolvingConnectionFailure = true;
                if (!BaseGameUtils.resolveConnectionFailure(this, this.mGoogleApiClient, connectionResult, com.appsomniacs.da3.R.string.signin_other_error, "Unable to resolve connection with Google Play Games Services, try again later")) {
                    this.mResolvingConnectionFailure = false;
                }
            }
        }
    }

    private void gpgSignInStarted() {
        if (this.mGoogleApiClient == null) {
            this.mGpgSignInClicked = false;
        } else {
            this.mGpgSignInClicked = true;
            this.mGoogleApiClient.connect();
        }
    }

    private void gpgSignOutStarted() {
        this.mGpgSignInClicked = false;
        if (this.mGoogleApiClient != null) {
            Games.signOut(this.mGoogleApiClient);
        }
    }

    public static void gpgNativeSignedOutCompleted() {
    }

    public static void gpgNativeSignInCompleted() {
    }

    public static boolean isGpgReady() {
        try {
            Context context = getContext();
            DA2Activity activity = (DA2Activity) context;
            if (activity == null) {
                return false;
            }
            boolean result = activity.tryIsGooglePlayGamesReady();
            return result;
        } catch (Exception e) {
            return false;
        }
    }

    private boolean tryIsGooglePlayGamesReady() {
        try {
            return this.mGoogleApiClient != null && this.mGoogleApiClient.isConnected();
        } catch (Exception e) {
            Log.e(TAG, "Google Play Games Services authentication crash detected.", e);
            complain("Google Play Games Services authentication crash detected.");
            return false;
        }
    }
}

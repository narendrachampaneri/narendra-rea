package com.amazon.identity.auth.device.authorization;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.content.pm.Signature;
import android.os.Bundle;
import android.os.IInterface;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import com.amazon.identity.auth.device.AuthError;
import com.amazon.identity.auth.device.appid.APIKeyDecoder;
import com.amazon.identity.auth.device.utils.MAPConstants;
import com.amazon.identity.auth.device.utils.MAPLog;
import com.amazon.identity.auth.device.utils.MAPVersion;
import java.io.IOException;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public class ThirdPartyServiceHelper {
    static final /* synthetic */ boolean $assertionsDisabled;
    private static final String AUTHORIZATION_SERVICE_INTENT_ACTION_NAME = "com.amazon.identity.auth.device.authorization.MapAuthorizationService";
    private static final String BINDING_ERROR_MESSAGE = "Binding to authorization service has timed out!";
    private static final long CONNECTION_TIMEOUT = 10;
    static String DEVO_FINGERPRINT = null;
    private static final String HOST_TYPE = "host.type";
    private static final String LOG_TAG;
    private static String PROD_FINGERPRINT;
    private static Object lock;

    public static final class TOKEN_KEYS {
        public static final String ACCESS_ATZ_EXPIRES_IN = "accessAtzToken.expiries_in";
        public static final String ACCESS_ATZ_TOKEN = "accessAtzToken";
        public static final String REFRESH_ATZ_TOKEN = "refreshAtzToken";
    }

    static {
        $assertionsDisabled = !ThirdPartyServiceHelper.class.desiredAssertionStatus();
        LOG_TAG = ThirdPartyServiceHelper.class.getName();
        DEVO_FINGERPRINT = "2e0b46f8d04a06ac187a2eb0429558fe";
        PROD_FINGERPRINT = "97e83c003bded24445aefd4c72dc4b85";
        lock = new Object();
    }

    static class HighestVersionedService {
        static MAPServiceInfo mapServiceInfo = null;
        static long serviceDiscoveryTimestamp = 0;

        HighestVersionedService() {
        }

        public static MAPServiceInfo getMAPServiceInfo() {
            return mapServiceInfo;
        }

        static void setMAPServiceInfo(MAPServiceInfo serviceInfo) {
            mapServiceInfo = serviceInfo;
            if (serviceInfo == null) {
                serviceDiscoveryTimestamp = 0L;
            } else {
                serviceDiscoveryTimestamp = new Date().getTime();
            }
        }

        static boolean isServiceCacheStale() {
            if (mapServiceInfo == null) {
                return true;
            }
            long now = new Date().getTime();
            return now > serviceDiscoveryTimestamp + 86400000;
        }
    }

    public IInterface getAuthorizationServiceInstance(Context context) throws AuthError {
        if (!$assertionsDisabled && Looper.myLooper() == Looper.getMainLooper()) {
            throw new AssertionError();
        }
        MAPLog.d(LOG_TAG, "getAuthorizationServiceInstance");
        synchronized (lock) {
            MAPServiceInfo mapServiceInfo = HighestVersionedService.getMAPServiceInfo();
            if (mapServiceInfo != null) {
                safeUnbind(context, mapServiceInfo.getConnection(), mapServiceInfo.getServiceIntent());
                boolean bindSuccessful = bindHighestVersionedService(context);
                if (bindSuccessful) {
                    return mapServiceInfo.getService();
                }
                HighestVersionedService.setMAPServiceInfo(null);
            }
            PackageManager packageManager = context.getPackageManager();
            Intent intent = new Intent();
            intent.setAction(AUTHORIZATION_SERVICE_INTENT_ACTION_NAME);
            List<ResolveInfo> intentServices = packageManager.queryIntentServices(intent, 0);
            MAPLog.i(LOG_TAG, "Number of services found : " + intentServices.size());
            List<MAPServiceInfo> mapServiceInfoList = getAllAuthorizationServices(context, intentServices);
            HighestVersionedService.setMAPServiceInfo(findAuthorizationService(mapServiceInfoList));
            if (HighestVersionedService.getMAPServiceInfo() == null) {
                MAPLog.i(LOG_TAG, "Returning no service to use");
                return null;
            }
            bindHighestVersionedService(context);
            MAPLog.i(LOG_TAG, "Returning service to use");
            return HighestVersionedService.getMAPServiceInfo().getService();
        }
    }

    List<MAPServiceInfo> getAllAuthorizationServices(Context context, List<ResolveInfo> intentServices) throws AuthError {
        List<MAPServiceInfo> mapServiceInfoList = new ArrayList<>();
        for (ResolveInfo resolveInfo : intentServices) {
            try {
                MAPLog.i(LOG_TAG, "Verifying signature for pkg=" + resolveInfo.serviceInfo.applicationInfo.packageName);
                PackageInfo pkgSignatureInfo = context.getPackageManager().getPackageInfo(resolveInfo.serviceInfo.applicationInfo.packageName, 64);
                Signature[] signatures = pkgSignatureInfo.signatures;
                if (signatures.length == 1) {
                    if (!isDevoFingerprint(context, signatures) && !isSameSignatureFingerprint(PROD_FINGERPRINT, signatures[0])) {
                        MAPLog.pii(LOG_TAG, "Security check failure", "Signature is incorrect.");
                    } else {
                        ComponentName componentName = new ComponentName(resolveInfo.serviceInfo.applicationInfo.packageName, resolveInfo.serviceInfo.name);
                        Bundle metaDataBundle = context.getPackageManager().getServiceInfo(componentName, 128).metaData;
                        if (metaDataBundle != null) {
                            boolean isPrimary = metaDataBundle.getBoolean(MAPConstants.MAP_IS_PRIMARY);
                            String version = metaDataBundle.getString(MAPConstants.MAP_VERSION_KEY);
                            if (!TextUtils.isEmpty(version) || isPrimary) {
                                MAPVersion mapVersion = isPrimary ? MAPVersion.VERSION_ZERO : new MAPVersion(version);
                                ThirdPartyAuthorizationServiceConnection serviceConnection = new ThirdPartyAuthorizationServiceConnection();
                                MAPServiceInfo mapServiceInfo = new MAPServiceInfo(mapVersion, null, serviceConnection, isPrimary, resolveInfo, new Intent().setComponent(componentName));
                                if (isPrimary) {
                                    mapServiceInfoList.clear();
                                    mapServiceInfoList.add(mapServiceInfo);
                                    break;
                                }
                                mapServiceInfoList.add(mapServiceInfo);
                            }
                        } else {
                            continue;
                        }
                    }
                } else {
                    MAPLog.pii(LOG_TAG, "Security count failure", "Signature count (" + signatures.length + ") is incorrect.");
                }
            } catch (PackageManager.NameNotFoundException e1) {
                MAPLog.pii(LOG_TAG, "NameNotFoundException.", "msg=" + e1.getMessage());
            }
        }
        return mapServiceInfoList;
    }

    boolean isDevoFingerprint(Context context, Signature[] signatures) {
        return !isProduction(context) && isSameSignatureFingerprint(DEVO_FINGERPRINT, signatures[0]);
    }

    static boolean isSameSignatureFingerprint(String fingerprint, Signature signature) {
        try {
            String sigFingerprint = APIKeyDecoder.getSignatureFingerprint(APIKeyDecoder.CERTIFICATE_TYPE, signature);
            MAPLog.pii(LOG_TAG, "Expected fingerprint", "Fingerprint=" + fingerprint);
            MAPLog.pii(LOG_TAG, "Extracted fingerprint", "Fingerprint=" + sigFingerprint);
            return fingerprint.equals(sigFingerprint);
        } catch (IOException e) {
            MAPLog.pii(LOG_TAG, "IOException getting Fingerprint. ", e.getMessage());
            return false;
        } catch (NoSuchAlgorithmException e2) {
            MAPLog.pii(LOG_TAG, "NoSuchAlgorithmException getting Fingerprint. ", e2.getMessage());
            return false;
        } catch (CertificateException e3) {
            MAPLog.pii(LOG_TAG, "CertificateException getting Fingerprint. ", e3.getMessage());
            return false;
        }
    }

    boolean bindHighestVersionedService(Context context) throws AuthError {
        if (HighestVersionedService.isServiceCacheStale()) {
            return false;
        }
        final MAPServiceInfo mapServiceInfo = HighestVersionedService.getMAPServiceInfo();
        ServiceInfo serviceInfo = mapServiceInfo.getResolveInfo().serviceInfo;
        ComponentName componentName = new ComponentName(serviceInfo.applicationInfo.packageName, serviceInfo.name);
        final Intent serviceIntent = new Intent();
        serviceIntent.setComponent(componentName);
        final ThirdPartyAuthorizationServiceConnection serviceConnection = new ThirdPartyAuthorizationServiceConnection();
        final CountDownLatch latch = new CountDownLatch(1);
        serviceConnection.setServiceListener(new AmazonServiceListener() { // from class: com.amazon.identity.auth.device.authorization.ThirdPartyServiceHelper.1
            @Override // com.amazon.identity.auth.device.authorization.AmazonServiceListener
            public void onBindSuccess(IInterface serviceInterface) {
                mapServiceInfo.setService(serviceInterface);
                mapServiceInfo.setConnection(serviceConnection);
                mapServiceInfo.setServiceIntent(serviceIntent);
                latch.countDown();
            }

            @Override // com.amazon.identity.auth.device.authorization.AmazonServiceListener
            public void onBindError(AuthError authError) {
                mapServiceInfo.setService(null);
                mapServiceInfo.setConnection(null);
                mapServiceInfo.setServiceIntent(null);
                MAPLog.i(ThirdPartyServiceHelper.LOG_TAG, "Bind - error");
                latch.countDown();
            }
        });
        boolean success = context.bindService(serviceIntent, serviceConnection, 1);
        if (success) {
            try {
                MAPLog.i(LOG_TAG, "Awaiting latch");
                if (!latch.await(CONNECTION_TIMEOUT, TimeUnit.SECONDS)) {
                    MAPLog.w(LOG_TAG, "Unable to establish bind within timelimit = 10");
                    HighestVersionedService.setMAPServiceInfo(null);
                    throw new AuthError(BINDING_ERROR_MESSAGE, AuthError.ERROR_TYPE.ERROR_THREAD);
                }
            } catch (InterruptedException e) {
                MAPLog.pii(LOG_TAG, "InterruptedException", "msg+=" + e.getMessage());
                HighestVersionedService.setMAPServiceInfo(null);
                throw new AuthError(BINDING_ERROR_MESSAGE, e, AuthError.ERROR_TYPE.ERROR_THREAD);
            }
        } else {
            HighestVersionedService.setMAPServiceInfo(null);
            MAPLog.w(LOG_TAG, "Bind Service " + serviceIntent.getComponent().flattenToString() + "unsuccessful");
        }
        return true;
    }

    MAPServiceInfo findAuthorizationService(List<MAPServiceInfo> mapServiceInfoList) {
        MAPLog.i(LOG_TAG, "Number of MAP services to compare = " + mapServiceInfoList.size());
        MAPServiceInfo serviceResult = null;
        for (MAPServiceInfo mapServiceInfo : mapServiceInfoList) {
            if (mapServiceInfo.isPrimary()) {
                MAPLog.i(LOG_TAG, "Returning Primary Service");
                return mapServiceInfo;
            }
            if (serviceResult == null) {
                serviceResult = mapServiceInfo;
            } else if (mapServiceInfo.getMapVersion().compare(serviceResult.getMapVersion()) > 0) {
                serviceResult = mapServiceInfo;
            }
        }
        return serviceResult;
    }

    public static void unbind(Context context) {
        synchronized (lock) {
            MAPLog.i(LOG_TAG, "Unbinding Highest Versioned Service");
            MAPServiceInfo mapServiceInfo = HighestVersionedService.getMAPServiceInfo();
            if (mapServiceInfo != null && mapServiceInfo.getConnection() != null) {
                safeUnbind(context, mapServiceInfo.getConnection(), mapServiceInfo.getServiceIntent());
                mapServiceInfo.setService(null);
                mapServiceInfo.setConnection(null);
                mapServiceInfo.setServiceIntent(null);
            }
        }
    }

    public static void clearCachedService(Context context) {
        synchronized (lock) {
            MAPLog.i(LOG_TAG, "Clearing Highest Versioned Service");
            MAPServiceInfo mapServiceInfo = HighestVersionedService.getMAPServiceInfo();
            if (mapServiceInfo != null) {
                safeUnbind(context, mapServiceInfo.getConnection(), mapServiceInfo.getServiceIntent());
                HighestVersionedService.setMAPServiceInfo(null);
            }
        }
    }

    private static void safeUnbind(Context context, ServiceConnection connection, Intent serviceIntent) {
        String packageName = null;
        if (serviceIntent != null) {
            packageName = serviceIntent.getComponent().getPackageName();
        }
        MAPLog.d(LOG_TAG, "Unbinding pkg=" + packageName);
        if (connection != null) {
            try {
                context.unbindService(connection);
            } catch (IllegalArgumentException e) {
                Log.w(LOG_TAG, String.format("IllegalArgumentException is received during unbinding from %s. Ignored.", packageName));
            }
        }
    }

    class MAPServiceInfo {
        private ThirdPartyAuthorizationServiceConnection mConnection;
        private final boolean mIsPrimary;
        private final MAPVersion mMapVersion;
        private final ResolveInfo mResolveInfo;
        private IInterface mService;
        private Intent mServiceIntent;

        public MAPServiceInfo(MAPVersion mapVersion, IInterface service, ThirdPartyAuthorizationServiceConnection connection, boolean isPrimary, ResolveInfo resolveInfo, Intent serviceIntent) {
            this.mMapVersion = mapVersion;
            this.mService = service;
            setConnection(connection);
            this.mIsPrimary = isPrimary;
            this.mResolveInfo = resolveInfo;
            this.mServiceIntent = serviceIntent;
        }

        public MAPVersion getMapVersion() {
            return this.mMapVersion;
        }

        public void setService(IInterface service) {
            this.mService = service;
        }

        public IInterface getService() {
            return this.mService;
        }

        public ThirdPartyAuthorizationServiceConnection getConnection() {
            return this.mConnection;
        }

        public boolean isPrimary() {
            return this.mIsPrimary;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public ResolveInfo getResolveInfo() {
            return this.mResolveInfo;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setConnection(ThirdPartyAuthorizationServiceConnection mConnection) {
            this.mConnection = mConnection;
        }

        public void setServiceIntent(Intent serviceIntent) {
            this.mServiceIntent = serviceIntent;
        }

        public Intent getServiceIntent() {
            return this.mServiceIntent;
        }
    }

    public static AmazonAuthorizationServiceInterface getRemoteAndroidService(Context context) throws AuthError {
        ThirdPartyServiceHelper helper = new ThirdPartyServiceHelper();
        MAPLog.i(LOG_TAG, "Inside getRemoteAndroidService AsyncTask - Attempting remote service");
        return (AmazonAuthorizationServiceInterface) helper.getAuthorizationServiceInstance(context);
    }

    static boolean isProduction(Context context) {
        if (context == null) {
            return false;
        }
        MAPLog.i(LOG_TAG, "Attempting to parse third party info from meta data");
        try {
            ApplicationInfo appInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
            return (appInfo.metaData == null || appInfo.metaData.containsKey(HOST_TYPE)) ? false : true;
        } catch (PackageManager.NameNotFoundException e) {
            MAPLog.pii(LOG_TAG, "NameNotFoundException", "key=host.type  " + e.getMessage());
            return false;
        }
    }
}

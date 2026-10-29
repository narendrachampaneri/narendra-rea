package com.amazon.identity.auth.device.authorization.api;

import android.content.Context;
import android.os.Bundle;
import com.amazon.identity.auth.device.AuthError;
import com.amazon.identity.auth.device.appid.AppIdentifier;
import com.amazon.identity.auth.device.appid.ThirdPartyAppIdentifier;
import com.amazon.identity.auth.device.authorization.AuthorizationHelper;
import com.amazon.identity.auth.device.authorization.ProfileHelper;
import com.amazon.identity.auth.device.authorization.TokenHelper;
import com.amazon.identity.auth.device.dataobject.AppInfo;
import com.amazon.identity.auth.device.datastore.DatabaseHelper;
import com.amazon.identity.auth.device.shared.APIListener;
import com.amazon.identity.auth.device.thread.AuthzCallbackFuture;
import com.amazon.identity.auth.device.thread.ThreadUtils;
import com.amazon.identity.auth.device.utils.MAPLog;
import java.util.Arrays;
import java.util.concurrent.Future;

/* JADX INFO: loaded from: classes.dex */
public class AmazonAuthorizationManager {
    private static final String LOG_TAG = AmazonAuthorizationManager.class.getName();
    private final String mClientId;
    private final Context mContext;
    private final ThirdPartyAppIdentifier mAppIdentifier = new ThirdPartyAppIdentifier();
    private final String SDK_VERSION = "1.0.0";

    public AmazonAuthorizationManager(Context context, Bundle options) {
        MAPLog.pii(LOG_TAG, "AmazonAuthorizationManager:sdkVer=1.0.0 libVer=3.3.0", "options=" + options);
        if (context == null) {
            throw new IllegalArgumentException("context must not be null!");
        }
        this.mContext = context;
        if (options == null) {
            MAPLog.i(LOG_TAG, "Options bundle is null");
        }
        AppInfo appInfo = this.mAppIdentifier.getAppInfo(this.mContext.getPackageName(), this.mContext);
        if (appInfo == null || appInfo.getClientId() == null) {
            throw new IllegalArgumentException("Invalid API Key");
        }
        this.mClientId = appInfo.getClientId();
    }

    public Future<Bundle> authorize(String[] scopes, Bundle options, AuthorizationListener listener) {
        if (scopes == null || scopes.length == 0) {
            throw new IllegalArgumentException("scopes must not be null or empty!");
        }
        return authorizeWithBrowser(scopes, listener);
    }

    private Future<Bundle> authorizeWithBrowser(final String[] scopes, final AuthorizationListener listener) {
        MAPLog.i(LOG_TAG, this.mContext.getPackageName() + " calling authorize with Activity: scopes=" + Arrays.toString(scopes));
        ThreadUtils.THREAD_POOL.execute(new Runnable() { // from class: com.amazon.identity.auth.device.authorization.api.AmazonAuthorizationManager.1
            @Override // java.lang.Runnable
            public void run() {
                if (!AmazonAuthorizationManager.this.isAPIKeyValid()) {
                    listener.onError(new AuthError("APIKey is invalid", AuthError.ERROR_TYPE.ERROR_ACCESS_DENIED));
                    return;
                }
                AuthorizationHelper authzHelper = new AuthorizationHelper();
                try {
                    authzHelper.authorize(AmazonAuthorizationManager.this.mContext, AmazonAuthorizationManager.this.mContext.getPackageName(), AmazonAuthorizationManager.this.mClientId, scopes, true, listener);
                } catch (AuthError e) {
                    listener.onError(e);
                }
            }
        });
        return null;
    }

    public Future<Bundle> getToken(final String[] scopes, APIListener listener) {
        if (scopes == null || scopes.length == 0) {
            throw new IllegalArgumentException("scopes must not be null or empty!");
        }
        MAPLog.i(LOG_TAG, this.mContext.getPackageName() + " calling getToken : scopes=" + Arrays.toString(scopes));
        final AuthzCallbackFuture callbackFuture = new AuthzCallbackFuture(listener);
        ThreadUtils.THREAD_POOL.execute(new Runnable() { // from class: com.amazon.identity.auth.device.authorization.api.AmazonAuthorizationManager.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (AmazonAuthorizationManager.this.isAPIKeyValid()) {
                        TokenHelper.getToken(AmazonAuthorizationManager.this.mContext, AmazonAuthorizationManager.this.mContext.getPackageName(), AmazonAuthorizationManager.this.mClientId, scopes, new APIListener() { // from class: com.amazon.identity.auth.device.authorization.api.AmazonAuthorizationManager.2.1
                            @Override // com.amazon.identity.auth.device.shared.APIListener
                            public void onSuccess(Bundle response) {
                                callbackFuture.onSuccess(response);
                            }

                            @Override // com.amazon.identity.auth.device.shared.APIListener
                            public void onError(AuthError e) {
                                callbackFuture.onError(e);
                            }
                        });
                    } else {
                        callbackFuture.onError(new AuthError("APIKey is invalid", AuthError.ERROR_TYPE.ERROR_ACCESS_DENIED));
                    }
                } catch (AuthError e) {
                    callbackFuture.onError(e);
                }
            }
        });
        return callbackFuture;
    }

    public String getAppId() throws AuthError {
        if (!isAPIKeyValid()) {
            throw new AuthError("APIKey is invalid", AuthError.ERROR_TYPE.ERROR_ACCESS_DENIED);
        }
        MAPLog.i(LOG_TAG, this.mContext.getPackageName() + " calling getAppId");
        AppIdentifier appIdentifier = new ThirdPartyAppIdentifier();
        AppInfo appInfo = appIdentifier.getAppInfo(this.mContext.getPackageName(), this.mContext);
        if (appInfo == null) {
            return null;
        }
        return appInfo.getAppFamilyId();
    }

    public String getAppVariantId() throws AuthError {
        if (!isAPIKeyValid()) {
            throw new AuthError("APIKey is invalid", AuthError.ERROR_TYPE.ERROR_ACCESS_DENIED);
        }
        MAPLog.i(LOG_TAG, this.mContext.getPackageName() + " calling getAppId");
        AppIdentifier appIdentifier = new ThirdPartyAppIdentifier();
        AppInfo appInfo = appIdentifier.getAppInfo(this.mContext.getPackageName(), this.mContext);
        if (appInfo == null) {
            return null;
        }
        return appInfo.getAppVariantId();
    }

    public Future<Bundle> clearAuthorizationState(APIListener listener) {
        final AuthzCallbackFuture callbackFuture = new AuthzCallbackFuture(listener);
        if (!isAPIKeyValid()) {
            callbackFuture.onError(new AuthError("APIKey is invalid", AuthError.ERROR_TYPE.ERROR_ACCESS_DENIED));
        }
        MAPLog.i(LOG_TAG, this.mContext.getPackageName() + " calling clearAuthorizationState");
        ThreadUtils.THREAD_POOL.execute(new Runnable() { // from class: com.amazon.identity.auth.device.authorization.api.AmazonAuthorizationManager.3
            @Override // java.lang.Runnable
            public void run() {
                try {
                    DatabaseHelper.clearServiceAuthorizationState(AmazonAuthorizationManager.this.mContext);
                    DatabaseHelper.clearAuthorizationState(AmazonAuthorizationManager.this.mContext);
                    if (0 != 0) {
                        callbackFuture.onError(null);
                    } else {
                        callbackFuture.onSuccess(new Bundle());
                    }
                } catch (AuthError e) {
                    DatabaseHelper.clearAuthorizationState(AmazonAuthorizationManager.this.mContext);
                    if (e != null) {
                        callbackFuture.onError(e);
                    } else {
                        callbackFuture.onSuccess(new Bundle());
                    }
                } catch (Throwable th) {
                    DatabaseHelper.clearAuthorizationState(AmazonAuthorizationManager.this.mContext);
                    if (0 != 0) {
                        callbackFuture.onError(null);
                    } else {
                        callbackFuture.onSuccess(new Bundle());
                    }
                    throw th;
                }
            }
        });
        return callbackFuture;
    }

    public Future<Bundle> getProfile(APIListener listener) {
        MAPLog.i(LOG_TAG, this.mContext.getPackageName() + " calling getProfile");
        final AuthzCallbackFuture callbackFuture = new AuthzCallbackFuture(listener);
        ThreadUtils.THREAD_POOL.execute(new Runnable() { // from class: com.amazon.identity.auth.device.authorization.api.AmazonAuthorizationManager.4
            @Override // java.lang.Runnable
            public void run() {
                if (AmazonAuthorizationManager.this.isAPIKeyValid()) {
                    ProfileHelper.getProfile(AmazonAuthorizationManager.this.mContext, AmazonAuthorizationManager.this.mContext.getPackageName(), new APIListener() { // from class: com.amazon.identity.auth.device.authorization.api.AmazonAuthorizationManager.4.1
                        @Override // com.amazon.identity.auth.device.shared.APIListener
                        public void onSuccess(Bundle response) {
                            callbackFuture.onSuccess(response);
                        }

                        @Override // com.amazon.identity.auth.device.shared.APIListener
                        public void onError(AuthError e) {
                            callbackFuture.onError(e);
                        }
                    });
                } else {
                    callbackFuture.onError(new AuthError("APIKey is invalid", AuthError.ERROR_TYPE.ERROR_ACCESS_DENIED));
                }
            }
        });
        return callbackFuture;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isAPIKeyValid() {
        return this.mAppIdentifier.isAPIKeyValid(this.mContext) && this.mClientId != null;
    }
}

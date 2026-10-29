package com.amazon.ags.auth;

import android.app.Activity;
import android.os.Bundle;
import android.util.Log;
import com.amazon.ags.constants.ClientConfigKeys;
import com.amazon.ags.html5.factory.AGSClientInstanceCoordinator;
import com.amazon.ags.html5.factory.AGSClientInstanceCoordinatorListener;
import com.amazon.ags.html5.util.ClientConfig;
import com.amazon.identity.auth.device.AuthError;
import com.amazon.identity.auth.device.authorization.api.AmazonAuthorizationManager;
import com.amazon.identity.auth.device.authorization.api.AuthorizationListener;
import com.amazon.identity.auth.device.authorization.api.AuthzConstants;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes2.dex */
public class AuthManager implements AGSClientInstanceCoordinatorListener {
    private volatile Activity activity;
    private AmazonAuthorizationManager authorizationManager;
    private final ClientConfig clientConfig;
    private String gameId = null;
    private static final String TAG = "GC_" + AuthManager.class.getSimpleName();
    private static final String[] GC_GAME_DATA_SCOPE = {"game_circle:game_data"};

    public AuthManager(ClientConfig clientConfig) {
        AGSClientInstanceCoordinator.getInstance().addAGSClientInstanceCoordinatorListener(this);
        this.activity = AGSClientInstanceCoordinator.getInstance().getCurrentActivity();
        this.authorizationManager = new AmazonAuthorizationManager(this.activity, null);
        this.clientConfig = clientConfig;
    }

    @Override // com.amazon.ags.html5.factory.AGSClientInstanceCoordinatorListener
    public synchronized void notifyCurrentActivityChanged(Activity activity) {
        refreshActivity();
    }

    private synchronized void refreshActivity() {
        if (this.activity != AGSClientInstanceCoordinator.getInstance().getCurrentActivity()) {
            this.activity = AGSClientInstanceCoordinator.getInstance().getCurrentActivity();
            this.authorizationManager = new AmazonAuthorizationManager(this.activity, null);
        }
    }

    public boolean isLoggedIn() {
        return tryGetToken() != null;
    }

    public String getGameId() {
        if (this.gameId == null) {
            try {
                refreshActivity();
                this.gameId = this.authorizationManager.getAppId();
            } catch (AuthError e) {
                Log.e(TAG, "Unable to get game id", e);
            }
        }
        return this.gameId;
    }

    public String tryGetToken() {
        String string = null;
        refreshActivity();
        Future<Bundle> result = this.authorizationManager.getToken(GC_GAME_DATA_SCOPE, null);
        if (result == null) {
            Log.e(TAG, "getToken returned null.");
        } else {
            try {
                Bundle bundle = result.get(this.clientConfig.get(ClientConfigKeys.AUTH_GET_TOKEN_TIMEOUT_MILLIS), TimeUnit.MILLISECONDS);
                if (bundle == null) {
                    Log.e(TAG, "getToken Future returned null.");
                } else {
                    AuthzConstants.FUTURE_TYPE successOrFail = (AuthzConstants.FUTURE_TYPE) bundle.getSerializable(AuthzConstants.BUNDLE_KEY.FUTURE.val);
                    if (successOrFail == AuthzConstants.FUTURE_TYPE.SUCCESS) {
                        string = bundle.getString(AuthzConstants.BUNDLE_KEY.TOKEN.val);
                    } else {
                        Log.e(TAG, "getToken failed with code " + successOrFail);
                    }
                }
            } catch (InterruptedException e) {
                Log.e(TAG, "getToken was interrupted", e);
            } catch (ExecutionException e2) {
                Log.e(TAG, "getToken failed", e2);
            } catch (TimeoutException e3) {
                Log.e(TAG, "getToken timed out", e3);
            }
        }
        return string;
    }

    public void logout() throws AuthError {
        refreshActivity();
        this.authorizationManager.clearAuthorizationState(null);
    }

    public void tryLogin(AuthorizationListener callback) {
        Bundle options = new Bundle();
        options.putBoolean(AuthzConstants.BUNDLE_KEY.BROWSER_AUTHORIZATION.val, true);
        refreshActivity();
        this.authorizationManager.authorize(GC_GAME_DATA_SCOPE, options, callback);
    }
}

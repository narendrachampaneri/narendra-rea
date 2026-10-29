package com.amazon.identity.auth.device.endpoint;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.os.Bundle;
import com.amazon.identity.auth.device.AuthError;
import com.amazon.identity.auth.device.InvalidGrantAuthError;
import com.amazon.identity.auth.device.dataobject.AuthorizationToken;
import com.amazon.identity.auth.device.datastore.DatabaseHelper;
import com.amazon.identity.auth.device.token.AccessAtzToken;
import com.amazon.identity.auth.device.token.RefreshAtzToken;
import com.amazon.identity.auth.device.utils.MAPLog;
import com.amazon.identity.auth.device.utils.MAPUtils;
import io.fabric.sdk.android.services.events.EventsFilesManager;
import java.io.IOException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class ServerCommunication {
    private static final String LOG_TAG = ServerCommunication.class.getName();

    public void authorize(String atnToken, String appId, String[] scopes, Context context) throws IOException {
        MAPLog.i(LOG_TAG, "authorize : appId=" + appId + ", scopes=" + Arrays.toString(scopes));
        checkNetwork(context);
    }

    public void deauthorize(String atnToken, String appId, String[] scopes, Context context) throws IOException {
        MAPLog.i(LOG_TAG, "deauthorize : appId=" + appId + ", scopes=" + Arrays.toString(scopes));
        checkNetwork(context);
    }

    public AuthorizationToken getAccessAuthorizationToken(RefreshAtzToken refreshAtzToken, String directedId, String appId, String[] scopes, String clientId, Context context) throws AuthError, IOException {
        MAPLog.i(LOG_TAG, "getAccessAuthorizationToken : appId=" + appId + ", scopes=" + Arrays.toString(scopes));
        checkNetwork(context);
        String appName = getAppName(context);
        String version = getVersion(context);
        OauthTokenRequest request = new OauthTokenRequest(appName, version, "1.0.0", new Bundle(), appId, context, refreshAtzToken, clientId);
        try {
            OauthTokenResponse response = (OauthTokenResponse) request.submit();
            response.parse();
            AccessAtzToken accessAtzToken = response.getAccessAtzToken();
            return accessAtzToken;
        } catch (InvalidGrantAuthError e) {
            MAPLog.e(LOG_TAG, "Invalid grant request given to the server. Cleaning up local state");
            DatabaseHelper.clearAuthorizationState(context);
            throw e;
        }
    }

    public AuthorizationToken[] getAuthorizationTokens(RefreshAtzToken refreshAtzToken, String directedId, String appId, String[] scopes, String clientId, Context context) throws AuthError, IOException {
        MAPLog.i(LOG_TAG, "getAccessAuthorizationToken : appId=" + appId + ", scopes=" + Arrays.toString(scopes));
        checkNetwork(context);
        String appName = getAppName(context);
        String version = getVersion(context);
        OauthTokenRequest request = new OauthTokenRequest(appName, version, "1.0.0", new Bundle(), appId, context, refreshAtzToken, clientId);
        try {
            OauthTokenResponse response = (OauthTokenResponse) request.submit();
            response.parse();
            return response.getAtzTokens();
        } catch (InvalidGrantAuthError e) {
            MAPLog.e(LOG_TAG, "Invalid grant request given to the server. Cleaning up local state");
            DatabaseHelper.clearAuthorizationState(context);
            throw e;
        }
    }

    public AuthorizationToken[] getTokensFromCode(String code, String clientId, String redirectUri, String appId, String[] scopes, Context context) throws AuthError, IOException {
        MAPLog.i(LOG_TAG, "getAccessAuthorizationToken : appId=" + appId + ", scopes=" + Arrays.toString(scopes));
        checkNetwork(context);
        String appName = getAppName(context);
        String version = getVersion(context);
        OauthCodeForTokenRequest request = new OauthCodeForTokenRequest(appName, version, "1.0.0", new Bundle(), code, clientId, appId, redirectUri, context);
        OauthCodeForTokenResponse response = (OauthCodeForTokenResponse) request.submit();
        response.parse();
        return response.getAtzTokens();
    }

    private static String getVersion(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException e) {
            MAPLog.w(LOG_TAG, "Unable to get verison info from app" + e.getMessage());
            return "N/A";
        }
    }

    private static String getAppName(Context context) {
        ApplicationInfo ai;
        PackageManager pm = context.getApplicationContext().getPackageManager();
        try {
            ai = pm.getApplicationInfo(context.getPackageName(), 0);
        } catch (PackageManager.NameNotFoundException e) {
            ai = null;
        }
        return (String) (ai != null ? pm.getApplicationLabel(ai) : context.getPackageName());
    }

    public Boolean hasScope(String atnToken, String appId, String scope, Context context) throws IOException {
        MAPLog.i(LOG_TAG, "hasScope : appId=" + appId + ", scope=" + scope);
        checkNetwork(context);
        return null;
    }

    public static Map<String, Boolean> hasScopes(String atnToken, String appId, String[] scopes, Context context) throws IOException {
        MAPLog.i(LOG_TAG, "hasScopes : appId=" + appId + ", scopes=" + Arrays.toString(scopes));
        checkNetwork(context);
        Map<String, Boolean> to_return = new HashMap<>();
        for (String scope : scopes) {
            to_return.put(scope, null);
        }
        return to_return;
    }

    public String getDeviceId(String appId, Context context) throws IOException {
        MAPLog.i(LOG_TAG, "getDeviceId : appId=" + appId);
        checkNetwork(context);
        return appId + EventsFilesManager.ROLL_OVER_FILE_NAME_SEPARATOR + MAPUtils.getDeviceId();
    }

    public static void checkNetwork(Context context) throws IOException {
        ConnectivityManager cm = (ConnectivityManager) context.getSystemService("connectivity");
        if (cm.getActiveNetworkInfo() == null) {
            throw new IOException("Network is not available!");
        }
    }

    public JSONObject getProfile(Context context, String authzToken) throws AuthError, IOException {
        checkNetwork(context);
        ProfileRequest request = new ProfileRequest(getAppName(context), getVersion(context), "1.0.0", new Bundle(), authzToken, context);
        ProfileResponse response = (ProfileResponse) request.submit();
        response.parse();
        return response.getProfileResponse();
    }
}

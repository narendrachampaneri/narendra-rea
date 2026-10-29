package com.amazon.identity.auth.device.authorization;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import com.amazon.identity.auth.device.AuthError;
import com.amazon.identity.auth.device.InvalidTokenAuthError;
import com.amazon.identity.auth.device.appid.AppIdentifier;
import com.amazon.identity.auth.device.appid.ThirdPartyAppIdentifier;
import com.amazon.identity.auth.device.authorization.api.AuthzConstants;
import com.amazon.identity.auth.device.dataobject.AppInfo;
import com.amazon.identity.auth.device.dataobject.Profile;
import com.amazon.identity.auth.device.datastore.DatabaseHelper;
import com.amazon.identity.auth.device.datastore.ProfileDataSource;
import com.amazon.identity.auth.device.endpoint.ServerCommunication;
import com.amazon.identity.auth.device.shared.APIListener;
import com.amazon.identity.auth.device.utils.MAPLog;
import com.newrelic.agent.android.instrumentation.JSONObjectInstrumentation;
import java.io.IOException;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class ProfileHelper {
    private static final String PROFILE_SCOPE = "profile";
    private static final String TAG = ProfileHelper.class.getName();
    private static ServerCommunication mServerCommunication = new ServerCommunication();

    public static void getProfile(final Context context, String packageName, final APIListener listener) {
        String[] profileScope = {"profile"};
        AppIdentifier appIdentifier = new ThirdPartyAppIdentifier();
        final AppInfo appInfo = appIdentifier.getAppInfo(packageName, context);
        if (appInfo == null) {
            listener.onError(new AuthError("App info is null", AuthError.ERROR_TYPE.ERROR_ACCESS_DENIED));
            return;
        }
        try {
            TokenHelper.getToken(context, packageName, appInfo.getClientId(), profileScope, new APIListener() { // from class: com.amazon.identity.auth.device.authorization.ProfileHelper.1
                @Override // com.amazon.identity.auth.device.shared.APIListener
                public void onSuccess(Bundle response) {
                    String authzToken = response.getString(AuthzConstants.BUNDLE_KEY.TOKEN.val);
                    if (!TextUtils.isEmpty(authzToken)) {
                        Bundle profileBundle = ProfileHelper.getProfileLocal(context, appInfo.getAppFamilyId());
                        if (profileBundle != null) {
                            MAPLog.pii(ProfileHelper.TAG, "Returning local profile information", profileBundle.toString());
                            listener.onSuccess(ProfileHelper.createResponseBundle(profileBundle));
                            return;
                        }
                        try {
                            JSONObject profileResponse = ProfileHelper.getProfileRemote(context, authzToken);
                            MAPLog.d(ProfileHelper.TAG, "Returning remote profile information");
                            listener.onSuccess(ProfileHelper.createResponseBundle(ProfileHelper.createProfileBundle(profileResponse)));
                            ProfileHelper.updateProfileLocal(context, appInfo.getAppFamilyId(), profileResponse);
                            return;
                        } catch (InvalidTokenAuthError e) {
                            MAPLog.e(ProfileHelper.TAG, "Invalid token sent to the server. Cleaning up local state");
                            DatabaseHelper.clearAuthorizationState(context);
                            listener.onError(e);
                            return;
                        } catch (AuthError ae) {
                            MAPLog.e(ProfileHelper.TAG, ae.getMessage());
                            listener.onError(ae);
                            return;
                        } catch (IOException ioe) {
                            MAPLog.e(ProfileHelper.TAG, ioe.getMessage(), ioe);
                            listener.onError(new AuthError(ioe.getMessage(), AuthError.ERROR_TYPE.ERROR_IO));
                            return;
                        } catch (JSONException jsone) {
                            MAPLog.e(ProfileHelper.TAG, jsone.getMessage(), jsone);
                            listener.onError(new AuthError(jsone.getMessage(), AuthError.ERROR_TYPE.ERROR_JSON));
                            return;
                        }
                    }
                    ProfileDataSource.getInstance(context).deleteAllRows();
                    MAPLog.e(ProfileHelper.TAG, "Not authorized for getProfile");
                    listener.onSuccess(ProfileHelper.createResponseBundle(null));
                }

                @Override // com.amazon.identity.auth.device.shared.APIListener
                public void onError(AuthError e) {
                    listener.onError(e);
                }
            });
        } catch (AuthError e) {
            listener.onError(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Bundle getProfileLocal(Context context, String appId) {
        MAPLog.d(TAG, "Accessing local profile information");
        ProfileDataSource profileDataSource = ProfileDataSource.getInstance(context);
        Profile profile = profileDataSource.getProfile(appId);
        if (profile == null || profile.hasExpired()) {
            MAPLog.d(TAG, "Local profile information does not exist, or has expired");
            return null;
        }
        try {
            return profile.getDataAsBundle();
        } catch (AuthError e) {
            MAPLog.d(TAG, "Local profile information invalid");
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static JSONObject getProfileRemote(Context context, String authzToken) throws AuthError, IOException {
        MAPLog.d(TAG, "Fetching remote profile information");
        return mServerCommunication.getProfile(context, authzToken);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void updateProfileLocal(Context context, String appId, JSONObject profileData) {
        MAPLog.d(TAG, "Updating local profile information");
        ProfileDataSource profileDataSource = ProfileDataSource.getInstance(context);
        profileDataSource.deleteAllRows();
        profileDataSource.insertRow(new Profile(appId, !(profileData instanceof JSONObject) ? profileData.toString() : JSONObjectInstrumentation.toString(profileData)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Bundle createProfileBundle(JSONObject profileData) throws JSONException {
        Bundle profileBundle = new Bundle();
        Iterator<String> profileItr = profileData.keys();
        while (profileItr.hasNext()) {
            String profileKey = profileItr.next();
            profileBundle.putString(profileKey, profileData.getString(profileKey));
        }
        MAPLog.pii(TAG, "Profile Information", profileBundle.toString());
        return profileBundle;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Bundle createResponseBundle(Bundle profileBundle) {
        Bundle responseBundle = new Bundle();
        responseBundle.putBundle(AuthzConstants.BUNDLE_KEY.PROFILE.val, profileBundle);
        return responseBundle;
    }

    static void setServerCommunication(ServerCommunication serverCommunication) {
        mServerCommunication = serverCommunication;
    }
}

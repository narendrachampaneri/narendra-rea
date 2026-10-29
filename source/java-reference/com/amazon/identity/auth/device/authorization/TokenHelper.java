package com.amazon.identity.auth.device.authorization;

import android.content.Context;
import com.amazon.identity.auth.device.AuthError;
import com.amazon.identity.auth.device.appid.AppIdentifier;
import com.amazon.identity.auth.device.appid.ThirdPartyAppIdentifier;
import com.amazon.identity.auth.device.authorization.api.AuthzConstants;
import com.amazon.identity.auth.device.dataobject.AppInfo;
import com.amazon.identity.auth.device.endpoint.ServerCommunication;
import com.amazon.identity.auth.device.endpoint.TokenVendor;
import com.amazon.identity.auth.device.service.MAPServiceResult;
import com.amazon.identity.auth.device.shared.APIListener;
import com.amazon.identity.auth.device.utils.MAPLog;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class TokenHelper {
    private static final String LOG_TAG = TokenHelper.class.getName();
    private static TokenVendor mTokenVendor = new TokenVendor();

    private TokenHelper() {
    }

    static void setServerCommunicaton(ServerCommunication serverCommunication) {
        mTokenVendor.setServerCommunication(serverCommunication);
    }

    public static void getToken(Context context, String packageName, String clientId, String[] scopes, APIListener listener) throws AuthError {
        MAPLog.pii(LOG_TAG, "GetToken pkg=" + packageName + " scopes=" + Arrays.toString(scopes), "clientId=" + clientId);
        AppIdentifier appIdentifier = new ThirdPartyAppIdentifier();
        AppInfo appInfo = appIdentifier.getAppInfo(packageName, context);
        try {
            String appId = appInfo.getAppFamilyId();
            String authzToken = mTokenVendor.vendToken(clientId, null, appId, scopes, packageName, context);
            MAPLog.pii(LOG_TAG, "GetToken", "id=" + ((String) null) + " appid=" + appInfo.getAppFamilyId() + " atzToken=" + authzToken);
            listener.onSuccess(MAPServiceResult.getOnSuccessBundle(AuthzConstants.BUNDLE_KEY.TOKEN.val, authzToken));
        } catch (IOException e) {
            MAPLog.e(LOG_TAG, "" + e.getMessage(), e);
            listener.onError(new AuthError("Error communicating with server!", e, AuthError.ERROR_TYPE.ERROR_IO));
        }
    }
}

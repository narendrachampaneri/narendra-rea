package com.amazon.identity.auth.device.token;

import android.text.TextUtils;
import com.amazon.identity.auth.device.AccountManagerConstants;
import com.amazon.identity.auth.device.AuthError;
import com.amazon.identity.auth.device.datastore.DatabaseHelper;
import com.amazon.identity.auth.device.utils.MAPLog;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class RefreshToken extends AbstractToken {
    private static final String KEY_DMS_DIRECTEDID = "dms.directed.id";
    private static final String REGION_HINT_KEY = "region_hint";
    private static final String UNIQUE_ID_KEY = "unique_id";
    private final AccountManagerConstants.REGION_HINT regionHint;
    private static final String LOG_TAG = RefreshToken.class.getName();
    public static final AccountManagerConstants.REGION_HINT DEFAULT_REGION_HINT = AccountManagerConstants.REGION_HINT.NA;

    public RefreshToken(String token, String directedId, String uniqueId) {
        this(token, DEFAULT_REGION_HINT, directedId, uniqueId);
    }

    public RefreshToken(String token, String directedId) {
        this(token, DEFAULT_REGION_HINT, directedId, null);
        MAPLog.i(LOG_TAG, "RefreshToken default constructor called");
    }

    public RefreshToken(String token, AccountManagerConstants.REGION_HINT regionHint, String directedId) {
        this(token, regionHint, directedId, null);
        MAPLog.i(LOG_TAG, "RefreshToken default constructor with region hint");
    }

    public RefreshToken(String token, AccountManagerConstants.REGION_HINT regionHint, String directedId, String uniqueId) {
        super(token);
        if (!TextUtils.isEmpty(directedId)) {
            this.tokenData.put("directedid", directedId);
        }
        this.regionHint = regionHint;
        initTokenData();
        MAPLog.pii(LOG_TAG, "Creating Token " + getType(), DatabaseHelper.authorizationToken_DirectedId + getDirectedId() + " uuid=" + uniqueId);
        if (!TextUtils.isEmpty(uniqueId)) {
            this.tokenData.put(UNIQUE_ID_KEY, uniqueId);
        }
    }

    public RefreshToken(Map<String, String> tokenData) throws AuthError {
        super(tokenData);
        if (!tokenData.containsKey("directedid")) {
            MAPLog.e(LOG_TAG, "No DirectedId available for RefreshToken");
            throw new AuthError("No DirectedId available for RefreshToken", null, AuthError.ERROR_TYPE.ERROR_BAD_PARAM);
        }
        String regionHintStr = tokenData.get(REGION_HINT_KEY);
        if (regionHintStr == null) {
            MAPLog.w(LOG_TAG, "region_hint not found in token data when creating RefreshToken, setting to default (NA)");
            this.regionHint = DEFAULT_REGION_HINT;
            tokenData.put(REGION_HINT_KEY, DEFAULT_REGION_HINT.toString());
        } else {
            this.regionHint = AbstractToken.convertStringToRegionHint(regionHintStr);
        }
        MAPLog.pii(LOG_TAG, "Creating Token " + getType() + " from data", "directedId=" + getDirectedId() + " uuid=" + getUniqueId());
    }

    public AccountManagerConstants.REGION_HINT getRegionHint() {
        return this.regionHint;
    }

    private void initTokenData() {
        this.tokenData.put(REGION_HINT_KEY, this.regionHint.toString());
    }

    @Override // com.amazon.identity.auth.device.token.Token
    public String getType() {
        return AccountManagerConstants.REFRESH_TOKEN_TYPE_PREFIX;
    }

    @Override // com.amazon.identity.auth.device.token.Token
    public String toString() {
        return getToken();
    }

    @Override // com.amazon.identity.auth.device.token.AbstractToken, com.amazon.identity.auth.device.token.Token
    public String getDirectedId() {
        return this.tokenData.get("directedid");
    }

    public String getUniqueId() {
        return this.tokenData.get(UNIQUE_ID_KEY);
    }

    public String getDMSDirectedId() {
        return this.tokenData.get(KEY_DMS_DIRECTEDID);
    }

    public String setDMSDirectedId(String dmsDirectedId) {
        return this.tokenData.put(KEY_DMS_DIRECTEDID, dmsDirectedId);
    }
}

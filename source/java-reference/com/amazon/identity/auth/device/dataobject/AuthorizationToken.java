package com.amazon.identity.auth.device.dataobject;

import android.content.ContentValues;
import android.content.Context;
import android.text.TextUtils;
import android.text.format.Time;
import com.amazon.identity.auth.device.AccountManagerConstants;
import com.amazon.identity.auth.device.datastore.AuthorizationTokenDataSource;
import com.amazon.identity.auth.device.datastore.DatabaseHelper;
import com.amazon.identity.auth.device.token.AbstractToken;
import com.amazon.identity.auth.device.token.Token;
import com.amazon.identity.auth.device.utils.MAPLog;
import io.fabric.sdk.android.services.network.UrlUtils;
import java.io.UnsupportedEncodingException;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public abstract class AuthorizationToken extends AbstractDataObject implements Token {
    private static final int PRE_EXPIRATION_PERIOD = 300;
    protected String mAppFamilyId;
    protected Date mCreationTime;
    private String mDirectedId;
    protected Date mExpirationTime;
    protected byte[] mMiscData;
    protected String mTokenValue;
    protected AUTHZ_TOKEN_TYPE mType;
    private static final String LOG_TAG = AuthorizationToken.class.getName();
    public static final String[] ALL_COLUMNS = {"Id", "AppId", DatabaseHelper.authorizationToken_Token, DatabaseHelper.authorizationToken_CreationTime, "ExpirationTime", DatabaseHelper.authorizationToken_MiscData, "type", DatabaseHelper.authorizationToken_DirectedId};

    public enum COL_INDEX {
        ID(0),
        APP_ID(1),
        TOKEN(2),
        CREATION_TIME(3),
        EXPIRATION_TIME(4),
        MISC_DATA(5),
        TYPE(6),
        DIRECTED_ID(7);

        public final int colId;

        COL_INDEX(int colId) {
            this.colId = colId;
        }
    }

    public enum AUTHZ_TOKEN_TYPE {
        ACCESS(AccountManagerConstants.ACCESS_TOKEN_TYPE_PREFIX),
        REFRESH(AccountManagerConstants.REFRESH_TOKEN_TYPE_PREFIX);

        private final String mType;

        AUTHZ_TOKEN_TYPE(String type) {
            this.mType = type;
        }

        @Override // java.lang.Enum
        public String toString() {
            return this.mType;
        }
    }

    public AuthorizationToken(String appId, String directedId, String tokenValue, Date creationTime, Date expirationTime, byte[] miscData, AUTHZ_TOKEN_TYPE type) {
        this.mAppFamilyId = appId;
        this.mTokenValue = tokenValue;
        this.mCreationTime = DatabaseHelper.truncateFractionalSeconds(creationTime);
        this.mExpirationTime = DatabaseHelper.truncateFractionalSeconds(expirationTime);
        this.mMiscData = miscData;
        this.mType = type;
        this.mDirectedId = directedId;
    }

    public AuthorizationToken() {
    }

    public long getId() {
        return getRowId();
    }

    public String getAppFamilyId() {
        return this.mAppFamilyId;
    }

    public String getTokenValue() {
        return this.mTokenValue;
    }

    public Date getCreationTime() {
        return this.mCreationTime;
    }

    public Date getExpirationTime() {
        return this.mExpirationTime;
    }

    public byte[] getMiscData() {
        return this.mMiscData;
    }

    public void setId(long id) {
        setRowId(id);
    }

    public void setAppFamilyId(String appId) {
        this.mAppFamilyId = appId;
    }

    public void setTokenValue(String tokenValue) {
        this.mTokenValue = tokenValue;
    }

    @Override // com.amazon.identity.auth.device.token.Token
    public String getType() {
        return this.mType.toString();
    }

    public AUTHZ_TOKEN_TYPE getTypeAsEnum() {
        return this.mType;
    }

    @Override // com.amazon.identity.auth.device.token.Token
    public String getDirectedId() {
        return this.mDirectedId;
    }

    public void setDirectedId(String mDirectedId) {
        this.mDirectedId = mDirectedId;
    }

    public void setCreationTime(Date creationTime) {
        this.mCreationTime = DatabaseHelper.truncateFractionalSeconds(creationTime);
    }

    public void setExpirationTime(Date expirationTime) {
        this.mExpirationTime = DatabaseHelper.truncateFractionalSeconds(expirationTime);
    }

    public void setMiscData(byte[] miscData) {
        this.mMiscData = miscData;
    }

    public boolean isRemainingLifeAcceptable() {
        long currentLifeRemaining = this.mExpirationTime.getTime() - Calendar.getInstance().getTimeInMillis();
        return currentLifeRemaining >= AbstractToken.secsToMillis(300L);
    }

    @Override // com.amazon.identity.auth.device.dataobject.AbstractDataObject
    public ContentValues getValuesForInsert() {
        ContentValues to_return = new ContentValues();
        to_return.put(ALL_COLUMNS[COL_INDEX.APP_ID.colId], this.mAppFamilyId);
        to_return.put(ALL_COLUMNS[COL_INDEX.TOKEN.colId], this.mTokenValue);
        to_return.put(ALL_COLUMNS[COL_INDEX.CREATION_TIME.colId], DatabaseHelper.ISO8601.format(this.mCreationTime));
        to_return.put(ALL_COLUMNS[COL_INDEX.EXPIRATION_TIME.colId], DatabaseHelper.ISO8601.format(this.mExpirationTime));
        to_return.put(ALL_COLUMNS[COL_INDEX.MISC_DATA.colId], this.mMiscData);
        to_return.put(ALL_COLUMNS[COL_INDEX.TYPE.colId], Integer.valueOf(this.mType.ordinal()));
        to_return.put(ALL_COLUMNS[COL_INDEX.DIRECTED_ID.colId], this.mDirectedId);
        return to_return;
    }

    @Override // com.amazon.identity.auth.device.dataobject.AbstractDataObject
    public AuthorizationTokenDataSource getDataSource(Context context) {
        return AuthorizationTokenDataSource.getInstance(context);
    }

    @Override // com.amazon.identity.auth.device.dataobject.AbstractDataObject
    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof AuthorizationToken)) {
            return false;
        }
        try {
            AuthorizationToken token = (AuthorizationToken) obj;
            return TextUtils.equals(this.mAppFamilyId, token.getAppFamilyId()) && TextUtils.equals(this.mTokenValue, token.getTokenValue()) && areObjectsEqual(this.mCreationTime, token.getCreationTime()) && areObjectsEqual(this.mExpirationTime, token.getExpirationTime()) && TextUtils.equals(getType(), token.getType()) && TextUtils.equals(this.mDirectedId, token.getDirectedId());
        } catch (NullPointerException e) {
            MAPLog.e(LOG_TAG, "" + e.toString());
            return false;
        }
    }

    @Override // com.amazon.identity.auth.device.dataobject.AbstractDataObject
    public String toString() {
        return this.mTokenValue;
    }

    public String toLogString() {
        return "{ rowid=" + getId() + ", appId=" + this.mAppFamilyId + ", token=" + this.mTokenValue + ", creationTime=" + DatabaseHelper.ISO8601.format(this.mCreationTime) + ", expirationTime=" + DatabaseHelper.ISO8601.format(this.mExpirationTime) + ", type=" + this.mType.toString() + ", directedId=<obscured> }";
    }

    @Override // com.amazon.identity.auth.device.token.Token
    public Time getLocalTimestamp() {
        Time time = new Time();
        time.set(this.mCreationTime.getTime());
        return time;
    }

    @Override // com.amazon.identity.auth.device.token.Token
    public Map<String, String> getData() {
        Map<String, String> results = new HashMap<>();
        String str = null;
        try {
            String str2 = new String(this.mMiscData, UrlUtils.UTF8);
            str = str2;
        } catch (UnsupportedEncodingException e) {
            MAPLog.i(LOG_TAG, "unable to parse misc data");
        }
        if (str != null) {
            String[] data = str.split(AppInfo.DELIM);
            int length = data.length;
            if (length % 2 == 0) {
                for (int i = 0; i < length; i += 2) {
                    results.put(data[i], data[i + 1]);
                }
            } else {
                MAPLog.i(LOG_TAG, "unable to parse misc data, key/value pairs do not match");
            }
        }
        return results;
    }
}

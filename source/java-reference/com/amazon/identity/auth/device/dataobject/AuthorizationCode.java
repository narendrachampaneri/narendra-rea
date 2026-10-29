package com.amazon.identity.auth.device.dataobject;

import android.content.ContentValues;
import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import com.amazon.identity.auth.device.datastore.AuthorizationCodeDataSource;
import com.amazon.identity.auth.device.datastore.DatabaseHelper;
import com.amazon.identity.auth.device.utils.MAPLog;

/* JADX INFO: loaded from: classes.dex */
public class AuthorizationCode extends AbstractDataObject implements Parcelable {
    private String mAppFamilyId;
    private String mCode;
    private long mTokenId;
    private static final String LOG_TAG = AuthorizationCode.class.getName();
    public static final String[] ALL_COLUMNS = {"Id", DatabaseHelper.authorizationCode, "AppId", DatabaseHelper.authorizationCode_AuthorizationTokenId};

    public enum COL_INDEX {
        ROW_ID(0),
        CODE(1),
        APP_FAMILY_ID(2),
        AUTHORIZATION_TOKEN_ID(3);

        public final int colId;

        COL_INDEX(int colId) {
            this.colId = colId;
        }
    }

    public AuthorizationCode() {
    }

    public AuthorizationCode(String code, String appFamilyId, long tokenId) {
        this.mCode = code;
        this.mAppFamilyId = appFamilyId;
        this.mTokenId = tokenId;
    }

    private AuthorizationCode(long rowid, String code, String appFamilyId, long tokenId) {
        this(code, appFamilyId, tokenId);
        setRowId(rowid);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeLong(getRowId());
        dest.writeString(this.mCode);
        dest.writeString(this.mAppFamilyId);
        dest.writeLong(this.mTokenId);
    }

    @Override // com.amazon.identity.auth.device.dataobject.AbstractDataObject
    public ContentValues getValuesForInsert() {
        ContentValues to_return = new ContentValues();
        to_return.put(ALL_COLUMNS[COL_INDEX.CODE.colId], this.mCode);
        to_return.put(ALL_COLUMNS[COL_INDEX.APP_FAMILY_ID.colId], this.mAppFamilyId);
        to_return.put(ALL_COLUMNS[COL_INDEX.AUTHORIZATION_TOKEN_ID.colId], Long.valueOf(this.mTokenId));
        return to_return;
    }

    @Override // com.amazon.identity.auth.device.dataobject.AbstractDataObject
    public AuthorizationCodeDataSource getDataSource(Context context) {
        return AuthorizationCodeDataSource.getInstance(context);
    }

    @Override // com.amazon.identity.auth.device.dataobject.AbstractDataObject
    public boolean equals(Object obj) {
        if (!(obj instanceof AuthorizationCode)) {
            return false;
        }
        try {
            AuthorizationCode code = (AuthorizationCode) obj;
            return this.mCode.equals(code.getCode()) && this.mAppFamilyId.equals(code.getAppFamilyId()) && this.mTokenId == code.getAuthorizationTokenId();
        } catch (NullPointerException e) {
            MAPLog.e(LOG_TAG, "" + e.toString());
            return false;
        }
    }

    public String getCode() {
        return this.mCode;
    }

    public String getAppFamilyId() {
        return this.mAppFamilyId;
    }

    public long getAuthorizationTokenId() {
        return this.mTokenId;
    }

    public void setId(long id) {
        setRowId(id);
    }

    public void setCode(String code) {
        this.mCode = code;
    }

    public void setAppId(String appId) {
        this.mAppFamilyId = appId;
    }

    public void setAuthorizationTokenId(long id) {
        this.mTokenId = id;
    }

    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public AuthorizationCode m6clone() {
        return new AuthorizationCode(getRowId(), this.mCode, this.mAppFamilyId, this.mTokenId);
    }

    @Override // com.amazon.identity.auth.device.dataobject.AbstractDataObject
    public String toString() {
        return "{ rowId=" + getRowId() + ", code=" + this.mCode + ", appId=" + this.mAppFamilyId + ", tokenId=" + this.mTokenId + " }";
    }
}

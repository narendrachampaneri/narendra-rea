package com.amazon.identity.auth.device.dataobject;

import android.content.ContentValues;
import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import com.amazon.identity.auth.device.datastore.DatabaseHelper;
import com.amazon.identity.auth.device.datastore.RequestedScopeDataSource;
import com.amazon.identity.auth.device.utils.MAPLog;

/* JADX INFO: loaded from: classes.dex */
public class RequestedScope extends AbstractDataObject implements Parcelable {
    private String appFamilyId;
    private String directedId;
    private long mAuthorizationAccessTokenId;
    private long mAuthorizationRefreshTokenId;
    private String scopeValue;
    private static final String LOG_TAG = RequestedScope.class.getName();
    public static final String[] ALL_COLUMNS = {"rowid", "Scope", "AppId", "DirectedId", DatabaseHelper.requestedScope_AuthorizationAccessTokenId, DatabaseHelper.requestedScope_AuthorizationRefreshTokenId};
    public static final Parcelable.Creator<RequestedScope> CREATOR = new Parcelable.Creator<RequestedScope>() { // from class: com.amazon.identity.auth.device.dataobject.RequestedScope.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RequestedScope createFromParcel(Parcel source) {
            return new RequestedScope(source);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RequestedScope[] newArray(int size) {
            return new RequestedScope[size];
        }
    };

    public enum OUTCOME {
        UNKNOWN(-2),
        REJECTED(-1),
        GRANTED_LOCALLY(0);

        public final long longVal;

        OUTCOME(long longVal) {
            this.longVal = longVal;
        }
    }

    public enum COL_INDEX {
        ROW_ID(0),
        SCOPE(1),
        APP_FAMILY_ID(2),
        DIRECTED_ID(3),
        AUTHORIZATION_ACCESS_TOKEN_ID(4),
        AUTHORIZATION_REFRESH_TOKEN_ID(5);

        public final int colId;

        COL_INDEX(int colId) {
            this.colId = colId;
        }
    }

    public RequestedScope(String scopeValue, String appFamilyId, String directedId) {
        this.mAuthorizationAccessTokenId = OUTCOME.REJECTED.longVal;
        this.mAuthorizationRefreshTokenId = OUTCOME.REJECTED.longVal;
        this.scopeValue = scopeValue;
        this.appFamilyId = appFamilyId;
        this.directedId = directedId;
    }

    public RequestedScope(String scopeValue, String appFamilyId, String directedId, long authorizationAccessTokenId, long authorizationRefreshTokenId) {
        this(scopeValue, appFamilyId, directedId);
        this.mAuthorizationAccessTokenId = authorizationAccessTokenId;
        this.mAuthorizationRefreshTokenId = authorizationRefreshTokenId;
    }

    private RequestedScope(long rowid, String scopeValue, String appFamilyId, String directedId, long authorizationTokenId, long authorizationRefreshTokenId) {
        this(scopeValue, appFamilyId, directedId, authorizationTokenId, authorizationRefreshTokenId);
        setRowId(rowid);
    }

    public RequestedScope() {
        this.mAuthorizationAccessTokenId = OUTCOME.REJECTED.longVal;
        this.mAuthorizationRefreshTokenId = OUTCOME.REJECTED.longVal;
    }

    public RequestedScope(Parcel source) {
        this.mAuthorizationAccessTokenId = OUTCOME.REJECTED.longVal;
        this.mAuthorizationRefreshTokenId = OUTCOME.REJECTED.longVal;
        setRowId(source.readLong());
        this.scopeValue = source.readString();
        this.appFamilyId = source.readString();
        this.directedId = source.readString();
        this.mAuthorizationAccessTokenId = source.readLong();
        this.mAuthorizationRefreshTokenId = source.readLong();
    }

    public String getScopeValue() {
        return this.scopeValue;
    }

    public String getAppFamilyId() {
        return this.appFamilyId;
    }

    public String getDirectedId() {
        return this.directedId;
    }

    public long getAuthorizationAccessTokenId() {
        return this.mAuthorizationAccessTokenId;
    }

    public long getAuthorizationRefreshTokenId() {
        return this.mAuthorizationRefreshTokenId;
    }

    public void setScopeValue(String scopeValue) {
        this.scopeValue = scopeValue;
    }

    public void setAppFamilyId(String appFamilyId) {
        this.appFamilyId = appFamilyId;
    }

    public void setDirectedId(String directedId) {
        this.directedId = directedId;
    }

    public void setAuthorizationAccessTokenId(long authorizationTokenId) {
        this.mAuthorizationAccessTokenId = authorizationTokenId;
    }

    public void setAuthorizationRefreshTokenId(long authorizationTokenId) {
        this.mAuthorizationRefreshTokenId = authorizationTokenId;
    }

    public Boolean isGranted() {
        if (this.mAuthorizationAccessTokenId == OUTCOME.UNKNOWN.longVal) {
            return null;
        }
        if (this.mAuthorizationAccessTokenId == OUTCOME.REJECTED.longVal) {
            return Boolean.FALSE;
        }
        return Boolean.TRUE;
    }

    public void setIsGranted(Boolean isGranted) {
        if (isGranted != isGranted()) {
            if (isGranted == null) {
                setAuthorizationAccessTokenId(OUTCOME.UNKNOWN.longVal);
                setAuthorizationRefreshTokenId(OUTCOME.UNKNOWN.longVal);
            } else if (isGranted == Boolean.FALSE) {
                setAuthorizationAccessTokenId(OUTCOME.REJECTED.longVal);
                setAuthorizationRefreshTokenId(OUTCOME.REJECTED.longVal);
            } else {
                setAuthorizationAccessTokenId(OUTCOME.GRANTED_LOCALLY.longVal);
                setAuthorizationRefreshTokenId(OUTCOME.GRANTED_LOCALLY.longVal);
            }
        }
    }

    public Scope getScope() {
        return new Scope(this.scopeValue);
    }

    @Override // com.amazon.identity.auth.device.dataobject.AbstractDataObject
    public ContentValues getValuesForInsert() {
        ContentValues to_return = new ContentValues();
        to_return.put(ALL_COLUMNS[COL_INDEX.SCOPE.colId], this.scopeValue);
        to_return.put(ALL_COLUMNS[COL_INDEX.APP_FAMILY_ID.colId], this.appFamilyId);
        to_return.put(ALL_COLUMNS[COL_INDEX.DIRECTED_ID.colId], this.directedId);
        to_return.put(ALL_COLUMNS[COL_INDEX.AUTHORIZATION_ACCESS_TOKEN_ID.colId], Long.valueOf(this.mAuthorizationAccessTokenId));
        to_return.put(ALL_COLUMNS[COL_INDEX.AUTHORIZATION_REFRESH_TOKEN_ID.colId], Long.valueOf(this.mAuthorizationRefreshTokenId));
        return to_return;
    }

    @Override // com.amazon.identity.auth.device.dataobject.AbstractDataObject
    public RequestedScopeDataSource getDataSource(Context context) {
        return RequestedScopeDataSource.getInstance(context);
    }

    @Override // com.amazon.identity.auth.device.dataobject.AbstractDataObject
    public boolean equals(Object obj) {
        if (!(obj instanceof RequestedScope)) {
            return false;
        }
        try {
            RequestedScope scope = (RequestedScope) obj;
            return this.scopeValue.equals(scope.getScopeValue()) && this.appFamilyId.equals(scope.getAppFamilyId()) && this.directedId.equals(scope.getDirectedId()) && this.mAuthorizationAccessTokenId == scope.getAuthorizationAccessTokenId() && this.mAuthorizationRefreshTokenId == scope.getAuthorizationRefreshTokenId();
        } catch (NullPointerException e) {
            MAPLog.e(LOG_TAG, "" + e.toString());
            return false;
        }
    }

    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public RequestedScope m7clone() {
        return new RequestedScope(getRowId(), this.scopeValue, this.appFamilyId, this.directedId, this.mAuthorizationAccessTokenId, this.mAuthorizationRefreshTokenId);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeLong(getRowId());
        dest.writeString(this.scopeValue);
        dest.writeString(this.appFamilyId);
        dest.writeString(this.directedId);
        dest.writeLong(this.mAuthorizationAccessTokenId);
        dest.writeLong(this.mAuthorizationRefreshTokenId);
    }

    @Override // com.amazon.identity.auth.device.dataobject.AbstractDataObject
    public String toString() {
        return "{ rowid=" + getRowId() + ", scope=" + this.scopeValue + ", appFamilyId=" + this.appFamilyId + ", directedId=<obscured>, atzAccessTokenId=" + this.mAuthorizationAccessTokenId + ", atzRefreshTokenId=" + this.mAuthorizationRefreshTokenId + " }";
    }
}

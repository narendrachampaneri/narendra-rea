package com.amazon.identity.auth.device.dataobject;

import android.content.ContentValues;
import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import com.amazon.identity.auth.device.AuthError;
import com.amazon.identity.auth.device.datastore.DatabaseHelper;
import com.amazon.identity.auth.device.datastore.ProfileDataSource;
import com.amazon.identity.auth.device.utils.MAPLog;
import com.newrelic.agent.android.instrumentation.JSONObjectInstrumentation;
import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class Profile extends AbstractDataObject {
    private static final int EXPIRATION_TIME = 3600000;
    protected String mAppFamilyId;
    protected String mData;
    protected Date mExpirationTime;
    private static final String LOG_TAG = Profile.class.getName();
    public static final String[] ALL_COLUMNS = {"Id", "ExpirationTime", "AppId", DatabaseHelper.profile_Data};

    public enum COL_INDEX {
        ID(0),
        EXPIRATION_TIME(1),
        APP_ID(2),
        DATA(3);

        public final int colId;

        COL_INDEX(int colId) {
            this.colId = colId;
        }
    }

    public Profile() {
    }

    public Profile(String appFamilyId, String data) {
        this(appFamilyId, data, new Date(Calendar.getInstance().getTime().getTime() + 3600000));
    }

    Profile(String appId, String data, Date expirationTime) {
        this.mAppFamilyId = appId;
        this.mData = data;
        this.mExpirationTime = expirationTime;
    }

    @Override // com.amazon.identity.auth.device.dataobject.AbstractDataObject
    public ContentValues getValuesForInsert() {
        ContentValues to_return = new ContentValues();
        to_return.put(ALL_COLUMNS[COL_INDEX.APP_ID.colId], this.mAppFamilyId);
        if (this.mExpirationTime != null) {
            to_return.put(ALL_COLUMNS[COL_INDEX.EXPIRATION_TIME.colId], DatabaseHelper.ISO8601.format(this.mExpirationTime));
        } else {
            to_return.put(ALL_COLUMNS[COL_INDEX.EXPIRATION_TIME.colId], (String) null);
        }
        to_return.put(ALL_COLUMNS[COL_INDEX.DATA.colId], this.mData);
        return to_return;
    }

    @Override // com.amazon.identity.auth.device.dataobject.AbstractDataObject
    public ProfileDataSource getDataSource(Context context) {
        return ProfileDataSource.getInstance(context);
    }

    @Override // com.amazon.identity.auth.device.dataobject.AbstractDataObject
    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof Profile)) {
            return false;
        }
        try {
            Profile profile = (Profile) obj;
            return TextUtils.equals(this.mAppFamilyId, profile.getAppFamilyId()) && areObjectsEqual(this.mExpirationTime, profile.getExpirationTime()) && dataEquals(profile);
        } catch (NullPointerException e) {
            MAPLog.e(LOG_TAG, "" + e.toString());
            return false;
        }
    }

    public long getId() {
        return getRowId();
    }

    public String getAppFamilyId() {
        return this.mAppFamilyId;
    }

    public Date getExpirationTime() {
        return this.mExpirationTime;
    }

    public String getData() {
        return this.mData;
    }

    public Bundle getDataAsBundle() throws AuthError {
        return getDataFromJSON();
    }

    public void setId(long id) {
        setRowId(id);
    }

    public void setAppId(String appId) {
        this.mAppFamilyId = appId;
    }

    public void setExpirationTime(Date expirationTime) {
        this.mExpirationTime = DatabaseHelper.truncateFractionalSeconds(expirationTime);
    }

    public void setData(String data) {
        this.mData = data;
    }

    @Override // com.amazon.identity.auth.device.dataobject.AbstractDataObject
    public String toString() {
        return toLogString();
    }

    public String toLogString() {
        return "{ rowid=" + getId() + ", appId=" + this.mAppFamilyId + ", expirationTime=" + DatabaseHelper.ISO8601.format(this.mExpirationTime) + ", data=" + this.mData + " }";
    }

    public boolean hasExpired() {
        if (this.mExpirationTime == null) {
            return true;
        }
        boolean hasExpired = this.mExpirationTime.before(Calendar.getInstance().getTime());
        return hasExpired;
    }

    private Bundle getDataFromJSON() throws AuthError {
        Bundle data = new Bundle();
        if (this.mData != null) {
            try {
                JSONObject json = JSONObjectInstrumentation.init(this.mData);
                try {
                    Iterator<String> keys = json.keys();
                    while (keys.hasNext()) {
                        String key = keys.next();
                        String value = json.getString(key);
                        data.putString(key, value);
                    }
                } catch (JSONException e) {
                    MAPLog.e(LOG_TAG, "Unable to parse profile data in database " + e.getMessage());
                }
            } catch (JSONException e2) {
                MAPLog.e(LOG_TAG, "JSONException while parsing profile information in database", e2);
                throw new AuthError("JSONException while parsing profile information in database", e2, AuthError.ERROR_TYPE.ERROR_JSON);
            }
        }
        return data;
    }

    private boolean dataEquals(Profile profile) {
        try {
            JSONObject json = JSONObjectInstrumentation.init(this.mData);
            JSONObject argJSON = JSONObjectInstrumentation.init(profile.getData());
            Iterator<String> keys = json.keys();
            while (keys.hasNext()) {
                String key = keys.next();
                String value = json.getString(key);
                if (!value.equals(argJSON.getString(key))) {
                    return false;
                }
            }
            return true;
        } catch (Exception e) {
            return TextUtils.equals(this.mData, profile.getData());
        }
    }
}

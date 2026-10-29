package com.amazon.identity.auth.device.dataobject;

import android.content.ContentValues;
import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.amazon.identity.auth.device.datastore.AppInfoDataSource;
import com.amazon.identity.auth.device.datastore.DatabaseHelper;
import com.amazon.identity.auth.device.utils.MAPUtils;
import com.newrelic.agent.android.instrumentation.JSONObjectInstrumentation;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class AppInfo extends AbstractDataObject {
    public static final String DELIM = ",";
    private String[] allowedScopes;
    private String appFamilyId;
    private String appVariantId;
    private String clientId;
    private String[] grantedPermissions;
    private String packageName;
    private JSONObject payload;
    private static final String LOG_TAG = AppInfo.class.getName();
    public static final String[] ALL_COLUMNS = {"rowid", DatabaseHelper.appInfo_AppFamilyId, DatabaseHelper.appInfo_PackageName, DatabaseHelper.appInfo_AllowedScopes, DatabaseHelper.appInfo_GrantedPermissions, DatabaseHelper.appInfo_ClientId, DatabaseHelper.appInfo_AppVariantId, DatabaseHelper.appInfo_Payload};

    public enum COL_INDEX {
        ROW_ID(0),
        APP_FAMILY_ID(1),
        PACKAGE_NAME(2),
        ALLOWED_SCOPES(3),
        GRANTED_PERMISSIONS(4),
        CLIENT_ID(5),
        APP_VARIANT_ID(6),
        PAYLOAD(7);

        public final int colId;

        COL_INDEX(int colId) {
            this.colId = colId;
        }
    }

    public AppInfo(String appFamilyId, String appVariantId, String packageName, String[] allowedScopes, String[] grantedPermissions, String clientId, JSONObject payload) {
        this.appFamilyId = appFamilyId;
        this.appVariantId = appVariantId;
        this.packageName = packageName;
        this.allowedScopes = allowedScopes;
        this.grantedPermissions = grantedPermissions;
        this.clientId = clientId;
        this.payload = payload;
    }

    private AppInfo(long rowid, String appFamilyId, String appVariantId, String packageName, String[] allowedScopes, String[] grantedPermissions, String clientId, JSONObject payload) {
        this(appFamilyId, appVariantId, packageName, allowedScopes, grantedPermissions, clientId, payload);
        setRowId(rowid);
    }

    public AppInfo() {
    }

    public String getAppFamilyId() {
        return this.appFamilyId;
    }

    public String getAppVariantId() {
        return this.appVariantId;
    }

    public String getPackageName() {
        return this.packageName;
    }

    public String[] getAllowedScopes() {
        return this.allowedScopes;
    }

    public String[] getGrantedPermissions() {
        return this.grantedPermissions;
    }

    public String getClientId() {
        return this.clientId;
    }

    private JSONObject getPayload() {
        return this.payload;
    }

    public void setAppFamilyId(String appFamilyId) {
        this.appFamilyId = appFamilyId;
    }

    public void setAppVariantId(String appVariantId) {
        this.appVariantId = appVariantId;
    }

    public void setPackageName(String packageName) {
        this.packageName = packageName;
    }

    public void setAllowedScopes(String[] allowedScopes) {
        this.allowedScopes = allowedScopes;
    }

    public void setGrantedPermissions(String[] grantedPermissions) {
        this.grantedPermissions = grantedPermissions;
    }

    public void setClientId(String clientId) {
        this.clientId = clientId;
    }

    public void setPayload(JSONObject payload) {
        this.payload = payload;
    }

    public void setPayload(String payloadString) {
        try {
            this.payload = JSONObjectInstrumentation.init(payloadString);
        } catch (JSONException e) {
            Log.e(LOG_TAG, "Payload String not correct JSON.  Setting payload to null", e);
        }
    }

    public String[] getAllowedRemoteScopes() {
        if (this.allowedScopes == null) {
            return null;
        }
        List<String> to_return = new ArrayList<>();
        String[] arr$ = this.allowedScopes;
        for (String scope : arr$) {
            if (!Scope.isLocal(scope)) {
                to_return.add(scope);
            }
        }
        return (String[]) to_return.toArray(new String[to_return.size()]);
    }

    public String getAttributeByKey(String key) {
        try {
            return this.payload.getString(key);
        } catch (JSONException e) {
            return null;
        }
    }

    public String getVersion() {
        String version = getAttributeByKey("ver");
        return version != null ? version : "1";
    }

    @Override // com.amazon.identity.auth.device.dataobject.AbstractDataObject
    public ContentValues getValuesForInsert() {
        String string;
        ContentValues to_return = new ContentValues();
        to_return.put(ALL_COLUMNS[COL_INDEX.APP_FAMILY_ID.colId], this.appFamilyId);
        to_return.put(ALL_COLUMNS[COL_INDEX.PACKAGE_NAME.colId], this.packageName);
        to_return.put(ALL_COLUMNS[COL_INDEX.ALLOWED_SCOPES.colId], MAPUtils.toDelimitedString(this.allowedScopes, DELIM));
        to_return.put(ALL_COLUMNS[COL_INDEX.GRANTED_PERMISSIONS.colId], MAPUtils.toDelimitedString(this.grantedPermissions, DELIM));
        to_return.put(ALL_COLUMNS[COL_INDEX.CLIENT_ID.colId], this.clientId);
        to_return.put(ALL_COLUMNS[COL_INDEX.APP_VARIANT_ID.colId], this.appVariantId);
        String str = ALL_COLUMNS[COL_INDEX.PAYLOAD.colId];
        if (this.payload != null) {
            JSONObject jSONObject = this.payload;
            string = !(jSONObject instanceof JSONObject) ? jSONObject.toString() : JSONObjectInstrumentation.toString(jSONObject);
        } else {
            string = null;
        }
        to_return.put(str, string);
        return to_return;
    }

    @Override // com.amazon.identity.auth.device.dataobject.AbstractDataObject
    public AppInfoDataSource getDataSource(Context context) {
        return AppInfoDataSource.getInstance(context);
    }

    @Override // com.amazon.identity.auth.device.dataobject.AbstractDataObject
    public boolean equals(Object obj) {
        if (!(obj instanceof AppInfo)) {
            return false;
        }
        AppInfo appInfo = (AppInfo) obj;
        return TextUtils.equals(this.appFamilyId, appInfo.getAppFamilyId()) && TextUtils.equals(this.appVariantId, appInfo.getAppVariantId()) && TextUtils.equals(this.packageName, appInfo.getPackageName()) && Arrays.equals(this.allowedScopes, appInfo.getAllowedScopes()) && Arrays.equals(this.grantedPermissions, appInfo.getGrantedPermissions()) && TextUtils.equals(this.clientId, appInfo.getClientId()) && payloadEquals(appInfo);
    }

    private boolean payloadEquals(AppInfo appInfo) {
        JSONObject otherPayload = appInfo.getPayload();
        if (this.payload == null) {
            return otherPayload == null;
        }
        if (otherPayload == null) {
            return false;
        }
        Iterator<String> itr = this.payload.keys();
        while (itr.hasNext()) {
            String key = itr.next();
            try {
                if (!this.payload.getString(key).equals(otherPayload.getString(key))) {
                    Log.e(LOG_TAG, "APIKeys not equal: key " + key + " not equal");
                    return false;
                }
            } catch (ClassCastException cce) {
                Log.e(LOG_TAG, "APIKeys not equal: ClassCastExceptionException", cce);
                return false;
            } catch (JSONException jsone) {
                Log.e(LOG_TAG, "APIKeys not equal: JSONException", jsone);
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public AppInfo m5clone() {
        return new AppInfo(getRowId(), this.appFamilyId, this.appVariantId, this.packageName, this.allowedScopes, this.grantedPermissions, this.clientId, this.payload);
    }

    @Override // com.amazon.identity.auth.device.dataobject.AbstractDataObject
    public String toString() {
        try {
            JSONObject jSONObject = this.payload;
            return !(jSONObject instanceof JSONObject) ? jSONObject.toString(4) : JSONObjectInstrumentation.toString(jSONObject, 4);
        } catch (Exception e) {
            return "{ rowid=" + getRowId() + ", appFamilyId=" + this.appFamilyId + ", appVariantId=" + this.appVariantId + ", packageName=" + this.packageName + ", allowedScopes=" + Arrays.toString(this.allowedScopes) + ", grantedPermissions=" + Arrays.toString(this.grantedPermissions) + ", clientId=" + this.clientId + " }";
        }
    }
}

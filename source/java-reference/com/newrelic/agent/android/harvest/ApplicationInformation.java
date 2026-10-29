package com.newrelic.agent.android.harvest;

import com.newrelic.agent.android.harvest.type.HarvestableArray;
import com.newrelic.com.google.gson.JsonArray;
import com.newrelic.com.google.gson.JsonPrimitive;

/* JADX INFO: loaded from: classes.dex */
public class ApplicationInformation extends HarvestableArray {
    private String appBuild;
    private String appName;
    private String appVersion;
    private String packageId;
    private int versionCode;

    public ApplicationInformation() {
        this.versionCode = -1;
    }

    public ApplicationInformation(String appName, String appVersion, String packageId, String appBuild) {
        this();
        this.appName = appName;
        this.appVersion = appVersion;
        this.packageId = packageId;
        this.appBuild = appBuild;
    }

    @Override // com.newrelic.agent.android.harvest.type.HarvestableArray, com.newrelic.agent.android.harvest.type.BaseHarvestable, com.newrelic.agent.android.harvest.type.Harvestable
    public JsonArray asJsonArray() {
        JsonArray array = new JsonArray();
        notEmpty(this.appName);
        array.add(new JsonPrimitive(this.appName));
        notEmpty(this.appVersion);
        array.add(new JsonPrimitive(this.appVersion));
        notEmpty(this.packageId);
        array.add(new JsonPrimitive(this.packageId));
        return array;
    }

    public void setAppName(String appName) {
        this.appName = appName;
    }

    public String getAppName() {
        return this.appName;
    }

    public void setAppVersion(String appVersion) {
        this.appVersion = appVersion;
    }

    public String getAppVersion() {
        return this.appVersion;
    }

    public void setAppBuild(String appBuild) {
        this.appBuild = appBuild;
    }

    public String getAppBuild() {
        return this.appBuild;
    }

    public void setPackageId(String packageId) {
        this.packageId = packageId;
    }

    public String getPackageId() {
        return this.packageId;
    }

    public void setVersionCode(int versionCode) {
        this.versionCode = versionCode;
    }

    public int getVersionCode() {
        return this.versionCode;
    }

    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || getClass() != o.getClass()) {
            return false;
        }
        ApplicationInformation that = (ApplicationInformation) o;
        if (this.appName == null ? that.appName != null : !this.appName.equals(that.appName)) {
            return false;
        }
        if (this.appVersion == null ? that.appVersion != null : !this.appVersion.equals(that.appVersion)) {
            return false;
        }
        if (this.appBuild == null ? that.appBuild != null : !this.appBuild.equals(that.appBuild)) {
            return false;
        }
        if (this.packageId == null ? that.packageId != null : !this.packageId.equals(that.packageId)) {
            return false;
        }
        return this.versionCode == that.versionCode;
    }

    public int hashCode() {
        int result = this.appName != null ? this.appName.hashCode() : 0;
        return (((((result * 31) + (this.appVersion != null ? this.appVersion.hashCode() : 0)) * 31) + (this.appBuild != null ? this.appBuild.hashCode() : 0)) * 31) + (this.packageId != null ? this.packageId.hashCode() : 0);
    }

    public boolean isAppUpgrade(ApplicationInformation that) {
        if (that.versionCode == -1) {
            return this.versionCode >= 0 && that.appVersion != null;
        }
        return this.versionCode > that.versionCode;
    }
}

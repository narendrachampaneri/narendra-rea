package com.newrelic.agent.android.harvest.crash;

import com.newrelic.agent.android.analytics.AnalyticAttribute;
import com.newrelic.agent.android.harvest.ApplicationInformation;
import com.newrelic.agent.android.harvest.type.HarvestableObject;
import com.newrelic.agent.android.util.SafeJsonPrimitive;
import com.newrelic.com.google.gson.JsonObject;

/* JADX INFO: loaded from: classes.dex */
public class ApplicationInfo extends HarvestableObject {
    private String applicationBuild;
    private String applicationName;
    private String applicationVersion;
    private String bundleId;
    private int processId;

    public ApplicationInfo() {
        this.applicationName = "";
        this.applicationVersion = "";
        this.applicationBuild = "";
        this.bundleId = "";
        this.processId = 0;
    }

    public ApplicationInfo(ApplicationInformation applicationInformation) {
        this.applicationName = "";
        this.applicationVersion = "";
        this.applicationBuild = "";
        this.bundleId = "";
        this.processId = 0;
        this.applicationName = applicationInformation.getAppName();
        this.applicationVersion = applicationInformation.getAppVersion();
        this.applicationBuild = applicationInformation.getAppBuild();
        this.bundleId = applicationInformation.getPackageId();
    }

    @Override // com.newrelic.agent.android.harvest.type.HarvestableObject, com.newrelic.agent.android.harvest.type.BaseHarvestable, com.newrelic.agent.android.harvest.type.Harvestable
    public JsonObject asJsonObject() {
        JsonObject data = new JsonObject();
        data.add(AnalyticAttribute.APP_NAME_ATTRIBUTE, SafeJsonPrimitive.factory(this.applicationName));
        data.add("appVersion", SafeJsonPrimitive.factory(this.applicationVersion));
        data.add("appBuild", SafeJsonPrimitive.factory(this.applicationBuild));
        data.add("bundleId", SafeJsonPrimitive.factory(this.bundleId));
        data.add("processId", SafeJsonPrimitive.factory(Integer.valueOf(this.processId)));
        return data;
    }

    public static ApplicationInfo newFromJson(JsonObject jsonObject) {
        ApplicationInfo info = new ApplicationInfo();
        info.applicationName = jsonObject.get(AnalyticAttribute.APP_NAME_ATTRIBUTE).getAsString();
        info.applicationVersion = jsonObject.get("appVersion").getAsString();
        info.applicationBuild = jsonObject.get("appBuild").getAsString();
        info.bundleId = jsonObject.get("bundleId").getAsString();
        info.processId = jsonObject.get("processId").getAsInt();
        return info;
    }
}

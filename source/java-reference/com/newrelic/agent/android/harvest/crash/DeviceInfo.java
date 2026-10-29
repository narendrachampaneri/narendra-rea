package com.newrelic.agent.android.harvest.crash;

import com.newrelic.agent.android.analytics.AnalyticAttribute;
import com.newrelic.agent.android.harvest.DeviceInformation;
import com.newrelic.agent.android.harvest.EnvironmentInformation;
import com.newrelic.agent.android.harvest.type.HarvestableObject;
import com.newrelic.agent.android.util.SafeJsonPrimitive;
import com.newrelic.com.google.gson.JsonArray;
import com.newrelic.com.google.gson.JsonElement;
import com.newrelic.com.google.gson.JsonObject;

/* JADX INFO: loaded from: classes.dex */
public class DeviceInfo extends HarvestableObject {
    private String OSBuild;
    private String OSVersion;
    private String architecture;
    private String deviceName;
    private String deviceUuid;
    private long[] diskAvailable;
    private long memoryUsage;
    private String modelNumber;
    private String networkStatus;
    private int orientation;
    private String runTime;
    private String screenResolution;

    public DeviceInfo() {
    }

    public DeviceInfo(DeviceInformation devInfo, EnvironmentInformation envInfo) {
        this.memoryUsage = envInfo.getMemoryUsage();
        this.orientation = envInfo.getOrientation();
        this.networkStatus = envInfo.getNetworkStatus();
        this.diskAvailable = envInfo.getDiskAvailable();
        this.OSVersion = devInfo.getOsVersion();
        this.deviceName = devInfo.getManufacturer();
        this.OSBuild = devInfo.getOsBuild();
        this.architecture = devInfo.getArchitecture();
        this.modelNumber = devInfo.getModel();
        this.screenResolution = devInfo.getSize();
        this.deviceUuid = devInfo.getDeviceId();
        this.runTime = devInfo.getRunTime();
    }

    @Override // com.newrelic.agent.android.harvest.type.HarvestableObject, com.newrelic.agent.android.harvest.type.BaseHarvestable, com.newrelic.agent.android.harvest.type.Harvestable
    public JsonObject asJsonObject() {
        JsonObject data = new JsonObject();
        data.add("memoryUsage", SafeJsonPrimitive.factory(Long.valueOf(this.memoryUsage)));
        data.add("orientation", SafeJsonPrimitive.factory(Integer.valueOf(this.orientation)));
        data.add("networkStatus", SafeJsonPrimitive.factory(this.networkStatus));
        data.add("diskAvailable", getDiskAvailableAsJson());
        data.add(AnalyticAttribute.OS_VERSION_ATTRIBUTE, SafeJsonPrimitive.factory(this.OSVersion));
        data.add("deviceName", SafeJsonPrimitive.factory(this.deviceName));
        data.add("osBuild", SafeJsonPrimitive.factory(this.OSBuild));
        data.add("architecture", SafeJsonPrimitive.factory(this.architecture));
        data.add("runTime", SafeJsonPrimitive.factory(this.runTime));
        data.add("modelNumber", SafeJsonPrimitive.factory(this.modelNumber));
        data.add("screenResolution", SafeJsonPrimitive.factory(this.screenResolution));
        data.add("deviceUuid", SafeJsonPrimitive.factory(this.deviceUuid));
        return data;
    }

    public static DeviceInfo newFromJson(JsonObject jsonObject) {
        DeviceInfo info = new DeviceInfo();
        info.memoryUsage = jsonObject.get("memoryUsage").getAsLong();
        info.orientation = jsonObject.get("orientation").getAsInt();
        info.networkStatus = jsonObject.get("networkStatus").getAsString();
        info.diskAvailable = longArrayFromJsonArray(jsonObject.get("diskAvailable").getAsJsonArray());
        info.OSVersion = jsonObject.get(AnalyticAttribute.OS_VERSION_ATTRIBUTE).getAsString();
        info.deviceName = jsonObject.get("deviceName").getAsString();
        info.OSBuild = jsonObject.get("osBuild").getAsString();
        info.architecture = jsonObject.get("architecture").getAsString();
        info.runTime = jsonObject.get("runTime").getAsString();
        info.modelNumber = jsonObject.get("modelNumber").getAsString();
        info.screenResolution = jsonObject.get("screenResolution").getAsString();
        info.deviceUuid = jsonObject.get("deviceUuid").getAsString();
        return info;
    }

    private static long[] longArrayFromJsonArray(JsonArray jsonArray) {
        long[] array = new long[jsonArray.size()];
        int i = 0;
        for (JsonElement jsonElement : jsonArray) {
            array[i] = jsonElement.getAsLong();
            i++;
        }
        return array;
    }

    private JsonArray getDiskAvailableAsJson() {
        JsonArray data = new JsonArray();
        long[] arr$ = this.diskAvailable;
        for (long value : arr$) {
            data.add(SafeJsonPrimitive.factory(Long.valueOf(value)));
        }
        return data;
    }
}

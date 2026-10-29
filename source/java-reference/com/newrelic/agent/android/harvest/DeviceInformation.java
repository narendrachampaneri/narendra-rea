package com.newrelic.agent.android.harvest;

import com.newrelic.agent.android.harvest.type.HarvestableArray;
import com.newrelic.com.google.gson.Gson;
import com.newrelic.com.google.gson.JsonArray;
import com.newrelic.com.google.gson.JsonElement;
import com.newrelic.com.google.gson.JsonPrimitive;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class DeviceInformation extends HarvestableArray {
    private String agentName;
    private String agentVersion;
    private String architecture;
    private String countryCode;
    private String deviceId;
    private String manufacturer;
    private Map<String, String> misc = new HashMap();
    private String model;
    private String osBuild;
    private String osName;
    private String osVersion;
    private String regionCode;
    private String runTime;
    private String size;

    @Override // com.newrelic.agent.android.harvest.type.HarvestableArray, com.newrelic.agent.android.harvest.type.BaseHarvestable, com.newrelic.agent.android.harvest.type.Harvestable
    public JsonArray asJsonArray() {
        JsonArray array = new JsonArray();
        notEmpty(this.osName);
        array.add(new JsonPrimitive(this.osName));
        notEmpty(this.osVersion);
        array.add(new JsonPrimitive(this.osVersion));
        notEmpty(this.manufacturer);
        notEmpty(this.model);
        array.add(new JsonPrimitive(this.manufacturer + " " + this.model));
        notEmpty(this.agentName);
        array.add(new JsonPrimitive(this.agentName));
        notEmpty(this.agentVersion);
        array.add(new JsonPrimitive(this.agentVersion));
        notEmpty(this.deviceId);
        array.add(new JsonPrimitive(this.deviceId));
        array.add(new JsonPrimitive(optional(this.countryCode)));
        array.add(new JsonPrimitive(optional(this.regionCode)));
        array.add(new JsonPrimitive(this.manufacturer));
        if (this.misc == null || this.misc.isEmpty()) {
            this.misc = Collections.emptyMap();
        }
        JsonElement map = new Gson().toJsonTree(this.misc, GSON_STRING_MAP_TYPE);
        array.add(map);
        return array;
    }

    public void setOsName(String osName) {
        this.osName = osName;
    }

    public void setOsVersion(String osVersion) {
        this.osVersion = osVersion;
    }

    public void setOsBuild(String osBuild) {
        this.osBuild = osBuild;
    }

    public void setManufacturer(String manufacturer) {
        this.manufacturer = manufacturer;
    }

    public void setModel(String model) {
        this.model = model;
    }

    public void setCountryCode(String countryCode) {
        this.countryCode = countryCode;
    }

    public void setRegionCode(String regionCode) {
        this.regionCode = regionCode;
    }

    public void setAgentName(String agentName) {
        this.agentName = agentName;
    }

    public void setAgentVersion(String agentVersion) {
        this.agentVersion = agentVersion;
    }

    public void setDeviceId(String deviceId) {
        this.deviceId = deviceId;
    }

    public void setArchitecture(String architecture) {
        this.architecture = architecture;
    }

    public void setRunTime(String runTime) {
        this.runTime = runTime;
    }

    public void setSize(String size) {
        this.size = size;
        addMisc("size", size);
    }

    public void setMisc(Map<String, String> misc) {
        this.misc = new HashMap(misc);
    }

    public void addMisc(String key, String value) {
        this.misc.put(key, value);
    }

    public String getOsName() {
        return this.osName;
    }

    public String getOsVersion() {
        return this.osVersion;
    }

    public String getOsBuild() {
        return this.osBuild;
    }

    public String getModel() {
        return this.model;
    }

    public String getAgentName() {
        return this.agentName;
    }

    public String getAgentVersion() {
        return this.agentVersion;
    }

    public String getDeviceId() {
        return this.deviceId;
    }

    public String getCountryCode() {
        return this.countryCode;
    }

    public String getRegionCode() {
        return this.regionCode;
    }

    public String getManufacturer() {
        return this.manufacturer;
    }

    public String getArchitecture() {
        return this.architecture;
    }

    public String getRunTime() {
        return this.runTime;
    }

    public String getSize() {
        return this.size;
    }

    @Override // com.newrelic.agent.android.harvest.type.BaseHarvestable, com.newrelic.agent.android.harvest.type.Harvestable
    public String toJsonString() {
        return "DeviceInformation{manufacturer='" + this.manufacturer + "', osName='" + this.osName + "', osVersion='" + this.osVersion + "', model='" + this.model + "', agentName='" + this.agentName + "', agentVersion='" + this.agentVersion + "', deviceId='" + this.deviceId + "', countryCode='" + this.countryCode + "', regionCode='" + this.regionCode + "'}";
    }

    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || getClass() != o.getClass()) {
            return false;
        }
        DeviceInformation that = (DeviceInformation) o;
        if (this.agentName == null ? that.agentName != null : !this.agentName.equals(that.agentName)) {
            return false;
        }
        if (this.agentVersion == null ? that.agentVersion != null : !this.agentVersion.equals(that.agentVersion)) {
            return false;
        }
        if (this.architecture == null ? that.architecture != null : !this.architecture.equals(that.architecture)) {
            return false;
        }
        if (this.deviceId == null ? that.deviceId != null : !this.deviceId.equals(that.deviceId)) {
            return false;
        }
        if (this.manufacturer == null ? that.manufacturer != null : !this.manufacturer.equals(that.manufacturer)) {
            return false;
        }
        if (this.model == null ? that.model != null : !this.model.equals(that.model)) {
            return false;
        }
        if (this.osBuild == null ? that.osBuild != null : !this.osBuild.equals(that.osBuild)) {
            return false;
        }
        if (this.osName == null ? that.osName != null : !this.osName.equals(that.osName)) {
            return false;
        }
        if (this.osVersion == null ? that.osVersion != null : !this.osVersion.equals(that.osVersion)) {
            return false;
        }
        if (this.runTime == null ? that.runTime != null : !this.runTime.equals(that.runTime)) {
            return false;
        }
        if (this.size != null) {
            if (this.size.equals(that.size)) {
                return true;
            }
        } else if (that.size == null) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int result = this.osName != null ? this.osName.hashCode() : 0;
        return (((((((((((((((((((result * 31) + (this.osVersion != null ? this.osVersion.hashCode() : 0)) * 31) + (this.osBuild != null ? this.osBuild.hashCode() : 0)) * 31) + (this.model != null ? this.model.hashCode() : 0)) * 31) + (this.agentName != null ? this.agentName.hashCode() : 0)) * 31) + (this.agentVersion != null ? this.agentVersion.hashCode() : 0)) * 31) + (this.deviceId != null ? this.deviceId.hashCode() : 0)) * 31) + (this.manufacturer != null ? this.manufacturer.hashCode() : 0)) * 31) + (this.architecture != null ? this.architecture.hashCode() : 0)) * 31) + (this.runTime != null ? this.runTime.hashCode() : 0)) * 31) + (this.size != null ? this.size.hashCode() : 0);
    }
}

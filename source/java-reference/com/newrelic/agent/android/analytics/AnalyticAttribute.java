package com.newrelic.agent.android.analytics;

import com.newrelic.agent.android.util.SafeJsonPrimitive;
import com.newrelic.com.google.gson.JsonElement;
import com.newrelic.com.google.gson.JsonPrimitive;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class AnalyticAttribute {
    public static final String ACCOUNT_ID_ATTRIBUTE = "accountId";
    public static final String APP_ID_ATTRIBUTE = "appId";
    public static final String APP_INSTALL_ATTRIBUTE = "install";
    public static final String APP_NAME_ATTRIBUTE = "appName";
    public static final String APP_UPGRADE_ATTRIBUTE = "upgradeFrom";
    public static final int ATTRIBUTE_NAME_MAX_LENGTH = 256;
    public static final int ATTRIBUTE_VALUE_MAX_LENGTH = 4096;
    public static final String CAMPAIGN_ID_ATTRIBUTE = "campaignId";
    public static final String CARRIER_ATTRIBUTE = "carrier";
    public static final String DEVICE_MANUFACTURER_ATTRIBUTE = "deviceManufacturer";
    public static final String DEVICE_MODEL_ATTRIBUTE = "deviceModel";
    private static final String DOUBLE_ATTRIBUTE_FORMAT = "\"%s\"=%f";
    public static final String EVENT_CATEGORY_ATTRIBUTE = "category";
    public static final String EVENT_NAME_ATTRIBUTE = "name";
    public static final String EVENT_SESSION_ELAPSED_TIME_ATTRIBUTE = "sessionElapsedTime";
    public static final String EVENT_TIMESTAMP_ATTRIBUTE = "timestamp";
    public static final String EVENT_TIME_SINCE_LOAD_ATTRIBUTE = "timeSinceLoad";
    public static final String EVENT_TYPE_ATTRIBUTE = "eventType";
    public static final String EVENT_TYPE_ATTRIBUTE_MOBILE = "Mobile";
    public static final String INTERACTION_DURATION_ATTRIBUTE = "interactionDuration";
    public static final String MEM_USAGE_MB_ATTRIBUTE = "memUsageMb";
    public static final String NEW_RELIC_VERSION_ATTRIBUTE = "newRelicVersion";
    public static final String OS_MAJOR_VERSION_ATTRIBUTE = "osMajorVersion";
    public static final String OS_NAME_ATTRIBUTE = "osName";
    public static final String OS_VERSION_ATTRIBUTE = "osVersion";
    public static final String PURCHASE_EVENT_ATTRIBUTE = "Purchase";
    public static final String PURCHASE_EVENT_QUANTITY_ATTRIBUTE = "quantity";
    public static final String PURCHASE_EVENT_SKU_ATTRIBUTE = "sku";
    public static final String PURCHASE_EVENT_TOTAL_PRICE_ATTRIBUTE = "total";
    public static final String PURCHASE_EVENT_UNIT_PRICE_ATTRIBUTE = "unitprice";
    public static final String SESSION_DURATION_ATTRIBUTE = "sessionDuration";
    public static final String SESSION_ID_ATTRIBUTE = "sessionId";
    public static final String SESSION_REVENUE_ATTRIBUTE = "sessionRevenue";
    public static final String SESSION_TIME_SINCE_LOAD_ATTRIBUTE = "timeSinceLoad";
    private static final String STRING_ATTRIBUTE_FORMAT = "\"%s\"=\"%s\"";
    public static final String SUBSCRIPTION_ATTRIBUTE = "subscription";
    public static final String SUBSCRIPTION_REVENUE_ATTRIBUTE = "subscriptionRevenue";
    public static final String TYPE_ATTRIBUTE = "type";
    public static final String USERNAME_ATTRIBUTE = "username";
    public static final String USER_EMAIL_ATTRIBUTE = "email";
    public static final String USER_ID_ATTRIBUTE = "userId";
    public static final String UUID_ATTRIBUTE = "uuid";
    protected static Set<String> blackList = new HashSet<String>() { // from class: com.newrelic.agent.android.analytics.AnalyticAttribute.1
        {
            add(AnalyticAttribute.APP_INSTALL_ATTRIBUTE);
            add(AnalyticAttribute.APP_UPGRADE_ATTRIBUTE);
            add(AnalyticAttribute.SESSION_DURATION_ATTRIBUTE);
        }
    };
    private AttributeDataType attributeDataType;
    private float floatValue;
    private boolean isPersistent;
    private String name;
    private String stringValue;

    public enum AttributeDataType {
        VOID,
        STRING,
        FLOAT,
        BOOLEAN
    }

    protected AnalyticAttribute() {
        this.stringValue = null;
        this.floatValue = Float.NaN;
        this.isPersistent = false;
        this.attributeDataType = AttributeDataType.VOID;
    }

    public AnalyticAttribute(String name, String stringValue) {
        this(name, stringValue, true);
    }

    public AnalyticAttribute(String name, String stringValue, boolean isPersistent) {
        this.name = name;
        setStringValue(stringValue);
        this.isPersistent = isPersistent;
    }

    public AnalyticAttribute(String name, float floatValue) {
        this(name, floatValue, true);
    }

    public AnalyticAttribute(String name, float floatValue, boolean isPersistent) {
        this.name = name;
        setFloatValue(floatValue);
        this.isPersistent = isPersistent;
    }

    public AnalyticAttribute(String name, boolean boolValue) {
        this(name, boolValue, true);
    }

    public AnalyticAttribute(String name, boolean boolValue, boolean isPersistent) {
        this.name = name;
        setBooleanValue(boolValue);
        this.isPersistent = isPersistent;
    }

    public AnalyticAttribute(AnalyticAttribute clone) {
        this.name = clone.name;
        this.floatValue = clone.floatValue;
        this.stringValue = clone.stringValue;
        this.isPersistent = clone.isPersistent;
        this.attributeDataType = clone.attributeDataType;
    }

    public String getName() {
        return this.name;
    }

    public boolean isStringAttribute() {
        return this.attributeDataType == AttributeDataType.STRING;
    }

    public boolean isFloatAttribute() {
        return this.attributeDataType == AttributeDataType.FLOAT;
    }

    public boolean isBooleanAttribute() {
        return this.attributeDataType == AttributeDataType.BOOLEAN;
    }

    public String getStringValue() {
        if (this.attributeDataType == AttributeDataType.STRING) {
            return this.stringValue;
        }
        return null;
    }

    public void setStringValue(String stringValue) {
        this.stringValue = stringValue;
        this.floatValue = Float.NaN;
        this.attributeDataType = AttributeDataType.STRING;
    }

    public float getFloatValue() {
        if (this.attributeDataType == AttributeDataType.FLOAT) {
            return this.floatValue;
        }
        return Float.NaN;
    }

    public void setFloatValue(float floatValue) {
        this.floatValue = floatValue;
        this.stringValue = null;
        this.attributeDataType = AttributeDataType.FLOAT;
    }

    public boolean getBooleanValue() {
        if (this.attributeDataType == AttributeDataType.BOOLEAN) {
            return Boolean.valueOf(this.stringValue).booleanValue();
        }
        return false;
    }

    public void setBooleanValue(boolean boolValue) {
        this.stringValue = Boolean.toString(boolValue);
        this.floatValue = Float.NaN;
        this.attributeDataType = AttributeDataType.BOOLEAN;
    }

    public boolean isPersistent() {
        return this.isPersistent && !isAttributeBlacklisted(this);
    }

    public void setPersistent(boolean isPersistent) {
        this.isPersistent = isPersistent;
    }

    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || getClass() != o.getClass()) {
            return false;
        }
        AnalyticAttribute attribute = (AnalyticAttribute) o;
        return this.name.equals(attribute.name);
    }

    public int hashCode() {
        return this.name.hashCode();
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder("AnalyticAttribute{");
        stringBuilder.append("name='" + this.name + "'");
        switch (this.attributeDataType) {
            case STRING:
                stringBuilder.append(",stringValue='" + this.stringValue + "'");
                break;
            case FLOAT:
                stringBuilder.append(",floatValue='" + this.floatValue + "'");
                break;
            case BOOLEAN:
                stringBuilder.append(",booleanValue=" + Boolean.valueOf(this.stringValue).toString());
                break;
        }
        stringBuilder.append(",isPersistent=" + this.isPersistent);
        stringBuilder.append("}");
        return stringBuilder.toString();
    }

    public static boolean isAttributeBlacklisted(AnalyticAttribute attribute) {
        return blackList.contains(attribute.getName());
    }

    public AttributeDataType getAttributeDataType() {
        return this.attributeDataType;
    }

    public String valueAsString() {
        switch (this.attributeDataType) {
            case STRING:
                String value = this.stringValue;
                return value;
            case FLOAT:
                String value2 = Float.toString(this.floatValue);
                return value2;
            case BOOLEAN:
                String value3 = Boolean.valueOf(getBooleanValue()).toString();
                return value3;
            default:
                return null;
        }
    }

    public JsonElement asJsonElement() {
        switch (this.attributeDataType) {
            case STRING:
                JsonPrimitive jsonPrimitive = SafeJsonPrimitive.factory(getStringValue());
                return jsonPrimitive;
            case FLOAT:
                JsonPrimitive jsonPrimitive2 = SafeJsonPrimitive.factory(Float.valueOf(getFloatValue()));
                return jsonPrimitive2;
            case BOOLEAN:
                JsonPrimitive jsonPrimitive3 = SafeJsonPrimitive.factory(Boolean.valueOf(getBooleanValue()));
                return jsonPrimitive3;
            default:
                return null;
        }
    }
}

package com.amazon.insights.core.configuration;

/* JADX INFO: loaded from: classes2.dex */
public interface Configuration {
    Boolean getBoolean(String str);

    Double getDouble(String str);

    Integer getInt(String str);

    Long getLong(String str);

    Short getShort(String str);

    String getString(String str);

    Boolean optBoolean(String str, Boolean bool);

    Double optDouble(String str, Double d);

    Integer optInt(String str, Integer num);

    Long optLong(String str, Long l);

    Short optShort(String str, Short sh);

    String optString(String str, String str2);

    void refresh();
}

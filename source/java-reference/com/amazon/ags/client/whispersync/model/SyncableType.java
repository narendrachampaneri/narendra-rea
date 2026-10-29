package com.amazon.ags.client.whispersync.model;

/* JADX INFO: loaded from: classes2.dex */
public enum SyncableType {
    HIGHEST_NUMBER("HN"),
    LOWEST_NUMBER("LN"),
    LATEST_NUMBER("CN"),
    ACCUMULATING_NUMBER("AN"),
    HIGHEST_NUMBER_LIST("HNL"),
    LOWEST_NUMBER_LIST("LNL"),
    LATEST_NUMBER_LIST("CNL"),
    LATEST_STRING("CS"),
    LATEST_STRING_LIST("CSL"),
    STRING_SET("SS"),
    DEVELOPER_STRING("DS"),
    MAP("MAP");

    private final String jsonName;

    SyncableType(String jsonName) {
        this.jsonName = jsonName;
    }

    public String getJsonName() {
        return this.jsonName;
    }

    public static SyncableType fromString(String value) {
        SyncableType[] arr$ = values();
        for (SyncableType type : arr$) {
            if (type.jsonName.equalsIgnoreCase(value)) {
                return type;
            }
        }
        return null;
    }
}

package com.amazon.insights.core.util;

/* JADX INFO: loaded from: classes2.dex */
public class SDKInfo {
    private final String name;
    private final String version;

    public SDKInfo(String name, String version) {
        this.name = name;
        this.version = version;
    }

    public String getName() {
        return this.name;
    }

    public String getVersion() {
        return this.version;
    }

    public String toString() {
        return this.name + "-" + this.version;
    }
}

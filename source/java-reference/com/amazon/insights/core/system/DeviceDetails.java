package com.amazon.insights.core.system;

import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public interface DeviceDetails {
    Locale locale();

    String manufacturer();

    String model();

    String platform();

    String platformVersion();
}

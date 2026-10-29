package com.amazon.insights.core;

import com.amazon.insights.InsightsCredentials;
import com.amazon.insights.UserProfile;
import com.amazon.insights.core.configuration.Configuration;
import com.amazon.insights.core.http.HttpClient;
import com.amazon.insights.core.idresolver.Id;
import com.amazon.insights.core.system.System;
import com.amazon.insights.core.util.SDKInfo;
import com.amazon.insights.delivery.DeliveryClient;

/* JADX INFO: loaded from: classes2.dex */
public interface InsightsContext {
    Configuration getConfiguration();

    InsightsCredentials getCredentials();

    DeliveryClient getDeliveryClient();

    HttpClient getHttpClient();

    SDKInfo getSDKInfo();

    System getSystem();

    Id getUniqueId();

    UserProfile getUserProfile();

    void synchronize();
}

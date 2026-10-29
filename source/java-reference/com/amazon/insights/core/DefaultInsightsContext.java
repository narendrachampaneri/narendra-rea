package com.amazon.insights.core;

import android.content.Context;
import com.amazon.insights.InsightsCredentials;
import com.amazon.insights.InsightsProcessingService;
import com.amazon.insights.UserProfile;
import com.amazon.insights.core.configuration.Configuration;
import com.amazon.insights.core.configuration.HttpCachingConfiguration;
import com.amazon.insights.core.http.ClientInfoInterceptor;
import com.amazon.insights.core.http.DefaultHttpClient;
import com.amazon.insights.core.http.HttpClient;
import com.amazon.insights.core.http.LogInterceptor;
import com.amazon.insights.core.http.SDKInfoInterceptor;
import com.amazon.insights.core.http.SignatureInterceptor;
import com.amazon.insights.core.idresolver.Id;
import com.amazon.insights.core.idresolver.SharedPrefsUniqueIdService;
import com.amazon.insights.core.idresolver.UniqueIdService;
import com.amazon.insights.core.system.AndroidSystem;
import com.amazon.insights.core.system.System;
import com.amazon.insights.core.util.SDKInfo;
import com.amazon.insights.delivery.DefaultDeliveryClient;
import com.amazon.insights.delivery.DeliveryClient;
import com.amazon.insights.profile.DefaultUserProfile;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class DefaultInsightsContext implements InsightsContext {
    private final Configuration configuration;
    private final InsightsCredentials credentials;
    private final DeliveryClient deliveryClient;
    private final SDKInfo sdkInfo;
    private final System system;
    private final UserProfile userProfile;
    private final UniqueIdService uniqueIdService = SharedPrefsUniqueIdService.newInstance();
    private Id uniqueId = this.uniqueIdService.getUniqueId(this);
    private final HttpClient httpClient = new DefaultHttpClient();

    public static InsightsContext newInstance(InsightsCredentials credentials, Context context, SDKInfo sdkInfo, boolean allowWanDelivery, Map<String, String> configurationSettings) {
        return new DefaultInsightsContext(credentials, context, new DefaultUserProfile(), sdkInfo, allowWanDelivery, configurationSettings);
    }

    public DefaultInsightsContext(InsightsCredentials credentials, Context context, UserProfile userProfile, SDKInfo sdkInfo, boolean allowWanDelivery, Map<String, String> configurationSettings) {
        this.credentials = credentials;
        this.userProfile = userProfile;
        this.sdkInfo = sdkInfo;
        this.system = new AndroidSystem(context, credentials);
        this.httpClient.addInterceptor(new SDKInfoInterceptor(sdkInfo));
        this.httpClient.addInterceptor(new ClientInfoInterceptor(context));
        this.httpClient.addInterceptor(new SignatureInterceptor(credentials.getPrivateKey()));
        this.httpClient.addInterceptor(new LogInterceptor());
        this.configuration = HttpCachingConfiguration.newInstance(this, configurationSettings);
        this.deliveryClient = DefaultDeliveryClient.newInstance(this, allowWanDelivery);
        InsightsProcessingService.cancelPendingIntent(context, InsightsProcessingService.ACTION_SUBMIT_MEASUREMENTS);
        InsightsProcessingService.cancelPendingIntent(context, InsightsProcessingService.ACTION_SYNC_CONFIGURATION);
    }

    @Override // com.amazon.insights.core.InsightsContext
    public InsightsCredentials getCredentials() {
        return this.credentials;
    }

    @Override // com.amazon.insights.core.InsightsContext
    public Configuration getConfiguration() {
        return this.configuration;
    }

    @Override // com.amazon.insights.core.InsightsContext
    public Id getUniqueId() {
        return this.uniqueId;
    }

    @Override // com.amazon.insights.core.InsightsContext
    public HttpClient getHttpClient() {
        return this.httpClient;
    }

    @Override // com.amazon.insights.core.InsightsContext
    public SDKInfo getSDKInfo() {
        return this.sdkInfo;
    }

    @Override // com.amazon.insights.core.InsightsContext
    public UserProfile getUserProfile() {
        return this.userProfile;
    }

    @Override // com.amazon.insights.core.InsightsContext
    public System getSystem() {
        return this.system;
    }

    @Override // com.amazon.insights.core.InsightsContext
    public void synchronize() {
        this.uniqueId = this.uniqueIdService.getUniqueId(this);
        this.configuration.refresh();
    }

    @Override // com.amazon.insights.core.InsightsContext
    public DeliveryClient getDeliveryClient() {
        return this.deliveryClient;
    }
}

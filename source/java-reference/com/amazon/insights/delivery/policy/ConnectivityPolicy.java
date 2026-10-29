package com.amazon.insights.delivery.policy;

import com.amazon.insights.core.InsightsContext;
import com.amazon.insights.core.system.Connectivity;

/* JADX INFO: loaded from: classes2.dex */
public class ConnectivityPolicy implements DeliveryPolicy {
    private static final boolean ALLOW_WAN_DEFAULT = true;
    private static final String ALLOW_WAN_KEY = "allowWANEventDelivery";
    private final Connectivity connectivity;
    private final InsightsContext context;
    private final boolean isWanAllowed;

    public ConnectivityPolicy(InsightsContext context, boolean isWanAllowed) {
        this.context = context;
        this.connectivity = context.getSystem().getConnectivity();
        this.isWanAllowed = isWanAllowed;
    }

    @Override // com.amazon.insights.delivery.policy.DeliveryPolicy
    public boolean isAllowed() {
        boolean canTrasmitOnWAN = this.context.getConfiguration().optBoolean(ALLOW_WAN_KEY, true).booleanValue() && this.isWanAllowed;
        if (this.connectivity.isConnected()) {
            return this.connectivity.hasWifi() || this.connectivity.hasWired() || (this.connectivity.hasWAN() && canTrasmitOnWAN);
        }
        return false;
    }

    @Override // com.amazon.insights.delivery.policy.DeliveryPolicy
    public void handleDeliveryAttempt(boolean successful) {
    }
}

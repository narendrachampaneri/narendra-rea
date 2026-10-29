package com.amazon.insights.delivery.policy;

/* JADX INFO: loaded from: classes2.dex */
public interface DeliveryPolicy {
    void handleDeliveryAttempt(boolean z);

    boolean isAllowed();
}

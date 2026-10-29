package com.amazon.insights.delivery.policy;

/* JADX INFO: loaded from: classes2.dex */
public interface DeliveryPolicyFactory {
    DeliveryPolicy newBackgroundSubmissionTimePolicy();

    DeliveryPolicy newConnectivityPolicy();

    DeliveryPolicy newForceSubmissionTimePolicy();
}

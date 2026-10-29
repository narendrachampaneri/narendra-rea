package com.amazon.insights.delivery.policy;

import com.amazon.insights.core.InsightsContext;

/* JADX INFO: loaded from: classes2.dex */
public class DefaultDeliveryPolicyFactory implements DeliveryPolicyFactory {
    private static final long BG_SUBMISSION_WAIT_TIME_SEC = 0;
    private static final long FORCE_SUBMISSION_WAIT_TIME_SEC = 60;
    private final long backgroundSubmissionInterval;
    private final InsightsContext context;
    private final long forceSubmissionInterval;
    private final boolean isWanAllowed;

    public DefaultDeliveryPolicyFactory(InsightsContext context, boolean isWanAllowed) {
        this.context = context;
        this.isWanAllowed = isWanAllowed;
        this.forceSubmissionInterval = context.getConfiguration().optLong("forceSubmissionWaitTime", 60L).longValue() * 1000;
        this.backgroundSubmissionInterval = context.getConfiguration().optLong("backgroundSubmissionWaitTime", 0L).longValue() * 1000;
    }

    @Override // com.amazon.insights.delivery.policy.DeliveryPolicyFactory
    public DeliveryPolicy newConnectivityPolicy() {
        return new ConnectivityPolicy(this.context, this.isWanAllowed);
    }

    @Override // com.amazon.insights.delivery.policy.DeliveryPolicyFactory
    public DeliveryPolicy newForceSubmissionTimePolicy() {
        return new SubmissionTimePolicy(this.context, Long.valueOf(this.forceSubmissionInterval));
    }

    @Override // com.amazon.insights.delivery.policy.DeliveryPolicyFactory
    public DeliveryPolicy newBackgroundSubmissionTimePolicy() {
        return new SubmissionTimePolicy(this.context, Long.valueOf(this.backgroundSubmissionInterval));
    }
}

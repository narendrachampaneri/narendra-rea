package com.amazon.insights.delivery.policy;

import com.amazon.insights.core.InsightsContext;

/* JADX INFO: loaded from: classes2.dex */
public class SubmissionTimePolicy implements DeliveryPolicy {
    static final String SUBMITTED_TIME_KEY = "SubmissionTimePolicy.submissionTime";
    private final InsightsContext context;
    private Long lastSubmittedTime;
    private final Long waitInterval;

    public SubmissionTimePolicy(InsightsContext context, Long waitInterval) {
        this.context = context;
        this.waitInterval = waitInterval;
        this.lastSubmittedTime = Long.valueOf(context.getSystem().getPreferences().getLong(SUBMITTED_TIME_KEY, 0L));
    }

    @Override // com.amazon.insights.delivery.policy.DeliveryPolicy
    public boolean isAllowed() {
        long timeSinceSubmission = System.currentTimeMillis() - this.lastSubmittedTime.longValue();
        return timeSinceSubmission > this.waitInterval.longValue();
    }

    @Override // com.amazon.insights.delivery.policy.DeliveryPolicy
    public void handleDeliveryAttempt(boolean successful) {
        if (successful) {
            this.lastSubmittedTime = Long.valueOf(System.currentTimeMillis());
            this.context.getSystem().getPreferences().putLong(SUBMITTED_TIME_KEY, this.lastSubmittedTime.longValue());
        }
    }
}

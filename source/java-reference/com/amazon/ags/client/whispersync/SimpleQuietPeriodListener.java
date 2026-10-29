package com.amazon.ags.client.whispersync;

/* JADX INFO: loaded from: classes2.dex */
public class SimpleQuietPeriodListener implements QuietPeriodListener {
    private final long quietPeriodDuration;
    private long quietPeriodEnd = 0;

    public SimpleQuietPeriodListener(long quietPeriodDuration) {
        this.quietPeriodDuration = quietPeriodDuration;
    }

    @Override // com.amazon.ags.client.whispersync.QuietPeriodListener
    public void breakSilence() {
        this.quietPeriodEnd = System.currentTimeMillis() + this.quietPeriodDuration;
    }

    @Override // com.amazon.ags.client.whispersync.QuietPeriodListener
    public void blockUntilQuiet() {
        while (true) {
            long napTime = this.quietPeriodEnd - System.currentTimeMillis();
            if (napTime > 0) {
                try {
                    Thread.sleep(napTime);
                } catch (InterruptedException e) {
                    Thread.currentThread().interrupt();
                }
            } else {
                return;
            }
        }
    }
}

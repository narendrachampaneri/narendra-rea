package com.amazon.device.ads;

import java.util.Timer;
import java.util.TimerTask;

/* JADX INFO: loaded from: classes.dex */
class AdTimer {
    private Timer timer;

    AdTimer() {
    }

    public void cancelTimer() {
        if (this.timer != null) {
            this.timer.cancel();
        }
    }

    public void restartTimer() {
        cancelTimer();
        this.timer = new Timer();
    }

    public void scheduleTask(TimerTask timerTask, long time) {
        this.timer.schedule(timerTask, time);
    }
}

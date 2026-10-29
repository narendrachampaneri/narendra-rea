package com.mopub.common.event;

import com.mopub.common.logging.MoPubLog;

/* JADX INFO: loaded from: classes.dex */
class LogCatEventRecorder implements EventRecorder {
    LogCatEventRecorder() {
    }

    @Override // com.mopub.common.event.EventRecorder
    public void record(BaseEvent baseEvent) {
        MoPubLog.d(baseEvent.toString());
    }
}

package com.vungle.publisher;

import com.vungle.publisher.async.ScheduledPriorityExecutor;
import javax.inject.Inject;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public abstract class bf {

    @Inject
    public ScheduledPriorityExecutor a;

    public abstract Runnable a();

    public ScheduledPriorityExecutor.b b() {
        return ScheduledPriorityExecutor.b.otherTask;
    }

    public final void a(long j) {
        this.a.a(a(), b(), j);
    }
}

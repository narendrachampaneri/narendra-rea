package com.vungle.publisher;

import android.content.Context;
import com.vungle.publisher.async.ScheduledPriorityExecutor;
import com.vungle.publisher.db.model.LoggedException;
import javax.inject.Inject;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public abstract class cs {

    @Inject
    public Context c;

    @Inject
    public LoggedException.Factory d;

    @Inject
    public ScheduledPriorityExecutor e;
}

package com.vungle.publisher.protocol;

import com.vungle.publisher.async.ScheduledPriorityExecutor;
import com.vungle.publisher.bf;
import javax.inject.Inject;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
@Singleton
public class RequestConfigAsync extends bf {

    @Inject
    RequestConfigRunnable b;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.vungle.publisher.bf
    public final ScheduledPriorityExecutor.b b() {
        return ScheduledPriorityExecutor.b.requestConfig;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.vungle.publisher.bf
    public final Runnable a() {
        return this.b;
    }

    /* JADX INFO: compiled from: vungle */
    @Singleton
    static class RequestConfigRunnable implements Runnable {

        @Inject
        ProtocolHttpGateway a;

        RequestConfigRunnable() {
        }

        @Override // java.lang.Runnable
        public void run() {
            this.a.a();
        }
    }
}

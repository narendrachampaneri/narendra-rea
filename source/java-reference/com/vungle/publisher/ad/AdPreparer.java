package com.vungle.publisher.ad;

import com.vungle.log.Logger;
import com.vungle.publisher.ab;
import com.vungle.publisher.ad.prepare.PrepareAdRunnable;
import com.vungle.publisher.ad.prepare.PrepareViewableRunnable;
import com.vungle.publisher.async.ScheduledPriorityExecutor;
import com.vungle.publisher.by;
import com.vungle.publisher.n;
import dagger.Lazy;
import javax.inject.Inject;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
@Singleton
public class AdPreparer {

    @Inject
    PrepareAdRunnable.Factory a;

    @Inject
    ViewablePreparationListener b;

    @Inject
    ScheduledPriorityExecutor c;

    AdPreparer() {
    }

    public final void a(String str) {
        Logger.d(Logger.PREPARE_TAG, "prepare ad request: " + str);
        this.b.registerOnce();
        ScheduledPriorityExecutor scheduledPriorityExecutor = this.c;
        PrepareAdRunnable prepareAdRunnable = this.a.a.get();
        prepareAdRunnable.i = str;
        scheduledPriorityExecutor.a(prepareAdRunnable, ScheduledPriorityExecutor.b.prepareLocalAd);
    }

    /* JADX INFO: compiled from: vungle */
    @Singleton
    static class ViewablePreparationListener extends by {

        @Inject
        ScheduledPriorityExecutor a;

        @Inject
        PrepareViewableRunnable.Factory b;

        @Inject
        Lazy<AdPreparer> c;

        ViewablePreparationListener() {
        }

        public void onEvent(n downloadEvent) {
            this.a.a(this.b.a(downloadEvent.a, downloadEvent.b), ScheduledPriorityExecutor.b.prepareLocalViewable);
        }

        public void onEvent(ab prepareSuccessEvent) {
            this.c.get().a(prepareSuccessEvent.a);
        }
    }
}

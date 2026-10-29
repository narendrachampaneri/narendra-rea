package com.mopub.common.event;

import android.support.annotation.NonNull;
import com.mopub.common.Preconditions;
import com.mopub.common.VisibleForTesting;
import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public class EventSampler {

    @NonNull
    private Random mRandom;

    public EventSampler() {
        this(new Random());
    }

    @VisibleForTesting
    public EventSampler(@NonNull Random random) {
        this.mRandom = random;
    }

    boolean sample(@NonNull BaseEvent baseEvent) {
        Preconditions.checkNotNull(baseEvent);
        return this.mRandom.nextDouble() < baseEvent.getSamplingRate();
    }
}

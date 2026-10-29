package com.vungle.publisher.protocol.message;

import dagger.internal.Binding;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class RequestAdResponse$ThirdPartyAdTracking$PlayCheckpoint$PlayPercentAscendingComparator$$InjectAdapter extends Binding<RequestAdResponse.ThirdPartyAdTracking.PlayCheckpoint.PlayPercentAscendingComparator> implements Provider<RequestAdResponse.ThirdPartyAdTracking.PlayCheckpoint.PlayPercentAscendingComparator> {
    public RequestAdResponse$ThirdPartyAdTracking$PlayCheckpoint$PlayPercentAscendingComparator$$InjectAdapter() {
        super("com.vungle.publisher.protocol.message.RequestAdResponse$ThirdPartyAdTracking$PlayCheckpoint$PlayPercentAscendingComparator", "members/com.vungle.publisher.protocol.message.RequestAdResponse$ThirdPartyAdTracking$PlayCheckpoint$PlayPercentAscendingComparator", true, RequestAdResponse.ThirdPartyAdTracking.PlayCheckpoint.PlayPercentAscendingComparator.class);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final RequestAdResponse.ThirdPartyAdTracking.PlayCheckpoint.PlayPercentAscendingComparator get() {
        return new RequestAdResponse.ThirdPartyAdTracking.PlayCheckpoint.PlayPercentAscendingComparator();
    }
}

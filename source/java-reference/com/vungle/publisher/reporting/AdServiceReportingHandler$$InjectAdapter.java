package com.vungle.publisher.reporting;

import dagger.internal.Binding;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
public final class AdServiceReportingHandler$$InjectAdapter extends Binding<AdServiceReportingHandler> implements Provider<AdServiceReportingHandler> {
    public AdServiceReportingHandler$$InjectAdapter() {
        super("com.vungle.publisher.reporting.AdServiceReportingHandler", "members/com.vungle.publisher.reporting.AdServiceReportingHandler", true, AdServiceReportingHandler.class);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final AdServiceReportingHandler get() {
        return new AdServiceReportingHandler();
    }
}

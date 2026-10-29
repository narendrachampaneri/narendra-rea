package com.vungle.publisher.display.view;

import dagger.internal.Binding;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class AlertDialogFactory$$InjectAdapter extends Binding<AlertDialogFactory> implements Provider<AlertDialogFactory> {
    public AlertDialogFactory$$InjectAdapter() {
        super("com.vungle.publisher.display.view.AlertDialogFactory", "members/com.vungle.publisher.display.view.AlertDialogFactory", true, AlertDialogFactory.class);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final AlertDialogFactory get() {
        return new AlertDialogFactory();
    }
}

package com.vungle.publisher.event;

import com.vungle.publisher.dj;
import javax.inject.Inject;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
@Singleton
public class EventBus {
    public final dj a = new dj();

    @Inject
    EventBus() {
    }

    public final void a(Object obj) {
        this.a.b(obj);
    }

    public final void b(Object obj) {
        this.a.a(obj, "onEvent", false);
    }
}

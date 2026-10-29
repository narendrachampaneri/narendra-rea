package com.vungle.publisher.env;

import android.content.Context;
import android.content.SharedPreferences;
import com.vungle.log.Logger;
import com.vungle.publisher.EventListener;
import com.vungle.publisher.ca;
import com.vungle.publisher.co;
import com.vungle.publisher.de;
import com.vungle.publisher.event.ClientEventListenerAdapter;
import com.vungle.publisher.inject.annotations.EnvSharedPreferences;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import javax.inject.Inject;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
@Singleton
public class SdkConfig {
    public boolean b;
    public int d;
    public long f;
    public long g;

    @Inject
    ClientEventListenerAdapter.Factory h;

    @Inject
    Context i;

    @Inject
    @EnvSharedPreferences
    public SharedPreferences j;
    public final Map<EventListener, ca> a = new HashMap();
    public final Set<co> c = EnumSet.noneOf(co.class);
    public String e = "isExceptionReportingEnabled";

    SdkConfig() {
    }

    public final void a(EventListener... eventListenerArr) {
        if (eventListenerArr != null) {
            for (EventListener eventListener : eventListenerArr) {
                if (eventListener == null) {
                    Logger.d(Logger.EVENT_TAG, "ignoring add null event listener");
                } else if (!this.a.containsKey(eventListener)) {
                    Logger.d(Logger.EVENT_TAG, "adding event listener " + eventListener);
                    ClientEventListenerAdapter clientEventListenerAdapter = this.h.a.get();
                    clientEventListenerAdapter.a = eventListener;
                    this.a.put(eventListener, clientEventListenerAdapter);
                    clientEventListenerAdapter.registerSticky();
                } else {
                    Logger.d(Logger.EVENT_TAG, "already added event listener " + eventListener);
                }
            }
        }
    }

    public final void a() {
        Iterator<ca> it = this.a.values().iterator();
        while (it.hasNext()) {
            it.next().unregister();
        }
        this.a.clear();
    }

    public final void a(co... coVarArr) {
        Logger.d(Logger.CONFIG_TAG, "setting ad streaming connectivity types " + de.b(coVarArr));
        this.c.clear();
        if (coVarArr != null) {
            for (co coVar : coVarArr) {
                if (coVar != null) {
                    this.c.add(coVar);
                }
            }
        }
    }

    public final boolean b() {
        Logger.d(Logger.CONFIG_TAG, "isExceptionReportingEnabled: " + this.j.getBoolean(this.e, false));
        return this.j.getBoolean(this.e, false);
    }

    public final void a(long j) {
        Logger.d(Logger.CONFIG_TAG, "setting last app fingerprint timestamp to " + j);
        this.f = j;
    }
}

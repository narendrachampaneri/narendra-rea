package com.jirbo.adcolony;

import android.support.v7.media.MediaRouteProviderProtocol;
import com.newrelic.agent.android.analytics.AnalyticAttribute;
import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
class af implements Serializable {
    String a;
    int b;
    int c;
    int d;

    af() {
        this.a = "";
    }

    af(String str) {
        this.a = "";
        this.a = str;
    }

    boolean a(ADCData.g gVar) {
        if (gVar == null) {
            return false;
        }
        this.a = gVar.a(AnalyticAttribute.UUID_ATTRIBUTE, MediaRouteProviderProtocol.SERVICE_DATA_ERROR);
        this.b = gVar.g("skipped_plays");
        this.c = gVar.g("play_order_index");
        return true;
    }

    ADCData.g a() {
        ADCData.g gVar = new ADCData.g();
        gVar.b(AnalyticAttribute.UUID_ATTRIBUTE, this.a);
        gVar.b("skipped_plays", this.b);
        gVar.b("play_order_index", this.c);
        return gVar;
    }
}

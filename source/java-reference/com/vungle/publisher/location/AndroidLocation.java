package com.vungle.publisher.location;

import android.location.Location;
import com.vungle.log.Logger;
import com.vungle.publisher.cj;
import com.vungle.publisher.cn;
import java.util.Locale;
import java.util.TimeZone;
import javax.inject.Inject;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
@Singleton
public class AndroidLocation implements cn {

    @Inject
    cj a;

    @Override // com.vungle.publisher.cn
    public final String a() {
        try {
            return Locale.getDefault().getISO3Language();
        } catch (Exception e) {
            Logger.w(Logger.LOCATION_TAG, "error getting ISO 3-letter language code", e);
            return "";
        }
    }

    @Override // com.vungle.publisher.cn
    public final Location b() {
        if (this.a == null) {
            Logger.d(Logger.LOCATION_TAG, "cannot provide detailed location - null detailed location provider");
            return null;
        }
        return this.a.b();
    }

    @Override // com.vungle.publisher.cn
    public final String c() {
        return TimeZone.getDefault().getID();
    }
}

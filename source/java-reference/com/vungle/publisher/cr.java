package com.vungle.publisher;

import com.vungle.log.Logger;
import com.vungle.publisher.async.ScheduledPriorityExecutor;
import com.vungle.publisher.db.model.Ad;
import com.vungle.publisher.db.model.EventTracking;
import com.vungle.publisher.net.http.TrackEventHttpTransactionFactory;
import java.util.Map;
import javax.inject.Inject;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public class cr extends cs {

    @Inject
    public TrackEventHttpTransactionFactory a;

    @Inject
    public ScheduledPriorityExecutor b;

    public final void a(final Ad<?, ?, ?> ad, final EventTracking.a aVar, final Map<String, String> map, String... strArr) {
        if (strArr != null) {
            for (final String str : strArr) {
                if (str != null) {
                    this.b.a(new Runnable() { // from class: com.vungle.publisher.cr.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            try {
                                cr.this.a.a(ad, aVar, cr.a(str, map)).a();
                            } catch (Exception e) {
                                Logger.w(Logger.NETWORK_TAG, "error sending " + aVar + " event", e);
                            }
                        }
                    }, ScheduledPriorityExecutor.b.externalNetworkRequest);
                }
            }
        }
    }

    static String a(String str, Map<String, String> map) {
        if (map != null) {
            StringBuilder sb = new StringBuilder(str);
            for (Map.Entry<String, String> entry : map.entrySet()) {
                String key = entry.getKey();
                int i = -1;
                while (true) {
                    int iIndexOf = sb.indexOf(key, i);
                    if (iIndexOf > 0) {
                        sb.replace(iIndexOf, key.length() + iIndexOf, entry.getValue() == null ? "" : entry.getValue());
                        i = iIndexOf;
                    }
                }
            }
            return sb.toString();
        }
        return str;
    }
}

package com.vungle.publisher.protocol;

import com.vungle.log.Logger;
import com.vungle.publisher.db.model.EventTrackingHttpLogEntry;
import java.util.List;
import javax.inject.Inject;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
@Singleton
class EventTrackingHttpLogEntryDeleteDelegate {

    @Inject
    EventTrackingHttpLogEntry.Factory a;

    EventTrackingHttpLogEntryDeleteDelegate() {
    }

    final int a(List<EventTrackingHttpLogEntry> list) {
        int size = list == null ? 0 : list.size();
        if (size == 0) {
            Logger.d(Logger.REPORT_TAG, "no event tracking HTTP log entries to delete");
        } else {
            Logger.d(Logger.REPORT_TAG, "deleting " + size + " event tracking HTTP log entries");
        }
        return this.a.a((List) list);
    }
}

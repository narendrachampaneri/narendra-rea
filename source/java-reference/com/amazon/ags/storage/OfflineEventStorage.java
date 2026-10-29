package com.amazon.ags.storage;

import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public interface OfflineEventStorage {
    List<OfflineEventJSONTuple> getAllEvents() throws OfflineEventException;

    JSONObject getEvent(OfflineEventId offlineEventId) throws OfflineEventException;

    int getSize();

    OfflineEventId peekEvent();

    void removeAllEvents();

    void removeEvent(OfflineEventId offlineEventId);

    OfflineEventId storeEvent(JSONObject jSONObject) throws OfflineEventException;

    public static class OfflineEventJSONTuple {
        private final JSONObject event;
        private final OfflineEventId id;

        public OfflineEventJSONTuple(OfflineEventId id, JSONObject event) {
            this.event = event;
            this.id = id;
        }

        public OfflineEventId getEventId() {
            return this.id;
        }

        public JSONObject getJSONOfflineEvent() {
            return this.event;
        }
    }
}

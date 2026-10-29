package com.amazon.ags.storage;

/* JADX INFO: loaded from: classes2.dex */
public interface OfflineEventManager {
    OfflineEventTuple getNextEvent() throws OfflineEventException;

    void onPause();

    void onResume();

    void processOfflineEvent(OfflineEventTuple offlineEventTuple) throws OfflineEventException;

    void removeEvent(OfflineEventId offlineEventId);

    void removeNextEvent() throws OfflineEventException;

    OfflineEventId submitEvent(OfflineEvent offlineEvent) throws OfflineEventException;

    public static class OfflineEventTuple {
        private final OfflineEvent event;
        private final OfflineEventId id;

        public OfflineEventTuple(OfflineEventId id, OfflineEvent event) {
            this.event = event;
            this.id = id;
        }

        public OfflineEventId getEventId() {
            return this.id;
        }

        public OfflineEvent getOfflineEvent() {
            return this.event;
        }
    }
}

package com.amazon.ags.storage;

import android.util.Log;
import com.amazon.ags.constants.BindingKeys;
import com.amazon.ags.constants.ServiceActionCode;
import com.amazon.ags.html5.service.ServiceHelper;
import com.amazon.ags.html5.util.NetworkUtil;
import java.util.UUID;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class AGSOfflineEventManager implements OfflineEventManager {
    private static final String TAG = "GC_" + AGSOfflineEventManager.class.getSimpleName();
    private final NetworkUtil networkUtil;
    private final ServiceHelper serviceHelper;
    protected final SQLiteOfflineEventStorage storage;

    public AGSOfflineEventManager(SQLiteOfflineEventStorage storage, NetworkUtil networkUtil, ServiceHelper serviceHelper) {
        this.networkUtil = networkUtil;
        if (storage == null) {
            throw new IllegalArgumentException("storage must be non-null.");
        }
        this.storage = storage;
        this.serviceHelper = serviceHelper;
    }

    @Override // com.amazon.ags.storage.OfflineEventManager
    public void onPause() {
    }

    @Override // com.amazon.ags.storage.OfflineEventManager
    public void onResume() {
    }

    @Override // com.amazon.ags.storage.OfflineEventManager
    public OfflineEventId submitEvent(OfflineEvent event) throws OfflineEventException {
        if (event == null) {
            throw new IllegalArgumentException("event must be non-null.");
        }
        try {
            JSONObject json = event.toJson();
            OfflineEventId id = this.storage.storeEvent(json);
            Log.d(TAG, "submitEvent() complete. Event ID: " + id.getId());
            return id;
        } catch (Exception e) {
            Log.e(TAG, "submitEvent() - Failed to convert event to JSON due to error", e);
            throw new OfflineEventException(e);
        }
    }

    @Override // com.amazon.ags.storage.OfflineEventManager
    public void removeNextEvent() throws OfflineEventException {
        OfflineEventManager.OfflineEventTuple offlineEventTuple = getNextEvent();
        if (offlineEventTuple != null) {
            removeEvent(offlineEventTuple.getEventId());
        }
    }

    @Override // com.amazon.ags.storage.OfflineEventManager
    public OfflineEventManager.OfflineEventTuple getNextEvent() throws OfflineEventException {
        OfflineEventId nextId = this.storage.peekEvent();
        if (nextId == OfflineEventId.Invalid) {
            return null;
        }
        Log.d(TAG, "Processing event ID: " + nextId.getId());
        try {
            JSONObject json = this.storage.getEvent(nextId);
            OfflineEvent event = new OfflineEvent(json);
            OfflineEventManager.OfflineEventTuple eventTuple = new OfflineEventManager.OfflineEventTuple(nextId, event);
            return eventTuple;
        } catch (OfflineEventException e) {
            Log.e(TAG, "Failed to process event ID: " + nextId.getId() + ". Removing event. Error: " + e.toString());
            this.storage.removeEvent(nextId);
            throw e;
        } catch (Exception e2) {
            Log.e(TAG, "Error occurred while getting the next event", e2);
            return null;
        }
    }

    @Override // com.amazon.ags.storage.OfflineEventManager
    public void removeEvent(OfflineEventId id) {
        if (id == null) {
            throw new IllegalArgumentException("id must be non-null.");
        }
        Log.d(TAG, "submitEvent() called with event ID: " + id.getId());
        this.storage.removeEvent(id);
    }

    @Override // com.amazon.ags.storage.OfflineEventManager
    public void processOfflineEvent(final OfflineEventManager.OfflineEventTuple eventTuple) throws OfflineEventException {
        OfflineEvent event;
        if (eventTuple != null && (event = eventTuple.getOfflineEvent()) != null) {
            try {
                JSONObject request = new JSONObject();
                request.put(ServiceActionCode.ACTION_CODE_KEY, 34);
                request.put("jsonEvent", event.toJson());
                if (!request.has(BindingKeys.REQUEST_ID_KEY)) {
                    request.put(BindingKeys.REQUEST_ID_KEY, UUID.randomUUID().toString());
                }
                OfflineEventJSONRequest processEventRequest = new OfflineEventJSONRequest(request, new OfflineEventJSONRequest.OfflineEventJSONCallback() { // from class: com.amazon.ags.storage.AGSOfflineEventManager.1
                    @Override // com.amazon.ags.storage.OfflineEventJSONRequest.OfflineEventJSONCallback
                    public void onSuccess() {
                        AGSOfflineEventManager.this.removeEvent(eventTuple.getEventId());
                    }

                    @Override // com.amazon.ags.storage.OfflineEventJSONRequest.OfflineEventJSONCallback
                    public void onRecoverableError() {
                    }

                    @Override // com.amazon.ags.storage.OfflineEventJSONRequest.OfflineEventJSONCallback
                    public void onUnrecoverableError() {
                        AGSOfflineEventManager.this.removeEvent(eventTuple.getEventId());
                    }
                });
                this.serviceHelper.handleRequestAsync(processEventRequest);
            } catch (Exception e) {
                Log.e(TAG, "Exception encountered while handling offline event", e);
            }
        }
    }

    public NetworkUtil getNetworkUtil() {
        return this.networkUtil;
    }
}

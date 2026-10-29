package com.amazon.ags.client.whispersync.storage;

import android.util.Log;
import com.amazon.ags.AGSClientException;
import com.amazon.ags.AGSServiceException;
import com.amazon.ags.client.whispersync.InternalGameDataMap;
import com.amazon.ags.client.whispersync.clock.GameDataServiceSyncedClock;
import com.amazon.ags.client.whispersync.marshaller.GameDataMarshaller;
import com.amazon.ags.client.whispersync.network.WhispersyncHttpClient;
import com.amazon.ags.client.whispersync.network.WhispersyncRequest;
import com.amazon.ags.client.whispersync.network.WhispersyncResponse;
import com.amazon.ags.html5.comm.ConnectionException;

/* JADX INFO: loaded from: classes2.dex */
public class CloudStorage implements RemoteStorage {
    private static final String TAG = "GC_Whispersync";
    private final GameDataMarshaller marshaller;
    private final GameDataServiceSyncedClock serviceSyncedClock;
    private final WhispersyncHttpClient whispersyncHttpClient;

    public CloudStorage(WhispersyncHttpClient whispersyncHttpClient, GameDataMarshaller marshaller, GameDataServiceSyncedClock serviceSyncedClock) {
        this.whispersyncHttpClient = whispersyncHttpClient;
        this.marshaller = marshaller;
        this.serviceSyncedClock = serviceSyncedClock;
    }

    @Override // com.amazon.ags.client.whispersync.storage.RemoteStorage
    public GameData save(GameData gameData) throws AGSServiceException, ConnectionException, AGSClientException {
        String document = this.marshaller.composeForService(gameData.getGameDataMap());
        Log.v(TAG, "Uploading document to cloud: [" + document + "]");
        WhispersyncRequest whispersyncRequest = new WhispersyncRequest(document, gameData.getVersionId());
        WhispersyncResponse response = this.whispersyncHttpClient.postWhisperData(whispersyncRequest);
        this.serviceSyncedClock.synchronizeClock(response.getDate());
        String cloudMergedDocument = response.getDocument();
        InternalGameDataMap newMap = null;
        if (cloudMergedDocument != null) {
            newMap = this.marshaller.parse(cloudMergedDocument);
        }
        String newVersionId = response.getVersionId();
        return new GameData(newMap, newVersionId);
    }

    @Override // com.amazon.ags.client.whispersync.storage.RemoteStorage
    public GameData retrieve(String priorVersionId) throws AGSServiceException, ConnectionException, AGSClientException {
        WhispersyncResponse whispersyncResponse = this.whispersyncHttpClient.getWhisperData(priorVersionId);
        String document = whispersyncResponse.getDocument();
        String versionId = whispersyncResponse.getVersionId();
        this.serviceSyncedClock.synchronizeClock(whispersyncResponse.getDate());
        InternalGameDataMap gameDataMap = null;
        if (document != null) {
            Log.d(TAG, "Received document [" + document + "] from the service, calling the marshaller");
            gameDataMap = this.marshaller.parse(document);
        } else {
            Log.d(TAG, "Received an empty document from the service");
        }
        Log.d(TAG, "Finished retrieving Whispersync data from the cloud");
        return new GameData(gameDataMap, versionId);
    }
}

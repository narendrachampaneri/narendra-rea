package com.amazon.ags.client.whispersync.network;

import android.util.Log;
import com.amazon.ags.AGSServiceException;
import com.amazon.ags.html5.comm.AGSHttpGet;
import com.amazon.ags.html5.comm.AGSHttpPost;
import com.amazon.ags.html5.comm.ConnectionException;
import com.amazon.ags.html5.comm.NetworkClient;
import com.amazon.ags.html5.comm.ServiceResponse;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public class WhispersyncHttpClientImpl implements WhispersyncHttpClient {
    private static final String DATE_KEY = "Date";
    private static final String GET_ENDPOINT = "https://ags-ext.amazon.com/service/gamedata/WhisperData";
    private static final String POST_ENDPOINT = "https://ags-ext.amazon.com/service/gamedata/WhisperData";
    private static final String TAG = "GC_Whispersync";
    private static final String VERSION_ID_HEADER_KEY = "x-amzn-gc-version-id";
    private final String gameId;
    private final NetworkClient networkClient;

    public WhispersyncHttpClientImpl(NetworkClient networkClient, String gameId) {
        this.networkClient = networkClient;
        this.gameId = gameId;
    }

    @Override // com.amazon.ags.client.whispersync.network.WhispersyncHttpClient
    public WhispersyncResponse postWhisperData(WhispersyncRequest whispersyncRequest) throws Throwable {
        String versionId;
        AGSHttpPost agsHttpPost = new AGSHttpPost("https://ags-ext.amazon.com/service/gamedata/WhisperData", true);
        String document = whispersyncRequest.getDocument();
        agsHttpPost.setRequestBody(document);
        String priorVersionId = whispersyncRequest.getPriorVersionId();
        if (priorVersionId != null && !priorVersionId.isEmpty()) {
            agsHttpPost.putHeaderParameter(VERSION_ID_HEADER_KEY, priorVersionId);
        }
        agsHttpPost.putUrlParameter("gameId", this.gameId);
        ServiceResponse serviceResponse = this.networkClient.execute(agsHttpPost);
        try {
            String mergedDocument = serviceResponse.getContent();
            String date = serviceResponse.getHeader("Date");
            Log.d(TAG, "Received HTTP Status Code [" + serviceResponse.getStatusCode() + "] and content [" + mergedDocument + "] when saving data to the cloud");
            int responseCode = serviceResponse.getStatusCode();
            if (responseCode == 200) {
                versionId = serviceResponse.getHeader(VERSION_ID_HEADER_KEY);
            } else if (responseCode == 204) {
                versionId = "";
                Log.d(TAG, "No content found while getting whispersync data from the service");
            } else {
                Log.d(TAG, "Unexpected Http Status Code received when making call to get whispersync data from the service");
                throw new AGSServiceException("Unexpected Service Response");
            }
            return new WhispersyncResponse(mergedDocument, versionId, date);
        } catch (IOException e) {
            throw new ConnectionException("error reading content", e);
        }
    }

    @Override // com.amazon.ags.client.whispersync.network.WhispersyncHttpClient
    public WhispersyncResponse getWhisperData(String priorVersionId) throws Throwable {
        String versionId;
        AGSHttpGet agsHttpGet = new AGSHttpGet("https://ags-ext.amazon.com/service/gamedata/WhisperData", true);
        if (priorVersionId != null) {
            agsHttpGet.putHeaderParameter(VERSION_ID_HEADER_KEY, priorVersionId);
        }
        agsHttpGet.putUrlParameter("gameId", this.gameId);
        ServiceResponse serviceResponse = this.networkClient.execute(agsHttpGet);
        try {
            String document = serviceResponse.getContent();
            String date = serviceResponse.getHeader("Date");
            Log.d(TAG, "Received HTTP Status Code [" + serviceResponse.getStatusCode() + "] and content [" + document + "] when saving data to the cloud");
            int responseCode = serviceResponse.getStatusCode();
            if (responseCode == 200) {
                versionId = serviceResponse.getHeader(VERSION_ID_HEADER_KEY);
            } else if (responseCode == 204) {
                versionId = "";
                Log.d(TAG, "No content found while getting Whispersync data from the service");
            } else if (responseCode == 404) {
                versionId = "";
                Log.d(TAG, "Resource not found");
            } else {
                Log.d(TAG, "Unexpected Http Status Code received when making call to get Whispersync data from the service");
                throw new ConnectionException("Unexpected Status Response: " + responseCode);
            }
            return new WhispersyncResponse(document, versionId, date);
        } catch (IOException e) {
            throw new ConnectionException("error reading content", e);
        }
    }
}

package com.amazon.ags.client.whispersync.migration;

import android.util.Log;
import com.amazon.ags.api.whispersync.migration.MigrationResultCode;
import com.amazon.ags.html5.comm.AGSHttpGet;
import com.amazon.ags.html5.comm.NetworkClient;
import com.amazon.ags.html5.comm.ServiceResponse;
import com.newrelic.agent.android.instrumentation.HttpInstrumentation;
import com.newrelic.agent.android.instrumentation.JSONObjectInstrumentation;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import javax.net.ssl.SSLException;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class MigrationHttpClient {
    private static final String DOWNLOAD_URL = "https://cortana-gateway.amazon.com/cortana/gateway/getSignedDownloadUrl";
    private static final String DOWNLOAD_URL_RESPONSE_KEY = "downloadUrl";
    private static final String GAME_ID_PARAMETER_NAME = "GameId";
    private static final String GAME_PACKAGE_PARAM_NAME = "PackageName";
    private static final String TAG = "GC_Whispersync";
    private final String gameId;
    private final HttpClient httpClient;
    private final NetworkClient networkClient;
    private final String packageName;

    public MigrationHttpClient(String packageName, String gameId, NetworkClient networkClient, HttpClient httpClient) {
        this.gameId = gameId;
        this.packageName = packageName;
        this.networkClient = networkClient;
        this.httpClient = httpClient;
    }

    public String getV1GameDataDownloadUrl() throws Throwable {
        AGSHttpGet request = new AGSHttpGet(DOWNLOAD_URL, true);
        request.putUrlParameter("PackageName", this.packageName);
        request.putHeaderParameter(GAME_ID_PARAMETER_NAME, this.gameId);
        ServiceResponse response = this.networkClient.execute(request);
        String body = response.getContent();
        if (body != null) {
            return parseUrlFromResponse(body);
        }
        return null;
    }

    private String parseUrlFromResponse(String response) {
        try {
            JSONObject json = JSONObjectInstrumentation.init(response);
            return json.getString(DOWNLOAD_URL_RESPONSE_KEY);
        } catch (Exception e) {
            Log.e(TAG, "Conversion - Error retrieving download URL", e);
            return null;
        }
    }

    public final DownloadResult download(String signedUrl) {
        try {
            HttpGet request = new HttpGet(signedUrl);
            try {
                HttpClient httpClient = this.httpClient;
                HttpResponse response = !(httpClient instanceof HttpClient) ? httpClient.execute(request) : HttpInstrumentation.execute(httpClient, request);
                if (response.getStatusLine().getStatusCode() != 200) {
                    if (isResponseNoSuchKey(response)) {
                        Log.i(TAG, "Conversion - No V1 game data exists");
                        return new DownloadResult(null, MigrationResultCode.NO_DATA);
                    }
                    Log.e(TAG, "Conversion - Unexpected response code: " + response.getStatusLine().toString());
                    return new DownloadResult(null, MigrationResultCode.FAILURE);
                }
                try {
                    InputStream is = response.getEntity().getContent();
                    ByteArrayOutputStream os = new ByteArrayOutputStream();
                    try {
                        byte[] buffer = new byte[1024];
                        while (true) {
                            int len = is.read(buffer);
                            if (len <= 0) {
                                break;
                            }
                            os.write(buffer, 0, len);
                        }
                        byte[] data = os.toByteArray();
                        return new DownloadResult(data, MigrationResultCode.SUCCESS);
                    } catch (SSLException sslException) {
                        Log.e(TAG, "Conversion - Network timeout", sslException);
                        DownloadResult downloadResult = new DownloadResult(null, MigrationResultCode.FAILURE);
                        try {
                            return downloadResult;
                        } catch (IOException e) {
                            return downloadResult;
                        }
                    } catch (IOException e2) {
                        Log.e(TAG, "Conversion - Unexpected exception: ", e2);
                        DownloadResult downloadResult2 = new DownloadResult(null, MigrationResultCode.FAILURE);
                        try {
                            return downloadResult2;
                        } catch (IOException e3) {
                            return downloadResult2;
                        }
                    } finally {
                        try {
                            os.close();
                        } catch (IOException e4) {
                            Log.e(TAG, "Conversion - Error while closing download stream", e4);
                        }
                    }
                } catch (IOException e5) {
                    Log.e(TAG, "Conversion - Unexpected exception: ", e5);
                    return new DownloadResult(null, MigrationResultCode.FAILURE);
                } catch (IllegalStateException e6) {
                    Log.e(TAG, "Conversion - Unexpected exception: ", e6);
                    return new DownloadResult(null, MigrationResultCode.FAILURE);
                }
            } catch (Exception e7) {
                Log.e(TAG, "Conversion - Unable to download V1 game data", e7);
                return new DownloadResult(null, MigrationResultCode.NETWORK_FAILURE);
            }
        } catch (Exception e8) {
            Log.e(TAG, "Conversion - invalid URI:" + signedUrl);
            return new DownloadResult(null, MigrationResultCode.FAILURE);
        }
    }

    private boolean isResponseNoSuchKey(HttpResponse response) {
        return response.getStatusLine().getStatusCode() == 404;
    }
}

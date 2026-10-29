package com.amazon.ags.html5.comm;

import android.util.Log;
import com.amazon.ags.AGSClientException;
import com.amazon.ags.auth.AuthManager;
import com.amazon.ags.client.KindleFireProxy;
import com.amazon.ags.client.metrics.EventCollectorClient;
import com.amazon.ags.client.metrics.IllegalConstructionException;
import com.amazon.ags.client.metrics.events.GameCircleGenericEvent;
import com.amazon.ags.constants.metrics.EventNames;
import com.amazon.ags.html5.util.DeviceInfo;
import com.amazon.ags.html5.util.LocalizationUtil;
import com.amazon.identity.auth.device.token.Token;
import com.newrelic.agent.android.instrumentation.HttpInstrumentation;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URISyntaxException;
import java.util.HashMap;
import java.util.Map;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpRequestBase;

/* JADX INFO: loaded from: classes2.dex */
public class HttpNetworkClient implements NetworkClient {
    private static final String AUTH_TOKEN_HEADER = "authorization-token";
    private static final String DEVICE_MAKE_HEADER = "device-make";
    private static final String DEVICE_MODEL_HEADER = "device-model";
    public static final String DEVICE_SERIAL_NUMBER_HEADER = "device-serial-number";
    private static final String DEVICE_TYPE_HEADER = "device-type";
    private static final String TAG = "GC_HttpNetworkClient";
    private final AuthManager authManager;
    private final DeviceInfo deviceInfo;
    private final EventCollectorClient eventCollectorClient;
    private final HttpClient httpClient;
    private final KindleFireProxy kindleFireProxy;
    private final LocalizationUtil localizationUtil;

    public HttpNetworkClient(HttpClient httpClient, KindleFireProxy kindleFireProxy, AuthManager authManager, DeviceInfo deviceInfo, EventCollectorClient eventCollectorClient, LocalizationUtil localizationUtil) {
        this.httpClient = httpClient;
        this.kindleFireProxy = kindleFireProxy;
        this.authManager = authManager;
        this.deviceInfo = deviceInfo;
        this.eventCollectorClient = eventCollectorClient;
        this.localizationUtil = localizationUtil;
    }

    @Override // com.amazon.ags.html5.comm.NetworkClient
    public final ServiceResponse execute(ServiceRequestBase request) throws ConnectionException, AGSClientException {
        HttpRequestBase base = prepare(request);
        base.addHeader(DEVICE_TYPE_HEADER, this.deviceInfo.getDeviceType());
        base.addHeader(DEVICE_MAKE_HEADER, DeviceInfo.getManufacturer());
        base.addHeader(DEVICE_MODEL_HEADER, DeviceInfo.getModel());
        base.addHeader(DEVICE_SERIAL_NUMBER_HEADER, DeviceInfo.getIdentifier());
        base.addHeader("locale", this.localizationUtil.getCurrentLocale().toString());
        if (request.isAuthenticationRequired()) {
            addAuthenticationHeaders(base, request.getBody());
        }
        long startTime = System.currentTimeMillis();
        try {
            Log.d(TAG, "Request: " + base.getMethod() + " " + base.getURI());
            HttpClient httpClient = this.httpClient;
            HttpResponse response = !(httpClient instanceof HttpClient) ? httpClient.execute(base) : HttpInstrumentation.execute(httpClient, base);
            if (response == null || response.getStatusLine() == null) {
                reportServiceCall(System.currentTimeMillis() - startTime, request.getEndpoint(), base.getMethod(), -1, "HttpResponse must not be null");
                throw new AGSClientException("HttpResponse must not be null");
            }
            Log.d(TAG, "Result:" + response.getStatusLine());
            reportServiceCall(System.currentTimeMillis() - startTime, request.getEndpoint(), base.getMethod(), response.getStatusLine().getStatusCode(), response.getStatusLine().getReasonPhrase());
            return new ServiceResponse(response);
        } catch (IOException ioe) {
            reportServiceCall(System.currentTimeMillis() - startTime, request.getEndpoint(), base.getMethod(), -1, ioe.getMessage());
            abortRequest(base);
            throw new ConnectionException(ioe);
        } catch (Exception e) {
            reportServiceCall(System.currentTimeMillis() - startTime, request.getEndpoint(), base.getMethod(), -1, e.getMessage());
            abortRequest(base);
            throw new AGSClientException("Unexpected exception", e);
        }
    }

    final HttpRequestBase prepare(ServiceRequestBase request) throws AGSClientException {
        try {
            HttpRequestBase base = request.prepareHttpRequestBase();
            addRequestParameters(base, request);
            return base;
        } catch (UnsupportedEncodingException e) {
            throw new AGSClientException("Unable to prepare HTTP request", e);
        } catch (URISyntaxException e2) {
            throw new AGSClientException("Invalid request URI", e2);
        }
    }

    private void addRequestParameters(HttpRequestBase req, ServiceRequestBase serviceRequestBase) {
        for (Map.Entry<String, String> entry : serviceRequestBase.getHeaderParams().entrySet()) {
            if (entry.getKey() != null && entry.getValue() != null) {
                req.addHeader(entry.getKey(), entry.getValue());
            }
        }
    }

    private void addAuthenticationHeaders(HttpRequestBase request, String body) throws AGSClientException {
        if (this.kindleFireProxy.isKindle()) {
            addADPTokenHeaders(request, body);
        } else {
            addLWATokenHeader(request);
        }
    }

    private void addLWATokenHeader(HttpRequestBase request) throws AGSClientException {
        String authToken = this.authManager.tryGetToken();
        if (authToken == null) {
            throw new AGSClientException("Network request requires authentication");
        }
        request.addHeader(AUTH_TOKEN_HEADER, authToken);
    }

    private void addADPTokenHeaders(HttpRequestBase request, String body) throws AGSClientException {
        Map<String, String> signedResult = this.kindleFireProxy.signMessage(request.getMethod(), request.getURI().toString(), body);
        if (signedResult == null) {
            throw new AGSClientException("Network request requires authentication");
        }
        request.addHeader("x-adp-token", signedResult.get(Token.KEY_TOKEN));
        request.addHeader("x-adp-alg", "SHA256withRSA:1.0");
        request.addHeader("x-adp-signature", signedResult.get("signature") + ":" + signedResult.get("nonce"));
    }

    private void abortRequest(HttpRequestBase base) {
        if (base != null) {
            base.abort();
        }
    }

    protected void reportServiceCall(long duration, String endpoint, String method, int statusCode, String reason) {
        if (this.eventCollectorClient == null) {
            Log.e(TAG, "Null collector. Cannot report service latency event.");
            return;
        }
        if (!this.eventCollectorClient.isReportingEnabled()) {
            Log.i(TAG, "Reporting is disabled. Cannot report service latency event.");
            return;
        }
        String eventName = EventNames.GameCircleServiceCall.name();
        Map<String, String> attributes = new HashMap<>();
        attributes.put("endpoint", endpoint);
        attributes.put("method", method);
        attributes.put("reason", reason);
        Map<String, Integer> countMetrics = new HashMap<>();
        countMetrics.put("statusCode", Integer.valueOf(statusCode));
        Map<String, Long> timeMetrics = new HashMap<>();
        timeMetrics.put("latency", Long.valueOf(duration));
        try {
            GameCircleGenericEvent genericEvent = new GameCircleGenericEvent(eventName, attributes, countMetrics, timeMetrics);
            this.eventCollectorClient.reportGenericEvent(genericEvent);
        } catch (IllegalConstructionException e) {
            Log.e(TAG, "Could not construct service latency event. It will not be reported.");
        }
    }
}

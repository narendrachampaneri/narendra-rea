package com.amazon.device.ads;

import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
class SISRequestor {
    protected static final String API_LEVEL_ENDPOINT = "/api3";
    private final SISRequestorCallback sisRequestorCallback;
    private final SISRequest[] sisRequests;
    private final WebRequest.WebRequestFactory webRequestFactory;

    public SISRequestor(SISRequest... sisRequests) {
        this(null, sisRequests);
    }

    public SISRequestor(SISRequestorCallback sisRequestorCallback, SISRequest... sisRequests) {
        this(new WebRequest.WebRequestFactory(), sisRequestorCallback, sisRequests);
    }

    SISRequestor(WebRequest.WebRequestFactory webRequestFactory, SISRequestorCallback sisRequestorCallback, SISRequest... sisRequests) {
        this.webRequestFactory = webRequestFactory;
        this.sisRequestorCallback = sisRequestorCallback;
        this.sisRequests = sisRequests;
    }

    public void startCallSIS() {
        callSIS();
        SISRequestorCallback sisRequestorCallback = getSisRequestorCallback();
        if (sisRequestorCallback != null) {
            sisRequestorCallback.onSISCallComplete();
        }
    }

    protected void callSIS() {
        SISRequest[] arr$ = this.sisRequests;
        for (SISRequest sisRequest : arr$) {
            callSIS(sisRequest);
        }
    }

    protected void callSIS(SISRequest sisRequest) {
        WebRequest request = getWebRequest(sisRequest);
        try {
            WebRequest.WebResponse response = request.makeCall();
            JSONObject jsonPayload = response.getResponseReader().readAsJSON();
            if (jsonPayload != null) {
                int rcode = JSONUtils.getIntegerFromJSON(jsonPayload, "rcode", 0);
                String msg = JSONUtils.getStringFromJSON(jsonPayload, "msg", "");
                if (rcode == 1) {
                    sisRequest.getLogger().i("Result - code: %d, msg: %s", Integer.valueOf(rcode), msg);
                    sisRequest.onResponseReceived(jsonPayload);
                } else {
                    sisRequest.getLogger().w("Result - code: %d, msg: %s", Integer.valueOf(rcode), msg);
                }
            }
        } catch (WebRequest.WebRequestException e) {
        }
    }

    protected WebRequest getWebRequest(SISRequest sisRequest) {
        WebRequest request = this.webRequestFactory.createWebRequest();
        request.setExternalLogTag(sisRequest.getLogTag());
        request.setHttpMethod(WebRequest.HttpMethod.POST);
        request.setHost(getHostname());
        request.setPath(getEndpoint(sisRequest));
        request.enableLog(true);
        if (sisRequest.getPostParameters() != null) {
            for (Map.Entry<String, String> postParameter : sisRequest.getPostParameters().entrySet()) {
                request.putPostParameter(postParameter.getKey(), postParameter.getValue());
            }
        }
        WebRequest.QueryStringParameters queryStringParameters = sisRequest.getQueryParameters();
        RegistrationInfo registrationInfo = MobileAdsInfoStore.getInstance().getRegistrationInfo();
        queryStringParameters.putUrlEncoded("appId", registrationInfo.getAppKey());
        queryStringParameters.putUrlEncoded("sdkVer", Version.getSDKVersion());
        request.setQueryStringParameters(queryStringParameters);
        request.setMetricsCollector(Metrics.getInstance().getMetricsCollector());
        request.setServiceCallLatencyMetric(sisRequest.getCallMetricType());
        return request;
    }

    protected static String getHostname() {
        int endpointIndex;
        String hostname = Configuration.getInstance().getString(Configuration.ConfigOption.SIS_URL);
        if (hostname != null && (endpointIndex = hostname.indexOf("/")) > -1) {
            return hostname.substring(0, endpointIndex);
        }
        return hostname;
    }

    protected static String getEndpoint(SISRequest sisRequest) {
        String endpoint = Configuration.getInstance().getString(Configuration.ConfigOption.SIS_URL);
        if (endpoint != null) {
            int endpointIndex = endpoint.indexOf("/");
            if (endpointIndex > -1) {
                endpoint = endpoint.substring(endpointIndex);
            } else {
                endpoint = "";
            }
        }
        return endpoint + API_LEVEL_ENDPOINT + sisRequest.getPath();
    }

    protected SISRequestorCallback getSisRequestorCallback() {
        return this.sisRequestorCallback;
    }

    static class SISRequestorFactory {
        SISRequestorFactory() {
        }

        public SISRequestor createSISRequestor(SISRequest... sisRequests) {
            return createSISRequestor(null, sisRequests);
        }

        public SISRequestor createSISRequestor(SISRequestorCallback sisRequestorCallback, SISRequest... sisRequests) {
            return new SISRequestor(sisRequestorCallback, sisRequests);
        }
    }
}

package com.mopub.network;

import android.content.Context;
import android.location.Location;
import android.net.Uri;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.amazon.identity.auth.device.endpoint.AbstractJSONTokenResponse;
import com.mopub.common.AdFormat;
import com.mopub.common.AdType;
import com.mopub.common.DataKeys;
import com.mopub.common.LocationService;
import com.mopub.common.MoPub;
import com.mopub.common.Preconditions;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.event.BaseEvent;
import com.mopub.common.event.Event;
import com.mopub.common.event.MoPubEvents;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Json;
import com.mopub.common.util.ResponseHeader;
import com.mopub.mobileads.AdTypeTranslator;
import com.mopub.volley.DefaultRetryPolicy;
import com.mopub.volley.NetworkResponse;
import com.mopub.volley.Request;
import com.mopub.volley.Response;
import com.mopub.volley.toolbox.HttpHeaderParser;
import com.newrelic.agent.android.instrumentation.JSONObjectInstrumentation;
import java.io.UnsupportedEncodingException;
import java.util.Locale;
import java.util.Map;
import java.util.TreeMap;
import org.json.JSONException;

/* JADX INFO: loaded from: classes.dex */
public class AdRequest extends Request<AdResponse> {

    @NonNull
    private final AdFormat mAdFormat;

    @Nullable
    private final String mAdUnitId;

    @NonNull
    private final Context mContext;

    @NonNull
    private final Listener mListener;

    public interface Listener extends Response.ErrorListener {
        void onSuccess(AdResponse adResponse);
    }

    public AdRequest(@NonNull String url, @NonNull AdFormat adFormat, @Nullable String adUnitId, @NonNull Context context, @NonNull Listener listener) {
        super(0, url, listener);
        Preconditions.checkNotNull(adFormat);
        Preconditions.checkNotNull(listener);
        this.mAdUnitId = adUnitId;
        this.mListener = listener;
        this.mAdFormat = adFormat;
        this.mContext = context.getApplicationContext();
        DefaultRetryPolicy retryPolicy = new DefaultRetryPolicy(2500, 1, 1.0f);
        setRetryPolicy(retryPolicy);
        setShouldCache(false);
    }

    @NonNull
    public Listener getListener() {
        return this.mListener;
    }

    @Override // com.mopub.volley.Request
    public Map<String, String> getHeaders() {
        TreeMap<String, String> headers = new TreeMap<>();
        String languageCode = Locale.getDefault().getLanguage();
        Locale userLocale = this.mContext.getResources().getConfiguration().locale;
        if (userLocale != null && !userLocale.getLanguage().trim().isEmpty()) {
            languageCode = userLocale.getLanguage().trim();
        }
        if (!languageCode.isEmpty()) {
            headers.put(ResponseHeader.ACCEPT_LANGUAGE.getKey(), languageCode);
        }
        return headers;
    }

    @Override // com.mopub.volley.Request
    protected Response<AdResponse> parseNetworkResponse(NetworkResponse networkResponse) {
        Map<String, String> headers = networkResponse.headers;
        if (HeaderUtils.extractBooleanHeader(headers, ResponseHeader.WARMUP, false)) {
            return Response.error(new MoPubNetworkError("Ad Unit is warming up.", MoPubNetworkError.Reason.WARMING_UP));
        }
        Location location = LocationService.getLastKnownLocation(this.mContext, MoPub.getLocationPrecision(), MoPub.getLocationAwareness());
        AdResponse.Builder builder = new AdResponse.Builder();
        builder.setAdUnitId(this.mAdUnitId);
        String adTypeString = HeaderUtils.extractHeader(headers, ResponseHeader.AD_TYPE);
        String fullAdTypeString = HeaderUtils.extractHeader(headers, ResponseHeader.FULL_AD_TYPE);
        builder.setAdType(adTypeString);
        builder.setFullAdType(fullAdTypeString);
        Integer refreshTimeSeconds = HeaderUtils.extractIntegerHeader(headers, ResponseHeader.REFRESH_TIME);
        Integer refreshTimeMilliseconds = refreshTimeSeconds == null ? null : Integer.valueOf(refreshTimeSeconds.intValue() * 1000);
        builder.setRefreshTimeMilliseconds(refreshTimeMilliseconds);
        if (AdType.CLEAR.equals(adTypeString)) {
            AdResponse adResponse = builder.build();
            logScribeEvent(adResponse, networkResponse, location);
            return Response.error(new MoPubNetworkError("No ads found for ad unit.", MoPubNetworkError.Reason.NO_FILL, refreshTimeMilliseconds));
        }
        builder.setNetworkType(HeaderUtils.extractHeader(headers, ResponseHeader.NETWORK_TYPE));
        String redirectUrl = HeaderUtils.extractHeader(headers, ResponseHeader.REDIRECT_URL);
        builder.setRedirectUrl(redirectUrl);
        String clickTrackingUrl = HeaderUtils.extractHeader(headers, ResponseHeader.CLICK_TRACKING_URL);
        builder.setClickTrackingUrl(clickTrackingUrl);
        builder.setImpressionTrackingUrl(HeaderUtils.extractHeader(headers, ResponseHeader.IMPRESSION_URL));
        String failUrl = HeaderUtils.extractHeader(headers, ResponseHeader.FAIL_URL);
        builder.setFailoverUrl(failUrl);
        String requestId = getRequestId(failUrl);
        builder.setRequestId(requestId);
        boolean isScrollable = HeaderUtils.extractBooleanHeader(headers, ResponseHeader.SCROLLABLE, false);
        builder.setScrollable(Boolean.valueOf(isScrollable));
        builder.setDimensions(HeaderUtils.extractIntegerHeader(headers, ResponseHeader.WIDTH), HeaderUtils.extractIntegerHeader(headers, ResponseHeader.HEIGHT));
        Integer adTimeoutDelaySeconds = HeaderUtils.extractIntegerHeader(headers, ResponseHeader.AD_TIMEOUT);
        builder.setAdTimeoutDelayMilliseconds(adTimeoutDelaySeconds == null ? null : Integer.valueOf(adTimeoutDelaySeconds.intValue() * 1000));
        String responseBody = parseStringBody(networkResponse);
        builder.setResponseBody(responseBody);
        if (AdType.NATIVE.equals(adTypeString)) {
            try {
                builder.setJsonBody(JSONObjectInstrumentation.init(responseBody));
            } catch (JSONException e) {
                return Response.error(new MoPubNetworkError("Failed to decode body JSON for native ad format", e, MoPubNetworkError.Reason.BAD_BODY));
            }
        }
        String customEventClassName = AdTypeTranslator.getCustomEventName(this.mAdFormat, adTypeString, fullAdTypeString, headers);
        builder.setCustomEventClassName(customEventClassName);
        String customEventData = HeaderUtils.extractHeader(headers, ResponseHeader.CUSTOM_EVENT_DATA);
        if (TextUtils.isEmpty(customEventData)) {
            customEventData = HeaderUtils.extractHeader(headers, ResponseHeader.NATIVE_PARAMS);
        }
        try {
            builder.setServerExtras(Json.jsonStringToMap(customEventData));
            if (eventDataIsInResponseBody(adTypeString, fullAdTypeString)) {
                Map<String, String> eventDataMap = new TreeMap<>();
                eventDataMap.put(DataKeys.HTML_RESPONSE_BODY_KEY, responseBody);
                eventDataMap.put(DataKeys.SCROLLABLE_KEY, Boolean.toString(isScrollable));
                eventDataMap.put(DataKeys.CREATIVE_ORIENTATION_KEY, HeaderUtils.extractHeader(headers, ResponseHeader.ORIENTATION));
                if (redirectUrl != null) {
                    eventDataMap.put(DataKeys.REDIRECT_URL_KEY, redirectUrl);
                }
                if (clickTrackingUrl != null) {
                    eventDataMap.put(DataKeys.CLICKTHROUGH_URL_KEY, clickTrackingUrl);
                }
                builder.setServerExtras(eventDataMap);
            }
            AdResponse adResponse2 = builder.build();
            logScribeEvent(adResponse2, networkResponse, location);
            return Response.success(builder.build(), HttpHeaderParser.parseCacheHeaders(networkResponse));
        } catch (JSONException e2) {
            return Response.error(new MoPubNetworkError("Failed to decode server extras for custom event data.", e2, MoPubNetworkError.Reason.BAD_HEADER_DATA));
        }
    }

    private boolean eventDataIsInResponseBody(@Nullable String adType, @Nullable String fullAdType) {
        return "mraid".equals(adType) || AdType.HTML.equals(adType) || (AdType.INTERSTITIAL.equals(adType) && "vast".equals(fullAdType));
    }

    protected String parseStringBody(NetworkResponse response) {
        try {
            String parsed = new String(response.data, HttpHeaderParser.parseCharset(response.headers));
            return parsed;
        } catch (UnsupportedEncodingException e) {
            String parsed2 = new String(response.data);
            return parsed2;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mopub.volley.Request
    public void deliverResponse(AdResponse adResponse) {
        this.mListener.onSuccess(adResponse);
    }

    @Nullable
    @VisibleForTesting
    String getRequestId(@Nullable String failUrl) {
        if (failUrl == null) {
            return null;
        }
        Uri uri = Uri.parse(failUrl);
        try {
            String requestId = uri.getQueryParameter(AbstractJSONTokenResponse.REQUEST_ID);
            return requestId;
        } catch (UnsupportedOperationException e) {
            MoPubLog.d("Unable to obtain request id from fail url.");
            return null;
        }
    }

    @VisibleForTesting
    void logScribeEvent(@NonNull AdResponse adResponse, @NonNull NetworkResponse networkResponse, @Nullable Location location) {
        Preconditions.checkNotNull(adResponse);
        Preconditions.checkNotNull(networkResponse);
        MoPubEvents.log(new Event.Builder(BaseEvent.Name.AD_REQUEST, BaseEvent.Category.REQUESTS, BaseEvent.SamplingRate.AD_REQUEST.getSamplingRate()).withAdUnitId(this.mAdUnitId).withAdCreativeId(adResponse.getDspCreativeId()).withAdType(adResponse.getAdType()).withAdNetworkType(adResponse.getNetworkType()).withAdWidthPx(adResponse.getWidth() != null ? Double.valueOf(adResponse.getWidth().doubleValue()) : null).withAdHeightPx(adResponse.getHeight() != null ? Double.valueOf(adResponse.getHeight().doubleValue()) : null).withGeoLat(location != null ? Double.valueOf(location.getLatitude()) : null).withGeoLon(location != null ? Double.valueOf(location.getLongitude()) : null).withGeoAccuracy(location != null ? Double.valueOf(location.getAccuracy()) : null).withPerformanceDurationMs(Double.valueOf(networkResponse.networkTimeMs)).withRequestId(adResponse.getRequestId()).withRequestStatusCode(Integer.valueOf(networkResponse.statusCode)).withRequestUri(getUrl()).build());
    }
}

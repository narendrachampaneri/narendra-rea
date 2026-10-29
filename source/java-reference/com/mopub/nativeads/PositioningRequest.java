package com.mopub.nativeads;

import android.support.annotation.NonNull;
import android.support.v7.media.MediaRouteProviderProtocol;
import com.mopub.common.VisibleForTesting;
import com.mopub.network.MoPubNetworkError;
import com.mopub.volley.NetworkResponse;
import com.mopub.volley.Response;
import com.mopub.volley.VolleyError;
import com.mopub.volley.toolbox.HttpHeaderParser;
import com.mopub.volley.toolbox.JsonRequest;
import com.newrelic.agent.android.instrumentation.JSONObjectInstrumentation;
import java.io.UnsupportedEncodingException;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class PositioningRequest extends JsonRequest<MoPubNativeAdPositioning.MoPubClientPositioning> {
    private static final String FIXED_KEY = "fixed";
    private static final String INTERVAL_KEY = "interval";
    private static final int MAX_VALUE = 65536;
    private static final String POSITION_KEY = "position";
    private static final String REPEATING_KEY = "repeating";
    private static final String SECTION_KEY = "section";

    public PositioningRequest(String url, Response.Listener<MoPubNativeAdPositioning.MoPubClientPositioning> listener, Response.ErrorListener errorListener) {
        super(0, url, null, listener, errorListener);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mopub.volley.toolbox.JsonRequest, com.mopub.volley.Request
    public void deliverResponse(MoPubNativeAdPositioning.MoPubClientPositioning response) {
        super.deliverResponse(response);
    }

    @Override // com.mopub.volley.toolbox.JsonRequest, com.mopub.volley.Request
    protected Response<MoPubNativeAdPositioning.MoPubClientPositioning> parseNetworkResponse(NetworkResponse response) {
        if (response.statusCode != 200) {
            return Response.error(new VolleyError(response));
        }
        if (response.data.length == 0) {
            return Response.error(new VolleyError("Empty positioning response", new JSONException("Empty response")));
        }
        try {
            String jsonString = new String(response.data, HttpHeaderParser.parseCharset(response.headers));
            return Response.success(parseJson(jsonString), HttpHeaderParser.parseCacheHeaders(response));
        } catch (MoPubNetworkError e) {
            return Response.error(e);
        } catch (UnsupportedEncodingException e2) {
            return Response.error(new VolleyError("Couldn't parse JSON from Charset", e2));
        } catch (JSONException e3) {
            return Response.error(new VolleyError("JSON Parsing Error", e3));
        }
    }

    @NonNull
    @VisibleForTesting
    MoPubNativeAdPositioning.MoPubClientPositioning parseJson(@NonNull String jsonString) throws JSONException, MoPubNetworkError {
        JSONObject jsonObject = JSONObjectInstrumentation.init(jsonString);
        String error = jsonObject.optString(MediaRouteProviderProtocol.SERVICE_DATA_ERROR, null);
        if (error != null) {
            if (error.equalsIgnoreCase("WARMING_UP")) {
                throw new MoPubNetworkError(MoPubNetworkError.Reason.WARMING_UP);
            }
            throw new JSONException(error);
        }
        JSONArray fixed = jsonObject.optJSONArray(FIXED_KEY);
        JSONObject repeating = jsonObject.optJSONObject(REPEATING_KEY);
        if (fixed == null && repeating == null) {
            throw new JSONException("Must contain fixed or repeating positions");
        }
        MoPubNativeAdPositioning.MoPubClientPositioning positioning = new MoPubNativeAdPositioning.MoPubClientPositioning();
        if (fixed != null) {
            parseFixedJson(fixed, positioning);
        }
        if (repeating != null) {
            parseRepeatingJson(repeating, positioning);
        }
        return positioning;
    }

    private void parseFixedJson(@NonNull JSONArray fixed, @NonNull MoPubNativeAdPositioning.MoPubClientPositioning positioning) throws JSONException {
        for (int i = 0; i < fixed.length(); i++) {
            JSONObject positionObject = fixed.getJSONObject(i);
            int section = positionObject.optInt(SECTION_KEY, 0);
            if (section < 0) {
                throw new JSONException("Invalid section " + section + " in JSON response");
            }
            if (section <= 0) {
                int position = positionObject.getInt(POSITION_KEY);
                if (position < 0 || position > 65536) {
                    throw new JSONException("Invalid position " + position + " in JSON response");
                }
                positioning.addFixedPosition(position);
            }
        }
    }

    private void parseRepeatingJson(@NonNull JSONObject repeatingObject, @NonNull MoPubNativeAdPositioning.MoPubClientPositioning positioning) throws JSONException {
        int interval = repeatingObject.getInt(INTERVAL_KEY);
        if (interval < 2 || interval > 65536) {
            throw new JSONException("Invalid interval " + interval + " in JSON response");
        }
        positioning.enableRepeatingPositions(interval);
    }
}

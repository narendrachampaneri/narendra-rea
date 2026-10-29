package com.amazon.ags.html5.javascript;

import android.os.Handler;
import android.util.Log;
import com.amazon.ags.constants.NativeCallKeys;
import com.amazon.ags.constants.NativeCallResultCode;
import com.amazon.ags.constants.NativeCallTypes;
import com.amazon.ags.constants.OfflineCacheTypes;
import com.amazon.ags.html5.factory.ServiceFactory;
import com.amazon.ags.storage.OfflineCacheRequest;
import com.amazon.ags.storage.OfflineDataCache;
import com.newrelic.agent.android.instrumentation.JSONObjectInstrumentation;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class NativeCacheCallHandler extends CallHandlerBase {
    private static final Set<String> supportedCacheCalls = new HashSet(Arrays.asList(NativeCallTypes.SET_CACHE_ITEM, NativeCallTypes.SET_CACHE_ITEMS, NativeCallTypes.GET_CACHE_ITEM, NativeCallTypes.QUERY_CACHE_ITEMS, NativeCallTypes.CLEAR_CACHE, NativeCallTypes.REMOVE_CACHE_ITEMS));
    private final Map<String, OfflineDataCache> cacheNameMapping;

    public NativeCacheCallHandler(Handler uiThreadHandler, OfflineDataCache achievementsCache, OfflineDataCache leaderboardsCache, OfflineDataCache playerProfileCache) {
        super(uiThreadHandler, supportedCacheCalls);
        this.cacheNameMapping = new HashMap();
        this.cacheNameMapping.put(OfflineCacheTypes.ACHIEVEMENTS_CACHE, achievementsCache);
        this.cacheNameMapping.put(OfflineCacheTypes.LEADERBOARDS_CACHE, leaderboardsCache);
        this.cacheNameMapping.put(OfflineCacheTypes.PLAYER_PROFILE_CACHE, playerProfileCache);
    }

    @Override // com.amazon.ags.html5.javascript.CallHandlerBase
    protected boolean handleMessage(String rid, String nativeCallType, JSONObject request) {
        if (!supportedCacheCalls.contains(nativeCallType)) {
            return false;
        }
        if (ServiceFactory.isDebugLoggingEnabled()) {
            Log.d(this.TAG, "Cache call: " + request);
        }
        try {
            String requestTarget = request.getString("target");
            JSONObject requestParameters = request.getJSONObject(NativeCallKeys.PARAMETERS);
            if (requestTarget == null || requestParameters == null || rid == null) {
                throw new IllegalArgumentException("Insufficient arguments for cache request");
            }
            try {
                handleCacheRequest(rid, requestTarget, nativeCallType, requestParameters);
                return true;
            } catch (Exception e) {
                Log.e(this.TAG, "Cache request " + request + " failed", e);
                sendReply(rid, "{}", "ERROR");
                return true;
            }
        } catch (Exception e2) {
            Log.e(this.TAG, "Cache request " + request + " failed", e2);
            sendReply(rid, "{}", NativeCallResultCode.REQUEST_ERROR);
            return true;
        }
    }

    private void handleCacheRequest(String requestRID, String target, String nativeCallType, JSONObject parameters) throws JSONException {
        String responseJSON;
        String responseCode;
        JSONArray jsonArray;
        OfflineDataCache offlineCache = this.cacheNameMapping.get(target);
        if (NativeCallTypes.SET_CACHE_ITEM.equals(nativeCallType)) {
            JSONObject jsonCacheRequest = parameters.getJSONObject(NativeCallKeys.CACHE_REQUEST);
            OfflineCacheRequest cacheRequest = createCacheRequestFromJSON(jsonCacheRequest);
            offlineCache.setCacheItem(cacheRequest);
            responseJSON = "{}";
            responseCode = NativeCallResultCode.SUCCESS;
        } else if (NativeCallTypes.SET_CACHE_ITEMS.equals(nativeCallType)) {
            JSONArray cacheRequests = parameters.getJSONArray(NativeCallKeys.CACHE_REQUESTS);
            List<OfflineCacheRequest> batchRequest = new ArrayList<>(cacheRequests.length());
            for (int i = 0; i < cacheRequests.length(); i++) {
                JSONObject jsonCacheRequest2 = cacheRequests.getJSONObject(i);
                OfflineCacheRequest cacheRequest2 = createCacheRequestFromJSON(jsonCacheRequest2);
                batchRequest.add(cacheRequest2);
            }
            offlineCache.setCacheItems(batchRequest);
            responseJSON = "{}";
            responseCode = NativeCallResultCode.SUCCESS;
        } else if (NativeCallTypes.GET_CACHE_ITEM.equals(nativeCallType)) {
            String primaryKey = parameters.getString(NativeCallKeys.PRIMARY_KEY);
            JSONObject result = offlineCache.getCacheItem(primaryKey);
            if (result != null) {
                responseJSON = !(result instanceof JSONObject) ? result.toString() : JSONObjectInstrumentation.toString(result);
                responseCode = NativeCallResultCode.SUCCESS;
            } else {
                responseJSON = "{}";
                responseCode = "ERROR";
            }
        } else if (NativeCallTypes.QUERY_CACHE_ITEMS.equals(nativeCallType)) {
            String secondaryKey = parameters.getString(NativeCallKeys.SECONDARY_KEY);
            List<JSONObject> results = offlineCache.queryCacheItems(secondaryKey);
            if (results != null) {
                jsonArray = new JSONArray((Collection) results);
            } else {
                jsonArray = new JSONArray();
            }
            JSONObject jsonResult = new JSONObject();
            jsonResult.put("queryResult", jsonArray);
            if (results != null) {
                responseJSON = !(jsonResult instanceof JSONObject) ? jsonResult.toString() : JSONObjectInstrumentation.toString(jsonResult);
                responseCode = NativeCallResultCode.SUCCESS;
            } else {
                responseJSON = "{}";
                responseCode = "ERROR";
            }
        } else if (NativeCallTypes.CLEAR_CACHE.equals(nativeCallType)) {
            offlineCache.clear();
            responseJSON = "{}";
            responseCode = NativeCallResultCode.SUCCESS;
        } else if (NativeCallTypes.REMOVE_CACHE_ITEMS.equals(nativeCallType)) {
            String secondaryKey2 = parameters.getString(NativeCallKeys.SECONDARY_KEY);
            offlineCache.removeCachedItems(secondaryKey2);
            responseJSON = "{}";
            responseCode = NativeCallResultCode.SUCCESS;
        } else {
            throw new IllegalArgumentException("Cache request method not supported: " + nativeCallType);
        }
        sendReply(requestRID, responseJSON, responseCode);
    }

    private OfflineCacheRequest createCacheRequestFromJSON(JSONObject jsonCacheRequest) throws JSONException {
        String primaryKey = jsonCacheRequest.getString(NativeCallKeys.PRIMARY_KEY);
        String secondaryKey = jsonCacheRequest.getString(NativeCallKeys.SECONDARY_KEY);
        JSONObject jsonData = jsonCacheRequest.getJSONObject(NativeCallKeys.JSON_DATA);
        return new OfflineCacheRequest(primaryKey, secondaryKey, jsonData);
    }
}

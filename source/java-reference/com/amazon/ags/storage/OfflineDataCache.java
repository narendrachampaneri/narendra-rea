package com.amazon.ags.storage;

import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public interface OfflineDataCache {
    void batchRemoveCachedItems(List<String> list);

    void clear();

    List<JSONObject> getAllCacheItems();

    JSONObject getCacheItem(String str);

    List<JSONObject> queryCacheItems(String str);

    void removeCachedItem(String str);

    void removeCachedItems(String str);

    void setCacheItem(OfflineCacheRequest offlineCacheRequest);

    void setCacheItem(String str, String str2, JSONObject jSONObject);

    void setCacheItems(List<OfflineCacheRequest> list);
}

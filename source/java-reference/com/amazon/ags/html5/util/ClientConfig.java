package com.amazon.ags.html5.util;

import android.util.Log;
import com.amazon.ags.constants.ClientConfigKeys;
import com.amazon.ags.html5.factory.ServiceFactory;
import com.google.android.exoplayer.hls.HlsChunkSource;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class ClientConfig {
    private static final String TAG = "GC_" + ClientConfig.class.getSimpleName();
    private final Map<String, ConfigEntry> config = new HashMap();

    public ClientConfig() {
        this.config.put(ClientConfigKeys.AUTH_GET_TOKEN_TIMEOUT_MILLIS, new ConfigEntry(1000L, 10000L, HlsChunkSource.DEFAULT_PLAYLIST_BLACKLIST_MS));
        this.config.put(ClientConfigKeys.THREAD_POOL_SIZE, new ConfigEntry(5L, 100L, 100L));
        this.config.put(ClientConfigKeys.THREAD_TIMEOUT, new ConfigEntry(10L, 1000L, HlsChunkSource.DEFAULT_PLAYLIST_BLACKLIST_MS));
        this.config.put(ClientConfigKeys.HTTP_CONNECTION_POOL_TIMEOUT_MILLIS, new ConfigEntry(500L, 10000L, HlsChunkSource.DEFAULT_PLAYLIST_BLACKLIST_MS));
        this.config.put(ClientConfigKeys.HTTP_CONNECTION_TIMEOUT_MILLIS, new ConfigEntry(500L, 10000L, HlsChunkSource.DEFAULT_PLAYLIST_BLACKLIST_MS));
        this.config.put(ClientConfigKeys.HTTP_SOCKET_TIMEOUT_MILLIS, new ConfigEntry(500L, 10000L, HlsChunkSource.DEFAULT_PLAYLIST_BLACKLIST_MS));
        this.config.put(ClientConfigKeys.HTTP_MAX_TOTAL_CONNECTIONS, new ConfigEntry(2L, 20L, 50L));
        this.config.put(ClientConfigKeys.HTTP_MAX_CONNECTIONS_PER_ROUTE, new ConfigEntry(2L, 20L, 50L));
    }

    public long get(String key) {
        ConfigEntry entry = this.config.get(key);
        if (entry != null) {
            return entry.getValue();
        }
        Log.e(TAG, "No config value for " + key);
        return 0L;
    }

    public void load(JSONObject data) {
        if (ServiceFactory.isDebugLoggingEnabled()) {
            Log.d(TAG, "Will load config data: " + data);
        }
        if (data != null) {
            Iterator<String> keys = data.keys();
            while (keys.hasNext()) {
                String key = keys.next();
                ConfigEntry entry = this.config.get(key);
                if (entry != null) {
                    try {
                        entry.setValue(data.getLong(key));
                        if (ServiceFactory.isDebugLoggingEnabled()) {
                            Log.d(TAG, "Loaded config " + key + ": " + entry.getValue());
                        }
                    } catch (JSONException e) {
                        Log.e(TAG, "Unable to parse local config value for " + key, e);
                    }
                }
            }
        }
    }

    private static class ConfigEntry {
        private final long max;
        private final long min;
        private long value;

        public ConfigEntry(long min, long value, long max) {
            this.min = min;
            this.max = max;
            setValue(value);
        }

        public long getValue() {
            return this.value;
        }

        public void setValue(long value) {
            if (value < this.min) {
                Log.e(ClientConfig.TAG, "Config value too small: " + value);
                this.value = this.min;
            } else if (value > this.max) {
                Log.e(ClientConfig.TAG, "Config value too large: " + value);
                this.value = this.max;
            } else {
                this.value = value;
            }
        }
    }
}

package com.amazon.ags.html5.util;

import android.util.Log;
import com.amazon.ags.constants.NativeCallKeys;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class GlobalState {
    private final String TAG = GlobalState.class.getSimpleName();
    private final Map<String, String> globalState = Collections.synchronizedMap(new HashMap());
    private final Set<GlobalStateListener> listeners = new HashSet();

    public interface GlobalStateListener {
        void notifyIsGuestModeSet(boolean z);

        void notifyPlayerIdSet(String str);

        void notifyStateSet(String str, String str2);
    }

    public void addListener(GlobalStateListener listener) {
        this.listeners.add(listener);
    }

    public void removeListener(GlobalStateListener listener) {
        this.listeners.remove(listener);
    }

    public boolean isGuestMode() {
        String guestMode = this.globalState.get(NativeCallKeys.GUEST_MODE);
        return guestMode == null || Boolean.parseBoolean(guestMode);
    }

    public String getPlayerId() {
        return this.globalState.get("playerId");
    }

    public Boolean isHidden() {
        String hiddenFlag = this.globalState.get(NativeCallKeys.HIDDEN_FLAG);
        return Boolean.valueOf(hiddenFlag != null && Boolean.valueOf(hiddenFlag).booleanValue());
    }

    public String getCountrySupport() {
        return this.globalState.get(NativeCallKeys.COUNTRY_SUPPORT);
    }

    public void put(String key, String value) {
        this.globalState.put(key, value);
        for (GlobalStateListener listener : this.listeners) {
            listener.notifyStateSet(key, value);
        }
        if ("playerId".equals(key)) {
            for (GlobalStateListener listener2 : this.listeners) {
                listener2.notifyPlayerIdSet(value);
            }
        }
        if (NativeCallKeys.GUEST_MODE.equals(key)) {
            for (GlobalStateListener listener3 : this.listeners) {
                try {
                    listener3.notifyIsGuestModeSet(Boolean.parseBoolean(value));
                } catch (Throwable t) {
                    Log.e(this.TAG, "Could not notify guest mode state change: " + t.toString());
                }
            }
        }
    }

    public String get(String key) {
        return this.globalState.get(key);
    }

    public JSONObject toJSON() {
        JSONObject jSONObject;
        synchronized (this.globalState) {
            jSONObject = new JSONObject(this.globalState);
        }
        return jSONObject;
    }
}

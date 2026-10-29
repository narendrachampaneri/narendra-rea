package com.newrelic.agent.android.util;

import android.content.Context;
import android.content.SharedPreferences;
import com.newrelic.agent.android.crashes.CrashStore;
import com.newrelic.agent.android.harvest.crash.Crash;
import com.newrelic.agent.android.logging.AgentLog;
import com.newrelic.agent.android.logging.AgentLogManager;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class JsonCrashStore implements CrashStore {
    private static final String STORE_FILE = "NRCrashStore";
    private static final AgentLog log = AgentLogManager.getAgentLog();
    private final Context context;

    public JsonCrashStore(Context context) {
        this.context = context;
    }

    @Override // com.newrelic.agent.android.crashes.CrashStore
    public void store(Crash crash) {
        synchronized (this) {
            SharedPreferences store = this.context.getSharedPreferences(STORE_FILE, 0);
            SharedPreferences.Editor editor = store.edit();
            editor.putString(crash.getUuid().toString(), crash.toJsonString());
            editor.commit();
        }
    }

    @Override // com.newrelic.agent.android.crashes.CrashStore
    public List<Crash> fetchAll() {
        Map<String, ?> crashStrings;
        SharedPreferences store = this.context.getSharedPreferences(STORE_FILE, 0);
        List<Crash> crashes = new ArrayList<>();
        synchronized (this) {
            crashStrings = store.getAll();
        }
        for (Object string : crashStrings.values()) {
            if (string instanceof String) {
                try {
                    crashes.add(Crash.crashFromJsonString((String) string));
                } catch (Exception e) {
                    log.error("Exception encountered while deserializing crash", e);
                }
            }
        }
        return crashes;
    }

    @Override // com.newrelic.agent.android.crashes.CrashStore
    public int count() {
        SharedPreferences store = this.context.getSharedPreferences(STORE_FILE, 0);
        return store.getAll().size();
    }

    @Override // com.newrelic.agent.android.crashes.CrashStore
    public void clear() {
        synchronized (this) {
            SharedPreferences store = this.context.getSharedPreferences(STORE_FILE, 0);
            SharedPreferences.Editor editor = store.edit();
            editor.clear();
            editor.commit();
        }
    }

    @Override // com.newrelic.agent.android.crashes.CrashStore
    public void delete(Crash crash) {
        synchronized (this) {
            SharedPreferences store = this.context.getSharedPreferences(STORE_FILE, 0);
            SharedPreferences.Editor editor = store.edit();
            editor.remove(crash.getUuid().toString());
            editor.commit();
        }
    }
}

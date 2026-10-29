package com.newrelic.agent.android.util;

import android.content.Context;
import android.content.SharedPreferences;
import com.newrelic.agent.android.analytics.AnalyticAttribute;
import com.newrelic.agent.android.analytics.AnalyticAttributeStore;
import com.newrelic.agent.android.logging.AgentLog;
import com.newrelic.agent.android.logging.AgentLogManager;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class SharedPrefsAnalyticAttributeStore implements AnalyticAttributeStore {
    private static final String STORE_FILE = "NRAnalyticAttributeStore";
    private static final AgentLog log = AgentLogManager.getAgentLog();
    private final Context context;

    public SharedPrefsAnalyticAttributeStore(Context context) {
        this.context = context;
    }

    @Override // com.newrelic.agent.android.analytics.AnalyticAttributeStore
    public boolean store(AnalyticAttribute attribute) {
        boolean zCommit = false;
        synchronized (this) {
            if (attribute.isPersistent()) {
                SharedPreferences preferences = this.context.getSharedPreferences(STORE_FILE, 0);
                SharedPreferences.Editor editor = preferences.edit();
                switch (attribute.getAttributeDataType()) {
                    case STRING:
                        log.verbose("SharedPrefsAnalyticAttributeStore.store - storing analytic attribute " + attribute.getName() + "=" + attribute.getStringValue());
                        editor.putString(attribute.getName(), attribute.getStringValue());
                        break;
                    case FLOAT:
                        log.verbose("SharedPrefsAnalyticAttributeStore.store - storing analytic attribute " + attribute.getName() + "=" + attribute.getFloatValue());
                        editor.putFloat(attribute.getName(), attribute.getFloatValue());
                        break;
                    case BOOLEAN:
                        log.verbose("SharedPrefsAnalyticAttributeStore.store - storing analytic attribute " + attribute.getName() + "=" + attribute.getBooleanValue());
                        editor.putBoolean(attribute.getName(), attribute.getBooleanValue());
                        break;
                    default:
                        log.error("SharedPrefsAnalyticAttributeStore.store - unsupported analytic attribute data type" + attribute.getName());
                        break;
                }
                zCommit = editor.commit();
            }
        }
        return zCommit;
    }

    @Override // com.newrelic.agent.android.analytics.AnalyticAttributeStore
    public List<AnalyticAttribute> fetchAll() {
        Map<String, ?> storedAttributes;
        if (log.getLevel() == 4) {
            log.verbose("SharedPrefsAnalyticAttributeStore.fetchAll invoked.");
        }
        SharedPreferences preferences = this.context.getSharedPreferences(STORE_FILE, 0);
        ArrayList<AnalyticAttribute> analyticAttributeArrayList = new ArrayList<>();
        synchronized (this) {
            storedAttributes = preferences.getAll();
        }
        for (Map.Entry<String, ?> entry : storedAttributes.entrySet()) {
            log.debug("SharedPrefsAnalyticAttributeStore.fetchAll - found analytic attribute " + ((Object) entry.getKey()) + "=" + entry.getValue());
            if (entry.getValue() instanceof String) {
                analyticAttributeArrayList.add(new AnalyticAttribute(entry.getKey().toString(), entry.getValue().toString(), true));
            } else if (entry.getValue() instanceof Float) {
                analyticAttributeArrayList.add(new AnalyticAttribute(entry.getKey().toString(), Float.valueOf(entry.getValue().toString()).floatValue(), true));
            } else if (entry.getValue() instanceof Boolean) {
                analyticAttributeArrayList.add(new AnalyticAttribute(entry.getKey().toString(), Boolean.valueOf(entry.getValue().toString()).booleanValue(), true));
            } else {
                log.error("SharedPrefsAnalyticAttributeStore.fetchAll - unsupported analytic attribute " + ((Object) entry.getKey()) + "=" + entry.getValue());
            }
        }
        return analyticAttributeArrayList;
    }

    @Override // com.newrelic.agent.android.analytics.AnalyticAttributeStore
    public int count() {
        SharedPreferences preferences = this.context.getSharedPreferences(STORE_FILE, 0);
        int size = preferences.getAll().size();
        if (log.getLevel() == 4) {
            log.verbose("SharedPrefsAnalyticAttributeStore.count - returning " + size);
        }
        return size;
    }

    @Override // com.newrelic.agent.android.analytics.AnalyticAttributeStore
    public void clear() {
        if (log.getLevel() == 4) {
            log.verbose("SharedPrefsAnalyticAttributeStore.clear - flushing stored attributes");
        }
        synchronized (this) {
            SharedPreferences preferences = this.context.getSharedPreferences(STORE_FILE, 0);
            preferences.edit().clear().commit();
        }
    }

    @Override // com.newrelic.agent.android.analytics.AnalyticAttributeStore
    public void delete(AnalyticAttribute attribute) {
        synchronized (this) {
            if (log.getLevel() == 4) {
                log.verbose("SharedPrefsAnalyticAttributeStore.delete - deleting attribute " + attribute.getName());
            }
            SharedPreferences preferences = this.context.getSharedPreferences(STORE_FILE, 0);
            preferences.edit().remove(attribute.getName()).commit();
        }
    }
}

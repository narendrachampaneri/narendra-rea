package com.amazon.device.ads;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import java.util.Map;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes.dex */
class IntentBuilder {
    private Activity activity;
    private Class<?> clazz;
    private Context context;
    private TreeMap<String, String> extras = new TreeMap<>();

    IntentBuilder() {
    }

    public IntentBuilder withContext(Context context) {
        this.context = context;
        return this;
    }

    public IntentBuilder withActivity(Activity activity) {
        this.activity = activity;
        return this;
    }

    public IntentBuilder withClass(Class<?> clazz) {
        this.clazz = clazz;
        return this;
    }

    public IntentBuilder withExtra(String key, String value) {
        this.extras.put(key, value);
        return this;
    }

    public boolean fireIntent() {
        try {
            Intent intent = new Intent(this.context, this.clazz);
            for (Map.Entry<String, String> entry : this.extras.entrySet()) {
                intent.putExtra(entry.getKey(), entry.getValue());
            }
            this.activity.startActivity(intent);
            return true;
        } catch (ActivityNotFoundException e) {
            return false;
        }
    }
}

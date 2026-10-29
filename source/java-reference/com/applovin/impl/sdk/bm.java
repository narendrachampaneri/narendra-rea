package com.applovin.impl.sdk;

import android.content.SharedPreferences;
import com.applovin.sdk.AppLovinLogger;
import com.newrelic.agent.android.instrumentation.JSONObjectInstrumentation;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class bm {
    private final AppLovinSdkImpl a;
    private final AppLovinLogger b;
    private ArrayList c;
    private ArrayList d;
    private final Object e;
    private final SharedPreferences f;

    bm(AppLovinSdkImpl appLovinSdkImpl) {
        if (appLovinSdkImpl == null) {
            throw new IllegalArgumentException("No sdk specified");
        }
        this.a = appLovinSdkImpl;
        this.b = appLovinSdkImpl.getLogger();
        this.f = appLovinSdkImpl.getApplicationContext().getSharedPreferences("com.applovin.sdk.impl.postbackQueue.domain", 0);
        this.e = new Object();
        this.c = c();
        this.d = new ArrayList();
    }

    private bo a(String str) {
        try {
            JSONObject jSONObjectInit = JSONObjectInstrumentation.init(str);
            return new bo(this, jSONObjectInit.getString("targetUrl"), ax.a(jSONObjectInit.getJSONObject("requestBody")), jSONObjectInit.getInt("attemptNumber"));
        } catch (Exception e) {
            this.b.w("PersistentPostbackManager", "Unable to inflate postback request from JSON.", e);
            return null;
        }
    }

    private void a(bo boVar) {
        synchronized (this.e) {
            b(boVar);
            c(boVar);
        }
    }

    private void b(bo boVar) {
        synchronized (this.e) {
            if (this.c.size() < ((Integer) this.a.a(bw.bl)).intValue()) {
                this.c.add(boVar);
                d();
                this.b.d("PersistentPostbackManager", "Enqueued postback: " + boVar);
            } else {
                this.b.w("PersistentPostbackManager", "Persistent queue has reached maximum size; postback retried in memory only." + boVar);
            }
        }
    }

    private ArrayList c() {
        if (!n.b()) {
            this.b.d("PersistentPostbackManager", "Loading new postback queue due to old Android version...");
            return new ArrayList();
        }
        Set<String> stringSet = this.f.getStringSet("com.applovin.sdk.impl.postbackQueue.key", new LinkedHashSet(0));
        ArrayList arrayList = new ArrayList(Math.max(1, stringSet.size()));
        int iIntValue = ((Integer) this.a.a(bw.bm)).intValue();
        this.b.d("PersistentPostbackManager", "Deserializing " + stringSet.size() + " postback(s).");
        for (String str : stringSet) {
            bo boVarA = a(str);
            if (boVarA == null) {
                this.b.e("PersistentPostbackManager", "Unable to deserialize postback json: " + str);
            } else if (boVarA.a() > iIntValue) {
                arrayList.add(boVarA);
            } else {
                this.b.d("PersistentPostbackManager", "Skipping deserialization because maximum attempt count exceeded for postback: " + boVarA);
            }
        }
        this.b.d("PersistentPostbackManager", "Successfully loaded postback queue with " + arrayList.size() + " postback(s).");
        return arrayList;
    }

    private void c(bo boVar) {
        this.b.d("PersistentPostbackManager", "Preparing to submit postback..." + boVar);
        synchronized (this.e) {
            boVar.a(boVar.a() + 1);
            d();
        }
        int iIntValue = ((Integer) this.a.a(bw.bm)).intValue();
        if (boVar.a() <= iIntValue) {
            this.a.getPostbackService().dispatchPostbackAsync(boVar.b(), boVar.c(), new bn(this, boVar));
        } else {
            this.b.w("PersistentPostbackManager", "Exceeded maximum persisted attempt count of " + iIntValue + ". Dequeuing postback: " + boVar);
            d(boVar);
        }
    }

    private void d() {
        if (!n.b()) {
            this.b.d("PersistentPostbackManager", "Skipping writing postback queue to disk due to old Android version...");
            return;
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet(this.c.size());
        Iterator it = this.c.iterator();
        while (it.hasNext()) {
            String strF = f((bo) it.next());
            if (strF != null) {
                linkedHashSet.add(strF);
            }
        }
        this.f.edit().putStringSet("com.applovin.sdk.impl.postbackQueue.key", linkedHashSet).commit();
        this.b.d("PersistentPostbackManager", "Wrote updated postback queue to disk.");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(bo boVar) {
        synchronized (this.e) {
            this.c.remove(boVar);
            d();
        }
        this.b.d("PersistentPostbackManager", "Dequeued successfully transmitted postback: " + boVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e(bo boVar) {
        synchronized (this.e) {
            this.d.add(boVar);
        }
    }

    private String f(bo boVar) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("attemptNumber", boVar.a()).put("targetUrl", boVar.b()).put("requestBody", new JSONObject(boVar.c()));
            return !(jSONObject instanceof JSONObject) ? jSONObject.toString() : JSONObjectInstrumentation.toString(jSONObject);
        } catch (Exception e) {
            this.b.w("PersistentPostbackManager", "Unable to serialize postback request to JSON.", e);
            return null;
        }
    }

    public void a() {
        synchronized (this.e) {
            Iterator it = this.c.iterator();
            while (it.hasNext()) {
                c((bo) it.next());
            }
        }
    }

    public void a(String str, Map map) {
        a(new bo(this, str, map));
    }

    public void b() {
        synchronized (this.e) {
            Iterator it = this.d.iterator();
            while (it.hasNext()) {
                c((bo) it.next());
            }
            this.d.clear();
        }
    }
}

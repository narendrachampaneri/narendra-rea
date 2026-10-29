package com.inmobi.monetization.internal.objects;

import android.content.Context;
import android.content.SharedPreferences;
import com.inmobi.commons.analytics.util.AnalyticsUtils;
import com.inmobi.commons.internal.Log;
import com.inmobi.monetization.internal.LtvpRulesObject;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public class LtvpRuleCache {
    static LtvpRuleCache a;
    private static String c = "IMAdMLtvpRuleCache";
    private static String d = "IMAdMLtvpRuleId";
    private static String e = "IMAdMLtvpHardExpiry";
    private static String f = "IMAdMLtvpSoftExpiry";
    private SharedPreferences b;

    public static LtvpRuleCache getInstance(Context context) {
        if (a == null) {
            synchronized (LtvpRuleCache.class) {
                if (a == null) {
                    a = new LtvpRuleCache(context);
                }
            }
        }
        return a;
    }

    private LtvpRuleCache(Context context) {
        this.b = null;
        this.b = context.getSharedPreferences(c, 0);
    }

    public void clearLtvpRuleCache() {
        SharedPreferences.Editor editorEdit = this.b.edit();
        editorEdit.clear();
        editorEdit.commit();
    }

    public void setLtvpRuleConfig(LtvpRulesObject ltvpRulesObject) {
        a(ltvpRulesObject.getRuleId());
        a(ltvpRulesObject.getHardExpiry() + ltvpRulesObject.getTimeStamp());
        b(ltvpRulesObject.getSoftExpiry() + ltvpRulesObject.getTimeStamp());
        a(ltvpRulesObject.getRules());
    }

    private void a(long j) {
        SharedPreferences.Editor editorEdit = this.b.edit();
        editorEdit.putLong(e, j);
        editorEdit.commit();
    }

    private void b(long j) {
        SharedPreferences.Editor editorEdit = this.b.edit();
        editorEdit.putLong(f, j);
        editorEdit.commit();
    }

    private void a(String str) {
        SharedPreferences.Editor editorEdit = this.b.edit();
        editorEdit.putString(d, str);
        editorEdit.commit();
    }

    private void a(HashMap<String, Integer> map) {
        try {
            SharedPreferences.Editor editorEdit = this.b.edit();
            for (String str : map.keySet()) {
                editorEdit.putInt(str, map.get(str).intValue());
            }
            editorEdit.commit();
        } catch (Exception e2) {
            Log.internal(AnalyticsUtils.ANALYTICS_LOGGING_TAG, "Exception saving rule map", e2);
        }
    }

    public long getSoftExpiryForLtvpRule() {
        return this.b.getLong(f, 0L);
    }

    public long getHardExpiryForLtvpRule() {
        return this.b.getLong(e, 0L);
    }

    public int getLtvpRule(long j) {
        return this.b.getInt(String.valueOf(j), 0);
    }

    public String getLtvpRuleId() {
        return this.b.getString(d, "");
    }
}

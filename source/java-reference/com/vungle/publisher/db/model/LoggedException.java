package com.vungle.publisher.db.model;

import android.content.ContentValues;
import android.database.Cursor;
import com.inmobi.commons.analytics.db.AnalyticsEvent;
import com.newrelic.agent.android.instrumentation.JSONArrayInstrumentation;
import com.vungle.log.Logger;
import com.vungle.publisher.VunglePubBase;
import com.vungle.publisher.bg;
import com.vungle.publisher.bi;
import com.vungle.publisher.bt;
import com.vungle.publisher.env.SdkConfig;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import javax.inject.Inject;
import javax.inject.Provider;
import javax.inject.Singleton;
import org.json.JSONArray;
import org.json.JSONException;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public class LoggedException extends bi<Integer> {
    public long a;
    public String[] b;
    public int c;
    public String d;
    public String e;
    public String f;
    public String g;
    public String h;
    public String i;

    @Inject
    Factory j;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.vungle.publisher.bi
    public final /* bridge */ /* synthetic */ bi.a a_() {
        return this.j;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.vungle.publisher.bi
    public final String b() {
        return "logged_exceptions";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.vungle.publisher.bi
    public final ContentValues a(boolean z) {
        ContentValues contentValues = new ContentValues();
        if (z) {
            contentValues.put(AnalyticsEvent.EVENT_ID, s());
            long jCurrentTimeMillis = System.currentTimeMillis();
            this.a = jCurrentTimeMillis;
            contentValues.put("insert_timestamp_millis", Long.valueOf(jCurrentTimeMillis));
        }
        contentValues.put("type", Integer.valueOf(this.c));
        contentValues.put("tag", this.d);
        contentValues.put("log_message", this.e);
        contentValues.put("class", this.f);
        contentValues.put("android_version", this.g);
        contentValues.put("sdk_version", this.h);
        contentValues.put("play_services_version", this.i);
        try {
            String[] strArr = this.b;
            String string = null;
            if (strArr != null) {
                JSONArray jSONArray = new JSONArray((Collection) Arrays.asList(strArr));
                string = !(jSONArray instanceof JSONArray) ? jSONArray.toString() : JSONArrayInstrumentation.toString(jSONArray);
            }
            contentValues.put("stack_trace", string);
        } catch (JSONException e) {
            Logger.e(Logger.DATABASE_TAG, "could not parse stack trace array", e);
        }
        return contentValues;
    }

    /* JADX INFO: compiled from: vungle */
    @Singleton
    public static class Factory extends bi.a<LoggedException, Integer> {

        @Inject
        bt a;

        @Inject
        SdkConfig b;

        @Inject
        Provider<LoggedException> d;

        @Override // com.vungle.publisher.bi.a
        public final /* bridge */ /* synthetic */ int a(List list) {
            return super.a(list);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.bi.a
        public final /* bridge */ /* synthetic */ bi a(bi biVar, Cursor cursor) {
            return a((LoggedException) biVar, cursor);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.bi.a
        public final /* bridge */ /* synthetic */ Integer[] b(int i) {
            return new Integer[i];
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.bi.a
        public final /* bridge */ /* synthetic */ bi[] c(int i) {
            return new LoggedException[i];
        }

        @Override // com.vungle.publisher.bi.a
        public final /* bridge */ /* synthetic */ List d() {
            return super.d();
        }

        @Override // com.vungle.publisher.bi.a
        public final /* bridge */ /* synthetic */ List d(int i) {
            return super.d(i);
        }

        @Inject
        Factory() {
        }

        public final void a(String str, String str2, Throwable th) {
            a(2, str, str2, th);
        }

        public final void b(String str, String str2, Throwable th) {
            a(1, str, str2, th);
        }

        private void a(int i, String str, String str2, Throwable th) {
            StackTraceElement[] stackTrace;
            Logger.e(str, str2, th);
            if (this.b.b()) {
                if (e() < 100) {
                    LoggedException loggedExceptionC_ = c_();
                    loggedExceptionC_.d = str;
                    loggedExceptionC_.e = str2;
                    loggedExceptionC_.f = th.getClass().toString();
                    loggedExceptionC_.c = i;
                    loggedExceptionC_.g = this.a.g();
                    loggedExceptionC_.h = VunglePubBase.VERSION;
                    loggedExceptionC_.i = this.a.q();
                    String[] strArr = null;
                    if (th != null && (stackTrace = th.getStackTrace()) != null) {
                        String[] strArr2 = new String[stackTrace.length];
                        for (int i2 = 0; i2 < stackTrace.length; i2++) {
                            strArr2[i2] = stackTrace[i2].toString();
                        }
                        strArr = strArr2;
                    }
                    loggedExceptionC_.b = strArr;
                    loggedExceptionC_.r();
                    return;
                }
                Logger.w(str, "could not insert logged exception... too many already!");
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.bi.a
        public final String e_() {
            return "logged_exceptions";
        }

        /* JADX WARN: Type inference failed for: r0v18, types: [I, java.lang.Integer] */
        private static LoggedException a(LoggedException loggedException, Cursor cursor) {
            String[] strArr;
            loggedException.a = bg.e(cursor, "insert_timestamp_millis").longValue();
            loggedException.c = bg.c(cursor, "type");
            loggedException.d = bg.f(cursor, "tag");
            loggedException.e = bg.f(cursor, "log_message");
            loggedException.f = bg.f(cursor, "class");
            loggedException.g = bg.f(cursor, "android_version");
            loggedException.h = bg.f(cursor, "sdk_version");
            loggedException.i = bg.f(cursor, "play_services_version");
            loggedException.t = bg.d(cursor, AnalyticsEvent.EVENT_ID);
            try {
                String strF = bg.f(cursor, "stack_trace");
                if (strF == null) {
                    strArr = null;
                } else {
                    JSONArray jSONArrayInit = JSONArrayInstrumentation.init(strF);
                    strArr = new String[jSONArrayInit.length()];
                    for (int i = 0; i < jSONArrayInit.length(); i++) {
                        strArr[i] = jSONArrayInit.getString(i);
                    }
                }
                loggedException.b = strArr;
            } catch (JSONException e) {
                Logger.e(Logger.DATABASE_TAG, "could not parse stack trace string", e);
            }
            return loggedException;
        }

        /* JADX INFO: Access modifiers changed from: private */
        @Override // com.vungle.publisher.bi.a
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public LoggedException c_() {
            return this.d.get();
        }
    }
}

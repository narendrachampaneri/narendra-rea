package com.chartboost.sdk.impl;

import com.amazon.identity.auth.device.dataobject.AppInfo;
import io.fabric.sdk.android.services.network.HttpRequest;
import java.util.Map;
import org.apache.http.impl.cookie.DateParseException;
import org.apache.http.impl.cookie.DateUtils;

/* JADX INFO: loaded from: classes.dex */
public class y {
    public static b.a a(i iVar) {
        long j;
        boolean z = false;
        long j2 = 0;
        long jCurrentTimeMillis = System.currentTimeMillis();
        Map<String, String> map = iVar.c;
        String str = map.get("Date");
        long jA = str != null ? a(str) : 0L;
        String str2 = map.get(HttpRequest.HEADER_CACHE_CONTROL);
        if (str2 != null) {
            String[] strArrSplit = str2.split(AppInfo.DELIM);
            long j3 = 0;
            for (String str3 : strArrSplit) {
                String strTrim = str3.trim();
                if (strTrim.equals("no-cache") || strTrim.equals("no-store")) {
                    return null;
                }
                if (strTrim.startsWith("max-age=")) {
                    try {
                        j3 = Long.parseLong(strTrim.substring(8));
                    } catch (Exception e) {
                    }
                } else if (strTrim.equals("must-revalidate") || strTrim.equals("proxy-revalidate")) {
                    j3 = 0;
                }
            }
            j = j3;
            z = true;
        } else {
            j = 0;
        }
        String str4 = map.get("Expires");
        long jA2 = str4 != null ? a(str4) : 0L;
        String str5 = map.get(HttpRequest.HEADER_ETAG);
        if (z) {
            j2 = (1000 * j) + jCurrentTimeMillis;
        } else if (jA > 0 && jA2 >= jA) {
            j2 = (jA2 - jA) + jCurrentTimeMillis;
        }
        b.a aVar = new b.a();
        aVar.a = iVar.b;
        aVar.b = str5;
        aVar.e = j2;
        aVar.d = aVar.e;
        aVar.c = jA;
        aVar.f = map;
        return aVar;
    }

    public static long a(String str) {
        try {
            return DateUtils.parseDate(str).getTime();
        } catch (DateParseException e) {
            return 0L;
        }
    }
}

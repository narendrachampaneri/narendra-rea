package com.chartboost.sdk.impl;

import android.net.http.Headers;
import android.os.SystemClock;
import com.newrelic.agent.android.util.SafeJsonPrimitive;
import io.fabric.sdk.android.services.network.HttpRequest;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.SocketTimeoutException;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.HttpStatus;
import org.apache.http.StatusLine;
import org.apache.http.conn.ConnectTimeoutException;
import org.apache.http.impl.cookie.DateUtils;

/* JADX INFO: loaded from: classes.dex */
public class u implements f {
    protected static final boolean a = t.b;
    private static int d = 3000;
    private static int e = 4096;
    protected final z b;
    protected final v c;

    public u(z zVar) {
        this(zVar, new v(e));
    }

    public u(z zVar, v vVar) {
        this.b = zVar;
        this.c = vVar;
    }

    @Override // com.chartboost.sdk.impl.f
    public i a(l<?> lVar) throws s {
        byte[] bArrA;
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        while (true) {
            HttpResponse httpResponse = null;
            Map<String, String> map = new HashMap<>();
            try {
                try {
                    HashMap map2 = new HashMap();
                    a(map2, lVar.f());
                    HttpResponse httpResponseA = this.b.a(lVar, map2);
                    try {
                        StatusLine statusLine = httpResponseA.getStatusLine();
                        int statusCode = statusLine.getStatusCode();
                        Map<String, String> mapA = a(httpResponseA.getAllHeaders());
                        try {
                            if (statusCode == 304) {
                                return new i(HttpStatus.SC_NOT_MODIFIED, lVar.f() == null ? null : lVar.f().a, mapA, true);
                            }
                            if (httpResponseA.getEntity() != null) {
                                bArrA = a(httpResponseA.getEntity());
                            } else {
                                bArrA = new byte[0];
                            }
                            a(SystemClock.elapsedRealtime() - jElapsedRealtime, lVar, bArrA, statusLine);
                            if (statusCode < 200 || statusCode > 299) {
                                throw new IOException();
                            }
                            return new i(statusCode, bArrA, mapA, false);
                        } catch (IOException e2) {
                            e = e2;
                            map = mapA;
                            httpResponse = httpResponseA;
                            if (httpResponse != null) {
                                int statusCode2 = httpResponse.getStatusLine().getStatusCode();
                                t.c("Unexpected response code %d for %s", Integer.valueOf(statusCode2), lVar.d());
                                i iVar = new i(statusCode2, null, map, false);
                                if (0 != 0) {
                                    if (statusCode2 == 401 || statusCode2 == 403) {
                                        a("auth", lVar, new a(iVar));
                                    } else {
                                        throw new q(iVar);
                                    }
                                } else {
                                    throw new h(iVar);
                                }
                            } else {
                                throw new j(e);
                            }
                        }
                    } catch (IOException e3) {
                        e = e3;
                        httpResponse = httpResponseA;
                    }
                } catch (IOException e4) {
                    e = e4;
                }
            } catch (MalformedURLException e5) {
                throw new RuntimeException("Bad URL " + lVar.d(), e5);
            } catch (SocketTimeoutException e6) {
                a("socket", lVar, new r());
            } catch (ConnectTimeoutException e7) {
                a(Headers.CONN_DIRECTIVE, lVar, new r());
            }
        }
    }

    private void a(long j, l<?> lVar, byte[] bArr, StatusLine statusLine) {
        if (a || j > d) {
            Object[] objArr = new Object[5];
            objArr[0] = lVar;
            objArr[1] = Long.valueOf(j);
            objArr[2] = bArr != null ? Integer.valueOf(bArr.length) : SafeJsonPrimitive.NULL_STRING;
            objArr[3] = Integer.valueOf(statusLine.getStatusCode());
            objArr[4] = Integer.valueOf(lVar.u().b());
            t.b("HTTP response for request=<%s> [lifetime=%d], [size=%s], [rc=%d], [retryCount=%s]", objArr);
        }
    }

    private static void a(String str, l<?> lVar, s sVar) throws s {
        p pVarU = lVar.u();
        int iT = lVar.t();
        try {
            pVarU.a(sVar);
            lVar.a(String.format("%s-retry [timeout=%s]", str, Integer.valueOf(iT)));
        } catch (s e2) {
            lVar.a(String.format("%s-timeout-giveup [timeout=%s]", str, Integer.valueOf(iT)));
            throw e2;
        }
    }

    private void a(Map<String, String> map, b.a aVar) {
        if (aVar != null) {
            if (aVar.b != null) {
                map.put(HttpRequest.HEADER_IF_NONE_MATCH, aVar.b);
            }
            if (aVar.c > 0) {
                map.put("If-Modified-Since", DateUtils.formatDate(new Date(aVar.c)));
            }
        }
    }

    private byte[] a(HttpEntity httpEntity) throws q, IOException {
        ac acVar = new ac(this.c, (int) httpEntity.getContentLength());
        try {
            InputStream content = httpEntity.getContent();
            if (content == null) {
                throw new q();
            }
            byte[] bArrA = this.c.a(1024);
            while (true) {
                int i = content.read(bArrA);
                if (i == -1) {
                    break;
                }
                acVar.write(bArrA, 0, i);
            }
            byte[] byteArray = acVar.toByteArray();
            try {
                httpEntity.consumeContent();
            } catch (IOException e2) {
                t.a("Error occured when calling consumingContent", new Object[0]);
            }
            this.c.a(bArrA);
            acVar.close();
            return byteArray;
        } catch (Throwable th) {
            try {
                httpEntity.consumeContent();
            } catch (IOException e3) {
                t.a("Error occured when calling consumingContent", new Object[0]);
            }
            this.c.a((byte[]) null);
            acVar.close();
            throw th;
        }
    }

    private static Map<String, String> a(Header[] headerArr) {
        HashMap map = new HashMap();
        for (int i = 0; i < headerArr.length; i++) {
            map.put(headerArr[i].getName(), headerArr[i].getValue());
        }
        return map;
    }
}

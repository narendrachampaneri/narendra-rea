package com.chartboost.sdk.impl;

import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.widget.ImageView;
import com.chartboost.sdk.Libraries.CBLogging;
import com.chartboost.sdk.Libraries.CBUtility;
import com.newrelic.agent.android.instrumentation.HttpInstrumentation;
import java.io.IOException;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;

/* JADX INFO: loaded from: classes.dex */
public final class bc {
    private static volatile bc c = null;
    private com.chartboost.sdk.Libraries.h a = new com.chartboost.sdk.Libraries.h("CBImagesDirectory", true);
    private Map<String, com.chartboost.sdk.Libraries.j.a> b = new HashMap();

    public interface b {
        void a(com.chartboost.sdk.Libraries.j.a aVar, Bundle bundle);
    }

    public static bc a() {
        if (c == null) {
            synchronized (bc.class) {
                if (c == null) {
                    c = new bc();
                }
            }
        }
        return c;
    }

    private bc() {
    }

    public void b() {
        this.a.b();
        this.b.clear();
    }

    public void a(String str, String str2, b bVar, ImageView imageView, Bundle bundle) {
        com.chartboost.sdk.Libraries.j.a aVarA = a(str2);
        if (aVarA != null) {
            if (imageView != null) {
                imageView.setImageBitmap(aVarA.a());
            }
            if (bVar != null) {
                bVar.a(aVarA, bundle);
                return;
            }
            return;
        }
        if (str == null && bVar != null) {
            bVar.a(null, bundle);
        }
        ax.a().execute(new a(imageView, bVar, str2, bundle, str));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.chartboost.sdk.Libraries.j.a a(String str) {
        if (b(str)) {
            if (this.b.containsKey(str)) {
                return this.b.get(str);
            }
            com.chartboost.sdk.Libraries.j.a aVar = new com.chartboost.sdk.Libraries.j.a(str, this.a.d(String.format("%s%s", str, ".png")), this.a);
            this.b.put(str, aVar);
            return aVar;
        }
        if (this.b.containsKey(str)) {
            this.b.remove(str);
        }
        return null;
    }

    private class a implements Runnable {
        private String b;
        private final WeakReference<ImageView> c;
        private b d;
        private String e;
        private Bundle f;

        public a(ImageView imageView, b bVar, String str, Bundle bundle, String str2) {
            this.c = new WeakReference<>(imageView);
            c cVar = new c(this);
            if (imageView != null) {
                imageView.setImageDrawable(cVar);
            }
            this.e = str;
            this.d = bVar;
            this.f = bundle;
            this.b = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            HttpResponse httpResponseExecute;
            HttpResponse httpResponse = null;
            InputStream content = null;
            if (bc.this.b(this.e)) {
                a();
                return;
            }
            HttpClient httpClientB = ax.b();
            HttpGet httpGet = new HttpGet(this.b);
            CBLogging.a("CBWebImageCache", "downloading image to cache... " + this.b);
            try {
                httpResponseExecute = !(httpClientB instanceof HttpClient) ? httpClientB.execute(httpGet) : HttpInstrumentation.execute(httpClientB, httpGet);
                try {
                    int statusCode = httpResponseExecute.getStatusLine().getStatusCode();
                    if (statusCode != 200) {
                        CBLogging.d("CBWebImageCache:ImageDownloader", "Error " + statusCode + " while retrieving bitmap from " + this.b);
                        CBUtility.a(httpResponseExecute);
                        a();
                        return;
                    }
                    HttpEntity entity = httpResponseExecute.getEntity();
                    if (entity != null) {
                        try {
                            content = entity.getContent();
                            byte[] bArrB = cd.b(content);
                            String strB = com.chartboost.sdk.Libraries.b.b(com.chartboost.sdk.Libraries.b.a(bArrB));
                            if (!strB.equals(this.e)) {
                                this.e = strB;
                                CBLogging.b("CBWebImageCache:ImageDownloader", "Error: checksum did not match while downloading from " + this.b);
                            }
                            bc.this.a.a(String.format("%s%s", this.e, ".png"), bArrB);
                            bc.this.a(this.e);
                            if (content != null) {
                                content.close();
                            } else {
                                CBUtility.a(entity);
                            }
                        } catch (Throwable th) {
                            if (content != null) {
                                content.close();
                            } else {
                                CBUtility.a(entity);
                            }
                            throw th;
                        }
                    }
                    a();
                } catch (IOException e) {
                    e = e;
                    httpResponse = httpResponseExecute;
                    httpGet.abort();
                    CBUtility.a(httpResponse);
                    CBLogging.d("CBWebImageCache", "I/O error while retrieving bitmap from " + this.b, e);
                } catch (IllegalStateException e2) {
                    e = e2;
                    httpGet.abort();
                    CBUtility.a(httpResponseExecute);
                    CBLogging.d("CBWebImageCache", "Incorrect URL: " + this.b, e);
                } catch (Throwable th2) {
                    th = th2;
                    httpGet.abort();
                    CBUtility.a(httpResponseExecute);
                    CBLogging.d("CBWebImageCache", "Error while retrieving bitmap from " + this.b, th);
                }
            } catch (IOException e3) {
                e = e3;
            } catch (IllegalStateException e4) {
                e = e4;
                httpResponseExecute = null;
            } catch (Throwable th3) {
                th = th3;
                httpResponseExecute = null;
            }
        }

        public void a() {
            final com.chartboost.sdk.Libraries.j.a aVarB = b();
            if (aVarB != null && this.c != null && this.c.get() != null && this == bc.b(this.c.get())) {
                aVarB.b();
            }
            CBUtility.e().post(new Runnable() { // from class: com.chartboost.sdk.impl.bc.a.1
                @Override // java.lang.Runnable
                public void run() {
                    if (a.this.c != null) {
                        ImageView imageView = (ImageView) a.this.c.get();
                        a aVarB2 = bc.b(imageView);
                        if (aVarB != null && a.this == aVarB2) {
                            imageView.setImageBitmap(aVarB.a());
                        }
                    }
                    if (a.this.d != null) {
                        a.this.d.a(aVarB, a.this.f);
                    }
                }
            });
        }

        private com.chartboost.sdk.Libraries.j.a b() {
            return (com.chartboost.sdk.Libraries.j.a) bc.this.b.get(this.e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static a b(ImageView imageView) {
        if (imageView != null) {
            Drawable drawable = imageView.getDrawable();
            if (drawable instanceof c) {
                return ((c) drawable).a();
            }
        }
        return null;
    }

    static class c extends BitmapDrawable {
        private final WeakReference<a> a;

        public c(a aVar) {
            this.a = new WeakReference<>(aVar);
        }

        public a a() {
            return this.a.get();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean b(String str) {
        return this.a.c(String.format("%s%s", str, ".png"));
    }
}

package com.mopub.network;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Looper;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.util.LruCache;
import android.webkit.WebView;
import com.mopub.common.ClientMetadata;
import com.mopub.common.Preconditions;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.util.DeviceUtils;
import com.mopub.volley.Cache;
import com.mopub.volley.Network;
import com.mopub.volley.RequestQueue;
import com.mopub.volley.toolbox.BasicNetwork;
import com.mopub.volley.toolbox.DiskBasedCache;
import com.mopub.volley.toolbox.HttpStack;
import com.mopub.volley.toolbox.HurlStack;
import com.mopub.volley.toolbox.ImageLoader;
import java.io.File;
import javax.net.ssl.SSLSocketFactory;

/* JADX INFO: loaded from: classes.dex */
public class Networking {

    @VisibleForTesting
    static final String CACHE_DIRECTORY_NAME = "mopub-volley-cache";
    private static volatile MaxWidthImageLoader sMaxWidthImageLoader;
    private static volatile MoPubRequestQueue sRequestQueue;
    private static volatile String sUserAgent;
    private static final String DEFAULT_USER_AGENT = System.getProperty("http.agent");
    public static boolean sUseHttps = false;

    @Nullable
    public static MoPubRequestQueue getRequestQueue() {
        return sRequestQueue;
    }

    @NonNull
    public static MoPubRequestQueue getRequestQueue(@NonNull Context context) {
        MoPubRequestQueue requestQueue = sRequestQueue;
        if (requestQueue == null) {
            synchronized (Networking.class) {
                try {
                    requestQueue = sRequestQueue;
                    if (requestQueue == null) {
                        ClientMetadata clientMetadata = ClientMetadata.getInstance(context);
                        HurlStack.UrlRewriter urlRewriter = new PlayServicesUrlRewriter(clientMetadata.getDeviceId(), context);
                        SSLSocketFactory socketFactory = CustomSSLSocketFactory.getDefault(10000);
                        String userAgent = getUserAgent(context.getApplicationContext());
                        HttpStack httpStack = new RequestQueueHttpStack(userAgent, urlRewriter, socketFactory);
                        Network network = new BasicNetwork(httpStack);
                        File volleyCacheDir = new File(context.getCacheDir().getPath() + File.separator + CACHE_DIRECTORY_NAME);
                        Cache cache = new DiskBasedCache(volleyCacheDir, (int) DeviceUtils.diskCacheSizeBytes(volleyCacheDir, 10485760L));
                        MoPubRequestQueue requestQueue2 = new MoPubRequestQueue(cache, network);
                        try {
                            sRequestQueue = requestQueue2;
                            requestQueue2.start();
                            requestQueue = requestQueue2;
                        } catch (Throwable th) {
                            th = th;
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            }
        }
        return requestQueue;
    }

    @NonNull
    public static ImageLoader getImageLoader(@NonNull Context context) {
        MaxWidthImageLoader imageLoader = sMaxWidthImageLoader;
        if (imageLoader == null) {
            synchronized (Networking.class) {
                try {
                    imageLoader = sMaxWidthImageLoader;
                    if (imageLoader == null) {
                        RequestQueue queue = getRequestQueue(context);
                        int cacheSize = DeviceUtils.memoryCacheSizeBytes(context);
                        final LruCache<String, Bitmap> imageCache = new LruCache<String, Bitmap>(cacheSize) { // from class: com.mopub.network.Networking.1
                            /* JADX INFO: Access modifiers changed from: protected */
                            @Override // android.support.v4.util.LruCache
                            public int sizeOf(String key, Bitmap value) {
                                return value != null ? value.getRowBytes() * value.getHeight() : super.sizeOf(key, value);
                            }
                        };
                        MaxWidthImageLoader imageLoader2 = new MaxWidthImageLoader(queue, context, new ImageLoader.ImageCache() { // from class: com.mopub.network.Networking.2
                            @Override // com.mopub.volley.toolbox.ImageLoader.ImageCache
                            public Bitmap getBitmap(String key) {
                                return (Bitmap) imageCache.get(key);
                            }

                            @Override // com.mopub.volley.toolbox.ImageLoader.ImageCache
                            public void putBitmap(String key, Bitmap bitmap) {
                                imageCache.put(key, bitmap);
                            }
                        });
                        try {
                            sMaxWidthImageLoader = imageLoader2;
                            imageLoader = imageLoader2;
                        } catch (Throwable th) {
                            th = th;
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            }
        }
        return imageLoader;
    }

    @NonNull
    public static String getUserAgent(@NonNull Context context) {
        Preconditions.checkNotNull(context);
        String userAgent = sUserAgent;
        if (userAgent == null) {
            synchronized (Networking.class) {
                userAgent = sUserAgent;
                if (userAgent == null) {
                    if (Looper.myLooper() == Looper.getMainLooper()) {
                        userAgent = new WebView(context).getSettings().getUserAgentString();
                    } else {
                        userAgent = DEFAULT_USER_AGENT;
                    }
                    sUserAgent = userAgent;
                }
            }
        }
        return userAgent;
    }

    @NonNull
    public static String getCachedUserAgent() {
        String userAgent = sUserAgent;
        if (userAgent == null) {
            return DEFAULT_USER_AGENT;
        }
        return userAgent;
    }

    @VisibleForTesting
    public static synchronized void clearForTesting() {
        sRequestQueue = null;
        sMaxWidthImageLoader = null;
        sUserAgent = null;
    }

    @VisibleForTesting
    public static synchronized void setRequestQueueForTesting(MoPubRequestQueue queue) {
        sRequestQueue = queue;
    }

    @VisibleForTesting
    public static synchronized void setImageLoaderForTesting(MaxWidthImageLoader imageLoader) {
        sMaxWidthImageLoader = imageLoader;
    }

    @VisibleForTesting
    public static synchronized void setUserAgentForTesting(String userAgent) {
        sUserAgent = userAgent;
    }

    public static void useHttps(boolean useHttps) {
        sUseHttps = useHttps;
    }

    public static boolean useHttps() {
        return sUseHttps;
    }
}

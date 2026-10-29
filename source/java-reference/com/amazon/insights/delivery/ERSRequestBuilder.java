package com.amazon.insights.delivery;

import com.amazon.insights.core.InsightsContext;
import com.amazon.insights.core.configuration.Configuration;
import com.amazon.insights.core.http.HttpClient;
import com.amazon.insights.core.log.Logger;
import com.newrelic.agent.android.instrumentation.JSONArrayInstrumentation;
import io.fabric.sdk.android.services.network.HttpRequest;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.zip.GZIPOutputStream;
import org.json.JSONArray;

/* JADX INFO: loaded from: classes2.dex */
public class ERSRequestBuilder {
    static final String CONTENT_ENCODING_KEY = "Content-Encoding";
    static final String DEFAULT_ENDPOINT = "https://applab-sdk.amazon.com/1.0";
    static final String ENDPOINT_PATH = "%s/applications/%s/events";
    static final String KEY_ENDPOINT = "eventRecorderEndpoint";
    static final String UNIQUE_ID_HEADER_KEY = "x-amzn-UniqueId";
    private static final Logger logger = Logger.getLogger(ERSRequestBuilder.class);
    private final String applicationKey;
    private final Configuration configuration;
    private final HttpClient httpClient;
    private final String uniqueId;

    public static ERSRequestBuilder newBuilder(InsightsContext context) {
        return new ERSRequestBuilder(context.getHttpClient(), context.getUniqueId().getValue(), context.getCredentials().getApplicationKey(), context.getConfiguration());
    }

    public ERSRequestBuilder(HttpClient httpClient, String uniqueId, String applicationKey, Configuration configuration) {
        this.httpClient = httpClient;
        this.uniqueId = uniqueId;
        this.applicationKey = applicationKey;
        this.configuration = configuration;
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0065 A[Catch: IOException -> 0x008e, TRY_LEAVE, TryCatch #8 {IOException -> 0x008e, blocks: (B:15:0x0060, B:17:0x0065), top: B:64:0x0060 }] */
    /* JADX WARN: Code duplicated, block: B:20:0x006c  */
    /* JADX WARN: Code duplicated, block: B:30:0x0088 A[Catch: IOException -> 0x0097, TRY_LEAVE, TryCatch #2 {IOException -> 0x0097, blocks: (B:28:0x0083, B:30:0x0088), top: B:58:0x0083 }] */
    /* JADX WARN: Code duplicated, block: B:40:0x00a8 A[Catch: IOException -> 0x00ae, TRY_LEAVE, TryCatch #7 {IOException -> 0x00ae, blocks: (B:38:0x00a3, B:40:0x00a8), top: B:62:0x00a3 }] */
    /* JADX WARN: Code duplicated, block: B:45:0x00b7  */
    public HttpClient.Request createHttpRequest(JSONArray events) throws Throwable {
        HttpClient.Request httpRequest = this.httpClient.newRequest().setUrl(String.format(ENDPOINT_PATH, getEndpointUrl(), this.applicationKey)).addHeader(UNIQUE_ID_HEADER_KEY, this.uniqueId).setMethod(HttpClient.HttpMethod.POST);
        String body = !(events instanceof JSONArray) ? events.toString() : JSONArrayInstrumentation.toString(events);
        if (body == null) {
            return null;
        }
        byte[] compressedBytes = null;
        ByteArrayOutputStream byteStream = null;
        GZIPOutputStream gzipStream = null;
        try {
            try {
                ByteArrayOutputStream byteStream2 = new ByteArrayOutputStream();
                try {
                    GZIPOutputStream gzipStream2 = new GZIPOutputStream(byteStream2);
                    try {
                        gzipStream2.write(body.getBytes("UTF-8"));
                        gzipStream2.close();
                        try {
                            compressedBytes = byteStream2.toByteArray();
                        } catch (Exception e) {
                            logger.e("Error creating compressed String for ERS Request", e);
                        }
                        if (byteStream2 != null) {
                            try {
                                byteStream2.close();
                                if (gzipStream2 != null) {
                                    gzipStream2.close();
                                }
                            } catch (IOException e2) {
                                logger.e("Errror closing compression streams", e2);
                            }
                        } else if (gzipStream2 != null) {
                            gzipStream2.close();
                        }
                        byteStream = null;
                        gzipStream = null;
                    } catch (IOException e3) {
                        e = e3;
                        gzipStream = gzipStream2;
                        byteStream = byteStream2;
                        logger.e("Error attempting to compress request contents", e);
                        if (byteStream != null) {
                            try {
                                byteStream.close();
                                if (gzipStream != null) {
                                    gzipStream.close();
                                }
                            } catch (IOException e4) {
                                logger.e("Errror closing compression streams", e4);
                                byteStream = null;
                                gzipStream = null;
                                if (compressedBytes == null) {
                                    httpRequest = null;
                                } else {
                                    httpRequest.setPostBody(compressedBytes);
                                    httpRequest.addHeader("Content-Encoding", HttpRequest.ENCODING_GZIP);
                                }
                                return httpRequest;
                            }
                        } else if (gzipStream != null) {
                            gzipStream.close();
                        }
                        byteStream = null;
                        gzipStream = null;
                    } catch (Throwable th) {
                        th = th;
                        gzipStream = gzipStream2;
                        byteStream = byteStream2;
                        if (byteStream != null) {
                            try {
                                byteStream.close();
                                if (gzipStream != null) {
                                    gzipStream.close();
                                }
                            } catch (IOException e5) {
                                logger.e("Errror closing compression streams", e5);
                                throw th;
                            }
                        } else if (gzipStream != null) {
                            gzipStream.close();
                        }
                        throw th;
                    }
                } catch (IOException e6) {
                    e = e6;
                    byteStream = byteStream2;
                } catch (Throwable th2) {
                    th = th2;
                    byteStream = byteStream2;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (IOException e7) {
            e = e7;
        }
        if (compressedBytes == null) {
            httpRequest = null;
        } else {
            httpRequest.setPostBody(compressedBytes);
            httpRequest.addHeader("Content-Encoding", HttpRequest.ENCODING_GZIP);
        }
        return httpRequest;
    }

    private String getEndpointUrl() {
        return this.configuration.optString(KEY_ENDPOINT, DEFAULT_ENDPOINT);
    }
}

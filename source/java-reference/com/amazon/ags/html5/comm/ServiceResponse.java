package com.amazon.ags.html5.comm;

import android.util.Log;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import org.apache.http.Header;
import org.apache.http.HeaderElement;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;

/* JADX INFO: loaded from: classes2.dex */
public class ServiceResponse {
    private static final String DEFAULT_CHARSET = "UTF-8";
    private static final String HTTP_HEADER_CHARSET_KEY = "charset";
    private static final String TAG = "GC_" + ServiceResponse.class.getSimpleName();
    private String content = null;
    private final HttpResponse response;

    public ServiceResponse(HttpResponse response) {
        this.response = response;
    }

    public HttpResponse getResponse() {
        return this.response;
    }

    public int getStatusCode() {
        return this.response.getStatusLine().getStatusCode();
    }

    public String getContent() throws Throwable {
        if (this.content != null) {
            return this.content;
        }
        StringBuilder sb = new StringBuilder();
        BufferedReader reader = null;
        InputStreamReader inStrReader = null;
        HttpEntity entity = this.response.getEntity();
        if (entity == null) {
            Log.w(TAG, "Http entity is null");
            return null;
        }
        InputStream inStream = entity.getContent();
        try {
            InputStreamReader inStrReader2 = new InputStreamReader(inStream, getCharSetFromEntity(entity));
            try {
                BufferedReader reader2 = new BufferedReader(inStrReader2);
                while (true) {
                    try {
                        String line = reader2.readLine();
                        if (line == null) {
                            break;
                        }
                        sb.append(line);
                    } catch (Throwable th) {
                        th = th;
                        inStrReader = inStrReader2;
                        reader = reader2;
                        inStream.close();
                        if (inStrReader != null) {
                            inStrReader.close();
                        }
                        if (reader != null) {
                            reader.close();
                        }
                        throw th;
                    }
                }
                inStream.close();
                if (inStrReader2 != null) {
                    inStrReader2.close();
                }
                if (reader2 != null) {
                    reader2.close();
                }
                this.content = sb.toString();
                return this.content;
            } catch (Throwable th2) {
                th = th2;
                inStrReader = inStrReader2;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public String getHeader(String key) {
        Header header = this.response.getFirstHeader(key);
        if (header != null) {
            return header.getValue();
        }
        return null;
    }

    private String getCharSetFromEntity(HttpEntity entity) {
        HeaderElement[] values;
        NameValuePair charsetParam;
        if (entity == null) {
            throw new IllegalArgumentException("HttpEntity must not be null");
        }
        Header header = entity.getContentType();
        if (header == null || (values = header.getElements()) == null || values.length == 0 || (charsetParam = values[0].getParameterByName("charset")) == null) {
            return "UTF-8";
        }
        return charsetParam.getValue();
    }
}

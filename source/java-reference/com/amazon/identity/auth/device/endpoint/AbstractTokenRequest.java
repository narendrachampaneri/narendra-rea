package com.amazon.identity.auth.device.endpoint;

import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import com.amazon.identity.auth.device.AccountManagerConstants;
import com.amazon.identity.auth.device.AuthError;
import com.amazon.identity.auth.device.DeviceInfo;
import com.amazon.identity.auth.device.utils.DefaultLibraryInfo;
import com.amazon.identity.auth.device.utils.MAPLog;
import com.newrelic.agent.android.instrumentation.HttpInstrumentation;
import io.fabric.sdk.android.services.network.HttpRequest;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.Socket;
import java.net.URL;
import java.security.KeyManagementException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.UnrecoverableKeyException;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import java.util.zip.GZIPInputStream;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;
import org.apache.http.Header;
import org.apache.http.HeaderElement;
import org.apache.http.HttpEntity;
import org.apache.http.HttpException;
import org.apache.http.HttpResponse;
import org.apache.http.HttpResponseInterceptor;
import org.apache.http.NameValuePair;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpRequestBase;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.entity.HttpEntityWrapper;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.conn.SingleClientConnManager;
import org.apache.http.message.BasicHeader;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.params.CoreProtocolPNames;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.apache.http.protocol.HttpContext;

/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractTokenRequest implements APTokenRequest {
    public static final String ACCESS_TOKEN = "access_token";
    public static final String ANDROID_OS_NAME = "Android";
    public static final String APP_NAME = "app_name";
    public static final String APP_VERSION = "app_version";
    public static final String AUTH_COOKIES = "auth_cookies";
    public static final String DEFAULT_DOMAIN = ".amazon.com";
    public static final String DEVO_PREFIX = "development";
    public static final int DEV_PORT = 443;
    public static final String DI_HW_NAME = "di.hw.name";
    public static final String DI_HW_VERSION = "di.hw.version";
    public static final String DI_OS_NAME = "di.os.name";
    public static final String DI_OS_VERSION = "di.os.version";
    public static final String DI_SDK_VERSION = "di.sdk.version";
    public static final String DMS_TOKEN = "dms_token";
    public static final String DOMAIN = "domain";
    public static final String EXCHANGE_END_POINT = "/ap/exchangetoken";
    public static final String HTTPS = "https";
    protected static final int MAX_NUM_POST_PARAMS = 10;
    protected static final int NUM_RETRY_ATTEMPTS = 2;
    protected static final String PORT_SEPERATOR = ":";
    protected static final String POST = "POST";
    public static final String PRE_PROD_PREFIX = "pre-prod";
    public static final int PROD_PORT = 443;
    public static final String PROD_PREFIX = "www";
    public static final String REFRESH_TOKEN = "refresh_token";
    public static final String REQUESTED_TOKEN_TYPE = "requested_token_type";
    public static final String RESP_COOKIES = "cookies";
    public static final String RESP_TOKENS = "tokens";
    public static final String REVOKE_END_POINT = "/auth/signout";
    public static final String SOURCE_TOKEN = "source_token";
    public static final String SOURCE_TOKEN_TYPE = "source_token_type";
    protected HttpClient httpClient;
    private String mAppName;
    private String mAppVersion;
    protected HttpRequestBase mHttpRequest;
    private String mLibVersion;
    private Bundle mOptions;
    private static final String LOG_TAG = AbstractTokenRequest.class.getName();
    public static final String DEFAULT_USER_AGENT = "AmazonAuthenticationSDK/3.3.0/Android/" + Build.VERSION.RELEASE + "/" + Build.MODEL;
    public static final String DEFAULT_WEBVIEW_USER_AGENT = "AmazonWebView/AmazonAuthenticationSDK/3.3.0/Android/" + Build.VERSION.RELEASE + "/" + Build.MODEL;
    private int socketTimeout = -1;
    private String _domain = null;
    protected final List<Header> _headers = new ArrayList();
    protected final List<NameValuePair> postParameters = new ArrayList(10);

    protected abstract void addRequestInfoParameters() throws AuthError;

    protected abstract TokenResponse generateTokenResponse(HttpResponse httpResponse);

    public abstract String getEndPoint();

    public AbstractTokenRequest(String appName, String appVersion, String libVersion, Bundle options) {
        this.mOptions = options;
        this.mAppName = appName;
        this.mAppVersion = appVersion;
        this.mLibVersion = libVersion;
    }

    @Override // com.amazon.identity.auth.device.endpoint.APTokenRequest
    public void initializeHttp() throws AuthError {
        if (this.httpClient == null) {
            this.httpClient = new MyHttpClient();
            this.mHttpRequest = getRequest();
        }
    }

    @Override // com.amazon.identity.auth.device.endpoint.APTokenRequest
    public void initializeUserAgent() {
        this.httpClient.getParams().setParameter(CoreProtocolPNames.USER_AGENT, DEFAULT_USER_AGENT);
    }

    @Override // com.amazon.identity.auth.device.endpoint.APTokenRequest
    public void preExecute() throws AuthError {
    }

    @Override // com.amazon.identity.auth.device.endpoint.APTokenRequest
    public void postExecute(HttpResponse httpResponse) throws AuthError {
    }

    @Override // com.amazon.identity.auth.device.endpoint.APTokenRequest
    public List<NameValuePair> getPostParameters() {
        for (NameValuePair parameter : this.postParameters) {
            if (parameter != null) {
                MAPLog.pii(LOG_TAG, "Parameter Added to request", "name=" + parameter.getName() + " val=" + parameter.getValue());
            } else {
                MAPLog.e(LOG_TAG, "Parameter Added to request was NULL");
            }
        }
        return this.postParameters;
    }

    @Override // com.amazon.identity.auth.device.endpoint.APTokenRequest
    public void setSocketTimeout(int timeout) {
        this.socketTimeout = timeout;
    }

    @Override // com.amazon.identity.auth.device.endpoint.APTokenRequest
    public final TokenResponse submit() throws AuthError {
        initializeHttp();
        initializeUserAgent();
        initializePostParams();
        initializeHeaders();
        initializeCookies();
        try {
            updateEntity();
            Header[] headers = getHeaders();
            if (headers.length > 0) {
                this.mHttpRequest.setHeaders(headers);
            }
            preExecute();
            HttpResponse response = null;
            try {
                try {
                    MAPLog.i(LOG_TAG, "Request url: " + this.mHttpRequest.getURI());
                    for (int attempt = 0; attempt <= 2; attempt++) {
                        response = executeRequest();
                        if (!hasReceived500(response)) {
                            break;
                        }
                        if (attempt != 2) {
                            response.getEntity().consumeContent();
                        }
                        MAPLog.w(LOG_TAG, "Received " + getCode(response) + " error on request attempt " + (attempt + 1) + " of 3");
                    }
                    if (this.httpClient != null) {
                        this.httpClient.getConnectionManager().closeIdleConnections(5L, TimeUnit.SECONDS);
                    }
                    if (this.mHttpRequest != null) {
                        try {
                            consumeRequestContent();
                        } catch (IOException e) {
                            MAPLog.e(LOG_TAG, "IOException consuming httppost entity content " + e.toString());
                        }
                    }
                    postExecute(response);
                    return generateTokenResponse(response);
                } catch (ClientProtocolException cpe) {
                    MAPLog.e(LOG_TAG, "Received communication error when executing token request:" + cpe.toString());
                    throw new AuthError("Received communication error when executing token request", cpe, AuthError.ERROR_TYPE.ERROR_COM);
                } catch (IOException ioe) {
                    MAPLog.e(LOG_TAG, "Received IO error when executing token request:" + ioe.toString());
                    throw new AuthError("Received communication error when executing token request", ioe, AuthError.ERROR_TYPE.ERROR_IO);
                }
            } catch (Throwable th) {
                if (this.httpClient != null) {
                    this.httpClient.getConnectionManager().closeIdleConnections(5L, TimeUnit.SECONDS);
                }
                if (this.mHttpRequest != null) {
                    try {
                        consumeRequestContent();
                    } catch (IOException e2) {
                        MAPLog.e(LOG_TAG, "IOException consuming httppost entity content " + e2.toString());
                    }
                }
                throw th;
            }
        } catch (UnsupportedEncodingException uee) {
            throw new AuthError(uee.getMessage(), uee, AuthError.ERROR_TYPE.ERROR_BAD_PARAM);
        } catch (IOException e3) {
            throw new AuthError("Received IO error when creating RequestUrlBuilder", e3, AuthError.ERROR_TYPE.ERROR_IO);
        }
    }

    public HttpRequestBase getRequest() throws AuthError {
        return new HttpPost(getRequestUrl());
    }

    protected void consumeRequestContent() throws IOException {
        ((HttpPost) this.mHttpRequest).getEntity().consumeContent();
    }

    protected void updateEntity() throws IOException {
        StringEntity entity = getEntity();
        ((HttpPost) this.mHttpRequest).setEntity(entity);
    }

    public StringEntity getEntity() throws IOException {
        UrlEncodedFormEntity urlEncodedFormEntity = new UrlEncodedFormEntity(getPostParameters());
        return urlEncodedFormEntity;
    }

    @Override // com.amazon.identity.auth.device.endpoint.APTokenRequest
    public HttpResponse executeRequest() throws IOException {
        if (this.socketTimeout != -1) {
            HttpParams params = this.mHttpRequest.getParams();
            HttpConnectionParams.setSoTimeout(params, this.socketTimeout);
            this.mHttpRequest.setParams(params);
        }
        logRequestInfo();
        HttpClient httpClient = this.httpClient;
        HttpRequestBase httpRequestBase = this.mHttpRequest;
        return !(httpClient instanceof HttpClient) ? httpClient.execute(httpRequestBase) : HttpInstrumentation.execute(httpClient, httpRequestBase);
    }

    private void logRequestInfo() {
        String userAgent = (String) this.httpClient.getParams().getParameter(CoreProtocolPNames.USER_AGENT);
        MAPLog.pii(LOG_TAG, "Logging Request info.", "UserAgent = " + userAgent);
        Header[] headers = this.mHttpRequest.getAllHeaders();
        if (headers != null) {
            MAPLog.i(LOG_TAG, "Number of Headers : " + headers.length);
            for (Header header : headers) {
                MAPLog.pii(LOG_TAG, "Header used for request: name=" + header.getName(), "val=" + header.getValue());
            }
            return;
        }
        MAPLog.i(LOG_TAG, "No Headers");
    }

    private static boolean hasReceived500(HttpResponse response) {
        int code = response.getStatusLine().getStatusCode();
        return code >= 500 && code < 600;
    }

    private static int getCode(HttpResponse response) {
        return response.getStatusLine().getStatusCode();
    }

    public class MyHttpClient extends DefaultHttpClient {
        private static final String BKS = "BKS";
        private static final String HTTPS = "https";

        public MyHttpClient() {
            addResponseInterceptor(AbstractTokenRequest.this.getDefaultHttpResponseInterceptor());
        }

        private SSLSocketFactory newSslSocketFactory() {
            try {
                KeyStore trusted = KeyStore.getInstance(BKS);
                SSLSocketFactory factory = new MySSLSocketFactory(trusted);
                factory.setHostnameVerifier(SSLSocketFactory.ALLOW_ALL_HOSTNAME_VERIFIER);
                return factory;
            } catch (Exception e) {
                throw new AssertionError(e);
            }
        }

        @Override // org.apache.http.impl.client.DefaultHttpClient, org.apache.http.impl.client.AbstractHttpClient
        protected ClientConnectionManager createClientConnectionManager() {
            if (DefaultLibraryInfo.isProd()) {
                return super.createClientConnectionManager();
            }
            SchemeRegistry registry = new SchemeRegistry();
            registry.register(new Scheme("https", newSslSocketFactory(), 443));
            return new SingleClientConnManager(getParams(), registry);
        }

        public class MySSLSocketFactory extends SSLSocketFactory {
            SSLContext sslContext;

            public MySSLSocketFactory(KeyStore truststore) throws NoSuchAlgorithmException, UnrecoverableKeyException, KeyManagementException, KeyStoreException {
                super(truststore);
                this.sslContext = SSLContext.getInstance("TLS");
                TrustManager tm = new X509TrustManager() { // from class: com.amazon.identity.auth.device.endpoint.AbstractTokenRequest.MyHttpClient.MySSLSocketFactory.1
                    @Override // javax.net.ssl.X509TrustManager
                    public void checkClientTrusted(X509Certificate[] chain, String authType) throws CertificateException {
                    }

                    @Override // javax.net.ssl.X509TrustManager
                    public void checkServerTrusted(X509Certificate[] chain, String authType) throws CertificateException {
                    }

                    @Override // javax.net.ssl.X509TrustManager
                    public X509Certificate[] getAcceptedIssuers() {
                        return null;
                    }
                };
                this.sslContext.init(null, new TrustManager[]{tm}, null);
            }

            @Override // org.apache.http.conn.ssl.SSLSocketFactory, org.apache.http.conn.scheme.LayeredSocketFactory
            public Socket createSocket(Socket socket, String host, int port, boolean autoClose) throws IOException {
                return this.sslContext.getSocketFactory().createSocket(socket, host, port, autoClose);
            }

            @Override // org.apache.http.conn.ssl.SSLSocketFactory, org.apache.http.conn.scheme.SocketFactory
            public Socket createSocket() throws IOException {
                return this.sslContext.getSocketFactory().createSocket();
            }
        }
    }

    @Override // com.amazon.identity.auth.device.endpoint.APTokenRequest
    public Header[] getHeaders() {
        Header[] headerArray = new Header[this._headers.size()];
        this._headers.toArray(headerArray);
        return headerArray;
    }

    @Override // com.amazon.identity.auth.device.endpoint.APTokenRequest
    public void initializePostParams() throws AuthError {
        addRequestInfoParameters();
        addAppInfoParameters();
        addDeviceParams();
    }

    protected void addDeviceParams() throws AuthError {
        if (!TextUtils.isEmpty(DeviceInfo.manufacturer) && !DeviceInfo.manufacturer.equals("unknown")) {
            this.postParameters.add(new BasicNameValuePair(DI_HW_NAME, DeviceInfo.manufacturer));
        }
        if (!TextUtils.isEmpty(DeviceInfo.model) && !DeviceInfo.model.equals("unknown")) {
            this.postParameters.add(new BasicNameValuePair(DI_HW_VERSION, DeviceInfo.model));
        }
        this.postParameters.add(new BasicNameValuePair(DI_OS_NAME, ANDROID_OS_NAME));
        if (!TextUtils.isEmpty(DeviceInfo.release) && !DeviceInfo.release.equals("unknown")) {
            this.postParameters.add(new BasicNameValuePair(DI_OS_VERSION, DeviceInfo.release));
        }
        this.postParameters.add(new BasicNameValuePair(DI_SDK_VERSION, this.mLibVersion));
    }

    protected void addAppInfoParameters() throws AuthError {
        this.postParameters.add(new BasicNameValuePair(APP_NAME, this.mAppName));
        if (this.mAppVersion != null) {
            this.postParameters.add(new BasicNameValuePair(APP_VERSION, this.mAppVersion));
        }
    }

    @Override // com.amazon.identity.auth.device.endpoint.APTokenRequest
    public String getVerbAsString() {
        return "POST";
    }

    @Override // com.amazon.identity.auth.device.endpoint.RequestUrlBuilder
    public int getPort() {
        return getRequestPort();
    }

    public static int getRequestPort() {
        if (DefaultLibraryInfo.isProd()) {
        }
        return 443;
    }

    protected void initializeCookies() {
    }

    protected void addHeader(Header header) {
        this._headers.add(header);
    }

    @Override // com.amazon.identity.auth.device.endpoint.RequestUrlBuilder
    public String getDomain() {
        return this._domain;
    }

    public void setDomain(String domain) {
        this._domain = domain;
    }

    @Override // com.amazon.identity.auth.device.endpoint.RequestUrlBuilder
    public String getRequestUrl() throws AuthError {
        String host = getHost(this.mOptions);
        int port = getPort();
        String endPoint = getEndPoint();
        try {
            URL url = new URL("https", host, port, endPoint);
            return url.toString();
        } catch (MalformedURLException e) {
            throw new AuthError("MalformedURLException", e, AuthError.ERROR_TYPE.ERROR_BAD_PARAM);
        }
    }

    @Override // com.amazon.identity.auth.device.endpoint.APTokenRequest
    public String getHost(Bundle options) {
        return getRequestHost(getDomain(), options);
    }

    public static String getRequestHost(String domain, Bundle options) {
        String prefix;
        String requestDomain = domain;
        if (requestDomain == null) {
            MAPLog.i(LOG_TAG, "No domain passed into Request, Attempting to get from options");
            if (options != null) {
                requestDomain = options.getString(AccountManagerConstants.AP_OPTION_KEY_DOMAIN);
            }
        }
        if (requestDomain == null) {
            requestDomain = DEFAULT_DOMAIN;
            MAPLog.i(LOG_TAG, "No domain in options");
        }
        switch (DefaultLibraryInfo.getOverrideLibraryState()) {
            case FORCE_DEVO:
                prefix = "";
                break;
            case FORCE_PRE_PROD:
                prefix = "";
                break;
            default:
                prefix = PROD_PREFIX;
                break;
        }
        String host = prefix + requestDomain;
        return host;
    }

    @Override // com.amazon.identity.auth.device.endpoint.APTokenRequest
    public void initializeHeaders() throws AuthError {
        this._headers.addAll(getDefaultHeaders());
    }

    protected List<Header> getDefaultHeaders() {
        List<Header> opfHeaders = new ArrayList<>();
        opfHeaders.add(new BasicHeader(HttpRequest.HEADER_ACCEPT_ENCODING, "gzip, deflate"));
        opfHeaders.add(new BasicHeader("Accept-Language", "en-us,en;q=0.5"));
        opfHeaders.add(new BasicHeader("Accept", "application/xml,application/xhtml+xml,text/html,application/json;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5"));
        opfHeaders.add(new BasicHeader(HttpRequest.HEADER_ACCEPT_CHARSET, "utf-8, iso-8859-1, utf-16, *;q=0.7"));
        return opfHeaders;
    }

    protected HttpResponseInterceptor getDefaultHttpResponseInterceptor() {
        return new HttpResponseInterceptor() { // from class: com.amazon.identity.auth.device.endpoint.AbstractTokenRequest.1
            @Override // org.apache.http.HttpResponseInterceptor
            public void process(HttpResponse response, HttpContext context) throws HttpException, IOException {
                HttpEntity entity = response.getEntity();
                Header ceheader = entity.getContentEncoding();
                if (ceheader != null) {
                    HeaderElement[] codecs = ceheader.getElements();
                    for (HeaderElement headerElement : codecs) {
                        if (headerElement.getName().equalsIgnoreCase(HttpRequest.ENCODING_GZIP)) {
                            response.setEntity(new GzipDecompressingEntity(response.getEntity()));
                            return;
                        }
                    }
                }
            }
        };
    }

    static class GzipDecompressingEntity extends HttpEntityWrapper {
        public GzipDecompressingEntity(HttpEntity entity) {
            super(entity);
        }

        @Override // org.apache.http.entity.HttpEntityWrapper, org.apache.http.HttpEntity
        public InputStream getContent() throws IllegalStateException, IOException {
            InputStream wrappedin = this.wrappedEntity.getContent();
            return new GZIPInputStream(wrappedin);
        }

        @Override // org.apache.http.entity.HttpEntityWrapper, org.apache.http.HttpEntity
        public long getContentLength() {
            return -1L;
        }
    }
}

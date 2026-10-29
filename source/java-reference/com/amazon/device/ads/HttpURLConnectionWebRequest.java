package com.amazon.device.ads;

import com.newrelic.agent.android.instrumentation.HttpInstrumentation;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.ProtocolException;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
class HttpURLConnectionWebRequest extends WebRequest {
    private static final String LOGTAG = HttpURLConnectionWebRequest.class.getSimpleName();
    private HttpURLConnection connection;

    HttpURLConnectionWebRequest() {
    }

    @Override // com.amazon.device.ads.WebRequest
    protected WebRequest.WebResponse doHttpNetworkCall(URL url) throws Throwable {
        if (this.connection != null) {
            closeConnection();
        }
        try {
            this.connection = openConnection(url);
            setupRequestProperties(this.connection);
            try {
                this.connection.connect();
                return prepareResponse(this.connection);
            } catch (SocketTimeoutException e) {
                getLogger().e("Socket timed out while connecting to URL: %s", e.getMessage());
                throw new WebRequest.WebRequestException(WebRequest.WebRequestStatus.NETWORK_TIMEOUT, "Socket timed out while connecting to URL", e);
            } catch (Exception e2) {
                getLogger().e("Problem while connecting to URL: %s", e2.getMessage());
                throw new WebRequest.WebRequestException(WebRequest.WebRequestStatus.NETWORK_FAILURE, "Probem while connecting to URL", e2);
            }
        } catch (IOException e3) {
            getLogger().e("Problem while opening the URL connection: %s", e3.getMessage());
            throw new WebRequest.WebRequestException(WebRequest.WebRequestStatus.NETWORK_FAILURE, "Problem while opening the URL connection", e3);
        }
    }

    protected HttpURLConnection openConnection(URL url) throws IOException {
        return (HttpURLConnection) HttpInstrumentation.openConnection(url.openConnection());
    }

    @Override // com.amazon.device.ads.WebRequest
    protected void closeConnection() {
        if (this.connection != null) {
            this.connection.disconnect();
            this.connection = null;
        }
    }

    protected void setupRequestProperties(HttpURLConnection connection) throws Throwable {
        try {
            connection.setRequestMethod(getHttpMethod().name());
            for (Map.Entry<String, String> header : this.headers.entrySet()) {
                if (header.getValue() != null && !header.getValue().equals("")) {
                    connection.setRequestProperty(header.getKey(), header.getValue());
                }
            }
            connection.setConnectTimeout(getTimeout());
            connection.setReadTimeout(getTimeout());
            logUrl(connection.getURL().toString());
            switch (getHttpMethod()) {
                case GET:
                    connection.setDoOutput(false);
                    return;
                case POST:
                    connection.setDoOutput(true);
                    writePostBody(connection);
                    return;
                default:
                    return;
            }
        } catch (ProtocolException e) {
            getLogger().e("Invalid client protocol: %s", e.getMessage());
            throw new WebRequest.WebRequestException(WebRequest.WebRequestStatus.INVALID_CLIENT_PROTOCOL, "Invalid client protocol", e);
        }
    }

    private void writePostBody(HttpURLConnection connection) throws Throwable {
        StringBuilder postBody = new StringBuilder();
        if (this.requestBody != null) {
            postBody.append(this.requestBody);
        } else if (this.postParameters != null && !this.postParameters.isEmpty()) {
            for (Map.Entry<String, String> param : this.postParameters.entrySet()) {
                postBody.append(param.getKey()).append("=").append(WebUtils.getURLEncodedString(param.getValue())).append("&");
            }
            postBody.deleteCharAt(postBody.lastIndexOf("&"));
        }
        if (this.logRequestBodyEnabled && getRequestBody() != null) {
            getLogger().d("Request Body: %s", getRequestBody());
        }
        OutputStreamWriter out = null;
        try {
            try {
                OutputStreamWriter out2 = new OutputStreamWriter(connection.getOutputStream(), "UTF-8");
                try {
                    out2.write(postBody.toString());
                    if (out2 != null) {
                        try {
                            out2.close();
                        } catch (IOException e) {
                            getLogger().e("Problem while closing output stream writer for request body: %s", e.getMessage());
                            throw new WebRequest.WebRequestException(WebRequest.WebRequestStatus.NETWORK_FAILURE, "Problem while closing output stream writer for request body", e);
                        }
                    }
                } catch (IOException e2) {
                    e = e2;
                    out = out2;
                    getLogger().e("Problem while creating output steam for request body: %s", e.getMessage());
                    throw new WebRequest.WebRequestException(WebRequest.WebRequestStatus.NETWORK_FAILURE, "Problem while creating output steam for request body", e);
                } catch (Throwable th) {
                    th = th;
                    out = out2;
                    if (out != null) {
                        try {
                            out.close();
                        } catch (IOException e3) {
                            getLogger().e("Problem while closing output stream writer for request body: %s", e3.getMessage());
                            throw new WebRequest.WebRequestException(WebRequest.WebRequestStatus.NETWORK_FAILURE, "Problem while closing output stream writer for request body", e3);
                        }
                    }
                    throw th;
                }
            } catch (IOException e4) {
                e = e4;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    protected WebRequest.WebResponse prepareResponse(HttpURLConnection connection) throws WebRequest.WebRequestException {
        WebRequest.WebResponse webResponse = new WebRequest.WebResponse();
        try {
            webResponse.setHttpStatusCode(connection.getResponseCode());
            webResponse.setHttpStatus(connection.getResponseMessage());
            if (webResponse.getHttpStatusCode() == 200) {
                try {
                    webResponse.setInputStream(connection.getInputStream());
                } catch (IOException e) {
                    getLogger().e("IOException while reading the input stream from response: %s", e.getMessage());
                    throw new WebRequest.WebRequestException(WebRequest.WebRequestStatus.NETWORK_FAILURE, "IOException while reading the input stream from response", e);
                }
            }
            return webResponse;
        } catch (IOException e2) {
            getLogger().e("IOException while getting the response status code: %s", e2.getMessage());
            throw new WebRequest.WebRequestException(WebRequest.WebRequestStatus.NETWORK_FAILURE, "IOException while getting the response status code", e2);
        } catch (IndexOutOfBoundsException e3) {
            getLogger().e("IndexOutOfBoundsException while getting the response status code: %s", e3.getMessage());
            throw new WebRequest.WebRequestException(WebRequest.WebRequestStatus.MALFORMED_URL, "IndexOutOfBoundsException while getting the response status code", e3);
        } catch (SocketTimeoutException e4) {
            getLogger().e("Socket Timeout while getting the response status code: %s", e4.getMessage());
            throw new WebRequest.WebRequestException(WebRequest.WebRequestStatus.NETWORK_TIMEOUT, "Socket Timeout while getting the response status code", e4);
        }
    }

    @Override // com.amazon.device.ads.WebRequest
    protected String getSubLogTag() {
        return LOGTAG;
    }
}

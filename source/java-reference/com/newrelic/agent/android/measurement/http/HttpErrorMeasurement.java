package com.newrelic.agent.android.measurement.http;

import com.newrelic.agent.android.measurement.BaseMeasurement;
import com.newrelic.agent.android.measurement.MeasurementType;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class HttpErrorMeasurement extends BaseMeasurement {
    private int httpStatusCode;
    private Map<String, String> params;
    private String responseBody;
    private String stackTrace;
    private String url;

    public HttpErrorMeasurement(String url, int httpStatusCode) {
        super(MeasurementType.HttpError);
        setUrl(url);
        setName(url);
        setHttpStatusCode(httpStatusCode);
        setStartTime(System.currentTimeMillis());
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public void setHttpStatusCode(int httpStatusCode) {
        this.httpStatusCode = httpStatusCode;
    }

    public void setResponseBody(String responseBody) {
        this.responseBody = responseBody;
    }

    public void setStackTrace(String stackTrace) {
        this.stackTrace = stackTrace;
    }

    public void setParams(Map<String, String> params) {
        this.params = params;
    }

    public String getUrl() {
        return this.url;
    }

    public int getHttpStatusCode() {
        return this.httpStatusCode;
    }

    public String getResponseBody() {
        return this.responseBody;
    }

    public String getStackTrace() {
        return this.stackTrace;
    }

    public Map<String, String> getParams() {
        return this.params;
    }
}

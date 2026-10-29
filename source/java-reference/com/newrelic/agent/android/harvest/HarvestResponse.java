package com.newrelic.agent.android.harvest;

import org.apache.http.HttpStatus;

/* JADX INFO: loaded from: classes.dex */
public class HarvestResponse {
    private static final String DISABLE_STRING = "DISABLE_NEW_RELIC";
    private String responseBody;
    private long responseTime;
    private int statusCode;

    public enum Code {
        OK(200),
        UNAUTHORIZED(HttpStatus.SC_UNAUTHORIZED),
        FORBIDDEN(HttpStatus.SC_FORBIDDEN),
        ENTITY_TOO_LARGE(413),
        INVALID_AGENT_ID(450),
        UNSUPPORTED_MEDIA_TYPE(HttpStatus.SC_UNSUPPORTED_MEDIA_TYPE),
        INTERNAL_SERVER_ERROR(500),
        UNKNOWN(-1);

        int statusCode;

        Code(int statusCode) {
            this.statusCode = statusCode;
        }

        public int getStatusCode() {
            return this.statusCode;
        }

        public boolean isError() {
            return this != OK;
        }

        public boolean isOK() {
            return !isError();
        }
    }

    public Code getResponseCode() {
        if (isOK()) {
            return Code.OK;
        }
        Code[] arr$ = Code.values();
        for (Code code : arr$) {
            if (code.getStatusCode() == this.statusCode) {
                return code;
            }
        }
        return Code.UNKNOWN;
    }

    public boolean isDisableCommand() {
        return Code.FORBIDDEN == getResponseCode() && DISABLE_STRING.equals(getResponseBody());
    }

    public boolean isError() {
        return this.statusCode >= 400;
    }

    public boolean isUnknown() {
        return getResponseCode() == Code.UNKNOWN;
    }

    public boolean isOK() {
        return !isError();
    }

    public int getStatusCode() {
        return this.statusCode;
    }

    public void setStatusCode(int statusCode) {
        this.statusCode = statusCode;
    }

    public String getResponseBody() {
        return this.responseBody;
    }

    public void setResponseBody(String responseBody) {
        this.responseBody = responseBody;
    }

    public long getResponseTime() {
        return this.responseTime;
    }

    public void setResponseTime(long responseTime) {
        this.responseTime = responseTime;
    }
}

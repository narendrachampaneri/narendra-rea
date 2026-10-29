package com.amazon.ags.client;

import com.amazon.ags.api.ErrorCode;
import com.amazon.ags.api.RequestResponse;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class RequestResponseImpl implements RequestResponse {
    private final ErrorCode errorCode;
    private final int responseCode;
    private Object[] userData;

    public RequestResponseImpl(int responseCode, ErrorCode errorCode) {
        if (errorCode == null) {
            throw new IllegalArgumentException("errorCode must be non-null.");
        }
        this.responseCode = responseCode;
        this.errorCode = errorCode;
    }

    public RequestResponseImpl(int responseCode) {
        this.responseCode = responseCode;
        this.errorCode = ErrorCode.fromServiceResponseCode(responseCode);
    }

    public RequestResponseImpl(JSONObject response) {
        int code;
        try {
            code = response.getInt("RESPONSE_CODE");
        } catch (JSONException e) {
            code = 24;
        }
        this.responseCode = code;
        this.errorCode = ErrorCode.fromServiceResponseCode(this.responseCode);
    }

    @Override // com.amazon.ags.api.RequestResponse
    public String toString() {
        String text = ("ResponseCode: " + this.responseCode) + "\n ErrorCode: " + this.errorCode;
        if (this.userData != null) {
            text = text + "\n " + this.userData.toString();
        }
        return text + "\n requestType: " + getEventType();
    }

    public int getEventType() {
        return 0;
    }

    @Override // com.amazon.ags.api.RequestResponse
    public final void setUserData(Object[] userData) {
        this.userData = userData;
    }

    @Override // com.amazon.ags.api.RequestResponse
    public final Object[] getUserData() {
        return this.userData;
    }

    public final int getResponseCode() {
        return this.responseCode;
    }

    @Override // com.amazon.ags.api.RequestResponse
    public final ErrorCode getError() {
        return this.errorCode;
    }

    @Override // com.amazon.ags.api.RequestResponse
    public final boolean isError() {
        return getError().isError();
    }
}

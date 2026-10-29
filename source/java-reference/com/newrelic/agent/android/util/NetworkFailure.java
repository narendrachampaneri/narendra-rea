package com.newrelic.agent.android.util;

import com.newrelic.agent.android.harvest.type.HarvestErrorCodes;
import com.newrelic.agent.android.logging.AgentLog;
import com.newrelic.agent.android.logging.AgentLogManager;
import java.net.ConnectException;
import java.net.MalformedURLException;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import javax.net.ssl.SSLException;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpResponseException;
import org.apache.http.conn.ConnectTimeoutException;

/* JADX INFO: loaded from: classes.dex */
public enum NetworkFailure {
    Unknown(-1),
    BadURL(-1000),
    TimedOut(-1001),
    CannotConnectToHost(-1004),
    DNSLookupFailed(-1006),
    BadServerResponse(HarvestErrorCodes.NSURLErrorBadServerResponse),
    SecureConnectionFailed(HarvestErrorCodes.NSURLErrorSecureConnectionFailed);

    private static final AgentLog log = AgentLogManager.getAgentLog();
    private int errorCode;

    NetworkFailure(int errorCode) {
        this.errorCode = errorCode;
    }

    public static NetworkFailure exceptionToNetworkFailure(Exception e) {
        log.error("NetworkFailure.exceptionToNetworkFailure: Attempting to convert network exception " + e.getClass().getName() + " to error code.");
        NetworkFailure error = Unknown;
        if (e instanceof UnknownHostException) {
            NetworkFailure error2 = DNSLookupFailed;
            return error2;
        }
        if ((e instanceof SocketTimeoutException) || (e instanceof ConnectTimeoutException)) {
            NetworkFailure error3 = TimedOut;
            return error3;
        }
        if (e instanceof ConnectException) {
            NetworkFailure error4 = CannotConnectToHost;
            return error4;
        }
        if (e instanceof MalformedURLException) {
            NetworkFailure error5 = BadURL;
            return error5;
        }
        if (e instanceof SSLException) {
            NetworkFailure error6 = SecureConnectionFailed;
            return error6;
        }
        if ((e instanceof HttpResponseException) || (e instanceof ClientProtocolException)) {
            NetworkFailure error7 = BadServerResponse;
            return error7;
        }
        return error;
    }

    public static int exceptionToErrorCode(Exception e) {
        return exceptionToNetworkFailure(e).getErrorCode();
    }

    public static NetworkFailure fromErrorCode(int errorCode) {
        log.debug("fromErrorCode invoked with errorCode: " + errorCode);
        NetworkFailure[] arr$ = values();
        for (NetworkFailure failure : arr$) {
            if (failure.getErrorCode() == errorCode) {
                log.debug("fromErrorCode found matching failure: " + failure);
                return failure;
            }
        }
        return Unknown;
    }

    public int getErrorCode() {
        return this.errorCode;
    }
}

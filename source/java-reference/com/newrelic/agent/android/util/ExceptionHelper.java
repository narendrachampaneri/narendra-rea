package com.newrelic.agent.android.util;

import com.newrelic.agent.android.harvest.AgentHealth;
import com.newrelic.agent.android.harvest.AgentHealthException;
import com.newrelic.agent.android.harvest.type.HarvestErrorCodes;
import com.newrelic.agent.android.logging.AgentLog;
import com.newrelic.agent.android.logging.AgentLogManager;
import java.io.EOFException;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.net.ConnectException;
import java.net.MalformedURLException;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import javax.net.ssl.SSLException;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.conn.ConnectTimeoutException;

/* JADX INFO: loaded from: classes.dex */
public class ExceptionHelper implements HarvestErrorCodes {
    private static final AgentLog log = AgentLogManager.getAgentLog();

    public static int exceptionToErrorCode(Exception e) {
        log.debug("ExceptionHelper: exception " + e.getClass().getName() + " to error code.");
        if (e instanceof ClientProtocolException) {
            return HarvestErrorCodes.NSURLErrorBadServerResponse;
        }
        if (e instanceof UnknownHostException) {
            return -1006;
        }
        if ((e instanceof SocketTimeoutException) || (e instanceof ConnectTimeoutException)) {
            return -1001;
        }
        if (e instanceof ConnectException) {
            return -1004;
        }
        if (e instanceof MalformedURLException) {
            return -1000;
        }
        if (e instanceof SSLException) {
            return HarvestErrorCodes.NSURLErrorSecureConnectionFailed;
        }
        if (e instanceof FileNotFoundException) {
            recordSupportabilityMetric(e, "FileNotFoundException");
            return HarvestErrorCodes.NRURLErrorFileDoesNotExist;
        }
        if (e instanceof EOFException) {
            recordSupportabilityMetric(e, "EOFException");
            return -1;
        }
        if (e instanceof IOException) {
            recordSupportabilityMetric(e, "IOException");
            return -1;
        }
        if (!(e instanceof RuntimeException)) {
            return -1;
        }
        recordSupportabilityMetric(e, "RuntimeException");
        return -1;
    }

    public static void recordSupportabilityMetric(Exception e, String baseExceptionKey) {
        AgentHealthException agentHealthException = new AgentHealthException(e);
        StackTraceElement topTraceElement = agentHealthException.getStackTrace()[0];
        log.error(String.format("ExceptionHelper: %s:%s(%s:%s) %s[%s] %s", agentHealthException.getSourceClass(), agentHealthException.getSourceMethod(), topTraceElement.getFileName(), Integer.valueOf(topTraceElement.getLineNumber()), baseExceptionKey, agentHealthException.getExceptionClass(), agentHealthException.getMessage()));
        AgentHealth.noticeException(agentHealthException, baseExceptionKey);
    }
}

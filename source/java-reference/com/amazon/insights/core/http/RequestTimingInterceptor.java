package com.amazon.insights.core.http;

import com.amazon.insights.Event;
import com.amazon.insights.core.log.Logger;
import com.amazon.insights.core.system.Connectivity;
import com.amazon.insights.core.util.DateUtil;
import com.amazon.insights.core.util.StringUtil;
import com.amazon.insights.event.InternalEventClient;
import java.text.DateFormat;
import java.util.Date;

/* JADX INFO: loaded from: classes2.dex */
public class RequestTimingInterceptor implements HttpClient.Interceptor {
    public static final String REQUESTATTEMPTS_HEADER = "x-amzn-RequestAttempts";
    public static final String REQUESTTIME_HEADER = "x-amzn-RequestTime";
    public static final String SERVERINFO_HEADER = "x-amzn-ServerInfo";
    private static final String TIMEZONE_FORMAT = "Z";
    private static final Logger logger = Logger.getLogger(RequestTimingInterceptor.class);
    private final Connectivity connectivity;
    private DateFormat df = DateUtil.createLocaleIndependentDateFormatter(TIMEZONE_FORMAT);
    private final InternalEventClient eventClient;

    public RequestTimingInterceptor(Connectivity connectivity, InternalEventClient eventClient) {
        this.eventClient = eventClient;
        this.connectivity = connectivity;
    }

    @Override // com.amazon.insights.core.http.HttpClient.Interceptor
    public void before(HttpClient.Request request) {
    }

    @Override // com.amazon.insights.core.http.HttpClient.Interceptor
    public void after(HttpClient.Response response) {
        recordRequestTimeEvent(response);
    }

    private synchronized String getTimeZone() {
        return this.df.format(new Date());
    }

    private void recordRequestTimeEvent(HttpClient.Response response) {
        if (response != null) {
            try {
                HttpClient.Request request = response.getOriginatingRequest();
                if (request != null) {
                    String url = request.getUrl();
                    String responseTimeStr = response.getHeader("x-amzn-RequestTime");
                    long responseTime = 0;
                    if (responseTimeStr != null && responseTimeStr.trim().length() > 0) {
                        try {
                            responseTime = Long.parseLong(responseTimeStr.trim());
                        } catch (NumberFormatException e) {
                        }
                    }
                    String requestAttemptsStr = response.getHeader("x-amzn-RequestAttempts");
                    int requestAttempts = 0;
                    if (requestAttemptsStr != null && requestAttemptsStr.trim().length() > 0) {
                        try {
                            requestAttempts = Integer.parseInt(requestAttemptsStr.trim());
                        } catch (NumberFormatException e2) {
                        }
                    }
                    String serverInfo = response.getHeader("x-amzn-ServerInfo");
                    if (!StringUtil.isNullOrEmpty(responseTimeStr) && this.eventClient != null) {
                        Event recordEvent = this.eventClient.createEvent("_httpRequestTiming").withAttribute("url", url).withAttribute("responseCode", Integer.toString(response.getCode())).withAttribute("timeZone", getTimeZone()).withMetric("attempts", Integer.valueOf(requestAttempts)).withMetric("totalTime", Long.valueOf(responseTime)).withMetric("requestSize", Long.valueOf(response.getRequestSize())).withMetric("responseSize", Long.valueOf(response.getResponseSize()));
                        String connectionType = "UNKNOWN";
                        if (this.connectivity != null) {
                            if (this.connectivity.hasWired()) {
                                connectionType = "OTHER";
                            } else if (this.connectivity.hasWifi()) {
                                connectionType = "WIFI";
                            } else if (this.connectivity.hasWAN()) {
                                connectionType = "WAN";
                            }
                        }
                        recordEvent.withAttribute("network", connectionType);
                        if (serverInfo != null) {
                            recordEvent.withAttribute("serverInfo", serverInfo);
                        }
                        this.eventClient.recordEvent(recordEvent, false);
                    }
                }
            } catch (Exception e3) {
                logger.w("Unable to record _RequestTime event", e3);
            }
        }
    }
}

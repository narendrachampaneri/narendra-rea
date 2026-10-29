package com.amazon.insights.core.crash.ers;

import com.amazon.insights.InsightsHandler;
import com.amazon.insights.core.DefaultInsightsHandler;
import com.amazon.insights.core.InsightsContext;
import com.amazon.insights.core.http.HttpClient;
import com.amazon.insights.core.log.Logger;
import com.amazon.insights.delivery.ERSRequestBuilder;
import com.amazon.insights.error.InsightsError;
import com.amazon.insights.error.UnexpectedError;
import com.amazon.insights.event.DefaultEvent;
import com.amazon.insights.event.adapter.EventAdapter;
import com.amazon.insights.event.adapter.JSONEventAdapter;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class ERSClient {
    private static final int MAX_SUBMIT_OPERATIONS = 100;
    private static final Logger logger = Logger.getLogger(ERSClient.class);
    private final ERSRequestBuilder ersRequestBuilder;
    private final EventAdapter<JSONObject> eventAdapter;
    private final HttpClient httpClient;
    private final ExecutorService submissionExecutor;

    public static ERSClient newInstance(InsightsContext context) {
        ExecutorService submissionsExService = new ThreadPoolExecutor(1, 1, 0L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue(100), new ThreadPoolExecutor.DiscardPolicy());
        ERSRequestBuilder builder = ERSRequestBuilder.newBuilder(context);
        JSONEventAdapter adapter = new JSONEventAdapter();
        return new ERSClient(submissionsExService, builder, context.getHttpClient(), adapter);
    }

    public ERSClient(ExecutorService submissionRunnableQueue, ERSRequestBuilder ersRequestBuilder, HttpClient httpClient, EventAdapter<JSONObject> eventAdapter) {
        this.submissionExecutor = submissionRunnableQueue;
        this.ersRequestBuilder = ersRequestBuilder;
        this.httpClient = httpClient;
        this.eventAdapter = eventAdapter;
    }

    public InsightsHandler<Boolean> submitEvents(List<DefaultEvent> events) {
        final DefaultInsightsHandler<Boolean> handler = new DefaultInsightsHandler<>();
        final JSONArray eventsArray = new JSONArray();
        for (DefaultEvent event : events) {
            JSONObject jsonObject = this.eventAdapter.translateFromEvent(event);
            if (jsonObject != null) {
                eventsArray.put(jsonObject);
            }
        }
        this.submissionExecutor.execute(new Runnable() { // from class: com.amazon.insights.core.crash.ers.ERSClient.1
            @Override // java.lang.Runnable
            public void run() throws Throwable {
                try {
                    HttpClient.Request request = ERSClient.this.ersRequestBuilder.createHttpRequest(eventsArray);
                    final HttpClient.Response response = ERSClient.this.httpClient.execute(request, 0);
                    if (response.getCode() / 100 == 2) {
                        ERSClient.logger.d(String.format("Success from EventService: %d", Integer.valueOf(response.getCode())));
                        handler.onComplete(Boolean.TRUE);
                    } else {
                        handler.onError(new InsightsError() { // from class: com.amazon.insights.core.crash.ers.ERSClient.1.1
                            private final String message;

                            {
                                this.message = String.format("Failed to submit events to EventService: %d", Integer.valueOf(response.getCode()));
                            }

                            @Override // com.amazon.insights.error.InsightsError
                            public String getMessage() {
                                return this.message;
                            }
                        });
                    }
                } catch (Exception e) {
                    ERSClient.logger.e("Unable to send ers request", e);
                    handler.onError(new UnexpectedError("Failed to submit events to EventService", e));
                }
            }
        });
        return handler;
    }
}

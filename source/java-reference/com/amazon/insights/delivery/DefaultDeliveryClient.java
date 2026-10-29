package com.amazon.insights.delivery;

import com.amazon.insights.core.InsightsContext;
import com.amazon.insights.core.http.HttpClient;
import com.amazon.insights.core.http.HttpUtil;
import com.amazon.insights.core.log.Logger;
import com.amazon.insights.core.util.StringUtil;
import com.amazon.insights.delivery.policy.DefaultDeliveryPolicyFactory;
import com.amazon.insights.delivery.policy.DeliveryPolicy;
import com.amazon.insights.delivery.policy.DeliveryPolicyFactory;
import com.amazon.insights.event.InternalEvent;
import com.amazon.insights.event.adapter.EventAdapter;
import com.amazon.insights.event.adapter.JSONEventAdapter;
import com.newrelic.agent.android.instrumentation.JSONObjectInstrumentation;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;
import org.apache.http.HttpStatus;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class DefaultDeliveryClient implements DeliveryClient {
    private static final int CLIPPED_EVENT_LENGTH = 5;
    static final int DEFAULT_EVENT_RECORD_REQUEST_RETRIES = 2;
    static final int DEFAULT_MAX_SUBMISSIONS_ALLOWED = 3;
    static final long DEFAULT_MAX_SUBMISSION_SIZE = 102400;
    public static final String EVENTS_DIRECTORY = "events";
    static final String KEY_EVENT_RECORDER_MAX_RETRIES = "eventRecorderRequestRetries";
    static final String KEY_MAX_SUBMISSIONS_ALLOWED = "maxSubmissionAllowed";
    static final String KEY_MAX_SUBMISSION_SIZE = "maxSubmissionSize";
    private static final int MAX_EVENT_OPERATIONS = 1000;
    private static final int MAX_SUBMIT_OPERATIONS = 100;
    private final InsightsContext context;
    private final EventAdapter<JSONObject> eventAdapter;
    private final EventStore eventStore;
    private final ExecutorService eventsRunnableQueue;
    private final DeliveryPolicyFactory policyFactory;
    private final ERSRequestBuilder requestBuilder;
    private final ExecutorService submissionRunnableQueue;
    private static final Logger logger = Logger.getLogger(DefaultDeliveryClient.class);
    static final Set<Integer> RETRY_REQUEST_CODES = new HashSet();
    private final AtomicLong avgWriteEventTimeMillis = new AtomicLong(25);
    private final AtomicLong eventsProcessed = new AtomicLong(0);

    static {
        RETRY_REQUEST_CODES.add(Integer.valueOf(HttpStatus.SC_UNAUTHORIZED));
        RETRY_REQUEST_CODES.add(404);
        RETRY_REQUEST_CODES.add(Integer.valueOf(HttpStatus.SC_PROXY_AUTHENTICATION_REQUIRED));
        RETRY_REQUEST_CODES.add(408);
    }

    public static DefaultDeliveryClient newInstance(InsightsContext context, boolean allowWANDelivery) {
        ExecutorService eventsExService = new ThreadPoolExecutor(1, 1, 0L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue(1000), new ThreadPoolExecutor.DiscardPolicy());
        ExecutorService submissionsExService = new ThreadPoolExecutor(1, 1, 0L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue(100), new ThreadPoolExecutor.DiscardPolicy());
        ERSRequestBuilder requestBuilder = ERSRequestBuilder.newBuilder(context);
        DeliveryPolicyFactory policyFactory = new DefaultDeliveryPolicyFactory(context, allowWANDelivery);
        return new DefaultDeliveryClient(context, policyFactory, eventsExService, submissionsExService, requestBuilder, FileEventStore.newInstance(context), new JSONEventAdapter());
    }

    public DefaultDeliveryClient(InsightsContext context, DeliveryPolicyFactory policyFactory, ExecutorService eventsRunnableQueue, ExecutorService submissionRunnableQueue, ERSRequestBuilder requestBuilder, EventStore eventStore, EventAdapter<JSONObject> eventAdapter) {
        this.policyFactory = policyFactory;
        this.eventsRunnableQueue = eventsRunnableQueue;
        this.submissionRunnableQueue = submissionRunnableQueue;
        this.context = context;
        this.requestBuilder = requestBuilder;
        this.eventStore = eventStore;
        this.eventAdapter = eventAdapter;
    }

    @Override // com.amazon.insights.event.EventObserver
    public void notify(InternalEvent event) {
        enqueueEventForDelivery(event);
    }

    @Override // com.amazon.insights.delivery.DeliveryClient
    public void enqueueEventForDelivery(final InternalEvent event) {
        final long startEnqueueTimeMillis = System.currentTimeMillis();
        final long origEventsProcessed = this.eventsProcessed.get();
        this.eventsRunnableQueue.execute(new Runnable() { // from class: com.amazon.insights.delivery.DefaultDeliveryClient.1
            @Override // java.lang.Runnable
            public void run() {
                long start = System.currentTimeMillis();
                try {
                    EventStore eventStore = DefaultDeliveryClient.this.eventStore;
                    JSONObject jSONObject = (JSONObject) DefaultDeliveryClient.this.eventAdapter.translateFromEvent(event);
                    boolean eventStored = eventStore.put(!(jSONObject instanceof JSONObject) ? jSONObject.toString() : JSONObjectInstrumentation.toString(jSONObject));
                    if (eventStored) {
                        DefaultDeliveryClient.logger.devi(String.format("Event: '%s' recorded to local filestore", StringUtil.clipString(event.getEventType(), 5, true)));
                        DefaultDeliveryClient.logger.v(String.format("Time of enqueueEventForDelivery: %d", Long.valueOf(System.currentTimeMillis() - start)));
                    } else {
                        DefaultDeliveryClient.logger.devw(String.format("Event: '%s' failed to record to local filestore", StringUtil.clipString(event.getEventType(), 5, true)));
                    }
                } catch (EventStoreException e) {
                    DefaultDeliveryClient.logger.devw(String.format("Event: '%s' failed to record to local filestore", StringUtil.clipString(event.getEventType(), 5, true)));
                } finally {
                    DefaultDeliveryClient.this.calculateAndSetAverageWriteEventTime(origEventsProcessed, startEnqueueTimeMillis);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void calculateAndSetAverageWriteEventTime(long origEventsProcessed, long enqueueTimeMillis) {
        long currentEventsProcessed = this.eventsProcessed.addAndGet(1L);
        long eventsWrittenDelta = currentEventsProcessed - origEventsProcessed;
        long durationInMillis = System.currentTimeMillis() - enqueueTimeMillis;
        double decimalAvg = durationInMillis / eventsWrittenDelta;
        long avg = (long) Math.ceil(decimalAvg);
        this.avgWriteEventTimeMillis.set(avg);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long getSubmissionLatchWaitTime() {
        return (long) (this.avgWriteEventTimeMillis.get() * 1000 * 1.5d);
    }

    @Override // com.amazon.insights.delivery.DeliveryClient
    public void attemptDelivery() {
        List<DeliveryPolicy> policies = new ArrayList<>();
        DeliveryPolicy forceSubmissionPolicy = this.policyFactory.newForceSubmissionTimePolicy();
        DeliveryPolicy connectivityPolicy = this.policyFactory.newConnectivityPolicy();
        if (connectivityPolicy != null) {
            policies.add(connectivityPolicy);
        }
        if (forceSubmissionPolicy != null) {
            policies.add(forceSubmissionPolicy);
        }
        attemptDelivery(policies);
    }

    public void attemptDelivery(final List<DeliveryPolicy> policies) {
        final CountDownLatch submitWaitLatch = new CountDownLatch(1);
        this.eventsRunnableQueue.execute(new Runnable() { // from class: com.amazon.insights.delivery.DefaultDeliveryClient.2
            @Override // java.lang.Runnable
            public void run() {
                submitWaitLatch.countDown();
            }
        });
        this.submissionRunnableQueue.execute(new Runnable() { // from class: com.amazon.insights.delivery.DefaultDeliveryClient.3
            @Override // java.lang.Runnable
            public void run() throws Throwable {
                long start = System.currentTimeMillis();
                for (DeliveryPolicy policy : policies) {
                    if (!policy.isAllowed()) {
                        return;
                    }
                }
                try {
                    submitWaitLatch.await(DefaultDeliveryClient.this.getSubmissionLatchWaitTime(), TimeUnit.MILLISECONDS);
                } catch (InterruptedException e) {
                }
                boolean successful = true;
                long maxRequestSize = DefaultDeliveryClient.this.context.getConfiguration().optLong(DefaultDeliveryClient.KEY_MAX_SUBMISSION_SIZE, Long.valueOf(DefaultDeliveryClient.DEFAULT_MAX_SUBMISSION_SIZE)).longValue();
                JSONArray eventArray = new JSONArray();
                EventStore.EventIterator iter = DefaultDeliveryClient.this.eventStore.iterator();
                long currentRequestLength = 0;
                int submissions = 0;
                int maxAllowedSubmissions = DefaultDeliveryClient.this.context.getConfiguration().optInt(DefaultDeliveryClient.KEY_MAX_SUBMISSIONS_ALLOWED, 3).intValue();
                while (iter.hasNext() && submissions < maxAllowedSubmissions) {
                    try {
                        long eventLength = iter.peek() != null ? iter.peek().length() : 0L;
                        if (currentRequestLength + eventLength > maxRequestSize) {
                            successful = DefaultDeliveryClient.this.submitEvents(eventArray, policies);
                            if (!successful) {
                                break;
                            }
                            submissions++;
                            iter.removeReadEvents();
                            JSONArray eventArray2 = new JSONArray();
                            currentRequestLength = 0;
                            eventArray = eventArray2;
                        } else {
                            currentRequestLength += eventLength;
                            eventArray.put(JSONObjectInstrumentation.init(iter.next()));
                        }
                    } catch (JSONException e2) {
                        DefaultDeliveryClient.logger.e("Could not convert stored event into json", e2);
                    }
                }
                if (successful && eventArray.length() > 0 && DefaultDeliveryClient.this.submitEvents(eventArray, policies)) {
                    iter.removeReadEvents();
                }
                DefaultDeliveryClient.logger.v(String.format("Time of attemptDelivery: %d", Long.valueOf(System.currentTimeMillis() - start)));
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean submitEvents(JSONArray eventArray, List<DeliveryPolicy> policies) throws Throwable {
        boolean submitted = false;
        HttpClient.Request request = this.requestBuilder.createHttpRequest(eventArray);
        if (request == null) {
            logger.e("There was an error when building the http request");
            return false;
        }
        int requestRetries = this.context.getConfiguration().optInt(KEY_EVENT_RECORDER_MAX_RETRIES, 2).intValue();
        HttpClient.Response response = this.context.getHttpClient().execute(request, Integer.valueOf(requestRetries));
        if (response == null) {
            logger.e("The http request returned a null http response");
            return false;
        }
        if (response.getCode() / 100 == 2) {
            logger.i(String.format("Success from EventService: %d", Integer.valueOf(response.getCode())));
            logger.devi(String.format("Successful submission of %d events", Integer.valueOf(eventArray.length())));
            submitted = true;
        } else if (response.getCode() / 100 == 4 && !RETRY_REQUEST_CODES.contains(Integer.valueOf(response.getCode()))) {
            logger.i(String.format("Failed to submit events to EventService: %d", Integer.valueOf(response.getCode())));
            logger.devi(String.format("Failed submission of %d events", Integer.valueOf(eventArray.length())));
            submitted = true;
        } else {
            logger.devw("Unable to successfully deliver events to server. Response code (" + response.getCode() + ") " + HttpUtil.getMessageForResponse(response));
            logger.w("Recieved a bad response: " + response);
        }
        for (DeliveryPolicy policy : policies) {
            policy.handleDeliveryAttempt(submitted);
        }
        return submitted;
    }

    private List<String> getBatchedItems() {
        List<String> batchedEvents = new ArrayList<>();
        EventStore.EventIterator iter = this.eventStore.iterator();
        while (iter.hasNext()) {
            batchedEvents.add(iter.next());
        }
        return batchedEvents;
    }

    @Override // com.amazon.insights.delivery.DeliveryClient
    public String[] batchedEvents() {
        final CountDownLatch eventsReadyLatch = new CountDownLatch(1);
        this.eventsRunnableQueue.execute(new Runnable() { // from class: com.amazon.insights.delivery.DefaultDeliveryClient.4
            @Override // java.lang.Runnable
            public void run() {
                eventsReadyLatch.countDown();
            }
        });
        try {
            eventsReadyLatch.await(10L, TimeUnit.SECONDS);
        } catch (InterruptedException e) {
            logger.e("timeout waiting for batchedEvents", e);
        }
        List<String> batchedEvents = getBatchedItems();
        return (String[]) getBatchedItems().toArray(new String[batchedEvents.size()]);
    }
}

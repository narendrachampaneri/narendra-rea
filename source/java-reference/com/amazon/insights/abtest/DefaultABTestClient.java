package com.amazon.insights.abtest;

import com.amazon.ags.constants.NativeCallKeys;
import com.amazon.insights.ABTestClient;
import com.amazon.insights.Event;
import com.amazon.insights.InsightsHandler;
import com.amazon.insights.Variation;
import com.amazon.insights.VariationSet;
import com.amazon.insights.abtest.cache.VariationCache;
import com.amazon.insights.abtest.cache.VariationCaches;
import com.amazon.insights.core.DefaultInsightsHandler;
import com.amazon.insights.core.InsightsContext;
import com.amazon.insights.core.http.HttpClient;
import com.amazon.insights.core.http.HttpUtil;
import com.amazon.insights.core.idresolver.Id;
import com.amazon.insights.core.log.Logger;
import com.amazon.insights.core.util.Preconditions;
import com.amazon.insights.core.util.StringUtil;
import com.amazon.insights.error.InvalidArgumentError;
import com.amazon.insights.error.NullArgumentError;
import com.amazon.insights.error.UnexpectedError;
import com.amazon.insights.event.InternalEventClient;
import com.newrelic.agent.android.analytics.AnalyticAttribute;
import com.newrelic.agent.android.instrumentation.JSONArrayInstrumentation;
import com.newrelic.agent.android.instrumentation.JSONObjectInstrumentation;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class DefaultABTestClient implements ABTestClient {
    protected static final String ALLOW_OPERATION_AFTER_HEADER = "x-amzn-Allow-Operation-After";
    static final boolean DEFAULT_ABTEST_ENABLEMENT = true;
    static final int DEFAULT_ALLOCATION_REQUEST_RETRIES = 1;
    static final String DEFAULT_ENDPOINT = "https://applab-sdk.amazon.com/1.0";
    static final int DEFAULT_MAX_ALLOCATIONS = 10;
    private static final String ENDPOINT_PATH = "%s/applications/%s/treatments";
    static final String KEY_ABTEST_ENABLED = "isABTestEnabled";
    static final String KEY_ALLOCATION_REQUEST_RETRIES = "allocationRequestRetries";
    static final String KEY_ENDPOINT = "projectEndpoint";
    static final String KEY_MAX_ALLOCATIONS = "maxAllocations";
    static final String KEY_VARIATION_IDS = "_treatment_ids";
    private static final Logger logger = Logger.getLogger(DefaultABTestClient.class);
    private final Map<String, Long> appliedVariationIds;
    private final InsightsContext context;
    private final InternalEventClient eventClient;
    private final ExecutorService executor;
    private final VariationCache variationCache;

    public static DefaultABTestClient newInstance(InsightsContext context, InternalEventClient eventClient) {
        VariationCache variationCache = VariationCaches.tryGetFileVariationCache(context);
        return new DefaultABTestClient(context, Executors.newFixedThreadPool(2), eventClient, variationCache);
    }

    DefaultABTestClient(InsightsContext context, ExecutorService executor, InternalEventClient eventClient, VariationCache variationCache) {
        Preconditions.checkNotNull(context, "A valid context wrapper must be provided");
        Preconditions.checkNotNull(executor, "A valid ExecutorService must be provided");
        this.executor = executor;
        this.context = context;
        this.eventClient = eventClient;
        this.variationCache = variationCache;
        this.appliedVariationIds = new ConcurrentHashMap();
        setAppliedVariationIdsAsGlobalAttribute(variationCache.getAll());
    }

    private void setAppliedVariationIdsAsGlobalAttribute(Map<String, DefaultVariation> allVariations) {
        Preconditions.checkNotNull(allVariations);
        Preconditions.checkState(this.appliedVariationIds != null);
        Preconditions.checkState(this.eventClient != null);
        for (Map.Entry<String, DefaultVariation> entry : allVariations.entrySet()) {
            this.appliedVariationIds.put(entry.getKey(), Long.valueOf(entry.getValue().getVariationId()));
        }
        this.eventClient.removeGlobalAttribute(KEY_VARIATION_IDS);
        InternalEventClient internalEventClient = this.eventClient;
        JSONArray jSONArray = new JSONArray((Collection) this.appliedVariationIds.values());
        internalEventClient.addGlobalAttribute(KEY_VARIATION_IDS, !(jSONArray instanceof JSONArray) ? jSONArray.toString() : JSONArrayInstrumentation.toString(jSONArray));
    }

    public void setVariationIdsFromAllocatedVariation(DefaultVariation variation) {
        Long id;
        Preconditions.checkState(this.eventClient != null, "An event client must be provided");
        synchronized (this) {
            if (!this.appliedVariationIds.containsKey(variation.getProjectName()) || (id = this.appliedVariationIds.get(variation.getProjectName())) == null || !id.equals(Long.valueOf(variation.getVariationId()))) {
                if (variation.isDefault()) {
                    this.appliedVariationIds.remove(variation.getProjectName());
                } else {
                    this.appliedVariationIds.put(variation.getProjectName(), Long.valueOf(variation.getVariationId()));
                }
                this.eventClient.removeGlobalAttribute(KEY_VARIATION_IDS);
                InternalEventClient internalEventClient = this.eventClient;
                JSONArray jSONArray = new JSONArray((Collection) this.appliedVariationIds.values());
                internalEventClient.addGlobalAttribute(KEY_VARIATION_IDS, !(jSONArray instanceof JSONArray) ? jSONArray.toString() : JSONArrayInstrumentation.toString(jSONArray));
                if (!variation.isDefault()) {
                    Event recordEvent = this.eventClient.createEvent("_TreatmentsAllocated").withAttribute("_treatment_group", variation.getName()).withAttribute("_treatment_id", Long.toString(variation.getVariationId())).withAttribute("_experiment_id", Long.toString(variation.getExperimentId())).withAttribute("_application_key", variation.getApplicationKey()).withAttribute("_source", variation.getAllocationSource().name()).withMetric("_applied_date", Long.valueOf(System.currentTimeMillis()));
                    this.eventClient.recordEvent(recordEvent, false);
                }
            }
        }
    }

    @Override // com.amazon.insights.ABTestClient
    public InsightsHandler<VariationSet> getVariations(String... projectNames) {
        DefaultInsightsHandler<VariationSet> getVariationHandler = new DefaultInsightsHandler<>();
        if (projectNames != null && projectNames.length > 0) {
            Set<String> projectNamesSet = new HashSet<>();
            for (String projectName : projectNames) {
                if (projectName != null && !projectNamesSet.contains(projectName)) {
                    projectNamesSet.add(projectName);
                }
            }
            if (projectNamesSet.size() > 0) {
                logger.devi("Attempting to retrieve variation(s) for project(s):" + StringUtil.convertSetToString(projectNamesSet));
                allocateVariations(projectNamesSet, getVariationHandler);
            } else {
                getVariationHandler.onError(new InvalidArgumentError("projectNames", "getVariation", "No project names were provided."));
            }
        } else if (projectNames == null) {
            getVariationHandler.onError(new NullArgumentError("projectNames", "getVariation"));
        } else if (projectNames.length == 0) {
            getVariationHandler.onError(new InvalidArgumentError("projectNames", "getVariation", "No project names were provided."));
        }
        return getVariationHandler;
    }

    private DefaultInsightsHandler<VariationSet> allocateVariations(Set<String> projectNames, DefaultInsightsHandler<VariationSet> getVariationHandler) {
        AtomicReference<Map<String, Object>> dimensions = new AtomicReference<>(null);
        if (this.context.getUserProfile() != null && this.context.getUserProfile().getDimensions() != null) {
            dimensions.set(new HashMap<>(this.context.getUserProfile().getDimensions()));
        }
        this.executor.submit(new AnonymousClass1(projectNames, dimensions, getVariationHandler));
        return getVariationHandler;
    }

    /* JADX INFO: renamed from: com.amazon.insights.abtest.DefaultABTestClient$1, reason: invalid class name */
    class AnonymousClass1 implements Runnable {
        final /* synthetic */ AtomicReference val$dimensions;
        final /* synthetic */ DefaultInsightsHandler val$getVariationHandler;
        final /* synthetic */ Set val$projectNames;

        AnonymousClass1(Set set, AtomicReference atomicReference, DefaultInsightsHandler defaultInsightsHandler) {
            this.val$projectNames = set;
            this.val$dimensions = atomicReference;
            this.val$getVariationHandler = defaultInsightsHandler;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                List<String> projectNamesList = new ArrayList<>(this.val$projectNames);
                int maxAllocations = DefaultABTestClient.this.getMaxAllocations();
                int allocationCounter = 0;
                final Map<String, DefaultVariation> variations = new ConcurrentHashMap<>();
                while (allocationCounter < projectNamesList.size()) {
                    Set<String> workingProjectNames = new HashSet<>();
                    int i = 0;
                    while (i < maxAllocations && allocationCounter < projectNamesList.size()) {
                        workingProjectNames.add(projectNamesList.get(allocationCounter));
                        i++;
                        allocationCounter++;
                    }
                    DefaultABTestClient.this.allocateServerVariations(DefaultABTestClient.this.allocateCachedVariations(DefaultABTestClient.this.allocateDefaultVariations(workingProjectNames, variations), variations), variations, (Map) this.val$dimensions.get());
                }
                for (Map.Entry<String, DefaultVariation> variationEntry : variations.entrySet()) {
                    if (variationEntry.getValue().isDefault()) {
                        DefaultABTestClient.logger.devw("Resolved default variation: '" + variationEntry.getValue().getName() + "' for project: '" + variationEntry.getKey() + "'");
                    }
                }
                this.val$getVariationHandler.onComplete(new VariationSet() { // from class: com.amazon.insights.abtest.DefaultABTestClient.1.1
                    @Override // com.amazon.insights.VariationSet
                    public Variation getVariation(String projectName) {
                        if (contains(projectName)) {
                            Variation variation = (Variation) variations.get(projectName);
                            DefaultABTestClient.this.setVariationIdsFromAllocatedVariation((DefaultVariation) variation);
                            return variation;
                        }
                        DefaultVariation.Builder builder = new DefaultVariation.Builder();
                        if (projectName == null) {
                            projectName = "UNKNOWN";
                        }
                        return builder.setProjectName(projectName).setApplicationKey(DefaultABTestClient.this.context.getCredentials().getApplicationKey()).setUniqueId(DefaultABTestClient.this.context.getUniqueId()).build();
                    }

                    @Override // com.amazon.insights.VariationSet
                    public boolean contains(String projectName) {
                        return variations.containsKey(projectName);
                    }

                    @Override // com.amazon.insights.VariationSet, java.lang.Iterable
                    public Iterator<Variation> iterator() {
                        final Iterator<DefaultVariation> iter = variations.values().iterator();
                        return new Iterator<Variation>() { // from class: com.amazon.insights.abtest.DefaultABTestClient.1.1.1
                            @Override // java.util.Iterator
                            public boolean hasNext() {
                                return iter.hasNext();
                            }

                            /* JADX WARN: Can't rename method to resolve collision */
                            @Override // java.util.Iterator
                            public Variation next() {
                                Variation variation = (Variation) iter.next();
                                DefaultABTestClient.this.setVariationIdsFromAllocatedVariation((DefaultVariation) variation);
                                return variation;
                            }

                            @Override // java.util.Iterator
                            public void remove() {
                                throw new UnsupportedOperationException("This iterator does not support removal of variations");
                            }
                        };
                    }

                    @Override // com.amazon.insights.VariationSet
                    public int size() {
                        return variations.size();
                    }
                });
            } catch (Exception e) {
                this.val$getVariationHandler.onError(new UnexpectedError("An unexpected error occurred. Retrieval of variations could not be completed", e));
                DefaultABTestClient.logger.e("An unexpected error occurred attempting to get variations", e);
            }
        }
    }

    Set<String> allocateDefaultVariations(Set<String> projectNames, Map<String, DefaultVariation> variations) {
        Preconditions.checkNotNull(projectNames, "The set of project names must not be null");
        Preconditions.checkNotNull(variations, "The map of variations must not be null");
        if (projectNames.size() != 0) {
            for (String projectName : projectNames) {
                DefaultVariation defaultVariation = new DefaultVariation.Builder().setProjectName(projectName).setApplicationKey(this.context.getCredentials().getApplicationKey()).setUniqueId(this.context.getUniqueId()).build();
                variations.put(projectName, defaultVariation);
            }
        }
        return projectNames;
    }

    Set<String> allocateCachedVariations(Set<String> projectNames, Map<String, DefaultVariation> variations) {
        Preconditions.checkNotNull(projectNames, "The set of project names must not be null");
        Preconditions.checkNotNull(variations, "The map of variations must not be null");
        if (projectNames.size() != 0) {
            Map<String, DefaultVariation> cachedVariations = this.variationCache.get(projectNames);
            for (DefaultVariation cachedVariation : cachedVariations.values()) {
                if (!cachedVariation.isExpired()) {
                    projectNames.remove(cachedVariation.getProjectName());
                }
                variations.put(cachedVariation.getProjectName(), cachedVariation);
                logger.devi("Resolved " + (cachedVariation.isExpired() ? "expired" : "unexpired") + " variation: '" + cachedVariation.getName() + "' for project: '" + cachedVariation.getProjectName() + "' from cache");
            }
        }
        return projectNames;
    }

    Set<String> allocateServerVariations(Set<String> projectNames, Map<String, DefaultVariation> variations, Map<String, Object> dimensions) {
        Preconditions.checkNotNull(projectNames, "The set of project names must not be null");
        Preconditions.checkNotNull(variations, "The map of variations must not be null");
        if (projectNames.size() != 0 && this.context.getConfiguration().optBoolean(KEY_ABTEST_ENABLED, true).booleanValue() && canHandleRequest()) {
            HttpClient.Request httpRequest = createHttpRequest(projectNames, variations, dimensions);
            if (httpRequest == null) {
                logger.e("There was an error when building the http request");
            } else {
                HttpClient.Response response = this.context.getHttpClient().execute(httpRequest, this.context.getConfiguration().optInt(KEY_ALLOCATION_REQUEST_RETRIES, 1));
                if (response == null) {
                    logger.deve("No variations were retrieved from the server");
                    logger.e("The http request returned a null http response");
                } else if (response.getCode() == 200) {
                    Map<String, DefaultVariation> serverVariations = parseVariationResponse(response.getResponse());
                    for (Map.Entry<String, DefaultVariation> variationEntry : serverVariations.entrySet()) {
                        if (projectNames.contains(variationEntry.getKey())) {
                            projectNames.remove(variationEntry.getKey());
                        }
                        variations.put(variationEntry.getKey(), variationEntry.getValue());
                    }
                    cacheVariations(serverVariations);
                } else {
                    logger.devw("Unable to successfully retrieve variations from server. Response code (" + response.getCode() + ") " + HttpUtil.getMessageForResponse(response));
                    logger.w("Recieved a bad response: " + response);
                }
            }
        }
        return projectNames;
    }

    protected boolean canHandleRequest() {
        boolean deviceConnected = this.context.getSystem().getConnectivity().isConnected();
        if (!deviceConnected) {
            logger.devw("Cannot retrieve variations from server due to the device not being connected");
        }
        return deviceConnected;
    }

    HttpClient.Request createHttpRequest(Set<String> projectNames, Map<String, DefaultVariation> variations, Map<String, Object> dimensions) {
        Preconditions.checkNotNull(projectNames, "An allocation request must be provided");
        Preconditions.checkArgument(projectNames.size() > 0, "At least one project must be specified");
        HttpClient.Request httpRequest = this.context.getHttpClient().newRequest().setUrl(String.format(ENDPOINT_PATH, getEndpointUrl(), this.context.getCredentials().getApplicationKey())).setMethod(HttpClient.HttpMethod.POST);
        String body = buildRequestBody(projectNames, variations, dimensions);
        if (body == null) {
            return null;
        }
        httpRequest.setPostBody(body);
        return httpRequest;
    }

    void cacheVariations(Map<String, DefaultVariation> variations) {
        for (DefaultVariation variation : variations.values()) {
            if (!variation.isDefault()) {
                this.variationCache.put(variation);
            }
        }
    }

    String buildRequestBody(Set<String> projectNames, Map<String, DefaultVariation> variations, Map<String, Object> dimensions) {
        String jsonRequestBody = null;
        if (projectNames != null && projectNames.size() != 0) {
            JSONObject jsonRequest = new JSONObject();
            try {
                JSONObject userProfile = buildUserProfile(dimensions);
                JSONObject allocationRequest = buildAllocationRequest(projectNames, variations);
                if (allocationRequest != null) {
                    jsonRequest.put("treatmentAllocationRequest", allocationRequest);
                    if (userProfile != null) {
                        jsonRequest.put("userProfile", userProfile);
                    }
                    if (jsonRequest != null) {
                        jsonRequestBody = !(jsonRequest instanceof JSONObject) ? jsonRequest.toString() : JSONObjectInstrumentation.toString(jsonRequest);
                        logger.i("Request: " + jsonRequestBody);
                    } else {
                        logger.e("Request body is null");
                    }
                } else {
                    logger.deve("Request for variations was empty");
                    logger.e("Allocation request is null");
                }
            } catch (JSONException e) {
                jsonRequest = null;
                logger.e("Error building the server request", e);
            }
        }
        return jsonRequestBody;
    }

    JSONObject buildUserProfile(Map<String, Object> dimensions) throws JSONException {
        if (dimensions == null || dimensions.size() == 0) {
            return null;
        }
        JSONObject dimensionsJson = new JSONObject();
        for (Map.Entry<String, Object> dimension : dimensions.entrySet()) {
            if (Number.class.isAssignableFrom(dimension.getValue().getClass())) {
                dimensionsJson.put(dimension.getKey(), dimension.getValue());
            } else if (Boolean.class.isAssignableFrom(dimension.getValue().getClass())) {
                dimensionsJson.put(dimension.getKey(), dimension.getValue());
            } else if (dimension.getValue().getClass().equals(String.class)) {
                dimensionsJson.put(dimension.getKey(), dimension.getValue());
            }
        }
        return dimensionsJson;
    }

    JSONObject buildAllocationRequest(Set<String> projectNames, Map<String, DefaultVariation> variations) throws JSONException {
        JSONObject jsonRequest = new JSONObject();
        jsonRequest.put("uniqueId", this.context.getUniqueId().getValue());
        JSONArray jsonVariationRequests = new JSONArray();
        for (String projectName : projectNames) {
            DefaultVariation variation = variations.get(projectName);
            JSONObject variationJson = variationToHttpRequest(variation);
            if (variationJson != null) {
                jsonVariationRequests.put(variationJson);
            }
        }
        if (jsonVariationRequests.length() > 0) {
            jsonRequest.put("treatmentRequests", jsonVariationRequests);
        }
        return jsonRequest;
    }

    static JSONObject variationToHttpRequest(DefaultVariation variation) {
        JSONObject jsonRequest = new JSONObject();
        try {
            jsonRequest.put("experimentName", variation.getProjectName());
            if (!variation.isDefault()) {
                jsonRequest.put("experimentId", variation.getExperimentId());
                jsonRequest.put("treatmentId", variation.getVariationId());
                jsonRequest.put("treatmentGroup", variation.getName());
                jsonRequest.put("uniqueId", variation.getUniqueId().getValue());
                return jsonRequest;
            }
            return jsonRequest;
        } catch (JSONException e) {
            return null;
        }
    }

    Map<String, DefaultVariation> parseVariationResponse(String response) {
        JSONArray factors;
        Map<String, DefaultVariation> variations = new ConcurrentHashMap<>();
        if (response != null && response.length() != 0) {
            try {
                JSONObject json = JSONObjectInstrumentation.init(response);
                String applicationKey = json.getString("applicationKey");
                Id uniqueId = Id.valueOf(json.getString("uniqueId"));
                if (!json.isNull("treatments")) {
                    JSONArray variationsJson = json.getJSONArray("treatments");
                    for (int i = 0; i < variationsJson.length(); i++) {
                        try {
                            DefaultVariation.Builder variationBuilder = new DefaultVariation.Builder();
                            variationBuilder.setApplicationKey(applicationKey);
                            variationBuilder.setUniqueId(uniqueId);
                            JSONObject variationJson = variationsJson.getJSONObject(i);
                            if (variationJson != null) {
                                variationBuilder.setExperimentId(variationJson.getLong("experimentId"));
                                variationBuilder.setVariationId(variationJson.getLong("treatmentId"));
                                variationBuilder.setProjectName(variationJson.getString("experimentName"));
                                variationBuilder.setVariationName(variationJson.getString("treatmentGroup"));
                                variationBuilder.setExpirationDate(new Date(variationJson.getLong("expirationDate")));
                                variationBuilder.setAllocationSource(DefaultVariation.AllocationSource.SERVER);
                                if (!variationJson.isNull("factors") && (factors = variationJson.getJSONArray("factors")) != null) {
                                    Map<String, String> factorsMap = new HashMap<>();
                                    for (int index = 0; index < factors.length(); index++) {
                                        JSONObject factor = factors.getJSONObject(index);
                                        if (factor != null) {
                                            String key = factor.getString(AnalyticAttribute.EVENT_NAME_ATTRIBUTE);
                                            String value = factor.getString(NativeCallKeys.VALUE);
                                            factorsMap.put(key, value);
                                        }
                                    }
                                    variationBuilder.setVariables(factorsMap);
                                }
                            }
                            variations.put(variationBuilder.getProjectName(), variationBuilder.build());
                            logger.devi("Resolved variation: '" + variationBuilder.getVariationName() + "' for project: '" + variationBuilder.getProjectName() + "' from server");
                        } catch (JSONException ex) {
                            logger.deve("There was an issue parsing the variation(s) received from the server");
                            logger.e("Error parsing the variation response.", ex);
                        }
                    }
                }
            } catch (JSONException ex2) {
                logger.deve("There was an issue parsing the variation(s) received from the server");
                logger.e("Error parsing the server response body.", ex2);
            }
        }
        return variations;
    }

    private String getEndpointUrl() {
        return this.context.getConfiguration().optString(KEY_ENDPOINT, DEFAULT_ENDPOINT);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getMaxAllocations() {
        return this.context.getConfiguration().optInt(KEY_MAX_ALLOCATIONS, 10).intValue();
    }
}

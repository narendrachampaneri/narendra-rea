package com.amazon.ags.client.metrics;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.amazon.ags.client.metrics.events.GameCircleGenericEvent;
import com.amazon.ags.constants.metrics.MetricConstants;
import com.amazon.ags.constants.nonjs.MetricsParserConstants;
import com.amazon.ags.html5.util.DeviceInfo;
import com.amazon.identity.auth.device.authorization.api.AmazonAuthorizationManager;
import com.amazon.insights.AmazonInsights;
import com.amazon.insights.Event;
import com.amazon.insights.EventClient;
import com.amazon.insights.InsightsCallback;
import com.amazon.insights.InsightsCredentials;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public class AmazonInsightsEventCollector implements EventCollector {
    private static final String APPLICATION_KEY = "M3CGOMO6ILJQ65";
    private static final String PRIVATE_KEY = "jqyngW96w5vk9a3gLSPP0srNdRpFkRi2+Fjl6qMoPrg=";
    private static final String TAG = "GC_" + AmazonInsightsEventCollector.class.getSimpleName();
    private EventClient eventClient;

    public AmazonInsightsEventCollector(Context context) throws IllegalConstructionException {
        if (context == null) {
            throw new IllegalConstructionException("Unable to create Event collector class. Context is null.");
        }
        try {
            this.eventClient = initialize(context);
        } catch (Exception e) {
            throw new IllegalConstructionException(e);
        }
    }

    protected EventClient initialize(final Context context) throws IllegalConstructionException {
        if (context == null) {
            throw new IllegalConstructionException("The context is null. Insights cannot be initialized.");
        }
        InsightsCredentials credentials = AmazonInsights.newCredentials(APPLICATION_KEY, PRIVATE_KEY);
        AmazonInsights instance = AmazonInsights.newInstance(credentials, context, new InsightsCallback<AmazonInsights>() { // from class: com.amazon.ags.client.metrics.AmazonInsightsEventCollector.1
            @Override // com.amazon.insights.InsightsCallback
            public void onComplete(AmazonInsights instance2) {
                try {
                    EventClient eventClient = instance2.getEventClient();
                    eventClient.addGlobalAttribute(MetricConstants.MetricDecoratedValueAttributeKeys.DEVICE_ID.name(), DeviceInfo.getIdentifier());
                    AmazonAuthorizationManager authorizationManager = new AmazonAuthorizationManager(context, null);
                    String gameId = authorizationManager.getAppId();
                    eventClient.addGlobalAttribute(MetricConstants.MetricDecoratedValueAttributeKeys.GAME_ID.name(), gameId);
                } catch (Exception e) {
                    Log.w(AmazonInsightsEventCollector.TAG, "Unexpected error occurred while attempting to add GameID and DeviceID to Insights instance", e);
                }
            }
        });
        this.eventClient = instance.getEventClient();
        return this.eventClient;
    }

    @Override // com.amazon.ags.client.metrics.EventCollector
    public void reportGenericEvent(GameCircleGenericEvent genericEvent) throws EventReportException {
        try {
            Event insightsEvent = convertToInsightsEvent(genericEvent);
            if (insightsEvent == null) {
                Log.e(TAG, "Conversion to Insights event failed. Will not be reported.");
            } else {
                this.eventClient.recordEvent(insightsEvent);
            }
        } catch (Exception e) {
            throw new EventReportException(e);
        }
    }

    @Override // com.amazon.ags.client.metrics.EventCollector
    public void submitEvents() throws EventReportException {
        try {
            this.eventClient.submitEvents();
        } catch (Exception e) {
            throw new EventReportException(e);
        }
    }

    protected Event convertToInsightsEvent(GameCircleGenericEvent gameCircleGenericEvent) throws EventReportException {
        if (gameCircleGenericEvent == null) {
            throw new EventReportException("Event is null. It cannot be reported.");
        }
        Event customEvent = this.eventClient.createEvent(gameCircleGenericEvent.getEventName());
        Map<String, String> attributes = gameCircleGenericEvent.getAttributes();
        if (attributes != null) {
            Set<Map.Entry<String, String>> attributesSet = attributes.entrySet();
            for (Map.Entry<String, String> attribute : attributesSet) {
                if (!TextUtils.isEmpty(attribute.getKey())) {
                    customEvent.withAttribute(attribute.getKey(), attribute.getValue());
                }
            }
        }
        Map<String, Integer> countMetrics = gameCircleGenericEvent.getCountMetrics();
        if (countMetrics != null) {
            Set<Map.Entry<String, Integer>> metricsSet = countMetrics.entrySet();
            for (Map.Entry<String, Integer> metric : metricsSet) {
                if (!TextUtils.isEmpty(metric.getKey())) {
                    customEvent.withMetric(MetricsParserConstants.convertCountKey(metric.getKey()), metric.getValue());
                }
            }
        }
        Map<String, Long> timeMetrics = gameCircleGenericEvent.getTimeMetrics();
        if (timeMetrics != null) {
            Set<Map.Entry<String, Long>> metricsSet2 = timeMetrics.entrySet();
            for (Map.Entry<String, Long> metric2 : metricsSet2) {
                if (!TextUtils.isEmpty(metric2.getKey())) {
                    customEvent.withMetric(MetricsParserConstants.convertTimeKey(metric2.getKey()), metric2.getValue());
                }
            }
        }
        return customEvent;
    }

    @Override // com.amazon.ags.client.metrics.EventCollector
    public void setPlayerId(String playerId) {
        this.eventClient.removeGlobalAttribute(MetricConstants.MetricDecoratedValueAttributeKeys.PLAYER_ID.name());
        this.eventClient.addGlobalAttribute(MetricConstants.MetricDecoratedValueAttributeKeys.PLAYER_ID.name(), playerId);
    }

    @Override // com.amazon.ags.client.metrics.EventCollector
    public void setIsGuest(boolean isGuest) {
        this.eventClient.removeGlobalAttribute(MetricConstants.MetricDecoratedValueAttributeKeys.PLAYING_ANONYMOUSLY.name());
        this.eventClient.addGlobalAttribute(MetricConstants.MetricDecoratedValueAttributeKeys.PLAYING_ANONYMOUSLY.name(), Boolean.toString(isGuest));
    }

    @Override // com.amazon.ags.client.metrics.EventCollector
    public void pauseInsightsSession() {
        InsightsCredentials credentials = AmazonInsights.newCredentials(APPLICATION_KEY, PRIVATE_KEY);
        AmazonInsights instance = AmazonInsights.getInstance(credentials);
        if (instance != null) {
            instance.getSessionClient().pauseSession();
        } else {
            Log.w(TAG, "Unable to report Insights session.");
        }
    }

    @Override // com.amazon.ags.client.metrics.EventCollector
    public void resumeInsightsSession() {
        InsightsCredentials credentials = AmazonInsights.newCredentials(APPLICATION_KEY, PRIVATE_KEY);
        AmazonInsights instance = AmazonInsights.getInstance(credentials);
        if (instance != null) {
            instance.getSessionClient().resumeSession();
        } else {
            Log.w(TAG, "Unable to report Insights session.");
        }
    }
}

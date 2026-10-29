package com.amazon.insights.impl;

import com.amazon.insights.ABTestClient;
import com.amazon.insights.AmazonInsights;
import com.amazon.insights.Event;
import com.amazon.insights.EventClient;
import com.amazon.insights.InsightsCallback;
import com.amazon.insights.InsightsHandler;
import com.amazon.insights.SessionClient;
import com.amazon.insights.UserProfile;
import com.amazon.insights.VariationSet;
import com.amazon.insights.error.InsightsError;
import java.util.Collections;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes2.dex */
public class DisabledAmazonInsights extends AmazonInsights {
    @Override // com.amazon.insights.AmazonInsights
    public ABTestClient getABTestClient() {
        return new ABTestClient() { // from class: com.amazon.insights.impl.DisabledAmazonInsights.1
            @Override // com.amazon.insights.ABTestClient
            public InsightsHandler<VariationSet> getVariations(String... projectNames) {
                return new InsightsHandler<VariationSet>() { // from class: com.amazon.insights.impl.DisabledAmazonInsights.1.1
                    @Override // com.amazon.insights.InsightsHandler
                    public void setCallback(InsightsCallback<VariationSet> callback) {
                        callback.onError(new InsightsError() { // from class: com.amazon.insights.impl.DisabledAmazonInsights.1.1.1
                            @Override // com.amazon.insights.error.InsightsError
                            public String getMessage() {
                                return "The Amazon Insights SDK was not initialized";
                            }
                        });
                    }
                };
            }
        };
    }

    @Override // com.amazon.insights.AmazonInsights
    public EventClient getEventClient() {
        return new EventClient() { // from class: com.amazon.insights.impl.DisabledAmazonInsights.2
            @Override // com.amazon.insights.EventClient
            public void recordEvent(Event event) {
            }

            @Override // com.amazon.insights.EventClient
            public Event createEvent(final String eventType) {
                final Map<String, String> attributes = new ConcurrentHashMap<>();
                final Map<String, Number> metrics = new ConcurrentHashMap<>();
                return new Event() { // from class: com.amazon.insights.impl.DisabledAmazonInsights.2.1
                    @Override // com.amazon.insights.Event
                    public void addAttribute(String name, String value) {
                        if (name != null) {
                            if (value != null) {
                                attributes.put(name, value);
                            } else {
                                attributes.remove(name);
                            }
                        }
                    }

                    @Override // com.amazon.insights.Event
                    public boolean hasAttribute(String attributeName) {
                        if (attributeName == null) {
                            return false;
                        }
                        return attributes.containsKey(attributeName);
                    }

                    @Override // com.amazon.insights.Event
                    public void addMetric(String name, Number value) {
                        if (name != null) {
                            if (value != null) {
                                metrics.put(name, value);
                            } else {
                                metrics.remove(name);
                            }
                        }
                    }

                    @Override // com.amazon.insights.Event
                    public boolean hasMetric(String metricName) {
                        if (metricName == null) {
                            return false;
                        }
                        return metrics.containsKey(metricName);
                    }

                    @Override // com.amazon.insights.Event
                    public String getEventType() {
                        return eventType;
                    }

                    @Override // com.amazon.insights.Event
                    public String getAttribute(String name) {
                        if (name == null) {
                            return null;
                        }
                        return (String) attributes.get(name);
                    }

                    @Override // com.amazon.insights.Event
                    public Number getMetric(String name) {
                        if (name == null) {
                            return null;
                        }
                        return (Number) metrics.get(name);
                    }

                    @Override // com.amazon.insights.Event
                    public Event withAttribute(String name, String value) {
                        addAttribute(name, value);
                        return this;
                    }

                    @Override // com.amazon.insights.Event
                    public Event withMetric(String name, Number value) {
                        addMetric(name, value);
                        return this;
                    }

                    @Override // com.amazon.insights.Event
                    public Map<String, String> getAllAttributes() {
                        return Collections.unmodifiableMap(attributes);
                    }

                    @Override // com.amazon.insights.Event
                    public Map<String, Number> getAllMetrics() {
                        return Collections.unmodifiableMap(metrics);
                    }
                };
            }

            @Override // com.amazon.insights.EventClient
            public void addGlobalAttribute(String attributeName, String attributeValue) {
            }

            @Override // com.amazon.insights.EventClient
            public void addGlobalAttribute(String eventType, String attributeName, String attributeValue) {
            }

            @Override // com.amazon.insights.EventClient
            public void addGlobalMetric(String metricName, Number metricValue) {
            }

            @Override // com.amazon.insights.EventClient
            public void addGlobalMetric(String eventType, String metricName, Number metricValue) {
            }

            @Override // com.amazon.insights.EventClient
            public void removeGlobalAttribute(String attributeName) {
            }

            @Override // com.amazon.insights.EventClient
            public void removeGlobalAttribute(String eventType, String attributeName) {
            }

            @Override // com.amazon.insights.EventClient
            public void removeGlobalMetric(String metricName) {
            }

            @Override // com.amazon.insights.EventClient
            public void removeGlobalMetric(String eventType, String metricName) {
            }

            @Override // com.amazon.insights.EventClient
            public void submitEvents() {
            }
        };
    }

    @Override // com.amazon.insights.AmazonInsights
    public UserProfile getUserProfile() {
        return new UserProfile() { // from class: com.amazon.insights.impl.DisabledAmazonInsights.3
            Map<String, Object> userProfile = new ConcurrentHashMap();

            @Override // com.amazon.insights.UserProfile
            public Map<String, Object> getDimensions() {
                return this.userProfile;
            }

            @Override // com.amazon.insights.UserProfile
            public UserProfile addDimensionAsNumber(String name, Number value) {
                this.userProfile.put(name, value);
                return this;
            }

            @Override // com.amazon.insights.UserProfile
            public UserProfile addDimensionAsString(String name, String value) {
                this.userProfile.put(name, value);
                return this;
            }
        };
    }

    @Override // com.amazon.insights.AmazonInsights
    public SessionClient getSessionClient() {
        return new SessionClient() { // from class: com.amazon.insights.impl.DisabledAmazonInsights.4
            @Override // com.amazon.insights.SessionClient
            public void pauseSession() {
            }

            @Override // com.amazon.insights.SessionClient
            public void resumeSession() {
            }
        };
    }
}

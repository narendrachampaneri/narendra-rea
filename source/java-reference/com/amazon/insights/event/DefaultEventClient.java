package com.amazon.insights.event;

import com.amazon.insights.Event;
import com.amazon.insights.core.InsightsContext;
import com.amazon.insights.core.log.Logger;
import com.amazon.insights.core.util.JSONBuilder;
import com.amazon.insights.core.util.JSONSerializable;
import com.amazon.insights.core.util.Preconditions;
import com.amazon.insights.core.util.StringUtil;
import com.amazon.insights.delivery.DeliveryClient;
import com.newrelic.agent.android.instrumentation.JSONObjectInstrumentation;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class DefaultEventClient implements InternalEventClient, JSONSerializable {
    private static final String ANALYTICS_ENABLED = "isAnalyticsEnabled";
    private static final String EVENT_SCHEMA_VERSION = "v1.2";
    private static final int MAX_EVENT_TYPE_LENGTH = 50;
    private static Logger logger = Logger.getLogger(DefaultEventClient.class);
    private boolean allowEventCollection;
    private final InsightsContext context;
    private final DeliveryClient deliveryClient;
    private final Map<String, String> globalAttributes = new ConcurrentHashMap();
    private final Map<String, Number> globalMetrics = new ConcurrentHashMap();
    private final Map<String, Map<String, String>> eventTypeAttributes = new ConcurrentHashMap();
    private final Map<String, Map<String, Number>> eventTypeMetrics = new ConcurrentHashMap();
    private List<EventObserver> observers = new CopyOnWriteArrayList();
    private Map<String, String> reservedAttributes = new ConcurrentHashMap();

    public static DefaultEventClient newInstance(InsightsContext context, boolean allowEventCollection) {
        DefaultEventClient instance = new DefaultEventClient(context, allowEventCollection);
        return instance;
    }

    DefaultEventClient(InsightsContext context, boolean allowEventCollection) {
        this.allowEventCollection = true;
        Preconditions.checkNotNull(context, "A valid context must be provided");
        Preconditions.checkNotNull(context.getDeliveryClient(), "A valid DeliveryClient must be provided");
        this.allowEventCollection = allowEventCollection;
        this.context = context;
        this.reservedAttributes.put(context.getConfiguration().optString("versionKey", "ver"), EVENT_SCHEMA_VERSION);
        this.deliveryClient = context.getDeliveryClient();
        addEventObserver(this.deliveryClient);
    }

    Set<String> getReservedAttributeKeys() {
        return Collections.unmodifiableSet(this.reservedAttributes.keySet());
    }

    /* JADX WARN: Code duplicated, block: B:46:0x0146 A[Catch: all -> 0x0087, TryCatch #0 {, blocks: (B:12:0x003f, B:14:0x004b, B:15:0x005f, B:17:0x0065, B:19:0x0077, B:23:0x008a, B:24:0x0094, B:26:0x009a, B:28:0x00ac, B:29:0x00bc, B:31:0x00c8, B:32:0x00dc, B:34:0x00e2, B:36:0x00f4, B:37:0x0104, B:38:0x010e, B:40:0x0114, B:42:0x0126, B:43:0x0136, B:44:0x0140, B:46:0x0146, B:48:0x0158, B:49:0x018e, B:50:0x019e), top: B:52:0x003f }] */
    /* JADX WARN: Code duplicated, block: B:55:0x018e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:56:0x0158 A[SYNTHETIC] */
    @Override // com.amazon.insights.event.InternalEventClient
    public void recordEvent(Event event, boolean applyGlobalAttributes) {
        if (event == null) {
            logger.i("The provided event was null");
            logger.devi("The provided event was null");
            return;
        }
        if (this.context.getConfiguration().optBoolean(ANALYTICS_ENABLED, true).booleanValue() && getAllowEventCollection()) {
            InternalEvent recordEvent = DefaultEvent.createFromEvent(this.context, Long.valueOf(System.currentTimeMillis()), event);
            synchronized (this) {
                if (applyGlobalAttributes) {
                    if (this.eventTypeAttributes.containsKey(recordEvent.getEventType())) {
                        for (Map.Entry<String, String> attr : this.eventTypeAttributes.get(recordEvent.getEventType()).entrySet()) {
                            if (!recordEvent.hasAttribute(attr.getKey())) {
                                recordEvent.addAttribute(attr.getKey(), attr.getValue());
                            }
                        }
                    }
                    for (Map.Entry<String, String> attr2 : this.globalAttributes.entrySet()) {
                        if (!recordEvent.hasAttribute(attr2.getKey())) {
                            recordEvent.addAttribute(attr2.getKey(), attr2.getValue());
                        }
                    }
                    if (this.eventTypeMetrics.containsKey(recordEvent.getEventType())) {
                        for (Map.Entry<String, Number> metric : this.eventTypeMetrics.get(recordEvent.getEventType()).entrySet()) {
                            if (!recordEvent.hasMetric(metric.getKey())) {
                                recordEvent.addMetric(metric.getKey(), metric.getValue());
                            }
                        }
                    }
                    for (Map.Entry<String, Number> metric2 : this.globalMetrics.entrySet()) {
                        if (!recordEvent.hasMetric(metric2.getKey())) {
                            recordEvent.addMetric(metric2.getKey(), metric2.getValue());
                        }
                    }
                    for (Map.Entry<String, String> reservedAttribute : this.reservedAttributes.entrySet()) {
                        if (recordEvent.hasAttribute(reservedAttribute.getKey())) {
                            String attr3 = recordEvent.getAttribute(reservedAttribute.getKey());
                            recordEvent.addAttribute(reservedAttribute.getKey(), reservedAttribute.getValue());
                            recordEvent.addAttribute("ud_" + reservedAttribute.getKey(), attr3);
                        } else {
                            recordEvent.addAttribute(reservedAttribute.getKey(), reservedAttribute.getValue());
                        }
                    }
                } else {
                    while (r2.hasNext()) {
                        if (recordEvent.hasAttribute(reservedAttribute.getKey())) {
                            String attr4 = recordEvent.getAttribute(reservedAttribute.getKey());
                            recordEvent.addAttribute(reservedAttribute.getKey(), reservedAttribute.getValue());
                            recordEvent.addAttribute("ud_" + reservedAttribute.getKey(), attr4);
                        } else {
                            recordEvent.addAttribute(reservedAttribute.getKey(), reservedAttribute.getValue());
                        }
                    }
                }
                throw th;
            }
            notifyObservers(recordEvent);
        }
    }

    @Override // com.amazon.insights.EventClient
    public Event createEvent(String eventType) {
        if (eventType == null) {
            logger.v("Null eventType provided to addGlobalAttribute");
            logger.devi("Null eventType provided to createEvent");
            throw new IllegalArgumentException("The eventType passed into create event was null");
        }
        String trimmedEventType = StringUtil.clipString(eventType, 50, false);
        if (trimmedEventType.length() < eventType.length()) {
            logger.devw("The event type has been trimmed to a length of 50 characters");
        }
        Event event = createInternalEvent(trimmedEventType);
        EventConstraintDecorator constrainedEvent = EventConstraintDecorator.newInstance(event);
        return constrainedEvent;
    }

    @Override // com.amazon.insights.event.InternalEventClient
    public InternalEvent createInternalEvent(String eventType) {
        return DefaultEvent.newInstance(this.context, Long.valueOf(System.currentTimeMillis()), eventType);
    }

    @Override // com.amazon.insights.EventClient
    public void submitEvents() {
        logger.v("Notifying deliveryClient");
        this.deliveryClient.attemptDelivery();
    }

    @Override // com.amazon.insights.EventClient
    public void addGlobalAttribute(String attributeName, String attributeValue) {
        if (attributeName == null) {
            logger.v("Null attribute name provided to addGlobalAttribute");
        } else if (attributeValue == null) {
            logger.v("Null attribute value provided to addGlobalAttribute. attribute name:" + attributeName);
        } else {
            this.globalAttributes.put(attributeName, attributeValue);
        }
    }

    @Override // com.amazon.insights.EventClient
    public void addGlobalAttribute(String eventType, String attributeName, String attributeValue) {
        if (eventType == null) {
            logger.v("Null eventType provided to addGlobalAttribute");
            return;
        }
        if (attributeName == null) {
            logger.v("Null attribute name provided to addGlobalAttribute. eventType:" + eventType);
            return;
        }
        if (attributeValue == null) {
            logger.v("Null value provided to addGlobalAttribute. eventType:" + eventType + ", attributeName:" + attributeName);
            return;
        }
        Map<String, String> eventAttrs = this.eventTypeAttributes.get(eventType);
        if (eventAttrs == null) {
            eventAttrs = new ConcurrentHashMap<>();
            this.eventTypeAttributes.put(eventType, eventAttrs);
        }
        eventAttrs.put(attributeName, attributeValue);
    }

    @Override // com.amazon.insights.EventClient
    public void addGlobalMetric(String metricName, Number metricValue) {
        if (metricName == null) {
            logger.v("Null metric name provided to addGlobalMetric");
        } else if (metricValue == null) {
            logger.v("Null metric value provided to addGlobalMetric.  metric name:" + metricName);
        } else {
            this.globalMetrics.put(metricName, metricValue);
        }
    }

    @Override // com.amazon.insights.EventClient
    public void addGlobalMetric(String eventType, String metricName, Number metricValue) {
        if (eventType == null) {
            logger.v("Null eventType provided to addGlobalMetric");
            return;
        }
        if (metricName == null) {
            logger.v("Null metric name provided to addGlobalMetric. eventType:" + eventType);
            return;
        }
        if (metricValue == null) {
            logger.v("Null metric value provided to addGlobalMetric. eventType:" + eventType + ", metric name:" + metricName);
            return;
        }
        Map<String, Number> eventMetrics = this.eventTypeMetrics.get(eventType);
        if (eventMetrics == null) {
            eventMetrics = new ConcurrentHashMap<>();
            this.eventTypeMetrics.put(eventType, eventMetrics);
        }
        eventMetrics.put(metricName, metricValue);
    }

    @Override // com.amazon.insights.event.InternalEventClient
    public void addEventObserver(EventObserver observer) {
        logger.v("Adding EventObserver");
        if (observer == null) {
            logger.v("Null EventObserver provided to addObserver");
            return;
        }
        if (logger.isLoggingEnabled(Logger.LogLevel.VERBOSE)) {
            logger.v(observer.toString());
        }
        if (!getEventObservers().contains(observer)) {
            getEventObservers().add(observer);
            return;
        }
        logger.v("Observer was already registered with this EventRecorder");
        if (logger.isLoggingEnabled(Logger.LogLevel.VERBOSE)) {
            logger.v(toString());
        }
    }

    @Override // com.amazon.insights.event.InternalEventClient
    public void removeEventObserver(EventObserver observer) {
        logger.v("Removing EventObserver");
        if (observer == null) {
            logger.v("Null EventObserver provided to removeObserver");
            return;
        }
        if (logger.isLoggingEnabled(Logger.LogLevel.VERBOSE)) {
            logger.v(observer.toString());
        }
        if (getEventObservers().contains(observer)) {
            getEventObservers().remove(observer);
            return;
        }
        logger.v("Observer was not registered with this EventRecorder");
        if (logger.isLoggingEnabled(Logger.LogLevel.VERBOSE)) {
            logger.v(toString());
        }
    }

    protected List<EventObserver> getEventObservers() {
        if (this.observers == null) {
            this.observers = new ArrayList();
        }
        return this.observers;
    }

    protected void notifyObservers(InternalEvent event) {
        logger.v("Notifying EventObservers");
        if (logger.isLoggingEnabled(Logger.LogLevel.VERBOSE)) {
            logger.v(event.toString());
        }
        for (EventObserver observer : getEventObservers()) {
            observer.notify(event);
        }
    }

    @Override // com.amazon.insights.EventClient
    public void removeGlobalAttribute(String attributeName) {
        if (attributeName == null) {
            logger.v("Null attribute name provided to removeGlobalAttribute");
        } else {
            this.globalAttributes.remove(attributeName);
        }
    }

    @Override // com.amazon.insights.EventClient
    public void removeGlobalAttribute(String eventType, String attributeName) {
        if (eventType == null) {
            logger.v("Null eventType provided to removeGlobalAttribute");
            return;
        }
        if (attributeName == null) {
            logger.v("Null attribute name provided to removeGlobalAttribute");
            return;
        }
        Map<String, String> eventAttrs = this.eventTypeAttributes.get(eventType);
        if (eventAttrs != null) {
            eventAttrs.remove(attributeName);
        }
    }

    @Override // com.amazon.insights.EventClient
    public void removeGlobalMetric(String metricName) {
        if (metricName == null) {
            logger.v("Null metric name provided to removeGlobalMetric");
        } else {
            this.globalMetrics.remove(metricName);
        }
    }

    @Override // com.amazon.insights.EventClient
    public void removeGlobalMetric(String eventType, String metricName) {
        if (eventType == null) {
            logger.v("Null eventType provided to removeGlobalMetric");
            return;
        }
        if (metricName == null) {
            logger.v("Null metric name provided to removeGlobalMetric");
            return;
        }
        Map<String, Number> eventMetrics = this.eventTypeMetrics.get(eventType);
        if (eventMetrics != null) {
            eventMetrics.remove(metricName);
        }
    }

    public String toString() {
        JSONObject json = toJSONObject();
        try {
            return !(json instanceof JSONObject) ? json.toString(4) : JSONObjectInstrumentation.toString(json, 4);
        } catch (JSONException e) {
            return !(json instanceof JSONObject) ? json.toString() : JSONObjectInstrumentation.toString(json);
        }
    }

    @Override // com.amazon.insights.core.util.JSONSerializable
    public JSONObject toJSONObject() {
        JSONArray observersJSON = new JSONArray();
        if (this.observers != null) {
            for (EventObserver observer : this.observers) {
                if (JSONSerializable.class.isAssignableFrom(observer.getClass())) {
                    observersJSON.put(((JSONSerializable) observer).toJSONObject());
                } else {
                    observersJSON.put(observer);
                }
            }
        }
        JSONArray globalAttrs = new JSONArray();
        if (this.globalAttributes != null) {
            for (Map.Entry<String, String> entry : this.globalAttributes.entrySet()) {
                try {
                    JSONObject attr = new JSONObject();
                    attr.put(entry.getKey(), entry.getValue());
                    globalAttrs.put(attr);
                } catch (JSONException e) {
                }
            }
        }
        JSONArray globalMets = new JSONArray();
        if (this.globalMetrics != null) {
            for (Map.Entry<String, Number> entry2 : this.globalMetrics.entrySet()) {
                try {
                    JSONObject attr2 = new JSONObject();
                    attr2.put(entry2.getKey(), entry2.getValue());
                    globalMets.put(attr2);
                } catch (JSONException e2) {
                }
            }
        }
        JSONObject jSONObject = new JSONObject();
        if (this.eventTypeAttributes != null) {
            for (Map.Entry<String, Map<String, String>> entry3 : this.eventTypeAttributes.entrySet()) {
                JSONArray eventTypeAttrs = new JSONArray();
                for (Map.Entry<String, String> attrEntry : entry3.getValue().entrySet()) {
                    try {
                        JSONObject attr3 = new JSONObject();
                        attr3.put(attrEntry.getKey(), attrEntry.getValue());
                        eventTypeAttrs.put(attr3);
                    } catch (JSONException e3) {
                    }
                }
                try {
                    jSONObject.put(entry3.getKey(), eventTypeAttrs);
                } catch (JSONException e4) {
                }
            }
        }
        JSONObject jSONObject2 = new JSONObject();
        if (this.eventTypeMetrics != null) {
            for (Map.Entry<String, Map<String, Number>> entry4 : this.eventTypeMetrics.entrySet()) {
                JSONArray eventTypeMets = new JSONArray();
                for (Map.Entry<String, Number> attrEntry2 : entry4.getValue().entrySet()) {
                    try {
                        JSONObject attr4 = new JSONObject();
                        attr4.put(attrEntry2.getKey(), attrEntry2.getValue());
                        eventTypeMets.put(attr4);
                    } catch (JSONException e5) {
                    }
                }
                try {
                    jSONObject2.put(entry4.getKey(), eventTypeMets);
                } catch (JSONException e6) {
                }
            }
        }
        String applicationKey = this.context.getCredentials().getApplicationKey();
        return new JSONBuilder(this).withAttribute("applicationKey", applicationKey).withAttribute("uniqueId", this.context.getUniqueId()).withAttribute("observers", observersJSON).withAttribute("globalAttributes", globalAttrs).withAttribute("globalMetrics", globalMets).withAttribute("eventTypeAttributes", jSONObject).withAttribute("eventTypeMetrics", jSONObject2).toJSONObject();
    }

    @Override // com.amazon.insights.EventClient
    public void recordEvent(Event event) {
        recordEvent(event, true);
    }

    public boolean getAllowEventCollection() {
        return this.allowEventCollection;
    }
}

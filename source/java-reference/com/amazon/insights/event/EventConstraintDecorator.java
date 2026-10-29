package com.amazon.insights.event;

import com.amazon.insights.Event;
import com.amazon.insights.core.log.Logger;
import com.amazon.insights.core.util.StringUtil;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes2.dex */
public class EventConstraintDecorator implements Event {
    private static final int MAX_EVENT_ATTRIBUTE_METRIC_KEY_LENGTH = 50;
    private static final int MAX_EVENT_ATTRIBUTE_VALUE_LENGTH = 1000;
    private static final int MAX_NUM_OF_METRICS_AND_ATTRIBUTES = 20;
    private static Logger logger = Logger.getLogger(EventConstraintDecorator.class);
    private final AtomicInteger currentNumOfAttributesAndMetrics = new AtomicInteger(0);
    private final Event decoratedEvent;
    private final int maxAttributesAndMetrics;

    private static class Pair<T, U> {
        private T key;
        private U value;

        /* JADX INFO: Access modifiers changed from: private */
        public T getKey() {
            return this.key;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public U getValue() {
            return this.value;
        }

        public Pair(T key, U value) {
            this.key = key;
            this.value = value;
        }
    }

    public static EventConstraintDecorator newInstance(Event eventToDecorate) {
        return new EventConstraintDecorator(eventToDecorate, 20);
    }

    public EventConstraintDecorator(Event eventToDecorate, int maxAttributesAndMetrics) {
        this.decoratedEvent = eventToDecorate;
        this.maxAttributesAndMetrics = maxAttributesAndMetrics;
    }

    @Override // com.amazon.insights.Event
    public synchronized void addAttribute(String name, String value) {
        if (name != null) {
            if (value != null) {
                try {
                    if (!this.decoratedEvent.hasAttribute(name) && this.currentNumOfAttributesAndMetrics.get() < this.maxAttributesAndMetrics) {
                        Pair<String, String> trimmedResult = processAttribute(name, value);
                        this.decoratedEvent.addAttribute((String) trimmedResult.getKey(), (String) trimmedResult.getValue());
                        this.currentNumOfAttributesAndMetrics.incrementAndGet();
                    }
                } catch (Exception e) {
                    logger.e("addAttribute", e);
                }
            }
        }
    }

    @Override // com.amazon.insights.Event
    public boolean hasAttribute(String attributeName) {
        try {
            boolean hasAttribute = this.decoratedEvent.hasAttribute(attributeName);
            return hasAttribute;
        } catch (Exception e) {
            logger.e("hasAttribute", e);
            return false;
        }
    }

    @Override // com.amazon.insights.Event
    public synchronized void addMetric(String name, Number value) {
        if (name != null) {
            if (value != null) {
                try {
                    if (!this.decoratedEvent.hasMetric(name) && this.currentNumOfAttributesAndMetrics.get() < this.maxAttributesAndMetrics) {
                        Pair<String, Number> trimmedResult = processMetric(name, value);
                        this.decoratedEvent.addMetric((String) trimmedResult.getKey(), (Number) trimmedResult.getValue());
                        this.currentNumOfAttributesAndMetrics.incrementAndGet();
                    }
                } catch (Exception e) {
                    logger.e("addMetric", e);
                }
            }
        }
    }

    @Override // com.amazon.insights.Event
    public boolean hasMetric(String metricName) {
        try {
            boolean hasMetric = this.decoratedEvent.hasMetric(metricName);
            return hasMetric;
        } catch (Exception e) {
            logger.e("hasMetric", e);
            return false;
        }
    }

    @Override // com.amazon.insights.Event
    public String getEventType() {
        return this.decoratedEvent.getEventType();
    }

    @Override // com.amazon.insights.Event
    public String getAttribute(String name) {
        return this.decoratedEvent.getAttribute(name);
    }

    @Override // com.amazon.insights.Event
    public Number getMetric(String name) {
        return this.decoratedEvent.getMetric(name);
    }

    @Override // com.amazon.insights.Event
    public Event withAttribute(String name, String value) {
        try {
            addAttribute(name, value);
        } catch (Exception e) {
            logger.e("withAttribute", e);
        }
        return this.decoratedEvent;
    }

    @Override // com.amazon.insights.Event
    public Event withMetric(String name, Number value) {
        try {
            addMetric(name, value);
        } catch (Exception e) {
            logger.e("withMetric", e);
        }
        return this.decoratedEvent;
    }

    @Override // com.amazon.insights.Event
    public Map<String, String> getAllAttributes() {
        return this.decoratedEvent.getAllAttributes();
    }

    @Override // com.amazon.insights.Event
    public Map<String, Number> getAllMetrics() {
        return this.decoratedEvent.getAllMetrics();
    }

    private static Pair<String, String> processAttribute(String key, String value) {
        String trimmedKey = StringUtil.clipString(key, 50, false);
        if (trimmedKey.length() < key.length()) {
            logger.devw("The attribute key has been trimmed to a length of 50 characters");
        }
        String trimmedValue = StringUtil.clipString(value, 1000, false);
        if (trimmedValue.length() < value.length()) {
            logger.devw("The attribute value has been trimmed to a length of 1000 characters");
        }
        return new Pair<>(trimmedKey, trimmedValue);
    }

    private static Pair<String, Number> processMetric(String key, Number value) {
        String trimmedKey = StringUtil.clipString(key, 50, false);
        if (trimmedKey.length() < key.length()) {
            logger.devw("The metric key has been trimmed to a length of 50 characters");
        }
        return new Pair<>(trimmedKey, value);
    }
}

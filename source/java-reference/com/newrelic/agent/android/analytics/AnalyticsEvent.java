package com.newrelic.agent.android.analytics;

import com.newrelic.agent.android.harvest.type.HarvestableObject;
import com.newrelic.agent.android.logging.AgentLog;
import com.newrelic.agent.android.logging.AgentLogManager;
import com.newrelic.com.google.gson.JsonObject;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class AnalyticsEvent extends HarvestableObject {
    private Set<AnalyticAttribute> attributeSet;
    private AnalyticsEventCategory category;
    private String eventType;
    private final AgentLog log;
    private String name;
    private long timestamp;

    protected AnalyticsEvent(String name) {
        this(name, AnalyticsEventCategory.Custom, null, null);
    }

    protected AnalyticsEvent(String name, AnalyticsEventCategory category) {
        this(name, category, null, null);
    }

    protected AnalyticsEvent(String name, AnalyticsEventCategory category, String eventType, Set<AnalyticAttribute> initialAttributeSet) {
        this.log = AgentLogManager.getAgentLog();
        this.attributeSet = Collections.synchronizedSet(new HashSet());
        this.name = name;
        if (category == null) {
            this.category = AnalyticsEventCategory.Custom;
        } else {
            this.category = category;
        }
        this.timestamp = System.currentTimeMillis();
        if (initialAttributeSet != null) {
            for (AnalyticAttribute attribute : initialAttributeSet) {
                this.attributeSet.add(new AnalyticAttribute(attribute));
            }
        }
        if (name != null) {
            this.attributeSet.add(new AnalyticAttribute(AnalyticAttribute.EVENT_NAME_ATTRIBUTE, name));
        }
        this.attributeSet.add(new AnalyticAttribute("timestamp", String.valueOf(this.timestamp)));
        this.attributeSet.add(new AnalyticAttribute(AnalyticAttribute.EVENT_CATEGORY_ATTRIBUTE, category.name()));
        if (eventType != null) {
            this.attributeSet.add(new AnalyticAttribute(AnalyticAttribute.EVENT_TYPE_ATTRIBUTE, eventType));
        } else {
            this.attributeSet.add(new AnalyticAttribute(AnalyticAttribute.EVENT_TYPE_ATTRIBUTE, AnalyticAttribute.EVENT_TYPE_ATTRIBUTE_MOBILE));
        }
    }

    public void addAttributes(Set<AnalyticAttribute> attributeSet) {
        if (attributeSet != null) {
            for (AnalyticAttribute attribute : attributeSet) {
                if (!this.attributeSet.add(attribute)) {
                    this.log.error("Failed to add attribute " + attribute.getName() + " to event " + getName() + ": the event already contains that attribute.");
                }
            }
        }
    }

    public String getName() {
        return this.name;
    }

    public AnalyticsEventCategory getCategory() {
        return this.category;
    }

    public long getTimestamp() {
        return this.timestamp;
    }

    public String getEventType() {
        return this.eventType;
    }

    @Override // com.newrelic.agent.android.harvest.type.HarvestableObject, com.newrelic.agent.android.harvest.type.BaseHarvestable, com.newrelic.agent.android.harvest.type.Harvestable
    public JsonObject asJsonObject() {
        JsonObject data = new JsonObject();
        synchronized (this) {
            for (AnalyticAttribute attribute : this.attributeSet) {
                data.add(attribute.getName(), attribute.asJsonElement());
            }
        }
        return data;
    }

    public Collection<AnalyticAttribute> getAttributeSet() {
        return Collections.unmodifiableCollection(this.attributeSet);
    }
}

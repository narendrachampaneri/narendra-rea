package com.newrelic.agent.android.analytics;

import com.newrelic.agent.android.AgentConfiguration;
import com.newrelic.agent.android.AgentImpl;
import com.newrelic.agent.android.harvest.DeviceInformation;
import com.newrelic.agent.android.harvest.EnvironmentInformation;
import com.newrelic.agent.android.logging.AgentLog;
import com.newrelic.agent.android.logging.AgentLogManager;
import com.newrelic.agent.android.tracing.ActivityTrace;
import com.newrelic.agent.android.tracing.TraceLifecycleAware;
import com.newrelic.agent.android.tracing.TraceMachine;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public class AnalyticsControllerImpl implements AnalyticsController {
    protected static final int MAX_ATTRIBUTES = 64;
    private static final String NEW_RELIC_PREFIX = "newRelic";
    private static final String NR_PREFIX = "nr.";
    private AgentConfiguration agentConfiguration;
    private AgentImpl agentImpl;
    private boolean isEnabled;
    static final AgentLog log = AgentLogManager.getAgentLog();
    private static final AnalyticsControllerImpl instance = new AnalyticsControllerImpl();
    private static final AtomicBoolean initialized = new AtomicBoolean(false);
    private static final List<String> reservedNames = new ArrayList();
    private EventManager eventManager = new EventManagerImpl();
    private Set<AnalyticAttribute> systemAttributes = Collections.synchronizedSet(new HashSet());
    private Set<AnalyticAttribute> userAttributes = Collections.synchronizedSet(new HashSet());
    private InteractionCompleteListener listener = new InteractionCompleteListener();

    class InteractionCompleteListener implements TraceLifecycleAware {
        InteractionCompleteListener() {
        }

        @Override // com.newrelic.agent.android.tracing.TraceLifecycleAware
        public void onEnterMethod() {
        }

        @Override // com.newrelic.agent.android.tracing.TraceLifecycleAware
        public void onExitMethod() {
        }

        @Override // com.newrelic.agent.android.tracing.TraceLifecycleAware
        public void onTraceStart(ActivityTrace activityTrace) {
        }

        @Override // com.newrelic.agent.android.tracing.TraceLifecycleAware
        public void onTraceComplete(ActivityTrace activityTrace) {
            AnalyticsControllerImpl.log.verbose("AnalyticsControllerImpl.InteractionCompleteListener.onTraceComplete invoke.");
            AnalyticsEvent event = createTraceEvent(activityTrace);
            AnalyticsController analyticsController = AnalyticsControllerImpl.getInstance();
            analyticsController.addEvent(event);
        }

        private AnalyticsEvent createTraceEvent(ActivityTrace activityTrace) {
            float durationInSec = activityTrace.rootTrace.getDurationAsSeconds();
            Set<AnalyticAttribute> attrs = new HashSet<>();
            attrs.add(new AnalyticAttribute(AnalyticAttribute.INTERACTION_DURATION_ATTRIBUTE, durationInSec));
            return AnalyticsEventFactory.createEvent(activityTrace.rootTrace.displayName, AnalyticsEventCategory.Interaction, AnalyticAttribute.EVENT_TYPE_ATTRIBUTE_MOBILE, attrs);
        }
    }

    public static void initialize(AgentConfiguration agentConfiguration, AgentImpl agentImpl) {
        log.verbose("AnalyticsControllerImpl.initialize invoked.");
        if (!initialized.compareAndSet(false, true)) {
            log.verbose("AnalyticsControllerImpl has already been initialized.  Bypassing..");
            return;
        }
        instance.clear();
        reservedNames.add(AnalyticAttribute.EVENT_TYPE_ATTRIBUTE);
        reservedNames.add("type");
        reservedNames.add("timestamp");
        reservedNames.add(AnalyticAttribute.EVENT_CATEGORY_ATTRIBUTE);
        reservedNames.add(AnalyticAttribute.ACCOUNT_ID_ATTRIBUTE);
        reservedNames.add("appId");
        reservedNames.add(AnalyticAttribute.APP_NAME_ATTRIBUTE);
        reservedNames.add(AnalyticAttribute.UUID_ATTRIBUTE);
        reservedNames.add(AnalyticAttribute.SESSION_ID_ATTRIBUTE);
        reservedNames.add(AnalyticAttribute.OS_NAME_ATTRIBUTE);
        reservedNames.add(AnalyticAttribute.OS_VERSION_ATTRIBUTE);
        reservedNames.add(AnalyticAttribute.OS_MAJOR_VERSION_ATTRIBUTE);
        reservedNames.add(AnalyticAttribute.DEVICE_MANUFACTURER_ATTRIBUTE);
        reservedNames.add(AnalyticAttribute.DEVICE_MODEL_ATTRIBUTE);
        reservedNames.add(AnalyticAttribute.MEM_USAGE_MB_ATTRIBUTE);
        reservedNames.add(AnalyticAttribute.CARRIER_ATTRIBUTE);
        reservedNames.add(AnalyticAttribute.NEW_RELIC_VERSION_ATTRIBUTE);
        reservedNames.add(AnalyticAttribute.INTERACTION_DURATION_ATTRIBUTE);
        reservedNames.add(AnalyticAttribute.APP_INSTALL_ATTRIBUTE);
        reservedNames.add(AnalyticAttribute.APP_UPGRADE_ATTRIBUTE);
        instance.reinitialize(agentConfiguration, agentImpl);
        TraceMachine.addTraceListener(instance.listener);
        log.info("Analytics Controller started.");
    }

    public static void shutdown() {
        TraceMachine.removeTraceListener(instance.listener);
        initialized.compareAndSet(true, false);
        instance.getEventManager().shutdown();
    }

    private AnalyticsControllerImpl() {
    }

    void reinitialize(AgentConfiguration agentConfiguration, AgentImpl agentImpl) {
        String osMajorVersion;
        this.agentImpl = agentImpl;
        this.agentConfiguration = agentConfiguration;
        this.eventManager.initialize();
        this.isEnabled = agentConfiguration.getEnableAnalyticsEvents();
        loadPersistentAttributes();
        DeviceInformation deviceInformation = agentImpl.getDeviceInformation();
        String osVersion = deviceInformation.getOsVersion().replace(" ", "");
        String[] osMajorVersionArr = osVersion.split("[.:-]");
        if (osMajorVersionArr.length > 0) {
            osMajorVersion = osMajorVersionArr[0];
        } else {
            osMajorVersion = osVersion;
        }
        EnvironmentInformation environmentInformation = agentImpl.getEnvironmentInformation();
        this.systemAttributes.add(new AnalyticAttribute(AnalyticAttribute.OS_NAME_ATTRIBUTE, deviceInformation.getOsName()));
        this.systemAttributes.add(new AnalyticAttribute(AnalyticAttribute.OS_VERSION_ATTRIBUTE, osVersion));
        this.systemAttributes.add(new AnalyticAttribute(AnalyticAttribute.OS_MAJOR_VERSION_ATTRIBUTE, osMajorVersion));
        this.systemAttributes.add(new AnalyticAttribute(AnalyticAttribute.DEVICE_MANUFACTURER_ATTRIBUTE, deviceInformation.getManufacturer()));
        this.systemAttributes.add(new AnalyticAttribute(AnalyticAttribute.DEVICE_MODEL_ATTRIBUTE, deviceInformation.getModel()));
        this.systemAttributes.add(new AnalyticAttribute(AnalyticAttribute.UUID_ATTRIBUTE, deviceInformation.getDeviceId()));
        this.systemAttributes.add(new AnalyticAttribute(AnalyticAttribute.CARRIER_ATTRIBUTE, agentImpl.getNetworkCarrier()));
        this.systemAttributes.add(new AnalyticAttribute(AnalyticAttribute.NEW_RELIC_VERSION_ATTRIBUTE, deviceInformation.getAgentVersion()));
        this.systemAttributes.add(new AnalyticAttribute(AnalyticAttribute.MEM_USAGE_MB_ATTRIBUTE, environmentInformation.getMemoryUsage()));
        this.systemAttributes.add(new AnalyticAttribute(AnalyticAttribute.SESSION_ID_ATTRIBUTE, agentConfiguration.getSessionID()));
    }

    @Override // com.newrelic.agent.android.analytics.AnalyticsController
    public AnalyticAttribute getAttribute(String name) {
        log.verbose("AnalyticsControllerImpl.getAttribute - retrieving " + name);
        AnalyticAttribute attribute = getUserAttribute(name);
        if (attribute == null) {
            return getSystemAttribute(name);
        }
        return attribute;
    }

    @Override // com.newrelic.agent.android.analytics.AnalyticsController
    public Set<AnalyticAttribute> getSystemAttributes() {
        Set<AnalyticAttribute> attrs = new HashSet<>(this.systemAttributes.size());
        for (AnalyticAttribute attr : this.systemAttributes) {
            attrs.add(new AnalyticAttribute(attr));
        }
        return Collections.unmodifiableSet(attrs);
    }

    @Override // com.newrelic.agent.android.analytics.AnalyticsController
    public Set<AnalyticAttribute> getUserAttributes() {
        Set<AnalyticAttribute> attrs = new HashSet<>(this.userAttributes.size());
        for (AnalyticAttribute attr : this.userAttributes) {
            attrs.add(new AnalyticAttribute(attr));
        }
        return Collections.unmodifiableSet(attrs);
    }

    @Override // com.newrelic.agent.android.analytics.AnalyticsController
    public Set<AnalyticAttribute> getSessionAttributes() {
        Set<AnalyticAttribute> attrs = new HashSet<>(getSessionAttributeCount());
        attrs.addAll(getSystemAttributes());
        attrs.addAll(getUserAttributes());
        return Collections.unmodifiableSet(attrs);
    }

    @Override // com.newrelic.agent.android.analytics.AnalyticsController
    public int getSystemAttributeCount() {
        return this.systemAttributes.size();
    }

    @Override // com.newrelic.agent.android.analytics.AnalyticsController
    public int getUserAttributeCount() {
        return this.userAttributes.size();
    }

    @Override // com.newrelic.agent.android.analytics.AnalyticsController
    public int getSessionAttributeCount() {
        return this.systemAttributes.size() + this.userAttributes.size();
    }

    @Override // com.newrelic.agent.android.analytics.AnalyticsController
    public boolean setAttribute(String name, String value) {
        log.verbose("AnalyticsControllerImpl.setAttribute - " + name + ": " + value);
        return setAttribute(name, value, true);
    }

    @Override // com.newrelic.agent.android.analytics.AnalyticsController
    public boolean setAttribute(String name, String value, boolean persistent) {
        boolean stored;
        log.verbose("AnalyticsControllerImpl.setAttribute - " + name + ": " + value + (persistent ? " (persistent)" : " (transient)"));
        if (!isInitializedAndEnabled() || !isAttributeNameValid(name) || !isStringValueValid(name, value)) {
            return false;
        }
        AnalyticAttribute attribute = getAttribute(name);
        if (attribute == null) {
            if (this.userAttributes.size() < 64) {
                AnalyticAttribute attribute2 = new AnalyticAttribute(name, value, persistent);
                this.userAttributes.add(attribute2);
                if (attribute2.isPersistent() && !(stored = this.agentConfiguration.getAnalyticAttributeStore().store(attribute2))) {
                    log.error("Failed to store attribute " + attribute2 + " to attribute store.");
                    return stored;
                }
            } else {
                log.warning("Attribute limit exceeded: at most 64 are allowed.");
                log.warning("Currently defined attributes:");
                for (AnalyticAttribute attr : this.userAttributes) {
                    log.warning("\t" + attr.getName() + ": " + attr.valueAsString());
                }
            }
        } else {
            attribute.setStringValue(value);
            attribute.setPersistent(persistent);
            if (attribute.isPersistent()) {
                boolean stored2 = this.agentConfiguration.getAnalyticAttributeStore().store(attribute);
                if (!stored2) {
                    log.error("Failed to store attribute " + attribute + " to attribute store.");
                    return stored2;
                }
            } else {
                this.agentConfiguration.getAnalyticAttributeStore().delete(attribute);
            }
        }
        return true;
    }

    @Override // com.newrelic.agent.android.analytics.AnalyticsController
    public boolean setAttribute(String name, float value) {
        log.verbose("AnalyticsControllerImpl.setAttribute - " + name + ": " + value);
        return setAttribute(name, value, true);
    }

    @Override // com.newrelic.agent.android.analytics.AnalyticsController
    public boolean setAttribute(String name, float value, boolean persistent) {
        log.verbose("AnalyticsControllerImpl.setAttribute - " + name + ": " + value + (persistent ? " (persistent)" : " (transient)"));
        if (!isInitializedAndEnabled() || !isAttributeNameValid(name)) {
            return false;
        }
        AnalyticAttribute attribute = getAttribute(name);
        if (attribute == null) {
            if (this.userAttributes.size() < 64) {
                AnalyticAttribute attribute2 = new AnalyticAttribute(name, value, persistent);
                this.userAttributes.add(attribute2);
                if (attribute2.isPersistent()) {
                    this.agentConfiguration.getAnalyticAttributeStore().store(attribute2);
                    boolean stored = this.agentConfiguration.getAnalyticAttributeStore().store(attribute2);
                    if (!stored) {
                        log.error("Failed to store attribute " + attribute2 + " to attribute store.");
                        return stored;
                    }
                }
            } else {
                log.warning("Attribute limit exceeded: at most 64 are allowed.");
                log.warning("Currently defined attributes:");
                for (AnalyticAttribute attr : this.userAttributes) {
                    log.warning("\t" + attr.getName() + ": " + attr.valueAsString());
                }
            }
        } else {
            attribute.setFloatValue(value);
            attribute.setPersistent(persistent);
            if (attribute.isPersistent()) {
                boolean stored2 = this.agentConfiguration.getAnalyticAttributeStore().store(attribute);
                if (!stored2) {
                    log.error("Failed to store attribute " + attribute + " to attribute store.");
                    return stored2;
                }
            } else {
                this.agentConfiguration.getAnalyticAttributeStore().delete(attribute);
            }
        }
        return true;
    }

    @Override // com.newrelic.agent.android.analytics.AnalyticsController
    public boolean setAttribute(String name, boolean value) {
        log.verbose("AnalyticsControllerImpl.setAttribute - " + name + ": " + value);
        return setAttribute(name, value, true);
    }

    @Override // com.newrelic.agent.android.analytics.AnalyticsController
    public boolean setAttribute(String name, boolean value, boolean persistent) {
        boolean stored;
        log.verbose("AnalyticsControllerImpl.setAttribute - " + name + ": " + value + (persistent ? " (persistent)" : " (transient)"));
        if (!isInitializedAndEnabled() || !isAttributeNameValid(name)) {
            return false;
        }
        AnalyticAttribute attribute = getAttribute(name);
        if (attribute == null) {
            if (this.userAttributes.size() < 64) {
                AnalyticAttribute attribute2 = new AnalyticAttribute(name, value, persistent);
                this.userAttributes.add(attribute2);
                if (attribute2.isPersistent() && !(stored = this.agentConfiguration.getAnalyticAttributeStore().store(attribute2))) {
                    log.error("Failed to store attribute " + attribute2 + " to attribute store.");
                    return stored;
                }
            } else {
                log.warning("Attribute limit exceeded: at most 64 are allowed.");
                log.warning("Currently defined attributes:");
                for (AnalyticAttribute attr : this.userAttributes) {
                    log.warning("\t" + attr.getName() + ": " + attr.valueAsString());
                }
            }
        } else {
            attribute.setBooleanValue(value);
            attribute.setPersistent(persistent);
            if (attribute.isPersistent()) {
                boolean stored2 = this.agentConfiguration.getAnalyticAttributeStore().store(attribute);
                if (!stored2) {
                    log.error("Failed to store attribute " + attribute + " to attribute store.");
                    return stored2;
                }
            } else {
                this.agentConfiguration.getAnalyticAttributeStore().delete(attribute);
            }
        }
        return true;
    }

    public boolean addAttributeUnchecked(AnalyticAttribute attribute, boolean persistent) {
        String name = attribute.getName();
        String value = attribute.valueAsString();
        log.verbose("AnalyticsControllerImpl.setAttributeUnchecked - " + name + ": " + value + (persistent ? " (persistent)" : " (transient)"));
        if (!initialized.get()) {
            log.warning("Analytics controller is not initialized!");
            return false;
        }
        if (!this.isEnabled) {
            log.warning("Analytics controller is not enabled!");
            return false;
        }
        if (!isNameValid(name)) {
            return false;
        }
        AnalyticAttribute foundAttribute = getAttribute(attribute.getName());
        if (foundAttribute == null) {
            this.userAttributes.add(attribute);
            if (attribute.isPersistent()) {
                this.agentConfiguration.getAnalyticAttributeStore().store(attribute);
                boolean stored = this.agentConfiguration.getAnalyticAttributeStore().store(attribute);
                if (!stored) {
                    log.error("Failed to store attribute " + attribute + " to attribute store.");
                    return stored;
                }
            }
        } else {
            switch (attribute.getAttributeDataType()) {
                case STRING:
                    foundAttribute.setStringValue(attribute.getStringValue());
                    break;
                case FLOAT:
                    foundAttribute.setFloatValue(attribute.getFloatValue());
                    break;
                case BOOLEAN:
                    foundAttribute.setBooleanValue(attribute.getBooleanValue());
                    break;
            }
            foundAttribute.setPersistent(persistent);
            if (foundAttribute.isPersistent()) {
                boolean stored2 = this.agentConfiguration.getAnalyticAttributeStore().store(foundAttribute);
                if (!stored2) {
                    log.error("Failed to store attribute " + foundAttribute + " to attribute store.");
                    return stored2;
                }
            } else {
                this.agentConfiguration.getAnalyticAttributeStore().delete(foundAttribute);
            }
        }
        return true;
    }

    @Override // com.newrelic.agent.android.analytics.AnalyticsController
    public boolean incrementAttribute(String name, float value) {
        log.verbose("AnalyticsControllerImpl.incrementAttribute - " + name + ": " + value);
        return incrementAttribute(name, value, true);
    }

    @Override // com.newrelic.agent.android.analytics.AnalyticsController
    public boolean incrementAttribute(String name, float value, boolean persistent) {
        boolean stored;
        log.verbose("AnalyticsControllerImpl.incrementAttribute - " + name + ": " + value + (persistent ? " (persistent)" : " (transient)"));
        if (!isInitializedAndEnabled() || !isAttributeNameValid(name)) {
            return false;
        }
        AnalyticAttribute attribute = getAttribute(name);
        if (attribute != null && attribute.isFloatAttribute()) {
            attribute.setFloatValue(attribute.getFloatValue() + value);
            attribute.setPersistent(persistent);
            if (attribute.isPersistent() && !(stored = this.agentConfiguration.getAnalyticAttributeStore().store(attribute))) {
                log.error("Failed to store attribute " + attribute + " to attribute store.");
                return stored;
            }
        } else if (attribute == null) {
            if (this.userAttributes.size() < 64) {
                AnalyticAttribute attribute2 = new AnalyticAttribute(name, value, persistent);
                this.userAttributes.add(attribute2);
                if (attribute2.isPersistent()) {
                    this.agentConfiguration.getAnalyticAttributeStore().store(attribute2);
                    boolean stored2 = this.agentConfiguration.getAnalyticAttributeStore().store(attribute2);
                    if (!stored2) {
                        log.error("Failed to store attribute " + attribute2 + " to attribute store.");
                        return stored2;
                    }
                } else {
                    this.agentConfiguration.getAnalyticAttributeStore().delete(attribute2);
                }
            }
        } else {
            log.warning("Cannot increment attribute " + name + ": the attribute is already defined as a non-float value.");
            return false;
        }
        return true;
    }

    @Override // com.newrelic.agent.android.analytics.AnalyticsController
    public boolean removeAttribute(String name) {
        log.verbose("AnalyticsControllerImpl.removeAttribute - " + name);
        if (!isInitializedAndEnabled()) {
            return false;
        }
        AnalyticAttribute attribute = getAttribute(name);
        if (attribute != null) {
            this.userAttributes.remove(attribute);
            if (attribute.isPersistent()) {
                this.agentConfiguration.getAnalyticAttributeStore().delete(attribute);
            }
        }
        return true;
    }

    @Override // com.newrelic.agent.android.analytics.AnalyticsController
    public boolean removeAllAttributes() {
        log.verbose("AnalyticsControllerImpl.removeAttributes - ");
        if (isInitializedAndEnabled()) {
            this.agentConfiguration.getAnalyticAttributeStore().clear();
            this.userAttributes.clear();
        }
        return false;
    }

    @Override // com.newrelic.agent.android.analytics.AnalyticsController
    public boolean addEvent(String name, Set<AnalyticAttribute> eventAttributes) {
        return addEvent(name, AnalyticsEventCategory.Custom, AnalyticAttribute.EVENT_TYPE_ATTRIBUTE_MOBILE, eventAttributes);
    }

    @Override // com.newrelic.agent.android.analytics.AnalyticsController
    public boolean addEvent(String name, AnalyticsEventCategory eventCategory, String eventType, Set<AnalyticAttribute> eventAttributes) {
        log.verbose("AnalyticsControllerImpl.addEvent - " + name + ": category=" + eventCategory + ", eventType: " + eventType + ", eventAttributes:" + eventAttributes);
        if (!isInitializedAndEnabled()) {
            return false;
        }
        Set<AnalyticAttribute> validatedAttributes = new HashSet<>();
        for (AnalyticAttribute attribute : eventAttributes) {
            if (isAttributeNameValid(attribute.getName())) {
                validatedAttributes.add(attribute);
            }
        }
        AnalyticsEvent event = AnalyticsEventFactory.createEvent(name, eventCategory, eventType, validatedAttributes);
        return addEvent(event);
    }

    @Override // com.newrelic.agent.android.analytics.AnalyticsController
    public boolean addEvent(AnalyticsEvent event) {
        if (!isInitializedAndEnabled()) {
            return false;
        }
        Set<AnalyticAttribute> sessionAttributes = new HashSet<>();
        sessionAttributes.add(new AnalyticAttribute("timeSinceLoad", this.agentImpl.getSessionDurationMillis() / 1000.0f));
        event.addAttributes(sessionAttributes);
        return this.eventManager.addEvent(event);
    }

    @Override // com.newrelic.agent.android.analytics.AnalyticsController
    public int getMaxEventPoolSize() {
        return this.eventManager.getMaxEventPoolSize();
    }

    @Override // com.newrelic.agent.android.analytics.AnalyticsController
    public void setMaxEventPoolSize(int maxSize) {
        this.eventManager.setMaxEventPoolSize(maxSize);
    }

    @Override // com.newrelic.agent.android.analytics.AnalyticsController
    public void setMaxEventBufferTime(int maxBufferTimeInSec) {
        this.eventManager.setMaxEventBufferTime(maxBufferTimeInSec);
    }

    @Override // com.newrelic.agent.android.analytics.AnalyticsController
    public int getMaxEventBufferTime() {
        return this.eventManager.getMaxEventBufferTime();
    }

    @Override // com.newrelic.agent.android.analytics.AnalyticsController
    public EventManager getEventManager() {
        return this.eventManager;
    }

    public static AnalyticsControllerImpl getInstance() {
        return instance;
    }

    void loadPersistentAttributes() {
        if (log.getLevel() == 4) {
            log.verbose("AnalyticsControllerImpl.loadPersistentAttributes - loading userAttributes from the attribute store...");
        }
        List<AnalyticAttribute> storedAttrs = this.agentConfiguration.getAnalyticAttributeStore().fetchAll();
        if (log.getLevel() == 4) {
            log.verbose("AnalyticsControllerImpl.loadPersistentAttributes - found " + storedAttrs.size() + " userAttributes in the attribute store...");
        }
        for (AnalyticAttribute attr : storedAttrs) {
            this.userAttributes.add(attr);
        }
    }

    private AnalyticAttribute getSystemAttribute(String name) {
        for (AnalyticAttribute nextAttribute : this.systemAttributes) {
            if (nextAttribute.getName().equals(name)) {
                return nextAttribute;
            }
        }
        return null;
    }

    private AnalyticAttribute getUserAttribute(String name) {
        for (AnalyticAttribute nextAttribute : this.userAttributes) {
            if (nextAttribute.getName().equals(name)) {
                return nextAttribute;
            }
        }
        return null;
    }

    private void clear() {
        if (log.getLevel() == 4) {
            log.verbose("AnalyticsControllerImpl.clear - clearing out attributes and events");
        }
        this.systemAttributes.clear();
        this.userAttributes.clear();
        this.eventManager.empty();
    }

    private boolean isAttributeNameValid(String name) {
        boolean valid = isNameValid(name);
        if (valid) {
            valid = !isNameReserved(name);
            if (!valid) {
                log.error("Attribute name " + name + " is reserved for internal use and will be ignored.");
            }
        }
        return valid;
    }

    private boolean isNameValid(String name) {
        boolean valid = (name == null || name.equals("") || name.length() >= 256) ? false : true;
        if (!valid) {
            log.error("Attribute name " + name + " is null, empty, or exceeds the maximum length of 256 characters.");
        }
        return valid;
    }

    private boolean isStringValueValid(String name, String value) {
        boolean valid = (value == null || value.equals("") || value.getBytes().length >= 4096) ? false : true;
        if (!valid) {
            log.error("Attribute value for name " + name + " is null, empty, or exceeds the maximum length of 4096 bytes.");
        }
        return valid;
    }

    private boolean isNameReserved(String name) {
        boolean isReserved = reservedNames.contains(name);
        if (isReserved) {
            if (log.getLevel() == 4) {
                log.verbose("Name " + name + " is in the reserved names list.");
            }
            return isReserved;
        }
        boolean isReserved2 = isReserved || name.startsWith(NEW_RELIC_PREFIX);
        if (isReserved2) {
            if (log.getLevel() == 4) {
                log.verbose("Name " + name + " starts with reserved prefix " + NEW_RELIC_PREFIX);
            }
            return isReserved2;
        }
        boolean isReserved3 = isReserved2 || name.startsWith(NR_PREFIX);
        if (isReserved3 && log.getLevel() == 4) {
            log.verbose("Name " + name + " starts with reserved prefix " + NR_PREFIX);
        }
        return isReserved3;
    }

    @Override // com.newrelic.agent.android.analytics.AnalyticsController
    public boolean recordEvent(String name, Map<String, Object> eventAttributes) {
        if (log.getLevel() == 4) {
            log.verbose("AnalyticsControllerImpl.recordEvent - " + name + ": " + eventAttributes.size() + " attributes");
        }
        Set<AnalyticAttribute> attributes = new HashSet<>();
        try {
            for (String key : eventAttributes.keySet()) {
                Object value = eventAttributes.get(key);
                try {
                    if (value instanceof String) {
                        attributes.add(new AnalyticAttribute(key, String.valueOf(value)));
                    } else if (value instanceof Float) {
                        attributes.add(new AnalyticAttribute(key, Float.valueOf(((Float) value).floatValue()).floatValue()));
                    } else if (value instanceof Double) {
                        attributes.add(new AnalyticAttribute(key, Float.valueOf(((Double) value).floatValue()).floatValue()));
                    } else if (value instanceof Integer) {
                        attributes.add(new AnalyticAttribute(key, Float.valueOf(((Integer) value).intValue()).floatValue()));
                    } else if (value instanceof Short) {
                        attributes.add(new AnalyticAttribute(key, Float.valueOf(((Short) value).shortValue()).floatValue()));
                    } else if (value instanceof Long) {
                        attributes.add(new AnalyticAttribute(key, Float.valueOf(((Long) value).longValue()).floatValue()));
                    } else if (value instanceof BigDecimal) {
                        attributes.add(new AnalyticAttribute(key, Float.valueOf(((BigDecimal) value).floatValue()).floatValue()));
                    } else if (value instanceof BigInteger) {
                        attributes.add(new AnalyticAttribute(key, Float.valueOf(((BigInteger) value).floatValue()).floatValue()));
                    } else if (value instanceof Boolean) {
                        attributes.add(new AnalyticAttribute(key, Boolean.valueOf(((Boolean) value).booleanValue()).booleanValue()));
                    } else {
                        log.error("Unsupported event attribute type for key [" + key + "]: " + value.getClass().getName());
                        return false;
                    }
                } catch (ClassCastException e) {
                    log.error(String.format("Error casting attribute [%s] to String or Float: ", key), e);
                }
            }
        } catch (Exception e2) {
            log.error(String.format("Error occurred while recording event [%s]: ", name), e2);
        }
        return addEvent(name, AnalyticsEventCategory.Custom, AnalyticAttribute.EVENT_TYPE_ATTRIBUTE_MOBILE, attributes);
    }

    private boolean isInitializedAndEnabled() {
        if (!initialized.get()) {
            log.warning("Analytics controller is not initialized!");
            return false;
        }
        if (!this.isEnabled) {
            log.warning("Analytics controller is not enabled!");
            return false;
        }
        return true;
    }
}

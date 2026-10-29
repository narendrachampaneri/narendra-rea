package com.amazon.insights.abtest;

import com.amazon.ags.constants.NativeCallKeys;
import com.amazon.insights.Variation;
import com.amazon.insights.core.idresolver.Id;
import com.amazon.insights.core.log.Logger;
import com.amazon.insights.core.util.JSONSerializable;
import com.newrelic.agent.android.analytics.AnalyticAttribute;
import com.newrelic.agent.android.instrumentation.JSONObjectInstrumentation;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class DefaultVariation implements Variation, JSONSerializable {
    static final String DEFAULT_VARIATION_NAME = "DEFAULT";
    private String applicationKey;
    private long experimentId;
    private Date expirationDate;
    private String projectName;
    private AllocationSource source;
    private Id uniqueId;
    private Map<String, String> variables;
    private long variationId;
    private String variationName;
    private static final Logger logger = Logger.getLogger(DefaultVariation.class);
    public static final DefaultVariation NULL_VARIATION = new DefaultVariation();

    public enum AllocationSource {
        SERVER,
        CACHE,
        DEFAULT
    }

    public static DefaultVariation newVariation(Builder builder) {
        if (builder == null) {
            return NULL_VARIATION;
        }
        return new DefaultVariation(builder);
    }

    DefaultVariation() {
        this(new Builder().setVariationName(DEFAULT_VARIATION_NAME));
    }

    DefaultVariation(Builder builder) {
        this.uniqueId = Id.getEmptyId();
        this.uniqueId = builder.getUniqueId();
        this.applicationKey = builder.getApplicationKey();
        this.experimentId = builder.getExperimentId();
        this.projectName = builder.getProjectName();
        this.variationId = builder.getVariationId();
        this.variationName = builder.getVariationName();
        this.expirationDate = builder.getExpirationDate();
        this.variables = Collections.unmodifiableMap(builder.getVariables());
        this.source = builder.getAllocationSource();
    }

    public AllocationSource getAllocationSource() {
        return this.source;
    }

    public long getVariationId() {
        return this.variationId;
    }

    public Date getExpirationDate() {
        return new Date(this.expirationDate.getTime());
    }

    public boolean isExpired() {
        return this.expirationDate.before(new Date(System.currentTimeMillis()));
    }

    public boolean isDefault() {
        return this.variationName.equals(DEFAULT_VARIATION_NAME);
    }

    @Override // com.amazon.insights.Variation
    public String getProjectName() {
        return this.projectName;
    }

    public String getApplicationKey() {
        return this.applicationKey;
    }

    @Override // com.amazon.insights.Variation
    public String getName() {
        return this.variationName == null ? DEFAULT_VARIATION_NAME : this.variationName.toUpperCase();
    }

    public Id getUniqueId() {
        return this.uniqueId;
    }

    public long getExperimentId() {
        return this.experimentId;
    }

    @Override // com.amazon.insights.Variation
    public int getVariableAsInt(String variable, int defaultValue) {
        int value = defaultValue;
        try {
            if (this.variables.containsKey(variable)) {
                value = Integer.decode(this.variables.get(variable)).intValue();
            } else {
                logger.devw("Variable '" + variable + "' does not exist in the variation. Returning default value");
            }
        } catch (Exception ex) {
            logger.devw("Variable '" + variable + "' can not be translated to an int. value is: " + this.variables.get(variable));
            logger.i("variable could not be translated to an int", ex);
        }
        return value;
    }

    @Override // com.amazon.insights.Variation
    public long getVariableAsLong(String variable, long defaultValue) {
        long value = defaultValue;
        try {
            if (this.variables.containsKey(variable)) {
                value = Long.decode(this.variables.get(variable)).longValue();
            } else {
                logger.devw("Variable '" + variable + "' does not exist in the variation. Returning default value");
            }
        } catch (Exception ex) {
            logger.devw("Variable '" + variable + "' can not be translated to a long. value is: " + this.variables.get(variable));
            logger.i("Variable could not be translated to a long", ex);
        }
        return value;
    }

    @Override // com.amazon.insights.Variation
    public short getVariableAsShort(String variable, short defaultValue) {
        short value = defaultValue;
        try {
            if (this.variables.containsKey(variable)) {
                value = Short.decode(this.variables.get(variable)).shortValue();
            } else {
                logger.devw("Variable '" + variable + "' does not exist in the variation. Returning default value");
            }
        } catch (Exception ex) {
            logger.devw("Variable '" + variable + "' can not be translated to a short. value is: " + this.variables.get(variable));
            logger.i("Variable could not be translated to a short", ex);
        }
        return value;
    }

    @Override // com.amazon.insights.Variation
    public double getVariableAsDouble(String variable, double defaultValue) {
        double value = defaultValue;
        try {
            if (this.variables.containsKey(variable)) {
                value = Double.parseDouble(this.variables.get(variable));
            } else {
                logger.devw("Variable '" + variable + "' does not exist in the variation. Returning default value");
            }
        } catch (Exception ex) {
            logger.devw("Variable '" + variable + "' can not be translated to a double. value is: " + this.variables.get(variable));
            logger.i("Variable could not be translated to a double", ex);
        }
        return value;
    }

    @Override // com.amazon.insights.Variation
    public float getVariableAsFloat(String variable, float defaultValue) {
        float value = defaultValue;
        try {
            if (this.variables.containsKey(variable)) {
                value = Float.parseFloat(this.variables.get(variable));
            } else {
                logger.devw("Variable '" + variable + "' does not exist in the variation. Returning default value");
            }
        } catch (Exception ex) {
            logger.devw("Variable '" + variable + "' can not be translated to a float. value is: " + this.variables.get(variable));
            logger.i("Variable could not be translated to a float", ex);
        }
        return value;
    }

    @Override // com.amazon.insights.Variation
    public boolean getVariableAsBoolean(String variable, boolean defaultValue) {
        boolean value = defaultValue;
        try {
            if (this.variables.containsKey(variable)) {
                value = Boolean.parseBoolean(this.variables.get(variable));
            } else {
                logger.devw("Variable '" + variable + "' does not exist in the variation. Returning default value");
            }
        } catch (Exception ex) {
            logger.devw("Variable '" + variable + "' can not be translated to a boolean. value is: " + this.variables.get(variable));
            logger.i("Variable could not be translated to a boolean", ex);
        }
        return value;
    }

    @Override // com.amazon.insights.Variation
    public String getVariableAsString(String variable, String defaultValue) {
        if (this.variables.containsKey(variable)) {
            String value = this.variables.get(variable);
            return value;
        }
        logger.devw("Variable '" + variable + "' does not exist in the variation. Returning default value");
        return defaultValue;
    }

    @Override // com.amazon.insights.Variation
    public boolean containsVariable(String variableName) {
        return this.variables.containsKey(variableName);
    }

    public Iterator<Map.Entry<String, String>> variablesIterator() {
        return this.variables.entrySet().iterator();
    }

    public String toString() {
        JSONObject json = toJSONObject();
        if (json != null) {
            try {
                return !(json instanceof JSONObject) ? json.toString(4) : JSONObjectInstrumentation.toString(json, 4);
            } catch (JSONException e) {
                return !(json instanceof JSONObject) ? json.toString() : JSONObjectInstrumentation.toString(json);
            }
        }
        return "Failed to convert Variation to String";
    }

    @Override // com.amazon.insights.core.util.JSONSerializable
    public JSONObject toJSONObject() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("applicationKey", getApplicationKey());
            jSONObject.put("variationId", getVariationId());
            jSONObject.put("experimentId", getExperimentId());
            jSONObject.put("projectName", getProjectName());
            jSONObject.put("uniqueId", getUniqueId().getValue());
            jSONObject.put("expirationDate", this.expirationDate.getTime());
            jSONObject.put("variationName", getName());
            JSONArray variablesJson = new JSONArray();
            for (Map.Entry<String, String> kvp : this.variables.entrySet()) {
                JSONObject variable = new JSONObject();
                variable.put(AnalyticAttribute.EVENT_NAME_ATTRIBUTE, kvp.getKey());
                variable.put(NativeCallKeys.VALUE, kvp.getValue());
                variablesJson.put(variable);
            }
            jSONObject.put("variables", variablesJson);
            return jSONObject;
        } catch (JSONException ex) {
            logger.e("Failed to translate the variation to json", ex);
            return null;
        }
    }

    public static class Builder {
        private String projectName = "";
        private String applicationKey = "";
        private long experimentId = 0;
        private long variationId = 0;
        private String variationName = DefaultVariation.DEFAULT_VARIATION_NAME;
        private Id uniqueId = Id.getEmptyId();
        private Map<String, String> variables = new ConcurrentHashMap();
        private Date expirationDate = new Date(0);
        private Date appliedDate = new Date(0);
        private AllocationSource source = AllocationSource.DEFAULT;

        public String getApplicationKey() {
            return this.applicationKey;
        }

        public Builder setApplicationKey(String applicationKey) {
            if (applicationKey != null) {
                this.applicationKey = applicationKey;
            }
            return this;
        }

        public void setAllocationSource(AllocationSource source) {
            this.source = source;
        }

        public AllocationSource getAllocationSource() {
            return this.source;
        }

        public String getProjectName() {
            return this.projectName;
        }

        public Builder setProjectName(String projectName) {
            if (projectName != null) {
                this.projectName = projectName;
            }
            return this;
        }

        public long getExperimentId() {
            return this.experimentId;
        }

        public Builder setExperimentId(long experimentId) {
            this.experimentId = experimentId;
            return this;
        }

        public long getVariationId() {
            return this.variationId;
        }

        public Builder setVariationId(long variationId) {
            this.variationId = variationId;
            return this;
        }

        public String getVariationName() {
            return this.variationName;
        }

        public Builder setVariationName(String variationName) {
            if (variationName != null) {
                this.variationName = variationName;
            }
            return this;
        }

        public Id getUniqueId() {
            return this.uniqueId;
        }

        public Builder setUniqueId(Id uniqueId) {
            if (uniqueId != null) {
                this.uniqueId = uniqueId;
            }
            return this;
        }

        public Map<String, String> getVariables() {
            return this.variables;
        }

        public Builder setVariables(Map<String, String> variables) {
            if (variables != null) {
                this.variables = new ConcurrentHashMap(variables);
            }
            return this;
        }

        public Date getExpirationDate() {
            return new Date(this.expirationDate.getTime());
        }

        public Builder setExpirationDate(Date expirationDate) {
            if (expirationDate != null) {
                this.expirationDate = new Date(expirationDate.getTime());
            }
            return this;
        }

        public Date getAppliedDate() {
            return new Date(this.appliedDate.getTime());
        }

        public Builder setAppliedDate(Date appliedDate) {
            if (appliedDate != null) {
                this.appliedDate = new Date(appliedDate.getTime());
            }
            return this;
        }

        public DefaultVariation build() {
            return new DefaultVariation(this);
        }
    }
}

package com.newrelic.agent.android.metric;

import com.newrelic.agent.android.analytics.AnalyticAttribute;
import com.newrelic.agent.android.harvest.type.HarvestableObject;
import com.newrelic.com.google.gson.JsonElement;
import com.newrelic.com.google.gson.JsonObject;
import com.newrelic.com.google.gson.JsonPrimitive;

/* JADX INFO: loaded from: classes.dex */
public class Metric extends HarvestableObject {
    private long count;
    private Double exclusive;
    private Double max;
    private Double min;
    private String name;
    private String scope;
    private Double sumOfSquares;
    private Double total;

    public Metric(String name) {
        this(name, null);
    }

    public Metric(String name, String scope) {
        this.name = name;
        this.scope = scope;
        this.count = 0L;
    }

    public Metric(Metric metric) {
        this.name = metric.getName();
        this.scope = metric.getScope();
        this.min = Double.valueOf(metric.getMin());
        this.max = Double.valueOf(metric.getMax());
        this.total = Double.valueOf(metric.getTotal());
        this.sumOfSquares = Double.valueOf(metric.getSumOfSquares());
        this.exclusive = Double.valueOf(metric.getExclusive());
        this.count = metric.getCount();
    }

    public void sample(double value) {
        this.count++;
        if (this.total == null) {
            this.total = Double.valueOf(value);
            this.sumOfSquares = Double.valueOf(value * value);
        } else {
            this.total = Double.valueOf(this.total.doubleValue() + value);
            this.sumOfSquares = Double.valueOf(this.sumOfSquares.doubleValue() + (value * value));
        }
        setMin(Double.valueOf(value));
        setMax(Double.valueOf(value));
    }

    public void setMin(Double value) {
        if (value != null) {
            if (this.min == null) {
                this.min = value;
            } else if (value.doubleValue() < this.min.doubleValue()) {
                this.min = value;
            }
        }
    }

    public void setMinFieldValue(Double value) {
        this.min = value;
    }

    public void setMax(Double value) {
        if (value != null) {
            if (this.max == null) {
                this.max = value;
            } else if (value.doubleValue() > this.max.doubleValue()) {
                this.max = value;
            }
        }
    }

    public void setMaxFieldValue(Double value) {
        this.max = value;
    }

    public void aggregate(Metric metric) {
        if (metric != null) {
            increment(metric.getCount());
            if (!metric.isCountOnly()) {
                this.total = Double.valueOf(this.total == null ? metric.getTotal() : this.total.doubleValue() + metric.getTotal());
                this.sumOfSquares = Double.valueOf(this.sumOfSquares == null ? metric.getSumOfSquares() : this.sumOfSquares.doubleValue() + metric.getSumOfSquares());
                this.exclusive = Double.valueOf(this.exclusive == null ? metric.getExclusive() : this.exclusive.doubleValue() + metric.getExclusive());
                setMin(Double.valueOf(metric.getMin()));
                setMax(Double.valueOf(metric.getMax()));
            }
        }
    }

    public void increment(long value) {
        this.count += value;
    }

    public void increment() {
        increment(1L);
    }

    public double getSumOfSquares() {
        if (this.sumOfSquares == null) {
            return 0.0d;
        }
        return this.sumOfSquares.doubleValue();
    }

    public long getCount() {
        return this.count;
    }

    public double getExclusive() {
        if (this.exclusive == null) {
            return 0.0d;
        }
        return this.exclusive.doubleValue();
    }

    public void addExclusive(double value) {
        if (this.exclusive == null) {
            this.exclusive = Double.valueOf(value);
        } else {
            this.exclusive = Double.valueOf(this.exclusive.doubleValue() + value);
        }
    }

    public String getName() {
        return this.name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getScope() {
        return this.scope;
    }

    public String getStringScope() {
        return this.scope == null ? "" : this.scope;
    }

    public void setScope(String scope) {
        this.scope = scope;
    }

    public double getMin() {
        if (this.min == null) {
            return 0.0d;
        }
        return this.min.doubleValue();
    }

    public double getMax() {
        if (this.max == null) {
            return 0.0d;
        }
        return this.max.doubleValue();
    }

    public double getTotal() {
        if (this.total == null) {
            return 0.0d;
        }
        return this.total.doubleValue();
    }

    public void setTotal(Double total) {
        this.total = total;
    }

    public void setSumOfSquares(Double sumOfSquares) {
        this.sumOfSquares = sumOfSquares;
    }

    public void setExclusive(Double exclusive) {
        this.exclusive = exclusive;
    }

    public void setCount(long count) {
        this.count = count;
    }

    public void clear() {
        this.min = null;
        this.max = null;
        this.total = null;
        this.sumOfSquares = null;
        this.exclusive = null;
        this.count = 0L;
    }

    public boolean isCountOnly() {
        return this.total == null;
    }

    public boolean isScoped() {
        return this.scope != null;
    }

    public boolean isUnscoped() {
        return this.scope == null;
    }

    @Override // com.newrelic.agent.android.harvest.type.BaseHarvestable, com.newrelic.agent.android.harvest.type.Harvestable
    public JsonElement asJson() {
        return isCountOnly() ? new JsonPrimitive((Number) Long.valueOf(this.count)) : asJsonObject();
    }

    @Override // com.newrelic.agent.android.harvest.type.HarvestableObject, com.newrelic.agent.android.harvest.type.BaseHarvestable, com.newrelic.agent.android.harvest.type.Harvestable
    public JsonObject asJsonObject() {
        JsonObject jsonObject = new JsonObject();
        jsonObject.add("count", new JsonPrimitive((Number) Long.valueOf(this.count)));
        if (this.total != null) {
            jsonObject.add(AnalyticAttribute.PURCHASE_EVENT_TOTAL_PRICE_ATTRIBUTE, new JsonPrimitive((Number) this.total));
        }
        if (this.min != null) {
            jsonObject.add("min", new JsonPrimitive((Number) this.min));
        }
        if (this.max != null) {
            jsonObject.add("max", new JsonPrimitive((Number) this.max));
        }
        if (this.sumOfSquares != null) {
            jsonObject.add("sum_of_squares", new JsonPrimitive((Number) this.sumOfSquares));
        }
        if (this.exclusive != null) {
            jsonObject.add("exclusive", new JsonPrimitive((Number) this.exclusive));
        }
        return jsonObject;
    }

    public String toString() {
        return "Metric{count=" + this.count + ", total=" + this.total + ", max=" + this.max + ", min=" + this.min + ", scope='" + this.scope + "', name='" + this.name + "', exclusive='" + this.exclusive + "', sumofsquares='" + this.sumOfSquares + "'}";
    }
}

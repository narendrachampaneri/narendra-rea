package com.newrelic.agent.android.harvest;

import com.newrelic.agent.android.harvest.type.HarvestableArray;
import com.newrelic.com.google.gson.JsonArray;
import com.newrelic.com.google.gson.JsonPrimitive;

/* JADX INFO: loaded from: classes.dex */
public class DataToken extends HarvestableArray {
    private int accountId;
    private int agentId;

    public DataToken() {
    }

    public DataToken(int accountId, int agentId) {
        this.accountId = accountId;
        this.agentId = agentId;
    }

    @Override // com.newrelic.agent.android.harvest.type.HarvestableArray, com.newrelic.agent.android.harvest.type.BaseHarvestable, com.newrelic.agent.android.harvest.type.Harvestable
    public JsonArray asJsonArray() {
        JsonArray array = new JsonArray();
        array.add(new JsonPrimitive((Number) Integer.valueOf(this.accountId)));
        array.add(new JsonPrimitive((Number) Integer.valueOf(this.agentId)));
        return array;
    }

    public void clear() {
        this.accountId = 0;
        this.agentId = 0;
    }

    public int getAccountId() {
        return this.accountId;
    }

    public void setAccountId(int accountId) {
        this.accountId = accountId;
    }

    public int getAgentId() {
        return this.agentId;
    }

    public void setAgentId(int agentId) {
        this.agentId = agentId;
    }

    public boolean isValid() {
        return this.accountId > 0 && this.agentId > 0;
    }

    public String toString() {
        return "DataToken{accountId=" + this.accountId + ", agentId=" + this.agentId + '}';
    }
}

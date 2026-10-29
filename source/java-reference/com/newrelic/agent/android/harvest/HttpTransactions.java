package com.newrelic.agent.android.harvest;

import com.newrelic.agent.android.harvest.type.HarvestableArray;
import com.newrelic.com.google.gson.JsonArray;
import java.util.Collection;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes.dex */
public class HttpTransactions extends HarvestableArray {
    private final Collection<HttpTransaction> httpTransactions = new CopyOnWriteArrayList();

    public synchronized void add(HttpTransaction httpTransaction) {
        this.httpTransactions.add(httpTransaction);
    }

    public synchronized void remove(HttpTransaction transaction) {
        this.httpTransactions.remove(transaction);
    }

    public void clear() {
        this.httpTransactions.clear();
    }

    @Override // com.newrelic.agent.android.harvest.type.HarvestableArray, com.newrelic.agent.android.harvest.type.BaseHarvestable, com.newrelic.agent.android.harvest.type.Harvestable
    public JsonArray asJsonArray() {
        JsonArray array = new JsonArray();
        for (HttpTransaction transaction : this.httpTransactions) {
            array.add(transaction.asJson());
        }
        return array;
    }

    public Collection<HttpTransaction> getHttpTransactions() {
        return this.httpTransactions;
    }

    public int count() {
        return this.httpTransactions.size();
    }

    public String toString() {
        return "HttpTransactions{httpTransactions=" + this.httpTransactions + '}';
    }
}

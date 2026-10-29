package com.newrelic.agent.android.harvest;

import com.newrelic.agent.android.harvest.type.HarvestableArray;
import com.newrelic.com.google.gson.JsonArray;
import com.newrelic.com.google.gson.JsonElement;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class ActivityHistory extends HarvestableArray {
    private final List<ActivitySighting> activityHistory;

    public ActivityHistory(List<ActivitySighting> activityHistory) {
        this.activityHistory = activityHistory;
    }

    public int size() {
        return this.activityHistory.size();
    }

    @Override // com.newrelic.agent.android.harvest.type.HarvestableArray, com.newrelic.agent.android.harvest.type.BaseHarvestable, com.newrelic.agent.android.harvest.type.Harvestable
    public JsonArray asJsonArray() {
        JsonArray data = new JsonArray();
        for (ActivitySighting sighting : this.activityHistory) {
            data.add(sighting.asJsonArray());
        }
        return data;
    }

    public JsonArray asJsonArrayWithoutDuration() {
        JsonArray data = new JsonArray();
        for (ActivitySighting sighting : this.activityHistory) {
            data.add(sighting.asJsonArrayWithoutDuration());
        }
        return data;
    }

    public static ActivityHistory newFromJson(JsonArray jsonArray) {
        List<ActivitySighting> sightings = new ArrayList<>();
        for (JsonElement element : jsonArray) {
            sightings.add(ActivitySighting.newFromJson(element.getAsJsonArray()));
        }
        return new ActivityHistory(sightings);
    }
}

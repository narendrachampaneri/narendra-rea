package com.newrelic.agent.android.activity;

/* JADX INFO: loaded from: classes.dex */
public class NamedActivity extends BaseMeasuredActivity {
    public NamedActivity(String activityName) {
        setName(activityName);
        setAutoInstrumented(false);
    }

    public void rename(String activityName) {
        setName(activityName);
    }
}

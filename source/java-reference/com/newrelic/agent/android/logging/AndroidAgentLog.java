package com.newrelic.agent.android.logging;

import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public class AndroidAgentLog implements AgentLog {
    private static final String TAG = "com.newrelic.agent.android";
    private int level = 3;

    @Override // com.newrelic.agent.android.logging.AgentLog
    public void debug(String message) {
        if (this.level == 5) {
            Log.d(TAG, message);
        }
    }

    @Override // com.newrelic.agent.android.logging.AgentLog
    public void verbose(String message) {
        if (this.level >= 4) {
            Log.v(TAG, message);
        }
    }

    @Override // com.newrelic.agent.android.logging.AgentLog
    public void info(String message) {
        if (this.level >= 3) {
            Log.i(TAG, message);
        }
    }

    @Override // com.newrelic.agent.android.logging.AgentLog
    public void warning(String message) {
        if (this.level >= 2) {
            Log.w(TAG, message);
        }
    }

    @Override // com.newrelic.agent.android.logging.AgentLog
    public void error(String message) {
        if (this.level >= 1) {
            Log.e(TAG, message);
        }
    }

    @Override // com.newrelic.agent.android.logging.AgentLog
    public void error(String message, Throwable cause) {
        if (this.level >= 1) {
            Log.e(TAG, message, cause);
        }
    }

    @Override // com.newrelic.agent.android.logging.AgentLog
    public int getLevel() {
        return this.level;
    }

    @Override // com.newrelic.agent.android.logging.AgentLog
    public void setLevel(int level) {
        if (level <= 5 && level >= 1) {
            this.level = level;
            return;
        }
        throw new IllegalArgumentException("Log level is not between ERROR and DEBUG");
    }
}

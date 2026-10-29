package com.newrelic.agent.android.logging;

/* JADX INFO: loaded from: classes.dex */
public class NullAgentLog implements AgentLog {
    @Override // com.newrelic.agent.android.logging.AgentLog
    public void debug(String message) {
    }

    @Override // com.newrelic.agent.android.logging.AgentLog
    public void info(String message) {
    }

    @Override // com.newrelic.agent.android.logging.AgentLog
    public void verbose(String message) {
    }

    @Override // com.newrelic.agent.android.logging.AgentLog
    public void error(String message) {
    }

    @Override // com.newrelic.agent.android.logging.AgentLog
    public void error(String message, Throwable cause) {
    }

    @Override // com.newrelic.agent.android.logging.AgentLog
    public void warning(String message) {
    }

    @Override // com.newrelic.agent.android.logging.AgentLog
    public int getLevel() {
        return 5;
    }

    @Override // com.newrelic.agent.android.logging.AgentLog
    public void setLevel(int level) {
    }
}

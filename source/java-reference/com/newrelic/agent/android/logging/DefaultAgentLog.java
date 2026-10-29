package com.newrelic.agent.android.logging;

/* JADX INFO: loaded from: classes.dex */
public class DefaultAgentLog implements AgentLog {
    private AgentLog impl = new NullAgentLog();

    public void setImpl(AgentLog impl) {
        synchronized (this) {
            this.impl = impl;
        }
    }

    @Override // com.newrelic.agent.android.logging.AgentLog
    public void debug(String message) {
        synchronized (this) {
            this.impl.debug(message);
        }
    }

    @Override // com.newrelic.agent.android.logging.AgentLog
    public void info(String message) {
        synchronized (this) {
            this.impl.info(message);
        }
    }

    @Override // com.newrelic.agent.android.logging.AgentLog
    public void verbose(String message) {
        synchronized (this) {
            this.impl.verbose(message);
        }
    }

    @Override // com.newrelic.agent.android.logging.AgentLog
    public void warning(String message) {
        synchronized (this) {
            this.impl.warning(message);
        }
    }

    @Override // com.newrelic.agent.android.logging.AgentLog
    public void error(String message) {
        synchronized (this) {
            this.impl.error(message);
        }
    }

    @Override // com.newrelic.agent.android.logging.AgentLog
    public void error(String message, Throwable cause) {
        synchronized (this) {
            this.impl.error(message, cause);
        }
    }

    @Override // com.newrelic.agent.android.logging.AgentLog
    public int getLevel() {
        int level;
        synchronized (this) {
            level = this.impl.getLevel();
        }
        return level;
    }

    @Override // com.newrelic.agent.android.logging.AgentLog
    public void setLevel(int level) {
        synchronized (this) {
            this.impl.setLevel(level);
        }
    }
}

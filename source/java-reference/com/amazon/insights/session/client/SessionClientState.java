package com.amazon.insights.session.client;

import com.amazon.insights.Event;
import com.amazon.insights.session.Session;

/* JADX INFO: loaded from: classes2.dex */
public abstract class SessionClientState {
    protected final DefaultSessionClient client;

    public abstract void pause();

    public abstract void resume();

    public abstract void start();

    public abstract void stop();

    public SessionClientState(DefaultSessionClient client) {
        this.client = client;
    }

    protected void executeStart() {
        this.client.session = Session.newInstance(this.client.context);
        this.client.eventClient.addGlobalAttribute(DefaultSessionClient.SESSION_ID_ATTRIBUTE_KEY, this.client.session.getSessionID());
        DefaultSessionClient.logger.devv("Firing Session Event: _session.start");
        Event e = this.client.eventClient.createEvent(DefaultSessionClient.SESSION_START_EVENT_TYPE);
        this.client.eventClient.recordEvent(e);
        this.client.changeState(DefaultSessionClient.SessionState.ACTIVE);
    }

    protected void executeStop() {
        if (!this.client.session.isPaused()) {
            this.client.session.pause();
        }
        DefaultSessionClient.logger.devv("Firing Session Event: _session.stop");
        Event e = this.client.eventClient.createEvent(DefaultSessionClient.SESSION_STOP_EVENT_TYPE);
        e.addMetric(DefaultSessionClient.SESSION_DURATION_METRIC_KEY, this.client.session.getSessionDuration());
        e.addAttribute(DefaultSessionClient.SESSION_ID_ATTRIBUTE_KEY, this.client.session.getSessionID());
        Long stopTime = Long.valueOf(this.client.session.getStopTime() == null ? 0L : this.client.session.getStopTime().longValue());
        e.addAttribute(DefaultSessionClient.SESSION_START_TIME_ATTRIBUTE_KEY, Long.toString(this.client.session.getStartTime()));
        e.addAttribute(DefaultSessionClient.SESSION_STOP_TIME_ATTRIBUTE_KEY, Long.toString(stopTime.longValue()));
        this.client.eventClient.recordEvent(e);
        this.client.eventClient.removeGlobalAttribute(DefaultSessionClient.SESSION_ID_ATTRIBUTE_KEY);
        this.client.session = null;
        this.client.changeState(DefaultSessionClient.SessionState.INACTIVE);
    }

    protected void executePause() {
        this.client.session.pause();
        DefaultSessionClient.logger.i("Session Paused: " + this.client.session.getSessionID());
        DefaultSessionClient.logger.devi("Session Paused.");
        DefaultSessionClient.logger.devv("Firing Session Event: _session.pause");
        Event e = this.client.eventClient.createEvent(DefaultSessionClient.SESSION_PAUSE_EVENT_TYPE);
        e.addMetric(DefaultSessionClient.SESSION_DURATION_METRIC_KEY, this.client.session.getSessionDuration());
        this.client.eventClient.recordEvent(e);
        this.client.sessionStore.storeSession(this.client.session);
        this.client.changeState(DefaultSessionClient.SessionState.PAUSED);
    }

    protected void executeResume() {
        this.client.session.resume();
        DefaultSessionClient.logger.devv("Firing Session Event: _session.resume");
        Event e = this.client.eventClient.createEvent(DefaultSessionClient.SESSION_RESUME_EVENT_TYPE);
        this.client.eventClient.recordEvent(e);
        DefaultSessionClient.logger.i("Session Resumed: " + this.client.session.getSessionID());
        DefaultSessionClient.logger.devi("Session Resumed.");
        this.client.changeState(DefaultSessionClient.SessionState.ACTIVE);
    }
}

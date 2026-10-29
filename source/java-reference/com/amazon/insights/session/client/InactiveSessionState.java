package com.amazon.insights.session.client;

import com.amazon.insights.Event;

/* JADX INFO: loaded from: classes2.dex */
public class InactiveSessionState extends SessionClientState {
    public InactiveSessionState(DefaultSessionClient client) {
        super(client);
    }

    @Override // com.amazon.insights.session.client.SessionClientState
    public void resume() {
        Event e = this.client.eventClient.createEvent(DefaultSessionClient.SESSION_RESUME_EVENT_TYPE);
        this.client.eventClient.recordEvent(e);
        DefaultSessionClient.logger.devi("Session Resume Failed: No session is paused.");
    }

    @Override // com.amazon.insights.session.client.SessionClientState
    public void pause() {
        Event e = this.client.eventClient.createEvent(DefaultSessionClient.SESSION_PAUSE_EVENT_TYPE);
        this.client.eventClient.recordEvent(e);
        DefaultSessionClient.logger.devi("Session Pause Failed: No session is running.");
    }

    @Override // com.amazon.insights.session.client.SessionClientState
    public void start() {
        super.executeStart();
    }

    @Override // com.amazon.insights.session.client.SessionClientState
    public void stop() {
        DefaultSessionClient.logger.devi("Session Stop Failed: No session is running.");
    }
}

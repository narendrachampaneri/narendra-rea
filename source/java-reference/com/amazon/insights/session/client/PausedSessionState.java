package com.amazon.insights.session.client;

/* JADX INFO: loaded from: classes2.dex */
public class PausedSessionState extends SessionClientState {
    public PausedSessionState(DefaultSessionClient client) {
        super(client);
    }

    @Override // com.amazon.insights.session.client.SessionClientState
    public void resume() {
        if (System.currentTimeMillis() - this.client.session.getStopTime().longValue() < this.client.getResumeDelay()) {
            super.executeResume();
        } else {
            DefaultSessionClient.logger.devi("Session has expired. Starting a fresh one...");
            start();
        }
    }

    @Override // com.amazon.insights.session.client.SessionClientState
    public void pause() {
        DefaultSessionClient.logger.devi("Session Pause Failed: Session is already paused.");
    }

    @Override // com.amazon.insights.session.client.SessionClientState
    public void start() {
        super.executeStop();
        super.executeStart();
    }

    @Override // com.amazon.insights.session.client.SessionClientState
    public void stop() {
        super.executeStop();
    }
}

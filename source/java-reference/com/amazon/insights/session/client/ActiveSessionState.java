package com.amazon.insights.session.client;

/* JADX INFO: loaded from: classes2.dex */
public final class ActiveSessionState extends SessionClientState {
    public ActiveSessionState(DefaultSessionClient client) {
        super(client);
    }

    @Override // com.amazon.insights.session.client.SessionClientState
    public void resume() {
        DefaultSessionClient.logger.devi("Session Resume Failed: Session is already running.");
    }

    @Override // com.amazon.insights.session.client.SessionClientState
    public void pause() {
        super.executePause();
    }

    @Override // com.amazon.insights.session.client.SessionClientState
    public void start() {
        if (System.currentTimeMillis() - this.client.session.getStartTime() > this.client.getRestartDelay()) {
            super.executeStop();
            super.executeStart();
        } else {
            DefaultSessionClient.logger.devi("Session Start Failed: Previous session was started too recently");
        }
    }

    @Override // com.amazon.insights.session.client.SessionClientState
    public void stop() {
        super.executeStop();
    }
}

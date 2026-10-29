package com.amazon.insights.session.client;

import com.amazon.insights.core.InsightsContext;
import com.amazon.insights.core.log.Logger;
import com.amazon.insights.core.util.Preconditions;
import com.amazon.insights.event.InternalEventClient;
import com.amazon.insights.session.FileSessionStore;
import com.amazon.insights.session.InternalSessionClient;
import com.amazon.insights.session.Session;
import com.amazon.insights.session.SessionStore;

/* JADX INFO: loaded from: classes2.dex */
public class DefaultSessionClient implements InternalSessionClient {
    protected static final long DEFAULT_RESTART_DELAY = 30000;
    protected static final long DEFAULT_RESUME_DELAY = 5000;
    protected static final String RESTART_DELAY_CONFIG_KEY = "sessionRestartDelay";
    protected static final String RESUME_DELAY_CONFIG_KEY = "sessionResumeDelay";
    public static final String SESSION_DURATION_METRIC_KEY = "_session.duration";
    public static final String SESSION_ID_ATTRIBUTE_KEY = "_session.id";
    public static final String SESSION_PAUSE_EVENT_TYPE = "_session.pause";
    public static final String SESSION_RESUME_EVENT_TYPE = "_session.resume";
    public static final String SESSION_START_EVENT_TYPE = "_session.start";
    public static final String SESSION_START_TIME_ATTRIBUTE_KEY = "_session.startTime";
    public static final String SESSION_STOP_EVENT_TYPE = "_session.stop";
    public static final String SESSION_STOP_TIME_ATTRIBUTE_KEY = "_session.stopTime";
    protected static final Logger logger = Logger.getLogger(DefaultSessionClient.class);
    protected final InsightsContext context;
    protected final InternalEventClient eventClient;
    private final long restartDelay;
    private final long resumeDelay;
    protected Session session;
    protected final SessionStore sessionStore;
    protected SessionClientState state;
    private final SessionClientState INACTIVE_STATE = new InactiveSessionState(this);
    private final SessionClientState ACTIVE_STATE = new ActiveSessionState(this);
    private final SessionClientState PAUSED_STATE = new PausedSessionState(this);

    protected enum SessionState {
        INACTIVE,
        ACTIVE,
        PAUSED
    }

    public static DefaultSessionClient newInstance(InsightsContext context, InternalEventClient eventClient) {
        SessionStore sessionStore = new FileSessionStore(context);
        return new DefaultSessionClient(context, eventClient, sessionStore);
    }

    @Override // com.amazon.insights.session.InternalSessionClient
    public synchronized void startSession() {
        this.state.start();
    }

    @Override // com.amazon.insights.session.InternalSessionClient
    public synchronized void stopSession() {
        this.state.stop();
    }

    @Override // com.amazon.insights.SessionClient
    public synchronized void pauseSession() {
        this.state.pause();
    }

    @Override // com.amazon.insights.SessionClient
    public synchronized void resumeSession() {
        this.state.resume();
    }

    public String toString() {
        return "[DefaultSessionClient]\n- session: " + (this.session == null ? "<null>" : this.session.getSessionID()) + ((this.session == null || !this.session.isPaused()) ? "" : ": paused");
    }

    protected DefaultSessionClient(InsightsContext context, InternalEventClient eventClient, SessionStore sessionStore) {
        Preconditions.checkNotNull(context, "A valid InsightsContext must be provided!");
        Preconditions.checkNotNull(eventClient, "A valid EventClient must be provided!");
        Preconditions.checkNotNull(sessionStore, "A valid SessionStore must be provided!");
        this.sessionStore = sessionStore;
        this.eventClient = eventClient;
        this.context = context;
        this.session = this.sessionStore.getSession();
        this.state = this.session == null ? this.INACTIVE_STATE : this.PAUSED_STATE;
        this.restartDelay = context.getConfiguration().optLong(RESTART_DELAY_CONFIG_KEY, Long.valueOf(DEFAULT_RESTART_DELAY)).longValue();
        this.resumeDelay = context.getConfiguration().optLong(RESUME_DELAY_CONFIG_KEY, 5000L).longValue();
    }

    protected Session getSession() {
        return this.session;
    }

    public long getRestartDelay() {
        return this.restartDelay;
    }

    public long getResumeDelay() {
        return this.resumeDelay;
    }

    protected SessionState getSessionState() {
        if (this.session != null) {
            return this.session.isPaused() ? SessionState.PAUSED : SessionState.ACTIVE;
        }
        return SessionState.INACTIVE;
    }

    protected synchronized void changeState(SessionState s) {
        switch (s) {
            case INACTIVE:
                this.state = this.INACTIVE_STATE;
                break;
            case ACTIVE:
                this.state = this.ACTIVE_STATE;
                break;
            case PAUSED:
                this.state = this.PAUSED_STATE;
                break;
        }
    }
}

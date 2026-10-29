package com.amazon.ags.client.session;

import android.util.Log;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes2.dex */
public class SessionEventQueue {
    private static final int QUEUE_LIMIT = 100;
    private static final String TAG = "GC_" + SessionEventQueue.class.getSimpleName();
    private List<SessionEvent> eventQueue = new LinkedList();
    private SessionClient sessionClient = null;

    public void enqueue(SessionEvent sessionEvent) {
        synchronized (this) {
            if (this.sessionClient == null) {
                if (this.eventQueue == null) {
                    Log.w(TAG, "Unable to queue session event: queue is null");
                } else if (this.eventQueue.size() > 100) {
                    Log.w(TAG, "Unable to queue session event: queue is full");
                } else {
                    this.eventQueue.add(sessionEvent);
                }
                return;
            }
            this.sessionClient.processSessionEvent(sessionEvent);
        }
    }

    public void setSessionClient(final SessionClient sessionClient, ExecutorService executorService) {
        final List<SessionEvent> eventQueueToProcess;
        synchronized (this) {
            this.sessionClient = sessionClient;
            eventQueueToProcess = this.eventQueue;
            this.eventQueue = null;
        }
        if (eventQueueToProcess != null && !eventQueueToProcess.isEmpty()) {
            executorService.execute(new Runnable() { // from class: com.amazon.ags.client.session.SessionEventQueue.1
                @Override // java.lang.Runnable
                public void run() {
                    for (SessionEvent sessionEvent : eventQueueToProcess) {
                        sessionClient.processSessionEvent(sessionEvent);
                    }
                }
            });
        }
    }
}

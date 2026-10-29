package com.mopub.common.event;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;

/* JADX INFO: loaded from: classes.dex */
public class EventDispatcher {
    private final Iterable<EventRecorder> mEventRecorders;
    private final Handler.Callback mHandlerCallback = new Handler.Callback() { // from class: com.mopub.common.event.EventDispatcher.1
        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message msg) {
            if (msg.obj instanceof BaseEvent) {
                for (EventRecorder recorder : EventDispatcher.this.mEventRecorders) {
                    recorder.record((BaseEvent) msg.obj);
                }
                return true;
            }
            MoPubLog.d("EventDispatcher received non-BaseEvent message type.");
            return true;
        }
    };
    private final Looper mLooper;
    private final Handler mMessageHandler;

    @VisibleForTesting
    EventDispatcher(Iterable<EventRecorder> recorders, Looper looper) {
        this.mEventRecorders = recorders;
        this.mLooper = looper;
        this.mMessageHandler = new Handler(this.mLooper, this.mHandlerCallback);
    }

    public void dispatch(BaseEvent event) {
        Message.obtain(this.mMessageHandler, 0, event).sendToTarget();
    }

    @VisibleForTesting
    Iterable<EventRecorder> getEventRecorders() {
        return this.mEventRecorders;
    }

    @VisibleForTesting
    Handler.Callback getHandlerCallback() {
        return this.mHandlerCallback;
    }
}

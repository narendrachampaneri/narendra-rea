package com.amazon.ags.html5.javascript.event;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class JavascriptEventsManager {
    private final Map<String, JavascriptEventListener> listeners = new HashMap();

    public void notifyListeners(String eventType) {
        for (JavascriptEventListener listener : this.listeners.values()) {
            listener.onJavascriptEvent(eventType);
        }
    }

    public void addEventListener(String listenerID, JavascriptEventListener listener) {
        this.listeners.put(listenerID, listener);
    }
}

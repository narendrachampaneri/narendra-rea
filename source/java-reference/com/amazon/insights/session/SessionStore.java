package com.amazon.insights.session;

/* JADX INFO: loaded from: classes2.dex */
public interface SessionStore {
    Session getSession();

    void storeSession(Session session);
}

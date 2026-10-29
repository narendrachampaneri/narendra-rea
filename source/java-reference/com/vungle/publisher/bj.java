package com.vungle.publisher;

import com.vungle.publisher.db.model.Ad;
import com.vungle.publisher.db.model.Video;
import com.vungle.publisher.protocol.message.RequestAdResponse;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public interface bj<A extends Ad<A, V, R>, V extends Video<A, V, R>, R extends RequestAdResponse> extends bl<Integer> {

    /* JADX INFO: compiled from: vungle */
    public enum a {
        aware,
        queued,
        downloading,
        downloaded,
        ready,
        failed
    }

    /* JADX INFO: compiled from: vungle */
    public enum b {
        localVideo,
        postRoll,
        preRoll,
        streamingVideo
    }

    void a(a aVar);

    void b(a aVar);

    A c();

    String d();

    a e();

    b f();
}

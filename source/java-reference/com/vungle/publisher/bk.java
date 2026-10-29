package com.vungle.publisher;

import com.vungle.publisher.db.model.LocalAd;
import com.vungle.publisher.db.model.LocalVideo;
import com.vungle.publisher.protocol.message.RequestLocalAdResponse;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public interface bk extends bj<LocalAd, LocalVideo, RequestLocalAdResponse> {
    boolean A();

    int B();

    void a(cw cwVar);

    void a(Integer num);

    String g();

    String h();

    String k();

    boolean l();

    boolean t();
}

package com.amazon.ags.api.leaderboards;

import com.amazon.ags.api.RequestResponse;

/* JADX INFO: loaded from: classes2.dex */
public interface GetPlayerScoreResponse extends RequestResponse {
    int getRank();

    long getScoreValue();
}

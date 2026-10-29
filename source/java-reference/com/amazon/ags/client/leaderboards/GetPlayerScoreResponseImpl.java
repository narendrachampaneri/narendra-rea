package com.amazon.ags.client.leaderboards;

import com.amazon.ags.api.ErrorCode;
import com.amazon.ags.api.leaderboards.GetPlayerScoreResponse;
import com.amazon.ags.client.RequestResponseImpl;

/* JADX INFO: loaded from: classes2.dex */
public class GetPlayerScoreResponseImpl extends RequestResponseImpl implements GetPlayerScoreResponse {
    private final int rank;
    private final long scoreValue;

    public GetPlayerScoreResponseImpl(long scoreValue, int rank, int responseCode) {
        super(responseCode);
        this.scoreValue = scoreValue;
        this.rank = rank;
    }

    public GetPlayerScoreResponseImpl(int responseCode, ErrorCode error) {
        super(responseCode, error);
        this.scoreValue = 0L;
        this.rank = 0;
    }

    @Override // com.amazon.ags.api.leaderboards.GetPlayerScoreResponse
    public final long getScoreValue() {
        return this.scoreValue;
    }

    @Override // com.amazon.ags.api.leaderboards.GetPlayerScoreResponse
    public final int getRank() {
        return this.rank;
    }

    @Override // com.amazon.ags.client.RequestResponseImpl
    public final int getEventType() {
        return 10;
    }

    @Override // com.amazon.ags.client.RequestResponseImpl, com.amazon.ags.api.RequestResponse
    public final String toString() {
        String text = super.toString();
        return (text + "\n score: " + this.scoreValue) + "\n rank: " + this.rank;
    }
}

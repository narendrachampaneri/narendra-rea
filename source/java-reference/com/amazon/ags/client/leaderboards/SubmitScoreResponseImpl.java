package com.amazon.ags.client.leaderboards;

import android.util.Log;
import com.amazon.ags.api.ErrorCode;
import com.amazon.ags.api.leaderboards.SubmitScoreResponse;
import com.amazon.ags.client.RequestResponseImpl;
import com.amazon.ags.constants.LeaderboardFilter;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class SubmitScoreResponseImpl extends RequestResponseImpl implements SubmitScoreResponse {
    private static final String FEATURE_NAME = "LB";
    private static final String TAG = "LB_" + SubmitScoreResponseImpl.class.getSimpleName();
    private final Map<LeaderboardFilter, Boolean> improvedInFilter;
    private final Map<LeaderboardFilter, Integer> rankInFilter;

    public SubmitScoreResponseImpl(Map<LeaderboardFilter, Boolean> improvedInFilter, Map<LeaderboardFilter, Integer> rankInFilter, int responseCode) {
        super(responseCode);
        if (improvedInFilter == null || rankInFilter == null) {
            Log.d(TAG, "Constructing SubmitScoreResponse with null improvements");
            this.improvedInFilter = new HashMap();
            this.rankInFilter = new HashMap();
        } else {
            this.improvedInFilter = improvedInFilter;
            this.rankInFilter = rankInFilter;
        }
    }

    public SubmitScoreResponseImpl(int responseCode, ErrorCode error) {
        super(responseCode, error);
        this.improvedInFilter = null;
        this.rankInFilter = null;
    }

    @Override // com.amazon.ags.client.RequestResponseImpl
    public final int getEventType() {
        return 8;
    }

    @Override // com.amazon.ags.api.leaderboards.SubmitScoreResponse
    public final Map<LeaderboardFilter, Boolean> getRankImproved() {
        return this.improvedInFilter;
    }

    @Override // com.amazon.ags.api.leaderboards.SubmitScoreResponse
    public final Map<LeaderboardFilter, Integer> getNewRank() {
        return this.rankInFilter;
    }

    @Override // com.amazon.ags.client.RequestResponseImpl, com.amazon.ags.api.RequestResponse
    public final String toString() {
        String text = super.toString();
        return (text + "\n Improvements: " + this.improvedInFilter) + "\n Ranks: " + this.rankInFilter;
    }
}

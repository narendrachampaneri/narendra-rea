package com.amazon.ags.client.leaderboards;

import com.amazon.ags.api.ErrorCode;
import com.amazon.ags.api.leaderboards.GetScoresResponse;
import com.amazon.ags.api.leaderboards.Leaderboard;
import com.amazon.ags.api.leaderboards.Score;
import com.amazon.ags.client.RequestResponseImpl;
import com.amazon.ags.constants.ScoreFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class GetScoresResponseImpl extends RequestResponseImpl implements GetScoresResponse {
    private final Leaderboard leaderboard;
    private final int numScores;
    private final List<Score> scores;

    public GetScoresResponseImpl(Score[] scores, String displayText, ScoreFormat scoreFormat, String name, String uniqueId, int responseCode, String imageUrl) {
        super(responseCode);
        this.scores = Arrays.asList(scores);
        this.numScores = this.scores.size();
        this.leaderboard = new LeaderboardImpl(uniqueId, name, displayText, scoreFormat, imageUrl);
    }

    public GetScoresResponseImpl(int responseCode, ErrorCode errorCode) {
        super(responseCode, errorCode);
        this.scores = new ArrayList();
        this.numScores = 0;
        this.leaderboard = new LeaderboardImpl("", "", "", ScoreFormat.UNKNOWN, "");
    }

    @Override // com.amazon.ags.api.leaderboards.GetScoresResponse
    public final List<Score> getScores() {
        return this.scores;
    }

    @Override // com.amazon.ags.api.leaderboards.GetScoresResponse
    public final int getNumScores() {
        return this.numScores;
    }

    @Override // com.amazon.ags.api.leaderboards.GetScoresResponse
    public Leaderboard getLeaderboard() {
        return this.leaderboard;
    }

    @Override // com.amazon.ags.client.RequestResponseImpl
    public final int getEventType() {
        return 7;
    }

    @Override // com.amazon.ags.client.RequestResponseImpl, com.amazon.ags.api.RequestResponse
    public final String toString() {
        String text = super.toString();
        return (text + "\n numScores: " + this.numScores) + "\n leaderboard: " + this.leaderboard;
    }
}

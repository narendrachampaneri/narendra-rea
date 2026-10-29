package com.amazon.ags.client.leaderboards;

import android.util.Log;
import com.amazon.ags.api.leaderboards.Score;
import com.amazon.ags.api.player.Player;
import com.amazon.ags.constants.ScoreFormat;

/* JADX INFO: loaded from: classes2.dex */
public class ScoreImpl implements Score {
    private static final String FEATURE_NAME = "LB";
    private static final String TAG = "LB_" + ScoreImpl.class.getSimpleName();
    private final String leaderboard;
    private final Player player;
    private final int rank;
    private final ScoreFormat scoreFormat;
    private final long scoreValue;

    public ScoreImpl(long scoreValue, Player player, int rank, String leaderboard) {
        Log.d(TAG, "Creating score with score value " + scoreValue + " player " + player + " rank " + rank + " leaderboard " + leaderboard);
        this.scoreValue = scoreValue;
        this.player = player;
        this.rank = rank;
        this.leaderboard = leaderboard;
        this.scoreFormat = ScoreFormat.UNKNOWN;
    }

    public ScoreImpl(long scoreValue, Player player, int rank, String leaderboard, ScoreFormat scoreFormat) {
        Log.d(TAG, "Creating score with score value " + scoreValue + " player " + player + " rank " + rank + " leaderboard " + leaderboard);
        this.scoreValue = scoreValue;
        this.player = player;
        this.rank = rank;
        this.leaderboard = leaderboard;
        this.scoreFormat = scoreFormat;
    }

    @Override // com.amazon.ags.api.leaderboards.Score
    public final Player getPlayer() {
        return this.player;
    }

    @Override // com.amazon.ags.api.leaderboards.Score
    public final long getScoreValue() {
        return this.scoreValue;
    }

    @Override // com.amazon.ags.api.leaderboards.Score
    public final String getScoreString() {
        switch (this.scoreFormat) {
            case NUMERIC:
                return String.format("%,d", Long.valueOf(this.scoreValue));
            case DURATION:
                return Long.toString(this.scoreValue);
            default:
                return Long.toString(this.scoreValue);
        }
    }

    @Override // com.amazon.ags.api.leaderboards.Score
    public final int getRank() {
        return this.rank;
    }

    @Override // com.amazon.ags.api.leaderboards.Score
    public final String getLeaderboard() {
        return this.leaderboard;
    }
}

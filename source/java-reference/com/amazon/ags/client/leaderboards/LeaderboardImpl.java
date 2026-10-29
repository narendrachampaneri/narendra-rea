package com.amazon.ags.client.leaderboards;

import com.amazon.ags.api.leaderboards.Leaderboard;
import com.amazon.ags.constants.ScoreFormat;
import com.amazon.identity.auth.device.dataobject.AppInfo;

/* JADX INFO: loaded from: classes2.dex */
public class LeaderboardImpl implements Leaderboard {
    private final String displayText;
    private final String id;
    private final String imageURL;
    private final String name;
    private final ScoreFormat scoreFormat;

    public LeaderboardImpl(String id, String name, String displayText, ScoreFormat scoreFormat, String imageURL) {
        this.id = id;
        this.name = name;
        this.displayText = displayText;
        this.scoreFormat = scoreFormat;
        this.imageURL = imageURL;
    }

    @Override // com.amazon.ags.api.leaderboards.Leaderboard
    public String getId() {
        return this.id;
    }

    @Override // com.amazon.ags.api.leaderboards.Leaderboard
    public String getName() {
        return this.name;
    }

    @Override // com.amazon.ags.api.leaderboards.Leaderboard
    public String getDisplayText() {
        return this.displayText;
    }

    @Override // com.amazon.ags.api.leaderboards.Leaderboard
    public ScoreFormat getScoreFormat() {
        return this.scoreFormat;
    }

    @Override // com.amazon.ags.api.leaderboards.Leaderboard
    public String getImageURL() {
        return this.imageURL;
    }

    public String toString() {
        return "Leaderboard{id=" + this.id + ", name=" + this.name + AppInfo.DELIM + "displayText=" + this.displayText + ", scoreFormat=" + this.scoreFormat + ", imageURL = " + this.imageURL + "}";
    }
}

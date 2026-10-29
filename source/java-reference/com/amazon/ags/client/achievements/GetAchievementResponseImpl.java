package com.amazon.ags.client.achievements;

import com.amazon.ags.api.ErrorCode;
import com.amazon.ags.api.achievements.Achievement;
import com.amazon.ags.api.achievements.GetAchievementResponse;
import com.amazon.ags.client.RequestResponseImpl;

/* JADX INFO: loaded from: classes2.dex */
public class GetAchievementResponseImpl extends RequestResponseImpl implements GetAchievementResponse {
    private Achievement achievement;

    public GetAchievementResponseImpl(Achievement achievement, int responseCode) {
        super(responseCode);
        this.achievement = null;
        this.achievement = achievement;
    }

    public GetAchievementResponseImpl(int responseCode, ErrorCode errorCode) {
        super(responseCode, errorCode);
        this.achievement = null;
    }

    @Override // com.amazon.ags.api.achievements.GetAchievementResponse
    public final Achievement getAchievement() {
        return this.achievement;
    }

    @Override // com.amazon.ags.client.RequestResponseImpl
    public final int getEventType() {
        return 12;
    }

    @Override // com.amazon.ags.client.RequestResponseImpl, com.amazon.ags.api.RequestResponse
    public final String toString() {
        String text = super.toString() + "\n Achievement - " + this.achievement;
        return text;
    }
}

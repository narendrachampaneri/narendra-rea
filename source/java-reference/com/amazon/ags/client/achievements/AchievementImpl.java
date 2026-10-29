package com.amazon.ags.client.achievements;

import android.util.Log;
import com.amazon.ags.api.achievements.Achievement;
import java.util.Date;

/* JADX INFO: loaded from: classes2.dex */
public class AchievementImpl implements Achievement {
    private static final String FEATURE_NAME = "AC";
    private static final String TAG = "AC_" + AchievementImpl.class.getSimpleName();
    private final Date dateUnlocked;
    private final String description;
    private final boolean hidden;
    private final String id;
    private final String imageURL;
    private final int pointValue;
    private final int position;
    private final float progress;
    private final String title;
    private final boolean unlocked;

    public AchievementImpl(String id, String title, String description, int pointValue, boolean hidden, boolean unlocked, float progress, int position, Date dateUnlocked, String imageURL) {
        this.id = id;
        this.title = title;
        this.description = description;
        this.pointValue = pointValue;
        this.hidden = hidden;
        this.unlocked = unlocked;
        this.progress = progress;
        this.position = position;
        this.dateUnlocked = dateUnlocked;
        this.imageURL = imageURL;
    }

    public static Achievement copyWithNewProgress(Achievement source, float newProgress) {
        Log.d(TAG, "Copying new achievement from source " + source + " with progress " + newProgress);
        boolean newUnlocked = newProgress >= 100.0f;
        float cappedProgress = Math.max(newProgress, 100.0f);
        Achievement achievement = new AchievementImpl(source.getId(), source.getTitle(), source.getDescription(), source.getPointValue(), source.isHidden(), newUnlocked, cappedProgress, source.getPosition(), source.getDateUnlocked(), source.getImageURL());
        return achievement;
    }

    @Override // com.amazon.ags.api.achievements.Achievement
    public final String getId() {
        return this.id;
    }

    @Override // com.amazon.ags.api.achievements.Achievement
    public final String getTitle() {
        return this.title;
    }

    @Override // com.amazon.ags.api.achievements.Achievement
    public final String getDescription() {
        return this.description;
    }

    @Override // com.amazon.ags.api.achievements.Achievement
    public final int getPointValue() {
        return this.pointValue;
    }

    @Override // com.amazon.ags.api.achievements.Achievement
    public final boolean isHidden() {
        return this.hidden;
    }

    @Override // com.amazon.ags.api.achievements.Achievement
    public final boolean isUnlocked() {
        return this.unlocked;
    }

    @Override // com.amazon.ags.api.achievements.Achievement
    public final float getProgress() {
        return this.progress;
    }

    @Override // com.amazon.ags.api.achievements.Achievement
    public final int getPosition() {
        return this.position;
    }

    @Override // com.amazon.ags.api.achievements.Achievement
    public final Date getDateUnlocked() {
        return this.dateUnlocked;
    }

    @Override // com.amazon.ags.api.achievements.Achievement
    public String getImageURL() {
        return this.imageURL;
    }

    public String toString() {
        return "Achievement{id=" + this.id + ", title=" + this.title + ", description=" + this.description + ", pointValue=" + this.pointValue + ", hidden=" + this.hidden + ", unlocked=" + this.unlocked + ", progress=" + this.progress + ", position=" + this.position + ", dateUnlocked=" + this.dateUnlocked + ", imageURL= " + this.imageURL + "}";
    }
}

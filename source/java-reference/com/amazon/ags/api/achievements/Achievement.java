package com.amazon.ags.api.achievements;

import java.util.Date;

/* JADX INFO: loaded from: classes2.dex */
public interface Achievement {
    Date getDateUnlocked();

    String getDescription();

    String getId();

    String getImageURL();

    int getPointValue();

    int getPosition();

    float getProgress();

    String getTitle();

    boolean isHidden();

    boolean isUnlocked();
}

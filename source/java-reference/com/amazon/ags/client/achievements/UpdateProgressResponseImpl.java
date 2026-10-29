package com.amazon.ags.client.achievements;

import com.amazon.ags.api.ErrorCode;
import com.amazon.ags.api.achievements.UpdateProgressResponse;
import com.amazon.ags.client.RequestResponseImpl;

/* JADX INFO: loaded from: classes2.dex */
public class UpdateProgressResponseImpl extends RequestResponseImpl implements UpdateProgressResponse {
    private final boolean isNewlyUnlocked;

    public UpdateProgressResponseImpl(boolean isNewlyUnlocked, int responseCode) {
        super(responseCode);
        this.isNewlyUnlocked = isNewlyUnlocked;
    }

    public UpdateProgressResponseImpl(int responseCode, ErrorCode errorCode) {
        super(responseCode, errorCode);
        this.isNewlyUnlocked = false;
    }

    @Override // com.amazon.ags.api.achievements.UpdateProgressResponse
    public boolean isNewlyUnlocked() {
        return this.isNewlyUnlocked;
    }
}

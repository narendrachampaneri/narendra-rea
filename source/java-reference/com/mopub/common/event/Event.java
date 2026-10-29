package com.mopub.common.event;

import android.support.annotation.NonNull;

/* JADX INFO: loaded from: classes.dex */
public class Event extends BaseEvent {
    private Event(@NonNull Builder builder) {
        super(builder);
    }

    public static class Builder extends BaseEvent.Builder {
        public Builder(@NonNull BaseEvent.Name name, @NonNull BaseEvent.Category category, double samplingRate) {
            super(BaseEvent.ScribeCategory.EXCHANGE_CLIENT_EVENT, name, category, samplingRate);
        }

        @Override // com.mopub.common.event.BaseEvent.Builder
        @NonNull
        public Event build() {
            return new Event(this);
        }
    }
}

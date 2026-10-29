package com.amazon.insights.event;

import com.amazon.insights.Event;
import com.amazon.insights.core.idresolver.Id;
import com.amazon.insights.core.util.JSONSerializable;

/* JADX INFO: loaded from: classes2.dex */
public interface InternalEvent extends Event, JSONSerializable {
    String getApplicationKey();

    Long getEventTimestamp();

    String getSdkName();

    String getSdkVersion();

    Id getUniqueId();
}

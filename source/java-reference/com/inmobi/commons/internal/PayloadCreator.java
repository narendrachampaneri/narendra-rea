package com.inmobi.commons.internal;

import android.content.Context;
import com.inmobi.commons.thinICE.icedatacollector.Sample;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface PayloadCreator {
    String toPayloadString(List<Sample> list, List<ActivityRecognitionSampler.ActivitySample> list2, Context context);
}

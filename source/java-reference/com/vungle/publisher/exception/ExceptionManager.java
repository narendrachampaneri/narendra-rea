package com.vungle.publisher.exception;

import com.vungle.publisher.cu;
import com.vungle.publisher.db.model.LoggedException;
import com.vungle.publisher.env.SdkConfig;
import javax.inject.Inject;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
@Singleton
public class ExceptionManager {

    @Inject
    public cu a;

    @Inject
    public SdkConfig b;

    @Inject
    public LoggedException.Factory c;
}

package com.vungle.publisher;

import com.vungle.publisher.db.model.LoggedException;
import com.vungle.publisher.net.http.AppFingerprintHttpTransactionFactory;
import com.vungle.publisher.net.http.ReportExceptionsHttpTransactionFactory;
import javax.inject.Inject;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public class cu extends cs {

    @Inject
    public ReportExceptionsHttpTransactionFactory a;

    @Inject
    public AppFingerprintHttpTransactionFactory b;

    @Inject
    public LoggedException.Factory f;
}

package com.amazon.identity.auth.device.thread;

import android.os.Bundle;
import com.amazon.identity.auth.device.AuthError;
import com.amazon.identity.auth.device.authorization.api.AuthorizationListener;
import com.amazon.identity.auth.device.authorization.api.AuthzConstants;
import com.amazon.identity.auth.device.shared.APIListener;
import com.amazon.identity.auth.device.utils.MAPLog;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes.dex */
public class MAPCallbackFuture implements Future<Bundle>, APIListener {
    private static final String LOG_TAG = MAPCallbackFuture.class.getName();
    private static final String MAIN_THREAD_ERROR_MSG = "Cannot call get on the main thread, unless you want ANRs";
    protected AuthError mError;
    protected final CountDownLatch mLatch;
    protected final AuthorizationListener mListener;
    protected Bundle mSuccessResult;

    public MAPCallbackFuture() {
        this(null);
    }

    public MAPCallbackFuture(AuthorizationListener listener) {
        this.mListener = listener == null ? new DefaultAuthorizationListener() : listener;
        this.mLatch = new CountDownLatch(1);
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean mayInterruptIfRunning) {
        return false;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // java.util.concurrent.Future
    public Bundle get() throws ExecutionException, InterruptedException {
        throwOnMainThread();
        MAPLog.e(LOG_TAG, "Running get on Future");
        this.mLatch.await();
        return getResultHelper();
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // java.util.concurrent.Future
    public Bundle get(long timeout, TimeUnit unit) throws ExecutionException, InterruptedException, TimeoutException {
        throwOnMainThread();
        MAPLog.e(LOG_TAG, "Running get on Future with timeout=" + timeout + "unit=" + unit.name());
        this.mLatch.await(timeout, unit);
        return getResultHelper();
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return false;
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        return this.mLatch.getCount() == 0;
    }

    @Override // com.amazon.identity.auth.device.shared.APIListener
    public void onSuccess(Bundle response) {
        this.mSuccessResult = response;
        if (this.mSuccessResult == null) {
            MAPLog.w(LOG_TAG, "Null Response");
            this.mSuccessResult = new Bundle();
        }
        this.mSuccessResult.putSerializable(AuthzConstants.BUNDLE_KEY.FUTURE.val, AuthzConstants.FUTURE_TYPE.SUCCESS);
        this.mLatch.countDown();
        this.mListener.onSuccess(response);
    }

    @Override // com.amazon.identity.auth.device.shared.APIListener
    public void onError(AuthError e) {
        this.mError = e;
        this.mLatch.countDown();
        this.mListener.onError(e);
    }

    protected Bundle getResultHelper() {
        if (this.mError == null) {
            return this.mSuccessResult;
        }
        Bundle authErrorBundle = AuthError.getErrorBundle(this.mError);
        authErrorBundle.putSerializable(AuthzConstants.BUNDLE_KEY.FUTURE.val, AuthzConstants.FUTURE_TYPE.ERROR);
        return authErrorBundle;
    }

    private void throwOnMainThread() {
        if (ThreadUtils.isRunningOnMainThread()) {
            MAPLog.e(LOG_TAG, MAIN_THREAD_ERROR_MSG);
            throw new IllegalStateException(MAIN_THREAD_ERROR_MSG);
        }
    }
}

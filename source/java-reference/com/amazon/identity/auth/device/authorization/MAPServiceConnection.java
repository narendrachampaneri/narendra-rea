package com.amazon.identity.auth.device.authorization;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.IInterface;
import com.amazon.identity.auth.device.AuthError;
import com.amazon.identity.auth.device.utils.MAPLog;

/* JADX INFO: loaded from: classes.dex */
public abstract class MAPServiceConnection<T> implements ServiceConnection {
    private static final String LOG_TAG = MAPServiceConnection.class.getName();
    protected AmazonServiceListener mListener;
    protected IInterface mService = null;

    public abstract IInterface getServiceInterface(IBinder iBinder);

    public abstract Class<T> getServiceInterfaceClass();

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName name, IBinder service) {
        MAPLog.i(LOG_TAG, "onServiceConnected called");
        if (isValidService(service)) {
            this.mService = getServiceInterface(service);
            this.mListener.onBindSuccess(this.mService);
        } else {
            this.mListener.onBindError(new AuthError("Returned service's interface doesn't match authorization service", AuthError.ERROR_TYPE.ERROR_UNKNOWN));
        }
    }

    public void setServiceListener(AmazonServiceListener listener) {
        if (listener == null) {
            throw new IllegalArgumentException("listener cannot be null!");
        }
        this.mListener = listener;
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName name) {
        MAPLog.i(LOG_TAG, "onServiceDisconnected called");
        this.mService = null;
    }

    protected boolean isValidService(IBinder service) {
        try {
            return service.getInterfaceDescriptor().equals(getServiceInterfaceClass().getName());
        } catch (Exception e) {
            MAPLog.e(LOG_TAG, "" + e.getMessage(), e);
            return false;
        }
    }
}

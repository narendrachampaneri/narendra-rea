package com.amazon.ags.client;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.ResolveInfo;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcel;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import com.amazon.ags.constants.AuthorizeKeys;
import com.amazon.ags.constants.BindingKeys;
import com.amazon.ags.constants.ClientVersionConstants;
import com.amazon.ags.html5.util.JSONUtils;
import com.amazon.identity.auth.device.token.Token;
import com.newrelic.agent.android.instrumentation.JSONObjectInstrumentation;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class KindleFireIPCProxy implements KindleFireProxy {
    private static final String SERVICE_CLASS_NAME = "com.amazon.ags.app.service.AmazonGamesService";
    private static final String SERVICE_PACKAGE_NAME = "com.amazon.ags.app";
    private static final String TAG = "KindleFireIPCProxy";
    private final Context context;
    private String sessionId;
    private IBinder synchronousBinder = null;
    private Messenger asynchronousMessenger = null;
    private KindleFireBindingCallback callback = null;
    private KindleFireStatus status = KindleFireStatus.INITIALIZING;
    private Boolean isUniversalSupported = null;
    private Boolean isKindle = null;
    private Boolean isOverlaysSupported = null;

    public KindleFireIPCProxy(Context context) {
        this.context = context;
    }

    @Override // com.amazon.ags.client.KindleFireProxy
    public final void bindToGameCircleService(KindleFireBindingCallback callback) {
        this.callback = callback;
        this.status = KindleFireStatus.INITIALIZING;
        if (isKindle()) {
            Log.d(TAG, "Device appears to be a Kindle Fire.  Attempting to connect to Amazon Game Services");
            bindToAsynchronousService(this.context);
            bindToSynchronousService(this.context);
        } else {
            Log.d(TAG, "Device does not appear to be a Kindle Fire.");
            changeStatus(KindleFireStatus.UNIVERSAL_NOT_SUPPORTED);
        }
    }

    @Override // com.amazon.ags.client.KindleFireProxy
    public synchronized boolean isKindle() {
        boolean zBooleanValue;
        synchronized (this) {
            if (this.isKindle == null) {
                Intent bindIntent = createBindIntent();
                ResolveInfo resolveInfo = this.context.getPackageManager().resolveService(bindIntent, 0);
                this.isKindle = Boolean.valueOf(resolveInfo != null);
            }
            zBooleanValue = this.isKindle.booleanValue();
        }
        return zBooleanValue;
    }

    @Override // com.amazon.ags.client.KindleFireProxy
    public final boolean isReady() {
        return this.status == KindleFireStatus.SERVICE_CONNECTED;
    }

    @Override // com.amazon.ags.client.KindleFireProxy
    public final KindleFireStatus getStatus() {
        return this.status;
    }

    @Override // com.amazon.ags.client.KindleFireProxy
    public synchronized boolean isUniversalSupported() {
        boolean zBooleanValue;
        if (this.isUniversalSupported != null) {
            zBooleanValue = this.isUniversalSupported.booleanValue();
        } else {
            Parcel requestParcel = Parcel.obtain();
            try {
                Parcel responseParcel = transact(40, requestParcel);
                String response = responseParcel.readString();
                this.isUniversalSupported = Boolean.valueOf(Boolean.parseBoolean(response));
                if (this.isUniversalSupported.booleanValue()) {
                    Log.d(TAG, "Device has compatible version of Amazon Game Services.");
                } else {
                    Log.w(TAG, "Device has an outdated version of Amazon Game Services.  Player will be in Guest mode");
                }
            } catch (Exception e) {
                Log.e(TAG, "Device has non-compatible version of Amazon Game Services.  Player will be in Guest mode");
                this.isUniversalSupported = false;
            }
            zBooleanValue = this.isUniversalSupported.booleanValue();
        }
        return zBooleanValue;
    }

    @Override // com.amazon.ags.client.KindleFireProxy
    public boolean isOptedIn() {
        Parcel requestParcel = Parcel.obtain();
        try {
            Parcel responseParcel = transact(42, requestParcel);
            String response = responseParcel.readString();
            return Boolean.parseBoolean(response);
        } catch (RemoteException e) {
            Log.e(TAG, "Unable to determine whether Customer is opted in to GameCircle.  Defaulting to false.", e);
            return false;
        } catch (Exception e2) {
            return false;
        }
    }

    @Override // com.amazon.ags.client.KindleFireProxy
    public void setOptIn(boolean optIn) {
        Parcel requestParcel = Parcel.obtain();
        Bundle requestBundle = new Bundle();
        requestBundle.putBoolean("optIn", optIn);
        requestParcel.writeBundle(requestBundle);
        try {
            transact(41, requestParcel);
        } catch (Exception e) {
            Log.e(TAG, "Unable to update OptIn status.", e);
        }
    }

    @Override // com.amazon.ags.client.KindleFireProxy
    public boolean isWhispersyncEnabled() {
        Parcel requestParcel = Parcel.obtain();
        try {
            Parcel responseParcel = transact(43, requestParcel);
            String response = responseParcel.readString();
            boolean isWhispersyncEnabled = Boolean.parseBoolean(response);
            Log.d(TAG, "Checking isWhispersyncEnabled: " + isWhispersyncEnabled);
            return isWhispersyncEnabled;
        } catch (Exception e) {
            Log.e(TAG, "Unable to determine whether Whispersync is enabled.  Defaulting to false.", e);
            return false;
        }
    }

    @Override // com.amazon.ags.client.KindleFireProxy
    public boolean isRegistered() {
        if (!isBound()) {
            return false;
        }
        Log.d(TAG, "Attempting to check is authenticated");
        try {
            Parcel request = Parcel.obtain();
            Bundle bundle = new Bundle();
            request.writeBundle(bundle);
            Parcel reply = transact(3, request);
            int replyCode = reply.readInt();
            return replyCode == 5;
        } catch (Exception e) {
            Log.e(TAG, "Unable to determine whether device is registered. Defaulting to false.", e);
            return false;
        }
    }

    @Override // com.amazon.ags.client.KindleFireProxy
    public Map<String, String> signMessage(String verb, String uri, String body) {
        Parcel requestParcel = Parcel.obtain();
        Bundle requestBundle = new Bundle();
        requestBundle.putString("verb", verb);
        requestBundle.putString("uri", uri);
        requestBundle.putString("body", body);
        requestBundle.putString(BindingKeys.SESSION_ID, this.sessionId);
        requestParcel.writeBundle(requestBundle);
        Map<String, String> responseMap = new HashMap<>();
        try {
            Parcel responseParcel = transact(45, requestParcel);
            Bundle responseBundle = responseParcel.readBundle();
            if (responseBundle == null) {
                return null;
            }
            String signature = responseBundle.getString("signature");
            String nonce = responseBundle.getString("nonce");
            String token = responseBundle.getString(Token.KEY_TOKEN);
            if (signature == null || nonce == null || token == null) {
                return null;
            }
            responseMap.put("signature", signature);
            responseMap.put("nonce", nonce);
            responseMap.put(Token.KEY_TOKEN, token);
            return responseMap;
        } catch (Exception e) {
            return null;
        }
    }

    @Override // com.amazon.ags.client.KindleFireProxy
    public void showOverlay(String overlayData) {
        if (!isOverlaysSupported()) {
            throw new UnsupportedOperationException("Proxying overlay requests is not supported on this device and software version.");
        }
        String sanitizedOverlayData = JSONUtils.sanitize(overlayData);
        try {
            JSONObject overlayDataJson = JSONObjectInstrumentation.init(sanitizedOverlayData);
            int overlayActionCode = overlayDataJson.getInt("OVERLAY_ACTION_CODE");
            Message msg = Message.obtain();
            msg.what = 48;
            msg.setData(new Bundle());
            msg.getData().putInt("OVERLAY_ACTION_CODE", overlayActionCode);
            sendMessage(msg);
        } catch (RemoteException e) {
            Log.e(TAG, "There was an error sending the show overlay message to the APK", e);
        } catch (JSONException e2) {
            Log.e(TAG, "Error occurred while retrieve the overlay action code from the overlay data", e2);
        }
    }

    @Override // com.amazon.ags.client.KindleFireProxy
    public boolean isOverlaysSupported() {
        if (this.isOverlaysSupported != null) {
            return this.isOverlaysSupported.booleanValue();
        }
        if (!isKindle() || !isUniversalSupported()) {
            return false;
        }
        Parcel requestParcel = Parcel.obtain();
        try {
            Parcel responseParcel = transact(47, requestParcel);
            String response = responseParcel.readString();
            boolean isOverlaysSupported = Boolean.parseBoolean(response);
            Log.d(TAG, "Checking isOverlaysSupported: " + isOverlaysSupported);
            return isOverlaysSupported;
        } catch (Exception e) {
            Log.e(TAG, "Unable to determine whether overlays are supported.  Defaulting to false.", e);
            return false;
        }
    }

    private void bindToAsynchronousService(Context context) {
        ServiceConnection asyncConnection = new ServiceConnection() { // from class: com.amazon.ags.client.KindleFireIPCProxy.1
            @Override // android.content.ServiceConnection
            public void onServiceConnected(ComponentName className, IBinder service) {
                KindleFireIPCProxy.this.asynchronousMessenger = new Messenger(service);
                KindleFireIPCProxy.this.onBindChange();
            }

            @Override // android.content.ServiceConnection
            public void onServiceDisconnected(ComponentName className) {
                KindleFireIPCProxy.this.asynchronousMessenger = null;
                KindleFireIPCProxy.this.onBindChange();
            }
        };
        Intent intent = createBindIntent();
        intent.setAction(BindingKeys.BIND_ASYNCHRONOUS);
        try {
            boolean bound = context.bindService(intent, asyncConnection, 1);
            Log.d(TAG, "binding result:" + bound);
        } catch (SecurityException e) {
            Log.w(TAG, "Device has an outdated version of Amazon Game Services.  Player will be in Guest mode");
            changeStatus(KindleFireStatus.UNIVERSAL_NOT_SUPPORTED);
        }
    }

    private void bindToSynchronousService(Context context) {
        ServiceConnection syncConnection = new ServiceConnection() { // from class: com.amazon.ags.client.KindleFireIPCProxy.2
            @Override // android.content.ServiceConnection
            public void onServiceConnected(ComponentName className, IBinder service) {
                KindleFireIPCProxy.this.synchronousBinder = service;
                KindleFireIPCProxy.this.onBindChange();
            }

            @Override // android.content.ServiceConnection
            public void onServiceDisconnected(ComponentName className) {
                KindleFireIPCProxy.this.synchronousBinder = null;
                KindleFireIPCProxy.this.onBindChange();
            }
        };
        Intent intent = createBindIntent();
        intent.setAction(BindingKeys.BIND_SYNCHRONOUS);
        try {
            context.bindService(intent, syncConnection, 1);
        } catch (SecurityException e) {
            Log.w(TAG, "Device has an outdated version of Amazon Game Services.  Player will be in Guest mode");
            changeStatus(KindleFireStatus.UNIVERSAL_NOT_SUPPORTED);
        }
    }

    private Intent createBindIntent() {
        Intent intent = new Intent();
        intent.setClassName(SERVICE_PACKAGE_NAME, SERVICE_CLASS_NAME);
        intent.putExtra(ClientVersionConstants.CLIENT_VERSION_KEY, "1.0.0");
        return intent;
    }

    private boolean isBound() {
        if (this.synchronousBinder == null || this.asynchronousMessenger == null) {
            Log.v(TAG, "synchronousBinder:" + this.synchronousBinder + " serviceMessengerClient:" + this.asynchronousMessenger);
            return false;
        }
        Log.d(TAG, "Client is bound to service");
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void onBindChange() {
        if (!isBound()) {
            if (this.status == KindleFireStatus.SERVICE_CONNECTED) {
                changeStatus(KindleFireStatus.SERVICE_DISCONNECTED);
            }
        } else if (this.status == KindleFireStatus.INITIALIZING) {
            if (isUniversalSupported() && initSession()) {
                authorize();
            } else {
                changeStatus(KindleFireStatus.UNIVERSAL_NOT_SUPPORTED);
            }
        }
    }

    private void notifyCaller() {
        if (this.callback != null) {
            if (this.status == KindleFireStatus.SERVICE_CONNECTED) {
                this.callback.onBound();
            } else {
                this.callback.onFailure(this.status);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void changeStatus(KindleFireStatus newStatus) {
        if (newStatus != this.status) {
            Log.d(TAG, "Changing Status from:" + this.status + " to: " + newStatus);
            this.status = newStatus;
            notifyCaller();
        }
    }

    private boolean initSession() {
        try {
            Parcel reply = transact(46, Parcel.obtain());
            this.sessionId = reply.readString();
            if (TextUtils.isEmpty(this.sessionId)) {
                Log.e(TAG, "Could not obtain session");
                return false;
            }
            return true;
        } catch (RemoteException e) {
            Log.e(TAG, "Could not obtain session");
            return false;
        }
    }

    private void authorize() {
        Log.d(TAG, "Attempting to Authorize");
        Message msg = Message.obtain();
        msg.what = 44;
        msg.replyTo = new Messenger(new Handler() { // from class: com.amazon.ags.client.KindleFireIPCProxy.3
            @Override // android.os.Handler
            public void handleMessage(Message msg2) {
                Log.d(KindleFireIPCProxy.TAG, "Handling authorize callback");
                Bundle bundle = msg2.getData();
                if (bundle == null) {
                    Log.e(KindleFireIPCProxy.TAG, "No bundle in authorize result.");
                    KindleFireIPCProxy.this.changeStatus(KindleFireStatus.CANNOT_AUTHORIZE);
                    return;
                }
                String authResult = bundle.getString(BindingKeys.AUTHORIZE_RESULT_BUNDLE_KEY);
                Log.d(KindleFireIPCProxy.TAG, "authResult: " + authResult);
                if (AuthorizeKeys.AUTHORIZED.equals(authResult)) {
                    KindleFireIPCProxy.this.onAuthorized();
                    return;
                }
                if (AuthorizeKeys.INVALID_SESSION.equals(authResult)) {
                    KindleFireIPCProxy.this.changeStatus(KindleFireStatus.NOT_AUTHORIZED);
                } else if (AuthorizeKeys.CANNOT_AUTHORIZE.equals(authResult)) {
                    KindleFireIPCProxy.this.changeStatus(KindleFireStatus.CANNOT_AUTHORIZE);
                } else if (AuthorizeKeys.NOT_AUTHORIZED.equals(authResult)) {
                    KindleFireIPCProxy.this.changeStatus(KindleFireStatus.NOT_AUTHORIZED);
                }
            }
        });
        try {
            sendMessage(msg);
        } catch (RemoteException e) {
            Log.e(TAG, "Unable to send Message to Service: ", e);
            changeStatus(KindleFireStatus.CANNOT_AUTHORIZE);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onAuthorized() {
        if (isRegistered()) {
            changeStatus(KindleFireStatus.SERVICE_CONNECTED);
        } else {
            changeStatus(KindleFireStatus.NOT_REGISTERED);
        }
    }

    private Parcel transact(int code, Parcel data) throws RemoteException {
        Parcel reply = Parcel.obtain();
        if (this.synchronousBinder == null) {
            Log.v(TAG, "transact() was called while disconnected");
        } else {
            this.synchronousBinder.transact(code, data, reply, 0);
        }
        return reply;
    }

    private void sendMessage(Message message) throws RemoteException {
        if (message.getData() == null) {
            message.setData(new Bundle());
        }
        message.getData().putString(ClientVersionConstants.CLIENT_VERSION_KEY, "1.0.0");
        message.getData().putString(BindingKeys.SESSION_ID, this.sessionId);
        if (this.asynchronousMessenger == null) {
            Log.e(TAG, "Service is not bound");
        } else {
            this.asynchronousMessenger.send(message);
        }
    }
}

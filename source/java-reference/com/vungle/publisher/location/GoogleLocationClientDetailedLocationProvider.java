package com.vungle.publisher.location;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GooglePlayServicesClient;
import com.google.android.gms.location.LocationClient;
import com.vungle.log.Logger;
import com.vungle.publisher.cl;
import javax.inject.Inject;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
@Singleton
public class GoogleLocationClientDetailedLocationProvider extends BaseGoogleDetailedLocationProvider<LocationClient> implements GooglePlayServicesClient.ConnectionCallbacks, GooglePlayServicesClient.OnConnectionFailedListener, cl {

    @Inject
    Context b;

    @Override // com.vungle.publisher.location.BaseGoogleDetailedLocationProvider
    protected final /* synthetic */ boolean a(LocationClient locationClient) {
        return locationClient.isConnected();
    }

    @Override // com.vungle.publisher.location.BaseGoogleDetailedLocationProvider, com.vungle.publisher.cj
    public final /* bridge */ /* synthetic */ Location b() {
        return super.b();
    }

    @Override // com.vungle.publisher.location.BaseGoogleDetailedLocationProvider
    protected final /* synthetic */ void b(LocationClient locationClient) {
        locationClient.connect();
    }

    @Override // com.vungle.publisher.location.BaseGoogleDetailedLocationProvider
    protected final /* synthetic */ Location c(LocationClient locationClient) {
        return locationClient.getLastLocation();
    }

    @Override // com.vungle.publisher.location.BaseGoogleDetailedLocationProvider
    protected final /* synthetic */ LocationClient c() {
        return new LocationClient(this.b, this, this);
    }

    @Override // com.vungle.publisher.location.BaseGoogleDetailedLocationProvider
    protected final /* synthetic */ void d(LocationClient locationClient) {
        locationClient.disconnect();
    }

    @Override // com.vungle.publisher.location.BaseGoogleDetailedLocationProvider
    protected final String a() {
        return "Google Play Services LocationClient";
    }

    public void onConnected(Bundle bundle) {
        super.d();
    }

    public void onDisconnected() {
        Logger.v(Logger.LOCATION_TAG, "disconnected from Google Play Services LocationClient " + this.a);
    }

    @Override // com.vungle.publisher.location.BaseGoogleDetailedLocationProvider
    public void onConnectionFailed(ConnectionResult connectionResult) {
        super.onConnectionFailed(connectionResult);
    }
}

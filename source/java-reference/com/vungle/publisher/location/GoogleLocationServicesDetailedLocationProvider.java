package com.vungle.publisher.location;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.location.LocationServices;
import com.vungle.log.Logger;
import com.vungle.publisher.cm;
import javax.inject.Inject;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
@Singleton
public class GoogleLocationServicesDetailedLocationProvider extends BaseGoogleDetailedLocationProvider<GoogleApiClient> implements GoogleApiClient.ConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener, cm {

    @Inject
    Context b;

    @Override // com.vungle.publisher.location.BaseGoogleDetailedLocationProvider
    protected final /* synthetic */ boolean a(GoogleApiClient googleApiClient) {
        return googleApiClient.isConnected();
    }

    @Override // com.vungle.publisher.location.BaseGoogleDetailedLocationProvider, com.vungle.publisher.cj
    public final /* bridge */ /* synthetic */ Location b() {
        return super.b();
    }

    @Override // com.vungle.publisher.location.BaseGoogleDetailedLocationProvider
    protected final /* synthetic */ void b(GoogleApiClient googleApiClient) {
        googleApiClient.connect();
    }

    @Override // com.vungle.publisher.location.BaseGoogleDetailedLocationProvider
    protected final /* synthetic */ Location c(GoogleApiClient googleApiClient) {
        return LocationServices.FusedLocationApi.getLastLocation(googleApiClient);
    }

    @Override // com.vungle.publisher.location.BaseGoogleDetailedLocationProvider
    protected final /* synthetic */ GoogleApiClient c() {
        Context context = this.b;
        return new GoogleApiClient.Builder(context).addApi(LocationServices.API).addConnectionCallbacks(this).addOnConnectionFailedListener(this).build();
    }

    @Override // com.vungle.publisher.location.BaseGoogleDetailedLocationProvider
    protected final /* synthetic */ void d(GoogleApiClient googleApiClient) {
        googleApiClient.disconnect();
    }

    @Override // com.vungle.publisher.location.BaseGoogleDetailedLocationProvider
    protected final String a() {
        return "Google Play Services LocationServices";
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks
    public void onConnected(Bundle bundle) {
        super.d();
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks
    public void onConnectionSuspended(int i) {
        Logger.v(Logger.LOCATION_TAG, "connection suspended for Google Play Services LocationServices " + this.a);
    }

    @Override // com.vungle.publisher.location.BaseGoogleDetailedLocationProvider
    public void onConnectionFailed(ConnectionResult connectionResult) {
        super.onConnectionFailed(connectionResult);
    }
}

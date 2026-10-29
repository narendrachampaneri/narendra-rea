package com.mopub.network;

import android.support.annotation.NonNull;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.event.BaseEvent;
import com.mopub.common.event.EventSerializer;
import com.mopub.volley.DefaultRetryPolicy;
import com.mopub.volley.NetworkResponse;
import com.mopub.volley.Request;
import com.mopub.volley.Response;
import com.mopub.volley.toolbox.HttpHeaderParser;
import com.newrelic.agent.android.instrumentation.JSONArrayInstrumentation;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;

/* JADX INFO: loaded from: classes.dex */
public class ScribeRequest extends Request<Void> {

    @NonNull
    private final EventSerializer mEventSerializer;

    @NonNull
    private final List<BaseEvent> mEvents;

    @NonNull
    private final Listener mListener;

    public interface Listener extends Response.ErrorListener {
        void onResponse();
    }

    public interface ScribeRequestFactory extends RequestManager.RequestFactory {
        ScribeRequest createRequest(Listener listener);
    }

    public ScribeRequest(@NonNull String url, @NonNull List<BaseEvent> events, @NonNull EventSerializer eventSerializer, @NonNull Listener listener) {
        super(1, url, listener);
        this.mEvents = events;
        this.mEventSerializer = eventSerializer;
        this.mListener = listener;
        setShouldCache(false);
        setRetryPolicy(new DefaultRetryPolicy());
    }

    @Override // com.mopub.volley.Request
    protected Map<String, String> getParams() {
        JSONArray jsonArray = this.mEventSerializer.serializeAsJson(this.mEvents);
        Map<String, String> params = new HashMap<>();
        params.put("log", !(jsonArray instanceof JSONArray) ? jsonArray.toString() : JSONArrayInstrumentation.toString(jsonArray));
        return params;
    }

    @Override // com.mopub.volley.Request
    protected Response<Void> parseNetworkResponse(NetworkResponse networkResponse) {
        return Response.success(null, HttpHeaderParser.parseCacheHeaders(networkResponse));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mopub.volley.Request
    public void deliverResponse(Void aVoid) {
        this.mListener.onResponse();
    }

    @NonNull
    @VisibleForTesting
    @Deprecated
    public List<BaseEvent> getEvents() {
        return this.mEvents;
    }
}

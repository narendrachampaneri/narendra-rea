package com.newrelic.agent.android.instrumentation.retrofit;

import com.newrelic.agent.android.logging.AgentLog;
import com.newrelic.agent.android.logging.AgentLogManager;
import java.util.concurrent.Executor;
import retrofit.Endpoint;
import retrofit.ErrorHandler;
import retrofit.Profiler;
import retrofit.RequestInterceptor;
import retrofit.RestAdapter;
import retrofit.client.Client;
import retrofit.converter.Converter;

/* JADX INFO: loaded from: classes.dex */
public class RestAdapterBuilderExtension extends RestAdapter.Builder {
    private static final AgentLog log = AgentLogManager.getAgentLog();
    private RestAdapter.Builder impl;

    public RestAdapterBuilderExtension(RestAdapter.Builder impl) {
        this.impl = impl;
    }

    public RestAdapter.Builder setEndpoint(String endpoint) {
        return this.impl.setEndpoint(endpoint);
    }

    public RestAdapter.Builder setEndpoint(Endpoint endpoint) {
        return this.impl.setEndpoint(endpoint);
    }

    public RestAdapter.Builder setClient(Client client) {
        log.debug("RestAdapterBuilderExtension.setClient() wrapping client " + client + " with new ClientExtension.");
        return this.impl.setClient(new ClientExtension(client));
    }

    public RestAdapter.Builder setClient(Client.Provider clientProvider) {
        return this.impl.setClient(clientProvider);
    }

    public RestAdapter.Builder setExecutors(Executor httpExecutor, Executor callbackExecutor) {
        return this.impl.setExecutors(httpExecutor, callbackExecutor);
    }

    public RestAdapter.Builder setRequestInterceptor(RequestInterceptor requestInterceptor) {
        return this.impl.setRequestInterceptor(requestInterceptor);
    }

    public RestAdapter.Builder setConverter(Converter converter) {
        return this.impl.setConverter(converter);
    }

    public RestAdapter.Builder setProfiler(Profiler profiler) {
        return this.impl.setProfiler(profiler);
    }

    public RestAdapter.Builder setErrorHandler(ErrorHandler errorHandler) {
        return this.impl.setErrorHandler(errorHandler);
    }

    public RestAdapter.Builder setLog(RestAdapter.Log log2) {
        return this.impl.setLog(log2);
    }

    public RestAdapter.Builder setLogLevel(RestAdapter.LogLevel logLevel) {
        return this.impl.setLogLevel(logLevel);
    }

    public RestAdapter build() {
        return this.impl.build();
    }
}

package com.amazon.insights;

import android.content.Context;
import com.amazon.insights.abtest.DefaultABTestClient;
import com.amazon.insights.core.DefaultInsightsContext;
import com.amazon.insights.core.InsightsContext;
import com.amazon.insights.core.crash.CrashReporter;
import com.amazon.insights.core.crash.ers.ERSClient;
import com.amazon.insights.core.crash.ers.ERSCrashAppender;
import com.amazon.insights.core.http.RequestTimingInterceptor;
import com.amazon.insights.core.log.Logger;
import com.amazon.insights.core.util.Preconditions;
import com.amazon.insights.core.util.SDKInfo;
import com.amazon.insights.event.DefaultEventClient;
import com.amazon.insights.event.InternalEventClient;
import com.amazon.insights.impl.DefaultInsightsCredentials;
import com.amazon.insights.impl.DefaultInsightsOptions;
import com.amazon.insights.impl.DisabledAmazonInsights;
import com.amazon.insights.impl.InitializationException;
import com.amazon.insights.session.InternalSessionClient;
import com.amazon.insights.session.client.DefaultSessionClient;
import com.amazon.insights.validate.EncodingValidator;
import com.amazon.insights.validate.EncryptionValidator;
import com.amazon.insights.validate.FileManagerValidator;
import com.amazon.insights.validate.PermissionValidator;
import com.amazon.insights.validate.SHA256Validator;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes2.dex */
public abstract class AmazonInsights {
    private static final String SDK_NAME = "AmazonInsightsSDK";
    private static final String SDK_VERSION = "2.1.26.0";
    private static final SDKInfo sdkInfo = new SDKInfo("AmazonInsightsSDK", SDK_VERSION);
    private static final Logger logger = Logger.getLogger(AmazonInsights.class);
    private static final Map<InsightsCredentials, AmazonInsights> instances = new ConcurrentHashMap();
    private static final PermissionValidator internetPermissionValidator = new PermissionValidator("android.permission.INTERNET");
    private static final PermissionValidator accessNetworkStatePermissionValidator = new PermissionValidator("android.permission.ACCESS_NETWORK_STATE");
    private static final EncodingValidator encodingValidator = new EncodingValidator("UTF-8");
    private static final SHA256Validator sha256Validator = new SHA256Validator();
    private static final EncryptionValidator aesEncryptionValidator = new EncryptionValidator("ABCDEFGHIJKLMNOPQRSTUVWXYZABCDEF", "AES");
    private static final FileManagerValidator fileManagerValidator = new FileManagerValidator();
    private static final DisabledAmazonInsights DISABLED_AMAZON_INSIGHTS = new DisabledAmazonInsights();

    public abstract ABTestClient getABTestClient();

    public abstract EventClient getEventClient();

    public abstract SessionClient getSessionClient();

    public abstract UserProfile getUserProfile();

    protected AmazonInsights() {
    }

    public static InsightsCredentials newCredentials(String applicationKey, String privateKey) {
        Preconditions.checkNotNull(applicationKey, "The application key provided must not be null");
        Preconditions.checkNotNull(privateKey, "The private key provided must not be null");
        return new DefaultInsightsCredentials(applicationKey, privateKey);
    }

    public static InsightsOptions newDefaultOptions() {
        return new DefaultInsightsOptions(true, false);
    }

    public static InsightsOptions newOptions(boolean allowEventCollection, boolean allowWANDelivery) {
        return new DefaultInsightsOptions(allowEventCollection, allowWANDelivery);
    }

    public static synchronized AmazonInsights getInstance(InsightsCredentials credentials) throws IllegalArgumentException {
        if (instances.containsKey(credentials)) {
        } else {
            throw new IllegalArgumentException("There was not an AmazonInsights instance registered for the credentials provided. Make sure you call newInstance before trying to retrieve the instance via getInstance");
        }
        return instances.get(credentials);
    }

    public static synchronized AmazonInsights newInstance(InsightsCredentials credentials, Context appContext) throws NullPointerException {
        return newInstance(credentials, appContext, newDefaultOptions(), null);
    }

    public static synchronized AmazonInsights newInstance(InsightsCredentials credentials, Context appContext, InsightsCallback<AmazonInsights> initCompletionCallback) throws NullPointerException {
        return newInstance(credentials, appContext, newDefaultOptions(), initCompletionCallback);
    }

    public static synchronized AmazonInsights newInstance(InsightsCredentials credentials, Context appContext, InsightsOptions options) throws NullPointerException {
        return newInstance(credentials, appContext, options, new HashMap(), null);
    }

    public static synchronized AmazonInsights newInstance(InsightsCredentials credentials, Context appContext, InsightsOptions options, InsightsCallback<AmazonInsights> initCompletionCallback) throws NullPointerException {
        return newInstance(credentials, appContext, options, new HashMap(), initCompletionCallback);
    }

    static synchronized AmazonInsights newInstance(InsightsCredentials credentials, Context appContext, InsightsOptions options, Map<String, String> settings, InsightsCallback<AmazonInsights> initCompletionCallback) throws NullPointerException {
        AmazonInsights disabledAmazonInsights;
        Preconditions.checkNotNull(credentials, "The credentials provided must not be null");
        Preconditions.checkNotNull(appContext, "The application context provided must not be null");
        Preconditions.checkNotNull(options, "The options provided must not be null");
        if (instances.containsKey(credentials)) {
            disabledAmazonInsights = instances.get(credentials);
        } else {
            try {
                Logger.tryInitialize();
                internetPermissionValidator.validate(appContext);
                accessNetworkStatePermissionValidator.validate(appContext);
                InsightsContext insightsContext = DefaultInsightsContext.newInstance(credentials, appContext, sdkInfo, options.getAllowWANDelivery(), settings);
                disabledAmazonInsights = newInstance(insightsContext, options, initCompletionCallback);
            } catch (RuntimeException e) {
                logger.deve("Error occurred while trying to initialize Insights Context", e);
                disabledAmazonInsights = new DisabledAmazonInsights();
            }
        }
        return disabledAmazonInsights;
    }

    static synchronized AmazonInsights newInstance(InsightsContext context) {
        return newInstance(context, newDefaultOptions());
    }

    static synchronized AmazonInsights newInstance(InsightsContext context, InsightsOptions options) {
        return newInstance(context, options, (InsightsCallback<AmazonInsights>) null);
    }

    static synchronized AmazonInsights newInstance(InsightsContext context, InsightsOptions options, InsightsCallback<AmazonInsights> initCompletionCallback) {
        AmazonInsights instance;
        AmazonInsights amazonInsights;
        Preconditions.checkNotNull(context, "The context provided must not be null");
        if (instances.containsKey(context.getCredentials())) {
            amazonInsights = instances.get(context.getCredentials());
        } else {
            try {
                instance = new DefaultAmazonInsights(context, options, initCompletionCallback);
            } catch (InitializationException e) {
                instance = DISABLED_AMAZON_INSIGHTS;
            }
            instances.put(context.getCredentials(), instance);
            amazonInsights = instance;
        }
        return amazonInsights;
    }

    static InsightsContext newInsightsContext(InsightsCredentials credentials, Context appContext) {
        return newInsightsContext(credentials, appContext, new HashMap());
    }

    static InsightsContext newInsightsContext(InsightsCredentials credentials, Context appContext, Map<String, String> settings) {
        return DefaultInsightsContext.newInstance(credentials, appContext, sdkInfo, true, settings);
    }

    static SDKInfo getSDKInfo() {
        return sdkInfo;
    }

    static final class DefaultAmazonInsights extends AmazonInsights {
        private final ABTestClient abClient;
        private final InsightsContext context;
        private final CrashReporter crashReporter;
        private final InternalEventClient eventClient;
        private final InternalSessionClient sessionClient;

        @Override // com.amazon.insights.AmazonInsights
        public ABTestClient getABTestClient() {
            return this.abClient;
        }

        @Override // com.amazon.insights.AmazonInsights
        public EventClient getEventClient() {
            return this.eventClient;
        }

        @Override // com.amazon.insights.AmazonInsights
        public UserProfile getUserProfile() {
            return this.context.getUserProfile();
        }

        @Override // com.amazon.insights.AmazonInsights
        public SessionClient getSessionClient() {
            return this.sessionClient;
        }

        DefaultAmazonInsights(InsightsContext context, InsightsOptions options, InsightsCallback<AmazonInsights> initCompletionCallback) throws InitializationException {
            Preconditions.checkNotNull(context, "The InsightsContext provided must not be null");
            try {
                Logger.tryInitialize();
                this.crashReporter = new CrashReporter(AmazonInsights.class);
                ERSClient client = ERSClient.newInstance(context);
                this.crashReporter.attachAppender(new ERSCrashAppender(context, client));
                try {
                    AmazonInsights.encodingValidator.validate();
                    AmazonInsights.sha256Validator.validate();
                    AmazonInsights.aesEncryptionValidator.validate();
                    AmazonInsights.fileManagerValidator.validate(context);
                    this.context = context;
                    if (options != null) {
                        this.eventClient = DefaultEventClient.newInstance(context, options.getAllowEventCollection());
                    } else {
                        this.eventClient = DefaultEventClient.newInstance(context, newDefaultOptions().getAllowEventCollection());
                    }
                    this.sessionClient = DefaultSessionClient.newInstance(context, this.eventClient);
                    context.getHttpClient().addInterceptor(new RequestTimingInterceptor(context.getSystem().getConnectivity(), this.eventClient));
                    this.abClient = DefaultABTestClient.newInstance(context, this.eventClient);
                    if (initCompletionCallback != null) {
                        initCompletionCallback.onComplete(this);
                    }
                    this.sessionClient.startSession();
                    context.synchronize();
                    AmazonInsights.logger.devi(String.format("Amazon Insights SDK(%s) initialization successfully completed", AmazonInsights.SDK_VERSION));
                } catch (RuntimeException e) {
                    try {
                        this.crashReporter.report("Failed initialization of Insights client", e);
                    } catch (RuntimeException rte) {
                        AmazonInsights.logger.deve("Error occurred while trying to report Initialization Error", rte);
                    }
                    AmazonInsights.logger.deve("Cannot initialize Amazon Insights SDK", e);
                    throw new InitializationException("Could not initialize Insights SDK", e);
                }
            } catch (RuntimeException e2) {
                AmazonInsights.logger.deve("Cannot initialize Logging System", e2);
                throw new InitializationException("Cannot initialize Logging System", e2);
            }
        }
    }
}

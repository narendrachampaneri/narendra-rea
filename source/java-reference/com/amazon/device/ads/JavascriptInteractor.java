package com.amazon.device.ads;

import android.webkit.JavascriptInterface;
import com.newrelic.agent.android.instrumentation.JSONObjectInstrumentation;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
class JavascriptInteractor {
    private static String executorMethodName;
    private static final String LOGTAG = JavascriptInteractor.class.getSimpleName();
    private static final MobileAdsLogger logger = new MobileAdsLoggerFactory().createMobileAdsLogger(LOGTAG);
    private final Map<String, JavascriptMethodExecutor> methodMap = new ConcurrentHashMap();
    private final Executor executor = new Executor(this);

    public static String getExecutorMethodName() {
        if (executorMethodName == null) {
            Method[] methods = Executor.class.getDeclaredMethods();
            if (methods != null && methods.length == 1) {
                executorMethodName = methods[0].getName();
            } else {
                logger.e("Could not obtain the method name for javascript interfacing.");
            }
        }
        return executorMethodName;
    }

    public void addMethodExecutor(JavascriptMethodExecutor javascriptMethodExecutor) {
        if (this.methodMap.containsKey(javascriptMethodExecutor.getMethodName())) {
            throw new IllegalArgumentException("There is another executor with that method name already added.");
        }
        this.methodMap.put(javascriptMethodExecutor.getMethodName(), javascriptMethodExecutor);
    }

    public Executor getExecutor() {
        return this.executor;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public JSONObject execute(String method, String javascriptObjectParameters) {
        JSONObject jsonObject = null;
        if (javascriptObjectParameters == null || javascriptObjectParameters.length() <= 2 || (jsonObject = JSONUtils.getJSONObjectFromString(javascriptObjectParameters)) != null) {
            return execute(method, jsonObject);
        }
        logger.w("The javascript object \"%s\" could not be parsed for method \"%s\".", javascriptObjectParameters, method);
        return null;
    }

    private JSONObject execute(String method, JSONObject jsonObject) {
        if (this.methodMap.containsKey(method)) {
            JavascriptMethodExecutor ji = this.methodMap.get(method);
            return ji.execute(jsonObject);
        }
        logger.w("The method %s was not recongized by this javascript interface.", method);
        return null;
    }

    public static class Executor {
        private final JavascriptInteractor interactor;
        private boolean proguardKeeper = false;

        public Executor(JavascriptInteractor interactor) {
            this.interactor = interactor;
            if (this.proguardKeeper) {
                execute(null, null);
            }
        }

        @JavascriptInterface
        public String execute(String method, String javascriptObjectParameters) {
            JSONObject returnJSON = this.interactor.execute(method, javascriptObjectParameters);
            if (returnJSON == null) {
                return null;
            }
            return !(returnJSON instanceof JSONObject) ? returnJSON.toString() : JSONObjectInstrumentation.toString(returnJSON);
        }
    }

    public static abstract class JavascriptMethodExecutor {
        private final String methodName;

        protected abstract JSONObject execute(JSONObject jSONObject);

        protected JavascriptMethodExecutor(String methodName) {
            this.methodName = methodName;
        }

        public String getMethodName() {
            return this.methodName;
        }
    }
}

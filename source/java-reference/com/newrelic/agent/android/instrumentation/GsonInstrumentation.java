package com.newrelic.agent.android.instrumentation;

import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.google.gson.JsonIOException;
import com.google.gson.JsonSyntaxException;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import com.newrelic.agent.android.analytics.AnalyticAttribute;
import com.newrelic.agent.android.tracing.TraceMachine;
import java.io.Reader;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public class GsonInstrumentation {
    private static final ArrayList<String> categoryParams = new ArrayList<>(Arrays.asList(AnalyticAttribute.EVENT_CATEGORY_ATTRIBUTE, MetricCategory.class.getName(), "JSON"));

    @ReplaceCallSite(scope = "com.google.gson.Gson")
    public static String toJson(Gson gson, Object src) {
        TraceMachine.enterMethod("Gson#toJson", categoryParams);
        String string = gson.toJson(src);
        TraceMachine.exitMethod();
        return string;
    }

    @ReplaceCallSite(scope = "com.google.gson.Gson")
    public static String toJson(Gson gson, Object src, Type typeOfSrc) {
        TraceMachine.enterMethod("Gson#toJson", categoryParams);
        String string = gson.toJson(src, typeOfSrc);
        TraceMachine.exitMethod();
        return string;
    }

    @ReplaceCallSite(scope = "com.google.gson.Gson")
    public static void toJson(Gson gson, Object src, Appendable writer) throws JsonIOException {
        TraceMachine.enterMethod("Gson#toJson", categoryParams);
        gson.toJson(src, writer);
        TraceMachine.exitMethod();
    }

    @ReplaceCallSite(scope = "com.google.gson.Gson")
    public static void toJson(Gson gson, Object src, Type typeOfSrc, Appendable writer) throws JsonIOException {
        TraceMachine.enterMethod("Gson#toJson", categoryParams);
        gson.toJson(src, typeOfSrc, writer);
        TraceMachine.exitMethod();
    }

    @ReplaceCallSite(scope = "com.google.gson.Gson")
    public static void toJson(Gson gson, Object src, Type typeOfSrc, JsonWriter writer) throws JsonIOException {
        TraceMachine.enterMethod("Gson#toJson", categoryParams);
        gson.toJson(src, typeOfSrc, writer);
        TraceMachine.exitMethod();
    }

    @ReplaceCallSite(scope = "com.google.gson.Gson")
    public static String toJson(Gson gson, JsonElement jsonElement) {
        TraceMachine.enterMethod("Gson#toJson", categoryParams);
        String string = gson.toJson(jsonElement);
        TraceMachine.exitMethod();
        return string;
    }

    @ReplaceCallSite(scope = "com.google.gson.Gson")
    public static void toJson(Gson gson, JsonElement jsonElement, Appendable writer) throws JsonIOException {
        TraceMachine.enterMethod("Gson#toJson", categoryParams);
        gson.toJson(jsonElement, writer);
        TraceMachine.exitMethod();
    }

    @ReplaceCallSite(scope = "com.google.gson.Gson")
    public static void toJson(Gson gson, JsonElement jsonElement, JsonWriter writer) throws JsonIOException {
        TraceMachine.enterMethod("Gson#toJson", categoryParams);
        gson.toJson(jsonElement, writer);
        TraceMachine.exitMethod();
    }

    @ReplaceCallSite(scope = "com.google.gson.Gson")
    public static <T> T fromJson(Gson gson, String str, Class<T> cls) throws JsonSyntaxException {
        TraceMachine.enterMethod("Gson#fromJson", categoryParams);
        T t = (T) gson.fromJson(str, cls);
        TraceMachine.exitMethod();
        return t;
    }

    @ReplaceCallSite(scope = "com.google.gson.Gson")
    public static <T> T fromJson(Gson gson, String str, Type type) throws JsonSyntaxException {
        TraceMachine.enterMethod("Gson#fromJson", categoryParams);
        T t = (T) gson.fromJson(str, type);
        TraceMachine.exitMethod();
        return t;
    }

    @ReplaceCallSite(scope = "com.google.gson.Gson")
    public static <T> T fromJson(Gson gson, Reader reader, Class<T> cls) throws JsonSyntaxException, JsonIOException {
        TraceMachine.enterMethod("Gson#fromJson", categoryParams);
        T t = (T) gson.fromJson(reader, cls);
        TraceMachine.exitMethod();
        return t;
    }

    @ReplaceCallSite(scope = "com.google.gson.Gson")
    public static <T> T fromJson(Gson gson, Reader reader, Type type) throws JsonSyntaxException, JsonIOException {
        TraceMachine.enterMethod("Gson#fromJson", categoryParams);
        T t = (T) gson.fromJson(reader, type);
        TraceMachine.exitMethod();
        return t;
    }

    @ReplaceCallSite(scope = "com.google.gson.Gson")
    public static <T> T fromJson(Gson gson, JsonReader jsonReader, Type type) throws JsonSyntaxException, JsonIOException {
        TraceMachine.enterMethod("Gson#fromJson", categoryParams);
        T t = (T) gson.fromJson(jsonReader, type);
        TraceMachine.exitMethod();
        return t;
    }

    @ReplaceCallSite(scope = "com.google.gson.Gson")
    public static <T> T fromJson(Gson gson, JsonElement jsonElement, Class<T> cls) throws JsonSyntaxException {
        TraceMachine.enterMethod("Gson#fromJson", categoryParams);
        T t = (T) gson.fromJson(jsonElement, cls);
        TraceMachine.exitMethod();
        return t;
    }

    @ReplaceCallSite(scope = "com.google.gson.Gson")
    public static <T> T fromJson(Gson gson, JsonElement jsonElement, Type type) throws JsonSyntaxException {
        TraceMachine.enterMethod("Gson#fromJson", categoryParams);
        T t = (T) gson.fromJson(jsonElement, type);
        TraceMachine.exitMethod();
        return t;
    }
}

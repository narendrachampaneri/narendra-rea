package com.newrelic.agent.android.harvest.crash;

import com.amazon.identity.auth.device.authorization.AuthorizationResponseParser;
import com.newrelic.agent.android.harvest.type.HarvestableObject;
import com.newrelic.agent.android.util.SafeJsonPrimitive;
import com.newrelic.com.google.gson.JsonArray;
import com.newrelic.com.google.gson.JsonElement;
import com.newrelic.com.google.gson.JsonObject;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.apache.commons.logging.LogFactory;

/* JADX INFO: loaded from: classes.dex */
public class ThreadInfo extends HarvestableObject {
    private boolean crashed;
    private StackTraceElement[] stackTrace;
    private String state;
    private long threadId;
    private String threadName;
    private int threadPriority;

    private ThreadInfo() {
    }

    public ThreadInfo(Throwable throwable) {
        this.crashed = true;
        this.threadId = Thread.currentThread().getId();
        this.threadName = Thread.currentThread().getName();
        this.threadPriority = Thread.currentThread().getPriority();
        this.stackTrace = throwable.getStackTrace();
        this.state = Thread.currentThread().getState().toString();
    }

    public ThreadInfo(Thread thread, StackTraceElement[] stackTrace) {
        this.crashed = false;
        this.threadId = thread.getId();
        this.threadName = thread.getName();
        this.threadPriority = thread.getPriority();
        this.stackTrace = stackTrace;
        this.state = thread.getState().toString();
    }

    public long getThreadId() {
        return this.threadId;
    }

    public static List<ThreadInfo> extractThreads(Throwable throwable) {
        List<ThreadInfo> threads = new ArrayList<>();
        ThreadInfo crashedThread = new ThreadInfo(throwable);
        long crashedThreadId = crashedThread.getThreadId();
        threads.add(crashedThread);
        for (Map.Entry<Thread, StackTraceElement[]> threadEntry : Thread.getAllStackTraces().entrySet()) {
            Thread thread = threadEntry.getKey();
            StackTraceElement[] threadStackTrace = threadEntry.getValue();
            if (thread.getId() != crashedThreadId) {
                threads.add(new ThreadInfo(thread, threadStackTrace));
            }
        }
        return threads;
    }

    @Override // com.newrelic.agent.android.harvest.type.HarvestableObject, com.newrelic.agent.android.harvest.type.BaseHarvestable, com.newrelic.agent.android.harvest.type.Harvestable
    public JsonObject asJsonObject() {
        JsonObject data = new JsonObject();
        data.add("crashed", SafeJsonPrimitive.factory(Boolean.valueOf(this.crashed)));
        data.add(AuthorizationResponseParser.STATE, SafeJsonPrimitive.factory(this.state));
        data.add("threadNumber", SafeJsonPrimitive.factory(Long.valueOf(this.threadId)));
        data.add("threadId", SafeJsonPrimitive.factory(this.threadName));
        data.add(LogFactory.PRIORITY_KEY, SafeJsonPrimitive.factory(Integer.valueOf(this.threadPriority)));
        data.add("stack", getStackAsJson());
        return data;
    }

    public static ThreadInfo newFromJson(JsonObject jsonObject) {
        ThreadInfo info = new ThreadInfo();
        info.crashed = jsonObject.get("crashed").getAsBoolean();
        info.state = jsonObject.get(AuthorizationResponseParser.STATE).getAsString();
        info.threadId = jsonObject.get("threadNumber").getAsLong();
        info.threadName = jsonObject.get("threadId").getAsString();
        info.threadPriority = jsonObject.get(LogFactory.PRIORITY_KEY).getAsInt();
        info.stackTrace = stackTraceFromJson(jsonObject.get("stack").getAsJsonArray());
        return info;
    }

    public static StackTraceElement[] stackTraceFromJson(JsonArray jsonArray) {
        StackTraceElement[] stack = new StackTraceElement[jsonArray.size()];
        int i = 0;
        for (JsonElement jsonElement : jsonArray) {
            String fileName = "unknown";
            if (jsonElement.getAsJsonObject().get("fileName") != null) {
                fileName = jsonElement.getAsJsonObject().get("fileName").getAsString();
            }
            String className = jsonElement.getAsJsonObject().get("className").getAsString();
            String methodName = jsonElement.getAsJsonObject().get("methodName").getAsString();
            int lineNumber = jsonElement.getAsJsonObject().get("lineNumber").getAsInt();
            StackTraceElement stackTraceElement = new StackTraceElement(className, methodName, fileName, lineNumber);
            stack[i] = stackTraceElement;
            i++;
        }
        return stack;
    }

    public static List<ThreadInfo> newListFromJson(JsonArray jsonArray) {
        List<ThreadInfo> list = new ArrayList<>();
        for (JsonElement jsonElement : jsonArray) {
            list.add(newFromJson(jsonElement.getAsJsonObject()));
        }
        return list;
    }

    private JsonArray getStackAsJson() {
        JsonArray data = new JsonArray();
        StackTraceElement[] arr$ = this.stackTrace;
        for (StackTraceElement element : arr$) {
            JsonObject elementJson = new JsonObject();
            if (element.getFileName() != null) {
                elementJson.add("fileName", SafeJsonPrimitive.factory(element.getFileName()));
            }
            elementJson.add("className", SafeJsonPrimitive.factory(element.getClassName()));
            elementJson.add("methodName", SafeJsonPrimitive.factory(element.getMethodName()));
            elementJson.add("lineNumber", SafeJsonPrimitive.factory(Integer.valueOf(element.getLineNumber())));
            data.add(elementJson);
        }
        return data;
    }
}

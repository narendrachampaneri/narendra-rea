package com.newrelic.agent.android;

import com.amazon.identity.auth.device.endpoint.AbstractTokenRequest;
import com.newrelic.agent.android.api.common.TransactionData;
import com.newrelic.agent.android.harvest.ApplicationInformation;
import com.newrelic.agent.android.harvest.DeviceInformation;
import com.newrelic.agent.android.harvest.EnvironmentInformation;
import com.newrelic.agent.android.util.Encoder;
import com.newrelic.agent.android.util.SafeJsonPrimitive;
import io.fabric.sdk.android.services.common.IdManager;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: loaded from: classes.dex */
public class NullAgentImpl implements AgentImpl {
    public static final NullAgentImpl instance = new NullAgentImpl();
    private int responseBodyLimit;
    private final ReentrantLock lock = new ReentrantLock();
    private final AgentConfiguration agentConfiguration = new AgentConfiguration();
    private long sessionStartTimeMillis = 0;

    @Override // com.newrelic.agent.android.AgentImpl
    public void addTransactionData(TransactionData transactionData) {
    }

    @Override // com.newrelic.agent.android.AgentImpl
    public List<TransactionData> getAndClearTransactionData() {
        return new ArrayList();
    }

    @Override // com.newrelic.agent.android.AgentImpl
    public void mergeTransactionData(List<TransactionData> transactionDataList) {
    }

    @Override // com.newrelic.agent.android.AgentImpl
    public String getCrossProcessId() {
        return null;
    }

    @Override // com.newrelic.agent.android.AgentImpl
    public int getStackTraceLimit() {
        return 0;
    }

    @Override // com.newrelic.agent.android.AgentImpl
    public int getResponseBodyLimit() {
        return this.responseBodyLimit;
    }

    public void setResponseBodyLimit(int responseBodyLimit) {
        this.responseBodyLimit = responseBodyLimit;
    }

    @Override // com.newrelic.agent.android.AgentImpl
    public void start() {
    }

    @Override // com.newrelic.agent.android.AgentImpl
    public void stop() {
    }

    @Override // com.newrelic.agent.android.AgentImpl
    public void disable() {
    }

    @Override // com.newrelic.agent.android.AgentImpl
    public boolean isDisabled() {
        return true;
    }

    @Override // com.newrelic.agent.android.AgentImpl
    public String getNetworkCarrier() {
        return "unknown";
    }

    @Override // com.newrelic.agent.android.AgentImpl
    public String getNetworkWanType() {
        return "unknown";
    }

    @Override // com.newrelic.agent.android.AgentImpl
    public void setLocation(String countryCode, String adminRegion) {
    }

    @Override // com.newrelic.agent.android.AgentImpl
    public Encoder getEncoder() {
        return new Encoder() { // from class: com.newrelic.agent.android.NullAgentImpl.1
            @Override // com.newrelic.agent.android.util.Encoder
            public String encode(byte[] bytes) {
                return new String(bytes);
            }
        };
    }

    @Override // com.newrelic.agent.android.AgentImpl
    public DeviceInformation getDeviceInformation() {
        DeviceInformation devInfo = new DeviceInformation();
        devInfo.setOsName(AbstractTokenRequest.ANDROID_OS_NAME);
        devInfo.setOsVersion("2.3");
        devInfo.setOsBuild("a.b.c");
        devInfo.setManufacturer("Fake");
        devInfo.setModel("NullAgent");
        devInfo.setAgentName("AndroidAgent");
        devInfo.setAgentVersion("2.123");
        devInfo.setDeviceId("389C9738-A761-44DE-8A66-1668CFD67DA1");
        devInfo.setArchitecture("Fake Arch");
        devInfo.setRunTime("1.7.0");
        devInfo.setSize("Fake Size");
        return devInfo;
    }

    @Override // com.newrelic.agent.android.AgentImpl
    public ApplicationInformation getApplicationInformation() {
        return new ApplicationInformation(SafeJsonPrimitive.NULL_STRING, IdManager.DEFAULT_VERSION_NAME, SafeJsonPrimitive.NULL_STRING, "0");
    }

    @Override // com.newrelic.agent.android.AgentImpl
    public EnvironmentInformation getEnvironmentInformation() {
        return new EnvironmentInformation(0L, 1, "none", "none", new long[]{0, 0});
    }

    @Override // com.newrelic.agent.android.AgentImpl
    public boolean updateSavedConnectInformation() {
        return false;
    }

    @Override // com.newrelic.agent.android.AgentImpl
    public long getSessionDurationMillis() {
        return this.sessionStartTimeMillis;
    }
}

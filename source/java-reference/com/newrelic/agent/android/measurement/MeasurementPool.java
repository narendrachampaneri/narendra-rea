package com.newrelic.agent.android.measurement;

import com.newrelic.agent.android.logging.AgentLog;
import com.newrelic.agent.android.logging.AgentLogManager;
import com.newrelic.agent.android.measurement.consumer.MeasurementConsumer;
import com.newrelic.agent.android.measurement.producer.BaseMeasurementProducer;
import com.newrelic.agent.android.measurement.producer.MeasurementProducer;
import com.newrelic.agent.android.util.ExceptionHelper;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes.dex */
public class MeasurementPool extends BaseMeasurementProducer implements MeasurementConsumer {
    private static final AgentLog log = AgentLogManager.getAgentLog();
    private final Collection<MeasurementConsumer> consumers;
    private final Collection<MeasurementProducer> producers;

    public MeasurementPool() {
        super(MeasurementType.Any);
        this.producers = new CopyOnWriteArrayList();
        this.consumers = new CopyOnWriteArrayList();
        addMeasurementProducer(this);
    }

    public void addMeasurementProducer(MeasurementProducer producer) {
        if (producer != null) {
            synchronized (this.producers) {
                if (this.producers.contains(producer)) {
                    log.debug("Attempted to add the same MeasurementProducer " + producer + "  multiple times.");
                } else {
                    this.producers.add(producer);
                }
            }
            return;
        }
        log.debug("Attempted to add null MeasurementProducer.");
    }

    public void removeMeasurementProducer(MeasurementProducer producer) {
        synchronized (this.producers) {
            if (!this.producers.contains(producer)) {
                log.debug("Attempted to remove MeasurementProducer " + producer + " which is not registered.");
            } else {
                this.producers.remove(producer);
            }
        }
    }

    public void addMeasurementConsumer(MeasurementConsumer consumer) {
        if (consumer != null) {
            synchronized (this.consumers) {
                if (this.consumers.contains(consumer)) {
                    log.debug("Attempted to add the same MeasurementConsumer " + consumer + " multiple times.");
                } else {
                    this.consumers.add(consumer);
                }
            }
            return;
        }
        log.debug("Attempted to add null MeasurementConsumer.");
    }

    public void removeMeasurementConsumer(MeasurementConsumer consumer) {
        synchronized (this.consumers) {
            if (!this.consumers.contains(consumer)) {
                log.debug("Attempted to remove MeasurementConsumer " + consumer + " which is not registered.");
            } else {
                this.consumers.remove(consumer);
            }
        }
    }

    public void broadcastMeasurements() {
        List<Measurement> allProducedMeasurements = new ArrayList<>();
        synchronized (this.producers) {
            for (MeasurementProducer producer : this.producers) {
                Collection<Measurement> measurements = producer.drainMeasurements();
                if (measurements.size() > 0) {
                    allProducedMeasurements.addAll(measurements);
                    while (allProducedMeasurements.remove((Object) null)) {
                    }
                }
            }
        }
        if (allProducedMeasurements.size() > 0) {
            synchronized (this.consumers) {
                for (MeasurementConsumer consumer : this.consumers) {
                    for (Measurement measurement : new ArrayList<>(allProducedMeasurements)) {
                        if (consumer.getMeasurementType() == measurement.getType() || consumer.getMeasurementType() == MeasurementType.Any) {
                            try {
                                consumer.consumeMeasurement(measurement);
                            } catch (Exception e) {
                                ExceptionHelper.exceptionToErrorCode(e);
                                log.error("broadcastMeasurements exception[" + e.getClass().getName() + "]");
                            }
                        }
                    }
                }
            }
        }
    }

    @Override // com.newrelic.agent.android.measurement.consumer.MeasurementConsumer
    public void consumeMeasurement(Measurement measurement) {
        produceMeasurement(measurement);
    }

    @Override // com.newrelic.agent.android.measurement.consumer.MeasurementConsumer
    public void consumeMeasurements(Collection<Measurement> measurements) {
        produceMeasurements(measurements);
    }

    @Override // com.newrelic.agent.android.measurement.producer.BaseMeasurementProducer, com.newrelic.agent.android.measurement.producer.MeasurementProducer, com.newrelic.agent.android.measurement.consumer.MeasurementConsumer
    public MeasurementType getMeasurementType() {
        return MeasurementType.Any;
    }

    public Collection<MeasurementProducer> getMeasurementProducers() {
        return this.producers;
    }

    public Collection<MeasurementConsumer> getMeasurementConsumers() {
        return this.consumers;
    }
}

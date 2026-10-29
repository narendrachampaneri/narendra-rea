package com.amazon.insights.abtest.cache;

import com.amazon.ags.constants.NativeCallKeys;
import com.amazon.insights.abtest.DefaultVariation;
import com.amazon.insights.core.InsightsContext;
import com.amazon.insights.core.idresolver.Id;
import com.amazon.insights.core.log.Logger;
import com.amazon.insights.core.system.FileManager;
import com.amazon.insights.core.util.Preconditions;
import com.newrelic.agent.android.analytics.AnalyticAttribute;
import com.newrelic.agent.android.instrumentation.JSONObjectInstrumentation;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class FileVariationCache implements VariationCache {
    public static final String VARIATIONS_DIRECTORY = "variations";
    private static Logger logger = Logger.getLogger(FileVariationCache.class);
    private final FileManager fileManager;
    private final Map<String, File> variationFiles = new ConcurrentHashMap();
    private final File variationsDirectory;

    public FileVariationCache(InsightsContext context) {
        this.fileManager = context.getSystem().getFileManager();
        this.variationsDirectory = this.fileManager.createDirectory(VARIATIONS_DIRECTORY);
        loadVariationFileInfo();
    }

    private void loadVariationFileInfo() {
        if (this.variationsDirectory != null && this.variationsDirectory.exists()) {
            Set<File> files = this.fileManager.listFilesInDirectory(this.variationsDirectory);
            for (File file : files) {
                this.variationFiles.put(file.getName(), file);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0035  */
    /* JADX WARN: Code duplicated, block: B:18:0x0046 A[Catch: all -> 0x00aa, IOException -> 0x00ad, TRY_LEAVE, TryCatch #12 {IOException -> 0x00ad, all -> 0x00aa, blocks: (B:16:0x0040, B:18:0x0046), top: B:81:0x0040 }] */
    /* JADX WARN: Code duplicated, block: B:37:0x0087 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:67:0x0051 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:76:0x0089 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // com.amazon.insights.abtest.cache.VariationCache
    public synchronized boolean put(DefaultVariation variation) {
        File file;
        OutputStreamWriter writer;
        boolean z = false;
        synchronized (this) {
            Preconditions.checkNotNull(variation);
            Preconditions.checkArgument(!variation.isDefault());
            if (this.variationFiles.containsKey(variation.getProjectName())) {
                File file2 = this.variationFiles.get(variation.getProjectName());
                file = file2;
            } else {
                try {
                    String fileName = variation.getProjectName();
                    File file3 = new File(this.variationsDirectory, fileName);
                    try {
                        file = this.fileManager.createFile(file3);
                    } catch (IOException e) {
                        e = e;
                        logger.deve("Unable to cache the variation");
                        logger.e("An error occurred while attempting to create a new file to persist a variation", e);
                    }
                } catch (IOException e2) {
                    e = e2;
                }
            }
            OutputStream output = null;
            if (file != null) {
                try {
                    output = this.fileManager.newOutputStream(file, false);
                    if (output != null) {
                        OutputStreamWriter writer2 = null;
                        try {
                            try {
                                writer = new OutputStreamWriter(new GZIPOutputStream(output));
                                try {
                                    if (writeVariationToFile(variation, writer)) {
                                        this.variationFiles.put(variation.getProjectName(), file);
                                        if (writer != null) {
                                            try {
                                                writer.close();
                                            } catch (IOException e3) {
                                            }
                                        }
                                        z = true;
                                    } else if (writer != null) {
                                        try {
                                            writer.close();
                                        } catch (IOException e4) {
                                        }
                                    }
                                } catch (IOException e5) {
                                    e = e5;
                                    writer2 = writer;
                                    logger.e("Could not write the variation to file", e);
                                    if (writer2 != null) {
                                        try {
                                            writer2.close();
                                        } catch (IOException e6) {
                                        }
                                    }
                                } catch (Throwable th) {
                                    th = th;
                                    writer2 = writer;
                                    if (writer2 != null) {
                                        try {
                                            writer2.close();
                                        } catch (IOException e7) {
                                        }
                                    }
                                    throw th;
                                }
                            } catch (IOException e8) {
                                e = e8;
                            }
                        } catch (Throwable th2) {
                            th = th2;
                        }
                    }
                } catch (FileNotFoundException e9) {
                    logger.e("The file does not exist to write the variation to", e9);
                }
            } else if (output != null) {
                OutputStreamWriter writer3 = null;
                writer = new OutputStreamWriter(new GZIPOutputStream(output));
                if (writeVariationToFile(variation, writer)) {
                    this.variationFiles.put(variation.getProjectName(), file);
                    if (writer != null) {
                        writer.close();
                    }
                    z = true;
                } else if (writer != null) {
                    writer.close();
                }
            }
        }
        return z;
    }

    @Override // com.amazon.insights.abtest.cache.VariationCache
    public synchronized Map<String, DefaultVariation> get(Set<String> projects) {
        Map<String, DefaultVariation> variations;
        variations = new ConcurrentHashMap<>();
        for (String project : projects) {
            if (this.variationFiles.containsKey(project)) {
                File file = this.variationFiles.get(project);
                if (!file.exists()) {
                    this.variationFiles.remove(project);
                } else {
                    DefaultVariation variation = loadVariationFromFile(file);
                    if (variation != null) {
                        variations.put(project, variation);
                    }
                }
            }
        }
        return variations;
    }

    @Override // com.amazon.insights.abtest.cache.VariationCache
    public synchronized Map<String, DefaultVariation> getAll() {
        Map<String, DefaultVariation> variations;
        variations = new ConcurrentHashMap<>();
        for (Map.Entry<String, File> fileEntry : this.variationFiles.entrySet()) {
            if (!fileEntry.getValue().exists()) {
                this.variationFiles.remove(fileEntry.getKey());
            } else {
                DefaultVariation variation = loadVariationFromFile(fileEntry.getValue());
                if (variation != null) {
                    variations.put(fileEntry.getKey(), variation);
                }
            }
        }
        return variations;
    }

    @Override // com.amazon.insights.abtest.cache.VariationCache
    public synchronized boolean contains(DefaultVariation variation) {
        return this.variationFiles.containsKey(variation.getProjectName());
    }

    private DefaultVariation loadVariationFromFile(File file) {
        if (file == null) {
            return null;
        }
        try {
            InputStream input = new GZIPInputStream(this.fileManager.newInputStream(file));
            InputStreamReader inReader = new InputStreamReader(input);
            BufferedReader reader = new BufferedReader(inReader);
            try {
                StringBuilder builder = new StringBuilder();
                while (true) {
                    String in = reader.readLine();
                    if (in == null) {
                        break;
                    }
                    builder.append(in);
                }
                JSONObject json = JSONObjectInstrumentation.init(builder.toString());
                reader.close();
                DefaultVariation.Builder variationBuilder = new DefaultVariation.Builder();
                variationBuilder.setApplicationKey(json.getString("applicationKey"));
                variationBuilder.setUniqueId(Id.valueOf(json.getString("uniqueId")));
                variationBuilder.setAllocationSource(DefaultVariation.AllocationSource.CACHE);
                variationBuilder.setExpirationDate(new Date(json.getLong("expirationDate")));
                variationBuilder.setProjectName(json.getString("projectName"));
                variationBuilder.setVariationName(json.getString("variationName"));
                variationBuilder.setVariationId(json.getLong("variationId"));
                variationBuilder.setExperimentId(json.getLong("experimentId"));
                JSONArray variables = json.getJSONArray("variables");
                if (variables != null) {
                    Map<String, String> variablesMap = new HashMap<>();
                    for (int index = 0; index < variables.length(); index++) {
                        JSONObject variable = variables.getJSONObject(index);
                        if (variable != null) {
                            String key = variable.getString(AnalyticAttribute.EVENT_NAME_ATTRIBUTE);
                            String value = variable.getString(NativeCallKeys.VALUE);
                            variablesMap.put(key, value);
                        }
                    }
                    variationBuilder.setVariables(variablesMap);
                }
                return variationBuilder.build();
            } catch (Throwable th) {
                reader.close();
                throw th;
            }
        } catch (FileNotFoundException e) {
            logger.e("The file does not exist to read the variation from", e);
            return null;
        } catch (IOException e2) {
            logger.e("An error occurred while trying to read the variation from the file", e2);
            return null;
        } catch (JSONException e3) {
            logger.e("Failed to parse from json the variation read from the file", e3);
            return null;
        }
    }

    private boolean writeVariationToFile(DefaultVariation variation, Writer writer) {
        try {
            JSONObject jSONObject = variation.toJSONObject();
            String json = !(jSONObject instanceof JSONObject) ? jSONObject.toString(4) : JSONObjectInstrumentation.toString(jSONObject, 4);
            if (json != null) {
                try {
                    writer.write(json);
                    writer.flush();
                } catch (IOException e) {
                    return false;
                }
            }
            return true;
        } catch (JSONException e2) {
            return false;
        }
    }
}

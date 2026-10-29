package com.amazon.ags.client.whispersync.marshaller;

import android.util.Base64;
import android.util.Log;
import com.amazon.ags.AGSClientException;
import com.amazon.ags.api.whispersync.model.SyncableElement;
import com.amazon.ags.api.whispersync.model.SyncableNumber;
import com.amazon.ags.api.whispersync.model.SyncableNumberElement;
import com.amazon.ags.api.whispersync.model.SyncableNumberList;
import com.amazon.ags.api.whispersync.model.SyncableString;
import com.amazon.ags.api.whispersync.model.SyncableStringElement;
import com.amazon.ags.api.whispersync.model.SyncableStringList;
import com.amazon.ags.api.whispersync.model.SyncableStringSet;
import com.amazon.ags.client.metrics.EventCollectorClient;
import com.amazon.ags.client.metrics.events.GameCircleGenericEvent;
import com.amazon.ags.client.whispersync.GameDataSingleMap;
import com.amazon.ags.client.whispersync.InternalGameDataMap;
import com.amazon.ags.client.whispersync.metrics.WhispersyncMetrics;
import com.amazon.ags.client.whispersync.metrics.WhispersyncMetricsFactory;
import com.amazon.ags.client.whispersync.model.AccumulatingNumber;
import com.amazon.ags.client.whispersync.model.DeveloperString;
import com.amazon.ags.client.whispersync.model.HighNumberList;
import com.amazon.ags.client.whispersync.model.HighestNumber;
import com.amazon.ags.client.whispersync.model.Key;
import com.amazon.ags.client.whispersync.model.LatestNumber;
import com.amazon.ags.client.whispersync.model.LatestNumberList;
import com.amazon.ags.client.whispersync.model.LatestString;
import com.amazon.ags.client.whispersync.model.LatestStringList;
import com.amazon.ags.client.whispersync.model.LowNumberList;
import com.amazon.ags.client.whispersync.model.LowestNumber;
import com.amazon.ags.client.whispersync.model.Mergeable;
import com.amazon.ags.client.whispersync.model.NumberElement;
import com.amazon.ags.client.whispersync.model.NumberList;
import com.amazon.ags.client.whispersync.model.StringElement;
import com.amazon.ags.client.whispersync.model.StringSet;
import com.amazon.ags.client.whispersync.model.SyncState;
import com.amazon.ags.constants.NativeCallKeys;
import com.amazon.identity.auth.device.authorization.AuthorizationResponseParser;
import com.newrelic.agent.android.instrumentation.JSONObjectInstrumentation;
import java.math.BigDecimal;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class JsonGameDataMarshaller implements GameDataMarshaller {
    private static final String TAG = "GC_Whispersync";
    private EventCollectorClient eventCollectorClient;

    public JsonGameDataMarshaller(EventCollectorClient eventCollectorClient) {
        this.eventCollectorClient = eventCollectorClient;
    }

    @Override // com.amazon.ags.client.whispersync.marshaller.GameDataMarshaller
    public String composeForService(InternalGameDataMap gameDataMap) throws AGSClientException {
        try {
            JSONObject whispersyncData = new JSONObject();
            Object gameData = gameDataMap != null ? composeDataMap(gameDataMap, false) : JSONObject.NULL;
            whispersyncData.put("gameData", gameData);
            return !(whispersyncData instanceof JSONObject) ? whispersyncData.toString() : JSONObjectInstrumentation.toString(whispersyncData);
        } catch (JSONException e) {
            throw new AGSClientException("Unable to compose JSON", e);
        }
    }

    @Override // com.amazon.ags.client.whispersync.marshaller.GameDataMarshaller
    public String composeForDisk(InternalGameDataMap gameDataMap) throws AGSClientException {
        JSONObject gameData;
        JSONObject whispersyncData = new JSONObject();
        if (gameDataMap == null) {
            gameData = null;
        } else {
            try {
                gameData = composeDataMap(gameDataMap, true);
            } catch (JSONException e) {
                throw new AGSClientException("Unable to compose JSON", e);
            }
        }
        whispersyncData.put("gameData", gameData);
        return !(whispersyncData instanceof JSONObject) ? whispersyncData.toString() : JSONObjectInstrumentation.toString(whispersyncData);
    }

    @Override // com.amazon.ags.client.whispersync.marshaller.GameDataMarshaller
    public InternalGameDataMap parse(String gameDataMapJson) {
        JSONObject gameDataRoot;
        if (gameDataMapJson == null) {
            return null;
        }
        try {
            JSONObject root = JSONObjectInstrumentation.init(gameDataMapJson);
            if (!root.has("gameData") || (gameDataRoot = root.getJSONObject("gameData")) == null) {
                return null;
            }
            return parseDataMap(gameDataRoot);
        } catch (Exception e) {
            Log.e(TAG, "Exception thrown while parsing game data JSON map [" + gameDataMapJson + "]", e);
            reportEvent(WhispersyncMetrics.WHIPSERYNC_PARSE_EXCEPTION_METRIC);
            return null;
        }
    }

    public void setEventCollectorClient(EventCollectorClient eventCollectorClient) {
        if (eventCollectorClient != null) {
            this.eventCollectorClient = eventCollectorClient;
        }
    }

    private JSONObject composeDataMap(InternalGameDataMap map, boolean forDisk) throws JSONException {
        JSONObject mapNode = new JSONObject();
        for (Map.Entry<Key, Mergeable<?>> element : map.getAllElements().entrySet()) {
            Key key = element.getKey();
            Mergeable<?> mergeable = element.getValue();
            if (mergeable.getState() != SyncState.NOT_SET && (forDisk || mergeable.getState() != SyncState.IN_CONFLICT)) {
                if (forDisk || mergeable.getState() != SyncState.SYNCED) {
                    JSONObject jsonElement = null;
                    try {
                        jsonElement = composeElement(key, mergeable, forDisk);
                    } catch (ComposeException e) {
                        Log.e(TAG, "Cannot compose element with key [" + key + "]", e);
                    }
                    if (jsonElement != null) {
                        Log.v(TAG, "Adding JSON element [" + jsonElement + "]");
                        mapNode.put(key.toString(), jsonElement);
                    }
                }
            }
        }
        return mapNode;
    }

    private JSONObject composeElement(Key key, Mergeable<?> mergeable, boolean composeForDisk) throws JSONException, ComposeException {
        switch (key.getType()) {
            case HIGHEST_NUMBER:
            case LOWEST_NUMBER:
            case LATEST_NUMBER:
                return composeNumber(mergeable, composeForDisk);
            case ACCUMULATING_NUMBER:
                return composeAccumulatingNumber(mergeable, composeForDisk);
            case LATEST_STRING:
                return composeString(mergeable, composeForDisk);
            case DEVELOPER_STRING:
                return composeDeveloperString(mergeable, composeForDisk);
            case HIGHEST_NUMBER_LIST:
            case LOWEST_NUMBER_LIST:
            case LATEST_NUMBER_LIST:
                return composeNumberList(mergeable, composeForDisk);
            case LATEST_STRING_LIST:
                return composeStringList(mergeable, composeForDisk);
            case STRING_SET:
                return composeStringSet(mergeable, composeForDisk);
            case MAP:
                return composeDataMap((InternalGameDataMap) mergeable, composeForDisk);
            default:
                Log.e(TAG, "Unexpected SyncableType cannot be composed for key:" + key.toString());
                return null;
        }
    }

    private JSONObject composeNumber(Mergeable<?> mergeable, boolean composeForDisk) throws JSONException {
        SyncableNumber number = (SyncableNumber) mergeable;
        JSONObject node = new JSONObject();
        node.put(NativeCallKeys.VALUE, number.asDecimal());
        node.put("ts", number.getTimestamp());
        if (composeForDisk) {
            node.put(AuthorizationResponseParser.STATE, mergeable.getState().toString());
        }
        composeMetadata(number, node);
        return node;
    }

    private JSONObject composeAccumulatingNumber(Mergeable<?> mergeable, boolean composeForDisk) throws JSONException {
        AccumulatingNumber number = (AccumulatingNumber) mergeable;
        JSONObject node = new JSONObject();
        node.put("local", number.getLocal());
        node.put("remote", number.getRemote());
        if (composeForDisk) {
            node.put(AuthorizationResponseParser.STATE, mergeable.getState().toString());
        }
        return node;
    }

    private JSONObject composeString(Mergeable<?> mergeable, boolean composeForDisk) throws JSONException {
        SyncableString string = (SyncableString) mergeable;
        JSONObject node = new JSONObject();
        node.put(NativeCallKeys.VALUE, composeNullableStringValue(string.getValue()));
        node.put("ts", string.getTimestamp());
        if (composeForDisk) {
            node.put(AuthorizationResponseParser.STATE, mergeable.getState().toString());
        }
        composeMetadata(string, node);
        return node;
    }

    private JSONObject composeDeveloperString(Mergeable<?> mergeable, boolean composeForDisk) throws JSONException, ComposeException {
        return composeForDisk ? composeDeveloperStringForDisk(mergeable) : composeDeveloperStringForService(mergeable);
    }

    private JSONObject composeDeveloperStringForDisk(Mergeable<?> mergeable) throws JSONException {
        DeveloperString developerString = (DeveloperString) mergeable;
        JSONObject node = new JSONObject();
        node.put("local", composeNullableStringValue(developerString.getValue()));
        node.put(AuthorizationResponseParser.STATE, developerString.getState().toString());
        node.put("ts", developerString.getTimestamp());
        if (developerString.isCloudValueSet()) {
            node.put("remote", composeNullableStringValue(developerString.getCloudValue()));
            node.put("rts", developerString.getCloudTimestamp());
        }
        return node;
    }

    private JSONObject composeDeveloperStringForService(Mergeable<?> mergeable) throws JSONException, ComposeException {
        DeveloperString developerString = (DeveloperString) mergeable;
        JSONObject node = new JSONObject();
        node.put(NativeCallKeys.VALUE, composeNullableStringValue(developerString.getValue()));
        node.put("ts", developerString.getTimestamp());
        if (developerString.isCloudValueSet()) {
            String encodedBase = base64EncodeSha256(developerString.getCloudValue());
            node.put("base", composeNullableStringValue(encodedBase));
        }
        return node;
    }

    private JSONObject composeNumberList(Mergeable<?> mergeable, boolean composeForDisk) throws JSONException {
        SyncableNumberList list = (SyncableNumberList) mergeable;
        JSONObject node = new JSONObject();
        node.put("maxSize", list.getMaxSize());
        node.put("values", composeNumberListItems(list.getValues()));
        if (composeForDisk) {
            node.put(AuthorizationResponseParser.STATE, mergeable.getState().toString());
        }
        return node;
    }

    private JSONArray composeNumberListItems(SyncableNumberElement[] list) throws JSONException {
        JSONArray array = new JSONArray();
        for (SyncableNumberElement item : list) {
            JSONObject node = composeNumberListItem(item);
            array.put(node);
        }
        return array;
    }

    private JSONObject composeNumberListItem(SyncableNumberElement item) throws JSONException {
        JSONObject node = new JSONObject();
        node.put(NativeCallKeys.VALUE, item.asDecimal());
        node.put("ts", item.getTimestamp());
        composeMetadata(item, node);
        return node;
    }

    private JSONObject composeStringList(Mergeable<?> mergeable, boolean composeForDisk) throws JSONException {
        SyncableStringList list = (SyncableStringList) mergeable;
        JSONObject node = new JSONObject();
        node.put("maxSize", list.getMaxSize());
        node.put("values", composeStringListItems(list));
        if (composeForDisk) {
            node.put(AuthorizationResponseParser.STATE, mergeable.getState().toString());
        }
        return node;
    }

    private JSONArray composeStringListItems(SyncableStringList list) throws JSONException {
        JSONArray array = new JSONArray();
        SyncableStringElement[] arr$ = list.getValues();
        for (SyncableStringElement item : arr$) {
            array.put(composeStringItem(item));
        }
        return array;
    }

    private JSONObject composeStringItem(SyncableStringElement item) throws JSONException {
        JSONObject node = new JSONObject();
        node.put(NativeCallKeys.VALUE, item.getValue());
        node.put("ts", item.getTimestamp());
        composeMetadata(item, node);
        return node;
    }

    private JSONObject composeStringSet(Mergeable<?> mergeable, boolean composeForDisk) throws JSONException {
        SyncableStringSet set = (SyncableStringSet) mergeable;
        JSONObject node = new JSONObject();
        node.put("values", composeStringSetElements(set));
        if (composeForDisk) {
            node.put(AuthorizationResponseParser.STATE, mergeable.getState().toString());
        }
        return node;
    }

    private JSONArray composeStringSetElements(SyncableStringSet set) throws JSONException {
        JSONArray array = new JSONArray();
        for (SyncableStringElement element : set) {
            array.put(composeStringItem(element));
        }
        return array;
    }

    private Object composeNullableStringValue(String value) {
        return value == null ? JSONObject.NULL : value;
    }

    private InternalGameDataMap parseDataMap(JSONObject json) throws JSONException, ParseException {
        InternalGameDataMap dataMap = new GameDataSingleMap();
        Iterator<String> iterator = json.keys();
        while (iterator.hasNext()) {
            String jsonKey = iterator.next();
            Key key = parseKey(jsonKey);
            JSONObject value = json.getJSONObject(jsonKey);
            Mergeable<?> mergeable = parseDataMapEntry(key, value);
            dataMap.putElement(key, mergeable);
        }
        return dataMap;
    }

    private Key parseKey(String keyString) throws ParseException {
        try {
            Key key = new Key(keyString);
            return key;
        } catch (IllegalArgumentException e) {
            throw new ParseException("Invalid key: " + keyString);
        }
    }

    private Mergeable<?> parseDataMapEntry(Key key, JSONObject element) throws JSONException, ParseException {
        switch (key.getType()) {
            case HIGHEST_NUMBER:
            case LOWEST_NUMBER:
            case LATEST_NUMBER:
                return parseNumber(key, element);
            case ACCUMULATING_NUMBER:
                return parseAccumulatingNumber(key, element);
            case LATEST_STRING:
                return parseString(key, element);
            case DEVELOPER_STRING:
                return parseDeveloperString(key, element);
            case HIGHEST_NUMBER_LIST:
            case LOWEST_NUMBER_LIST:
            case LATEST_NUMBER_LIST:
                return parseNumberList(key, element);
            case LATEST_STRING_LIST:
                return parseStringList(key, element);
            case STRING_SET:
                return parseStringSet(key, element);
            case MAP:
                return parseDataMap(element);
            default:
                throw new ParseException("Invalid type [" + key.getType() + "] associated with key name [" + key.getName() + "]");
        }
    }

    private Mergeable<?> parseNumber(Key key, JSONObject json) throws JSONException, ParseException {
        BigDecimal value = parseBigDecimalFromValue(json, NativeCallKeys.VALUE);
        long timestamp = parseTimestamp(json);
        Map<String, String> metadata = parseMetadata(json);
        SyncState state = parseSyncState(json);
        switch (key.getType()) {
            case HIGHEST_NUMBER:
                return new HighestNumber(key.getName(), value, metadata, timestamp, state);
            case LOWEST_NUMBER:
                return new LowestNumber(key.getName(), value, metadata, timestamp, state);
            case LATEST_NUMBER:
                return new LatestNumber(key.getName(), value, metadata, timestamp, state);
            default:
                throw new ParseException("Unexpected type [" + key.getType() + "] associated with key name [" + key.getName() + "]");
        }
    }

    private AccumulatingNumber parseAccumulatingNumber(Key key, JSONObject jsonNode) throws JSONException, ParseException {
        BigDecimal local = parseBigDecimalFromValue(jsonNode, "local");
        BigDecimal remote = parseBigDecimalFromValue(jsonNode, "remote");
        return new AccumulatingNumber(key.getName(), local, remote, parseSyncState(jsonNode));
    }

    private Mergeable<?> parseString(Key key, JSONObject jsonNode) throws JSONException, ParseException {
        if (!jsonNode.has(NativeCallKeys.VALUE)) {
            throw new ParseException("Missing 'value' field for key:" + key.toString());
        }
        String value = parseNullableStringValue(jsonNode, NativeCallKeys.VALUE);
        long timestamp = parseTimestamp(jsonNode);
        Map<String, String> metadata = parseMetadata(jsonNode);
        SyncState state = parseSyncState(jsonNode);
        switch (key.getType()) {
            case LATEST_STRING:
                return new LatestString(key.getName(), value, metadata, timestamp, state);
            default:
                throw new ParseException("Unexpected type [" + key.getType() + "] associated with key name [" + key.getName() + "]");
        }
    }

    private Mergeable<?> parseDeveloperString(Key key, JSONObject jsonNode) throws JSONException, ParseException {
        return !jsonNode.has(NativeCallKeys.VALUE) ? parseDeveloperStringFromDisk(key, jsonNode) : parseDeveloperStringFromService(key, jsonNode);
    }

    private Mergeable<?> parseDeveloperStringFromDisk(Key key, JSONObject jsonNode) throws JSONException, ParseException {
        if (!jsonNode.has("local")) {
            throw new ParseException("Missing 'local' field for key:" + key.toString());
        }
        String local = parseNullableStringValue(jsonNode, "local");
        String remote = null;
        long remoteTimestamp = 0;
        boolean remoteValueExists = true;
        try {
            remote = parseNullableStringValue(jsonNode, "remote");
            remoteTimestamp = jsonNode.getLong("rts");
        } catch (JSONException e) {
            remoteValueExists = false;
        }
        long timestamp = parseTimestamp(jsonNode);
        if (remoteValueExists) {
            return new DeveloperString(key.getName(), local, remote, timestamp, remoteTimestamp, parseSyncState(jsonNode));
        }
        return new DeveloperString(key.getName(), local, timestamp, parseSyncState(jsonNode));
    }

    private Mergeable<?> parseDeveloperStringFromService(Key key, JSONObject jsonNode) throws JSONException, ParseException {
        if (!jsonNode.has(NativeCallKeys.VALUE)) {
            throw new ParseException("Missing 'value' field for key:" + key.toString());
        }
        String value = parseNullableStringValue(jsonNode, NativeCallKeys.VALUE);
        long timestamp = parseTimestamp(jsonNode);
        return new DeveloperString(key.getName(), value, value, timestamp, timestamp, parseSyncState(jsonNode));
    }

    private Mergeable<?> parseNumberList(Key key, JSONObject jsonNode) throws JSONException, ParseException {
        int maxSize = parseMaxSize(jsonNode);
        List<NumberElement> numberList = new ArrayList<>();
        JSONArray valuesNode = jsonNode.getJSONArray("values");
        if (valuesNode != null) {
            for (int index = 0; index < valuesNode.length(); index++) {
                JSONObject valueNode = valuesNode.getJSONObject(index);
                numberList.add(parseNumberElement(valueNode));
            }
        }
        SyncState state = parseSyncState(jsonNode);
        return createNumberList(key, maxSize, numberList, state);
    }

    private NumberList createNumberList(Key key, int maxSize, List<NumberElement> list, SyncState state) throws JSONException, ParseException {
        switch (key.getType()) {
            case HIGHEST_NUMBER_LIST:
                return new HighNumberList(key.getName(), list, maxSize, state);
            case LOWEST_NUMBER_LIST:
                return new LowNumberList(key.getName(), list, maxSize, state);
            case LATEST_NUMBER_LIST:
                return new LatestNumberList(key.getName(), list, maxSize, state);
            default:
                throw new ParseException("Unexpected type [" + key.getType() + "] associated with key name [" + key.getName() + "]");
        }
    }

    private NumberElement parseNumberElement(JSONObject node) throws JSONException, ParseException {
        BigDecimal value = parseBigDecimalFromValue(node, NativeCallKeys.VALUE);
        long timestamp = parseTimestamp(node);
        Map<String, String> metadata = parseMetadata(node);
        return new NumberElement(value, metadata, timestamp);
    }

    private LatestStringList parseStringList(Key key, JSONObject jsonNode) throws JSONException, ParseException {
        int maxSize = parseMaxSize(jsonNode);
        List<StringElement> stringList = new ArrayList<>();
        JSONArray valuesNode = jsonNode.getJSONArray("values");
        if (valuesNode != null) {
            for (int index = 0; index < valuesNode.length(); index++) {
                JSONObject valueNode = valuesNode.getJSONObject(index);
                stringList.add(parseStringItem(valueNode));
            }
        }
        SyncState state = parseSyncState(jsonNode);
        return new LatestStringList(key.getName(), stringList, maxSize, state);
    }

    private StringElement parseStringItem(JSONObject node) throws JSONException, ParseException {
        if (!node.has(NativeCallKeys.VALUE)) {
            throw new ParseException("Missing 'value' field for StringList item");
        }
        String value = node.getString(NativeCallKeys.VALUE);
        long timestamp = parseTimestamp(node);
        Map<String, String> metadata = parseMetadata(node);
        return new StringElement(value, metadata, timestamp);
    }

    private StringSet parseStringSet(Key key, JSONObject node) throws JSONException, ParseException {
        JSONArray valuesNode = node.getJSONArray("values");
        Set<SyncableStringElement> stringSet = new HashSet<>();
        if (valuesNode != null) {
            for (int index = 0; index < valuesNode.length(); index++) {
                JSONObject valueNode = valuesNode.getJSONObject(index);
                stringSet.add(parseStringItem(valueNode));
            }
        }
        return new StringSet(key.getName(), stringSet, parseSyncState(node));
    }

    private int parseMaxSize(JSONObject node) {
        try {
            return node.getInt("maxSize");
        } catch (JSONException e) {
            return 5;
        }
    }

    private String parseNullableStringValue(JSONObject jsonNode, String key) throws JSONException {
        Object value = jsonNode.get(key);
        if (value == JSONObject.NULL) {
            return null;
        }
        return jsonNode.getString(key);
    }

    private long parseTimestamp(JSONObject node) {
        try {
            return node.getLong("ts");
        } catch (JSONException e) {
            Log.w(TAG, "No timestamp value found in node [" + (!(node instanceof JSONObject) ? node.toString() : JSONObjectInstrumentation.toString(node)) + "]");
            return 0L;
        }
    }

    private void composeMetadata(SyncableElement syncable, JSONObject node) throws JSONException {
        Map<String, String> metadata = syncable.getMetadata();
        if (metadata != null && !metadata.isEmpty()) {
            JSONObject metadataNode = new JSONObject();
            for (Map.Entry<String, String> entry : metadata.entrySet()) {
                metadataNode.put(entry.getKey(), entry.getValue());
            }
            node.put("md", metadataNode);
        }
    }

    private Map<String, String> parseMetadata(JSONObject node) throws JSONException, ParseException {
        try {
            JSONObject metadata = node.getJSONObject("md");
            return parseMetadataNode(metadata);
        } catch (JSONException e) {
            return null;
        }
    }

    private Map<String, String> parseMetadataNode(JSONObject metadataNode) throws JSONException {
        Map<String, String> metadata = new HashMap<>();
        Iterator<String> iterator = metadataNode.keys();
        while (iterator.hasNext()) {
            String key = iterator.next();
            try {
                String value = metadataNode.getString(key);
                metadata.put(key, value);
            } catch (JSONException e) {
                Log.e(TAG, "Unexpected type [" + metadataNode.get(key).getClass() + " for key [" + key + "]");
            }
        }
        return metadata;
    }

    private SyncState parseSyncState(JSONObject node) throws JSONException, ParseException {
        if (!node.has(AuthorizationResponseParser.STATE)) {
            return SyncState.SYNCED;
        }
        String state = node.getString(AuthorizationResponseParser.STATE);
        if (state == null) {
            return SyncState.SYNCED;
        }
        try {
            return SyncState.valueOf(state);
        } catch (Exception e) {
            return SyncState.SYNCED;
        }
    }

    private BigDecimal parseBigDecimalFromValue(JSONObject node, String fieldName) throws JSONException, ParseException {
        if (!node.has(fieldName)) {
            throw new ParseException("Missing '" + fieldName + "' field");
        }
        Object valueObject = node.get(fieldName);
        if (valueObject == null) {
            throw new ParseException("Unable to parse '" + fieldName + "' field");
        }
        if (valueObject instanceof Integer) {
            return new BigDecimal(((Integer) valueObject).intValue());
        }
        if (valueObject instanceof Long) {
            return new BigDecimal(((Long) valueObject).longValue());
        }
        if (valueObject instanceof Double) {
            return new BigDecimal(((Double) valueObject).doubleValue());
        }
        throw new ParseException("Unable to parse '" + fieldName + "'");
    }

    private String base64EncodeSha256(String plainString) throws ComposeException {
        if (plainString == null) {
            return null;
        }
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
            messageDigest.update(plainString.getBytes());
            byte[] hash = messageDigest.digest();
            return new String(Base64.encode(hash, 0));
        } catch (NoSuchAlgorithmException exception) {
            throw new ComposeException("SHA-256 algorithm was not found", exception);
        }
    }

    private void reportEvent(String name) {
        GameCircleGenericEvent event = WhispersyncMetricsFactory.createCountEvent(name, 1);
        if (event != null) {
            this.eventCollectorClient.reportGenericEvent(event);
        }
    }
}

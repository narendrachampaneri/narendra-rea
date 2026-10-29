package com.newrelic.com.google.gson.internal.bind;

import com.newrelic.com.google.gson.Gson;
import com.newrelic.com.google.gson.JsonSyntaxException;
import com.newrelic.com.google.gson.TypeAdapter;
import com.newrelic.com.google.gson.TypeAdapterFactory;
import com.newrelic.com.google.gson.reflect.TypeToken;
import com.newrelic.com.google.gson.stream.JsonReader;
import com.newrelic.com.google.gson.stream.JsonToken;
import com.newrelic.com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.sql.Date;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;

/* JADX INFO: loaded from: classes.dex */
public final class SqlDateTypeAdapter extends TypeAdapter<Date> {
    public static final TypeAdapterFactory FACTORY = new TypeAdapterFactory() { // from class: com.newrelic.com.google.gson.internal.bind.SqlDateTypeAdapter.1
        @Override // com.newrelic.com.google.gson.TypeAdapterFactory
        public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> typeToken) {
            if (typeToken.getRawType() == Date.class) {
                return new SqlDateTypeAdapter();
            }
            return null;
        }
    };
    private final DateFormat format = new SimpleDateFormat("MMM d, yyyy");

    @Override // com.newrelic.com.google.gson.TypeAdapter
    /* JADX INFO: renamed from: read, reason: avoid collision after fix types in other method */
    public synchronized Date read2(JsonReader in) throws IOException {
        Date date;
        if (in.peek() == JsonToken.NULL) {
            in.nextNull();
            date = null;
        } else {
            try {
                long utilDate = this.format.parse(in.nextString()).getTime();
                date = new Date(utilDate);
            } catch (ParseException e) {
                throw new JsonSyntaxException(e);
            }
        }
        return date;
    }

    @Override // com.newrelic.com.google.gson.TypeAdapter
    public synchronized void write(JsonWriter out, Date value) throws IOException {
        out.value(value == null ? null : this.format.format((java.util.Date) value));
    }
}

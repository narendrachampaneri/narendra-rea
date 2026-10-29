.class public Lcom/google/android/exoplayer/text/webvtt/WebvttParser;
.super Ljava/lang/Object;
.source "WebvttParser.java"

# interfaces
.implements Lcom/google/android/exoplayer/text/SubtitleParser;


# static fields
.field private static final MEDIA_TIMESTAMP:Ljava/util/regex/Pattern;

.field private static final MEDIA_TIMESTAMP_OFFSET:Ljava/util/regex/Pattern;

.field private static final NON_NUMERIC_STRING:Ljava/lang/String; = ".*[^0-9].*"

.field private static final SAMPLING_RATE:J = 0x5aL

.field private static final TAG:Ljava/lang/String; = "WebvttParser"

.field private static final WEBVTT_CUE_IDENTIFIER:Ljava/util/regex/Pattern;

.field private static final WEBVTT_CUE_IDENTIFIER_STRING:Ljava/lang/String; = "^(?!.*(-->)).*$"

.field private static final WEBVTT_CUE_SETTING:Ljava/util/regex/Pattern;

.field private static final WEBVTT_CUE_SETTING_STRING:Ljava/lang/String; = "\\S*:\\S*"

.field private static final WEBVTT_FILE_HEADER:Ljava/util/regex/Pattern;

.field private static final WEBVTT_FILE_HEADER_STRING:Ljava/lang/String; = "^\ufeff?WEBVTT((\\u0020|\t).*)?$"

.field private static final WEBVTT_METADATA_HEADER:Ljava/util/regex/Pattern;

.field private static final WEBVTT_METADATA_HEADER_STRING:Ljava/lang/String; = "\\S*[:=]\\S*"

.field private static final WEBVTT_TIMESTAMP:Ljava/util/regex/Pattern;

.field private static final WEBVTT_TIMESTAMP_STRING:Ljava/lang/String; = "(\\d+:)?[0-5]\\d:[0-5]\\d\\.\\d{3}"


# instance fields
.field private final strictParsing:Z

.field private final textBuilder:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-string v0, "^\ufeff?WEBVTT((\\u0020|\t).*)?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer/text/webvtt/WebvttParser;->WEBVTT_FILE_HEADER:Ljava/util/regex/Pattern;

    .line 52
    const-string v0, "\\S*[:=]\\S*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer/text/webvtt/WebvttParser;->WEBVTT_METADATA_HEADER:Ljava/util/regex/Pattern;

    .line 56
    const-string v0, "^(?!.*(-->)).*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer/text/webvtt/WebvttParser;->WEBVTT_CUE_IDENTIFIER:Ljava/util/regex/Pattern;

    .line 60
    const-string v0, "(\\d+:)?[0-5]\\d:[0-5]\\d\\.\\d{3}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer/text/webvtt/WebvttParser;->WEBVTT_TIMESTAMP:Ljava/util/regex/Pattern;

    .line 63
    const-string v0, "\\S*:\\S*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer/text/webvtt/WebvttParser;->WEBVTT_CUE_SETTING:Ljava/util/regex/Pattern;

    .line 65
    const-string v0, "OFFSET:\\-?\\d+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer/text/webvtt/WebvttParser;->MEDIA_TIMESTAMP_OFFSET:Ljava/util/regex/Pattern;

    .line 67
    const-string v0, "MPEGTS:\\d+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer/text/webvtt/WebvttParser;->MEDIA_TIMESTAMP:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/text/webvtt/WebvttParser;-><init>(Z)V

    .line 80
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "strictParsing"    # Z

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-boolean p1, p0, Lcom/google/android/exoplayer/text/webvtt/WebvttParser;->strictParsing:Z

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/text/webvtt/WebvttParser;->textBuilder:Ljava/lang/StringBuilder;

    .line 91
    return-void
.end method

.method private static parseIntPercentage(Ljava/lang/String;)I
    .locals 4
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 271
    const-string v1, "%"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 272
    new-instance v1, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " doesn\'t end with \'%\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 275
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 276
    const-string v1, ".*[^0-9].*"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 277
    new-instance v1, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " contains an invalid character"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 280
    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 281
    .local v0, "value":I
    if-ltz v0, :cond_2

    const/16 v1, 0x64

    if-le v0, v1, :cond_3

    .line 282
    :cond_2
    new-instance v1, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is out of range [0-100]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 284
    :cond_3
    return v0
.end method

.method private static parseTimestampUs(Ljava/lang/String;)J
    .locals 14
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    const-wide/16 v12, 0x3e8

    .line 288
    const-string v5, "(\\d+:)?[0-5]\\d:[0-5]\\d\\.\\d{3}"

    invoke-virtual {p0, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 289
    new-instance v5, Ljava/lang/NumberFormatException;

    const-string v8, "has invalid format"

    invoke-direct {v5, v8}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 292
    :cond_0
    const-string v5, "\\."

    const/4 v8, 0x2

    invoke-virtual {p0, v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 293
    .local v4, "parts":[Ljava/lang/String;
    const-wide/16 v6, 0x0

    .line 294
    .local v6, "value":J
    const/4 v5, 0x0

    aget-object v5, v4, v5

    const-string v8, ":"

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 295
    .local v1, "group":Ljava/lang/String;
    const-wide/16 v8, 0x3c

    mul-long/2addr v8, v6

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    add-long v6, v8, v10

    .line 294
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 297
    .end local v1    # "group":Ljava/lang/String;
    :cond_1
    mul-long v8, v6, v12

    const/4 v5, 0x1

    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    add-long/2addr v8, v10

    mul-long/2addr v8, v12

    return-wide v8
.end method


# virtual methods
.method public final canParse(Ljava/lang/String;)Z
    .locals 1
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 257
    const-string v0, "text/vtt"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected getAdjustedStartTime(J)J
    .locals 1
    .param p1, "startTimeUs"    # J

    .prologue
    .line 261
    return-wide p1
.end method

.method protected handleNoncompliantLine(Ljava/lang/String;)V
    .locals 3
    .param p1, "line"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    .line 265
    iget-boolean v0, p0, Lcom/google/android/exoplayer/text/webvtt/WebvttParser;->strictParsing:Z

    if-eqz v0, :cond_0

    .line 266
    new-instance v0, Lcom/google/android/exoplayer/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 268
    :cond_0
    return-void
.end method

.method public bridge synthetic parse(Ljava/io/InputStream;Ljava/lang/String;J)Lcom/google/android/exoplayer/text/Subtitle;
    .locals 1
    .param p1, "x0"    # Ljava/io/InputStream;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer/text/webvtt/WebvttParser;->parse(Ljava/io/InputStream;Ljava/lang/String;J)Lcom/google/android/exoplayer/text/webvtt/WebvttSubtitle;

    move-result-object v0

    return-object v0
.end method

.method public final parse(Ljava/io/InputStream;Ljava/lang/String;J)Lcom/google/android/exoplayer/text/webvtt/WebvttSubtitle;
    .locals 35
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "inputEncoding"    # Ljava/lang/String;
    .param p3, "startTimeUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .local v25, "subtitles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer/text/webvtt/WebvttCue;>;"
    move-wide/from16 v22, p3

    .line 98
    .local v22, "mediaTimestampUs":J
    const-wide/16 v20, 0x0

    .line 100
    .local v20, "mediaTimestampOffsetUs":J
    new-instance v28, Ljava/io/BufferedReader;

    new-instance v29, Ljava/io/InputStreamReader;

    const-string v30, "UTF-8"

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct/range {v28 .. v29}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 104
    .local v28, "webvttData":Ljava/io/BufferedReader;
    invoke-virtual/range {v28 .. v28}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v16

    .line 105
    .local v16, "line":Ljava/lang/String;
    if-nez v16, :cond_0

    .line 106
    new-instance v29, Lcom/google/android/exoplayer/ParserException;

    const-string v30, "Expected WEBVTT or EXO-HEADER. Got null"

    invoke-direct/range {v29 .. v30}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v29

    .line 109
    :cond_0
    const-string v29, "EXO-HEADER"

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_2

    .line 111
    sget-object v29, Lcom/google/android/exoplayer/text/webvtt/WebvttParser;->MEDIA_TIMESTAMP_OFFSET:Ljava/util/regex/Pattern;

    move-object/from16 v0, v29

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v18

    .line 112
    .local v18, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual/range {v18 .. v18}, Ljava/util/regex/Matcher;->find()Z

    move-result v29

    if-eqz v29, :cond_1

    .line 113
    invoke-virtual/range {v18 .. v18}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x7

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v20

    .line 117
    :cond_1
    invoke-virtual/range {v28 .. v28}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v16

    .line 118
    if-nez v16, :cond_2

    .line 119
    new-instance v29, Lcom/google/android/exoplayer/ParserException;

    const-string v30, "Expected WEBVTT. Got null"

    invoke-direct/range {v29 .. v30}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v29

    .line 123
    .end local v18    # "matcher":Ljava/util/regex/Matcher;
    :cond_2
    sget-object v29, Lcom/google/android/exoplayer/text/webvtt/WebvttParser;->WEBVTT_FILE_HEADER:Ljava/util/regex/Pattern;

    move-object/from16 v0, v29

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/util/regex/Matcher;->matches()Z

    move-result v29

    if-nez v29, :cond_4

    .line 124
    new-instance v29, Lcom/google/android/exoplayer/ParserException;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Expected WEBVTT. Got "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v29

    .line 149
    .restart local v18    # "matcher":Ljava/util/regex/Matcher;
    .local v26, "timestampMatcher":Ljava/util/regex/Matcher;
    :cond_3
    invoke-virtual/range {v26 .. v26}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x7

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v30

    const-wide/16 v32, 0x3e8

    mul-long v30, v30, v32

    const-wide/16 v32, 0x5a

    div-long v30, v30, v32

    add-long v22, v30, v20

    .line 152
    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer/text/webvtt/WebvttParser;->getAdjustedStartTime(J)J

    move-result-wide v22

    .line 129
    .end local v18    # "matcher":Ljava/util/regex/Matcher;
    .end local v26    # "timestampMatcher":Ljava/util/regex/Matcher;
    :cond_4
    invoke-virtual/range {v28 .. v28}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v16

    .line 130
    if-nez v16, :cond_5

    .line 132
    new-instance v29, Lcom/google/android/exoplayer/ParserException;

    const-string v30, "Expected an empty line after webvtt header"

    invoke-direct/range {v29 .. v30}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v29

    .line 133
    :cond_5
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->isEmpty()Z

    move-result v29

    if-eqz v29, :cond_7

    .line 157
    :goto_0
    invoke-virtual/range {v28 .. v28}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_19

    .line 160
    sget-object v29, Lcom/google/android/exoplayer/text/webvtt/WebvttParser;->WEBVTT_CUE_IDENTIFIER:Ljava/util/regex/Pattern;

    move-object/from16 v0, v29

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v18

    .line 161
    .restart local v18    # "matcher":Ljava/util/regex/Matcher;
    invoke-virtual/range {v18 .. v18}, Ljava/util/regex/Matcher;->find()Z

    move-result v29

    if-eqz v29, :cond_6

    .line 163
    invoke-virtual/range {v28 .. v28}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v16

    .line 166
    :cond_6
    const-wide/16 v6, -0x1

    .line 167
    .local v6, "startTime":J
    const-wide/16 v8, -0x1

    .line 168
    .local v8, "endTime":J
    const/4 v10, 0x0

    .line 169
    .local v10, "text":Ljava/lang/CharSequence;
    const/4 v11, -0x1

    .line 170
    .local v11, "lineNum":I
    const/4 v12, -0x1

    .line 171
    .local v12, "position":I
    const/4 v13, 0x0

    .line 172
    .local v13, "alignment":Landroid/text/Layout$Alignment;
    const/4 v14, -0x1

    .line 175
    .local v14, "size":I
    sget-object v29, Lcom/google/android/exoplayer/text/webvtt/WebvttParser;->WEBVTT_TIMESTAMP:Ljava/util/regex/Pattern;

    move-object/from16 v0, v29

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v18

    .line 178
    invoke-virtual/range {v18 .. v18}, Ljava/util/regex/Matcher;->find()Z

    move-result v29

    if-nez v29, :cond_9

    .line 179
    new-instance v29, Lcom/google/android/exoplayer/ParserException;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Expected cue start time: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v29

    .line 138
    .end local v6    # "startTime":J
    .end local v8    # "endTime":J
    .end local v10    # "text":Ljava/lang/CharSequence;
    .end local v11    # "lineNum":I
    .end local v12    # "position":I
    .end local v13    # "alignment":Landroid/text/Layout$Alignment;
    .end local v14    # "size":I
    .end local v18    # "matcher":Ljava/util/regex/Matcher;
    :cond_7
    sget-object v29, Lcom/google/android/exoplayer/text/webvtt/WebvttParser;->WEBVTT_METADATA_HEADER:Ljava/util/regex/Pattern;

    move-object/from16 v0, v29

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v18

    .line 139
    .restart local v18    # "matcher":Ljava/util/regex/Matcher;
    invoke-virtual/range {v18 .. v18}, Ljava/util/regex/Matcher;->find()Z

    move-result v29

    if-nez v29, :cond_8

    .line 140
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/text/webvtt/WebvttParser;->handleNoncompliantLine(Ljava/lang/String;)V

    .line 143
    :cond_8
    const-string v29, "X-TIMESTAMP-MAP"

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_4

    .line 145
    sget-object v29, Lcom/google/android/exoplayer/text/webvtt/WebvttParser;->MEDIA_TIMESTAMP:Ljava/util/regex/Pattern;

    move-object/from16 v0, v29

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v26

    .line 146
    .restart local v26    # "timestampMatcher":Ljava/util/regex/Matcher;
    invoke-virtual/range {v26 .. v26}, Ljava/util/regex/Matcher;->find()Z

    move-result v29

    if-nez v29, :cond_3

    .line 147
    new-instance v29, Lcom/google/android/exoplayer/ParserException;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "X-TIMESTAMP-MAP doesn\'t contain media timestamp: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v29

    .line 181
    .end local v26    # "timestampMatcher":Ljava/util/regex/Matcher;
    .restart local v6    # "startTime":J
    .restart local v8    # "endTime":J
    .restart local v10    # "text":Ljava/lang/CharSequence;
    .restart local v11    # "lineNum":I
    .restart local v12    # "position":I
    .restart local v13    # "alignment":Landroid/text/Layout$Alignment;
    .restart local v14    # "size":I
    :cond_9
    invoke-virtual/range {v18 .. v18}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/google/android/exoplayer/text/webvtt/WebvttParser;->parseTimestampUs(Ljava/lang/String;)J

    move-result-wide v30

    add-long v6, v30, v22

    .line 186
    invoke-virtual/range {v18 .. v18}, Ljava/util/regex/Matcher;->find()Z

    move-result v29

    if-nez v29, :cond_a

    .line 187
    new-instance v29, Lcom/google/android/exoplayer/ParserException;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Expected cue end time: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v29

    .line 189
    :cond_a
    invoke-virtual/range {v18 .. v18}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v15

    .line 190
    .local v15, "endTimeString":Ljava/lang/String;
    invoke-static {v15}, Lcom/google/android/exoplayer/text/webvtt/WebvttParser;->parseTimestampUs(Ljava/lang/String;)J

    move-result-wide v30

    add-long v8, v30, v22

    .line 194
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v29

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v30

    add-int v29, v29, v30

    move-object/from16 v0, v16

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    .line 195
    sget-object v29, Lcom/google/android/exoplayer/text/webvtt/WebvttParser;->WEBVTT_CUE_SETTING:Ljava/util/regex/Pattern;

    move-object/from16 v0, v29

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v18

    .line 196
    :goto_1
    invoke-virtual/range {v18 .. v18}, Ljava/util/regex/Matcher;->find()Z

    move-result v29

    if-eqz v29, :cond_16

    .line 197
    invoke-virtual/range {v18 .. v18}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v17

    .line 198
    .local v17, "match":Ljava/lang/String;
    const-string v29, ":"

    const/16 v30, 0x2

    move-object/from16 v0, v17

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v24

    .line 199
    .local v24, "parts":[Ljava/lang/String;
    const/16 v29, 0x0

    aget-object v19, v24, v29

    .line 200
    .local v19, "name":Ljava/lang/String;
    const/16 v29, 0x1

    aget-object v27, v24, v29

    .line 203
    .local v27, "value":Ljava/lang/String;
    :try_start_0
    const-string v29, "line"

    move-object/from16 v0, v29

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_d

    .line 204
    const-string v29, "%"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_b

    .line 205
    invoke-static/range {v27 .. v27}, Lcom/google/android/exoplayer/text/webvtt/WebvttParser;->parseIntPercentage(Ljava/lang/String;)I

    move-result v11

    goto :goto_1

    .line 206
    :cond_b
    const-string v29, ".*[^0-9].*"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_c

    .line 207
    const-string v29, "WebvttParser"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Invalid line value: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 233
    :catch_0
    move-exception v4

    .line 234
    .local v4, "e":Ljava/lang/NumberFormatException;
    const-string v29, "WebvttParser"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " contains an invalid value "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-static {v0, v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 209
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    :cond_c
    :try_start_1
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    goto/16 :goto_1

    .line 211
    :cond_d
    const-string v29, "align"

    move-object/from16 v0, v29

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_13

    .line 213
    const-string v29, "start"

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_e

    .line 214
    sget-object v13, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto/16 :goto_1

    .line 215
    :cond_e
    const-string v29, "middle"

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_f

    .line 216
    sget-object v13, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    goto/16 :goto_1

    .line 217
    :cond_f
    const-string v29, "end"

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_10

    .line 218
    sget-object v13, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto/16 :goto_1

    .line 219
    :cond_10
    const-string v29, "left"

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_11

    .line 220
    sget-object v13, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto/16 :goto_1

    .line 221
    :cond_11
    const-string v29, "right"

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_12

    .line 222
    sget-object v13, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto/16 :goto_1

    .line 224
    :cond_12
    const-string v29, "WebvttParser"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Invalid align value: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 226
    :cond_13
    const-string v29, "position"

    move-object/from16 v0, v29

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_14

    .line 227
    invoke-static/range {v27 .. v27}, Lcom/google/android/exoplayer/text/webvtt/WebvttParser;->parseIntPercentage(Ljava/lang/String;)I

    move-result v12

    goto/16 :goto_1

    .line 228
    :cond_14
    const-string v29, "size"

    move-object/from16 v0, v29

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_15

    .line 229
    invoke-static/range {v27 .. v27}, Lcom/google/android/exoplayer/text/webvtt/WebvttParser;->parseIntPercentage(Ljava/lang/String;)I

    move-result v14

    goto/16 :goto_1

    .line 231
    :cond_15
    const-string v29, "WebvttParser"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Unknown cue setting "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ":"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 239
    .end local v17    # "match":Ljava/lang/String;
    .end local v19    # "name":Ljava/lang/String;
    .end local v24    # "parts":[Ljava/lang/String;
    .end local v27    # "value":Ljava/lang/String;
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/text/webvtt/WebvttParser;->textBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 240
    :goto_2
    invoke-virtual/range {v28 .. v28}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_18

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->isEmpty()Z

    move-result v29

    if-nez v29, :cond_18

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/text/webvtt/WebvttParser;->textBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->length()I

    move-result v29

    if-lez v29, :cond_17

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/text/webvtt/WebvttParser;->textBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v29, v0

    const-string v30, "<br>"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/text/webvtt/WebvttParser;->textBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v29, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 246
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/text/webvtt/WebvttParser;->textBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v10

    .line 248
    new-instance v5, Lcom/google/android/exoplayer/text/webvtt/WebvttCue;

    invoke-direct/range {v5 .. v14}, Lcom/google/android/exoplayer/text/webvtt/WebvttCue;-><init>(JJLjava/lang/CharSequence;IILandroid/text/Layout$Alignment;I)V

    .line 249
    .local v5, "cue":Lcom/google/android/exoplayer/text/webvtt/WebvttCue;
    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 252
    .end local v5    # "cue":Lcom/google/android/exoplayer/text/webvtt/WebvttCue;
    .end local v6    # "startTime":J
    .end local v8    # "endTime":J
    .end local v10    # "text":Ljava/lang/CharSequence;
    .end local v11    # "lineNum":I
    .end local v12    # "position":I
    .end local v13    # "alignment":Landroid/text/Layout$Alignment;
    .end local v14    # "size":I
    .end local v15    # "endTimeString":Ljava/lang/String;
    .end local v18    # "matcher":Ljava/util/regex/Matcher;
    :cond_19
    new-instance v29, Lcom/google/android/exoplayer/text/webvtt/WebvttSubtitle;

    move-object/from16 v0, v29

    move-object/from16 v1, v25

    move-wide/from16 v2, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/exoplayer/text/webvtt/WebvttSubtitle;-><init>(Ljava/util/List;J)V

    return-object v29
.end method

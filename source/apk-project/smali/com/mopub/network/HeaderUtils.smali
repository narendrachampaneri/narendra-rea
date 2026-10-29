.class public Lcom/mopub/network/HeaderUtils;
.super Ljava/lang/Object;
.source "HeaderUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static extractBooleanHeader(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;Z)Z
    .locals 1
    .param p1, "responseHeader"    # Lcom/mopub/common/util/ResponseHeader;
    .param p2, "defaultValue"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/mopub/common/util/ResponseHeader;",
            "Z)Z"
        }
    .end annotation

    .prologue
    .line 25
    .local p0, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0, p1}, Lcom/mopub/network/HeaderUtils;->extractHeader(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/mopub/network/HeaderUtils;->formatBooleanHeader(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static extractBooleanHeader(Lorg/apache/http/HttpResponse;Lcom/mopub/common/util/ResponseHeader;Z)Z
    .locals 1
    .param p0, "response"    # Lorg/apache/http/HttpResponse;
    .param p1, "responseHeader"    # Lcom/mopub/common/util/ResponseHeader;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 34
    invoke-static {p0, p1}, Lcom/mopub/network/HeaderUtils;->extractHeader(Lorg/apache/http/HttpResponse;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/mopub/network/HeaderUtils;->formatBooleanHeader(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static extractHeader(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;
    .locals 1
    .param p1, "responseHeader"    # Lcom/mopub/common/util/ResponseHeader;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/mopub/common/util/ResponseHeader;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 17
    .local p0, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/mopub/common/util/ResponseHeader;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static extractHeader(Lorg/apache/http/HttpResponse;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;
    .locals 2
    .param p0, "response"    # Lorg/apache/http/HttpResponse;
    .param p1, "responseHeader"    # Lcom/mopub/common/util/ResponseHeader;

    .prologue
    .line 29
    invoke-virtual {p1}, Lcom/mopub/common/util/ResponseHeader;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 30
    .local v0, "header":Lorg/apache/http/Header;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static extractIntHeader(Lorg/apache/http/HttpResponse;Lcom/mopub/common/util/ResponseHeader;I)I
    .locals 1
    .param p0, "response"    # Lorg/apache/http/HttpResponse;
    .param p1, "responseHeader"    # Lcom/mopub/common/util/ResponseHeader;
    .param p2, "defaultValue"    # I

    .prologue
    .line 43
    invoke-static {p0, p1}, Lcom/mopub/network/HeaderUtils;->extractIntegerHeader(Lorg/apache/http/HttpResponse;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/Integer;

    move-result-object v0

    .line 44
    .local v0, "headerValue":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 48
    .end local p2    # "defaultValue":I
    :goto_0
    return p2

    .restart local p2    # "defaultValue":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_0
.end method

.method public static extractIntegerHeader(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/Integer;
    .locals 1
    .param p1, "responseHeader"    # Lcom/mopub/common/util/ResponseHeader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/mopub/common/util/ResponseHeader;",
            ")",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .prologue
    .line 21
    .local p0, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0, p1}, Lcom/mopub/network/HeaderUtils;->extractHeader(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/network/HeaderUtils;->formatIntHeader(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static extractIntegerHeader(Lorg/apache/http/HttpResponse;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/Integer;
    .locals 2
    .param p0, "response"    # Lorg/apache/http/HttpResponse;
    .param p1, "responseHeader"    # Lcom/mopub/common/util/ResponseHeader;

    .prologue
    .line 38
    invoke-static {p0, p1}, Lcom/mopub/network/HeaderUtils;->extractHeader(Lorg/apache/http/HttpResponse;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, "headerValue":Ljava/lang/String;
    invoke-static {v0}, Lcom/mopub/network/HeaderUtils;->formatIntHeader(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method private static formatBooleanHeader(Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "headerValue"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "defaultValue"    # Z

    .prologue
    .line 52
    if-nez p0, :cond_0

    .line 55
    .end local p1    # "defaultValue":Z
    :goto_0
    return p1

    .restart local p1    # "defaultValue":Z
    :cond_0
    const-string v0, "1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0
.end method

.method private static formatIntHeader(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 4
    .param p0, "headerValue"    # Ljava/lang/String;

    .prologue
    .line 59
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v3}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v1

    .line 60
    .local v1, "numberFormat":Ljava/text/NumberFormat;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/text/NumberFormat;->setParseIntegerOnly(Z)V

    .line 63
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v2

    .line 64
    .local v2, "value":Ljava/lang/Number;
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 66
    .end local v2    # "value":Ljava/lang/Number;
    :goto_0
    return-object v3

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    goto :goto_0
.end method

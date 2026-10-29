.class public Lcom/mopub/common/LocationService;
.super Ljava/lang/Object;
.source "LocationService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/common/LocationService$LocationAwareness;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method

.method public static getLastKnownLocation(Landroid/content/Context;ILcom/mopub/common/MoPub$LocationAwareness;)Landroid/location/Location;
    .locals 20
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "locationPrecision"    # I
    .param p2, "locationLocationAwareness"    # Lcom/mopub/common/MoPub$LocationAwareness;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 58
    sget-object v11, Lcom/mopub/common/MoPub$LocationAwareness;->DISABLED:Lcom/mopub/common/MoPub$LocationAwareness;

    move-object/from16 v0, p2

    if-ne v0, v11, :cond_1

    .line 59
    const/4 v10, 0x0

    .line 114
    :cond_0
    :goto_0
    return-object v10

    .line 62
    :cond_1
    const-string v11, "location"

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/location/LocationManager;

    .line 63
    .local v6, "locationManager":Landroid/location/LocationManager;
    const/4 v3, 0x0

    .line 65
    .local v3, "gpsLocation":Landroid/location/Location;
    :try_start_0
    const-string v11, "gps"

    invoke-virtual {v6, v11}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    .line 74
    :goto_1
    const/4 v7, 0x0

    .line 76
    .local v7, "networkLocation":Landroid/location/Location;
    :try_start_1
    const-string v11, "network"

    invoke-virtual {v6, v11}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_5

    move-result-object v7

    .line 85
    :goto_2
    if-nez v3, :cond_2

    if-nez v7, :cond_2

    .line 86
    const/4 v10, 0x0

    goto :goto_0

    .line 66
    .end local v7    # "networkLocation":Landroid/location/Location;
    :catch_0
    move-exception v2

    .line 67
    .local v2, "e":Ljava/lang/SecurityException;
    const-string v11, "Failed to retrieve GPS location: access appears to be disabled."

    invoke-static {v11}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 68
    .end local v2    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v2

    .line 69
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v11, "Failed to retrieve GPS location: device has no GPS provider."

    invoke-static {v11}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 70
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v2

    .line 71
    .local v2, "e":Ljava/lang/NullPointerException;
    const-string v11, "Failed to retrieve GPS location: device has no GPS provider."

    invoke-static {v11}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 77
    .end local v2    # "e":Ljava/lang/NullPointerException;
    .restart local v7    # "networkLocation":Landroid/location/Location;
    :catch_3
    move-exception v2

    .line 78
    .local v2, "e":Ljava/lang/SecurityException;
    const-string v11, "Failed to retrieve network location: access appears to be disabled."

    invoke-static {v11}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    goto :goto_2

    .line 79
    .end local v2    # "e":Ljava/lang/SecurityException;
    :catch_4
    move-exception v2

    .line 80
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v11, "Failed to retrieve network location: device has no network provider."

    invoke-static {v11}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    goto :goto_2

    .line 81
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_5
    move-exception v2

    .line 82
    .local v2, "e":Ljava/lang/NullPointerException;
    const-string v11, "Failed to retrieve GPS location: device has no network provider."

    invoke-static {v11}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    goto :goto_2

    .line 87
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :cond_2
    if-eqz v3, :cond_4

    if-eqz v7, :cond_4

    .line 88
    invoke-virtual {v3}, Landroid/location/Location;->getTime()J

    move-result-wide v16

    invoke-virtual {v7}, Landroid/location/Location;->getTime()J

    move-result-wide v18

    cmp-long v11, v16, v18

    if-lez v11, :cond_3

    .line 89
    move-object v10, v3

    .line 100
    .local v10, "result":Landroid/location/Location;
    :goto_3
    sget-object v11, Lcom/mopub/common/MoPub$LocationAwareness;->TRUNCATED:Lcom/mopub/common/MoPub$LocationAwareness;

    move-object/from16 v0, p2

    if-ne v0, v11, :cond_0

    .line 101
    invoke-virtual {v10}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    .line 102
    .local v4, "lat":D
    invoke-static {v4, v5}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v11

    const/16 v16, 0x5

    .line 103
    move/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v11, v0, v1}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v11

    .line 104
    invoke-virtual {v11}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v12

    .line 105
    .local v12, "truncatedLat":D
    invoke-virtual {v10, v12, v13}, Landroid/location/Location;->setLatitude(D)V

    .line 107
    invoke-virtual {v10}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    .line 108
    .local v8, "lon":D
    invoke-static {v8, v9}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v11

    const/16 v16, 0x5

    .line 109
    move/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v11, v0, v1}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v11

    .line 110
    invoke-virtual {v11}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v14

    .line 111
    .local v14, "truncatedLon":D
    invoke-virtual {v10, v14, v15}, Landroid/location/Location;->setLongitude(D)V

    goto/16 :goto_0

    .line 91
    .end local v4    # "lat":D
    .end local v8    # "lon":D
    .end local v10    # "result":Landroid/location/Location;
    .end local v12    # "truncatedLat":D
    .end local v14    # "truncatedLon":D
    :cond_3
    move-object v10, v7

    .restart local v10    # "result":Landroid/location/Location;
    goto :goto_3

    .line 93
    .end local v10    # "result":Landroid/location/Location;
    :cond_4
    if-eqz v3, :cond_5

    .line 94
    move-object v10, v3

    .restart local v10    # "result":Landroid/location/Location;
    goto :goto_3

    .line 96
    .end local v10    # "result":Landroid/location/Location;
    :cond_5
    move-object v10, v7

    .restart local v10    # "result":Landroid/location/Location;
    goto :goto_3
.end method

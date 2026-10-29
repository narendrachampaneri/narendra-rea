.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x0

    .line 150
    sput-boolean v4, Lcom/appsomniacs/da2/DA2Activity;->m_hasPassedFLC:Z

    .line 152
    sput-boolean v4, Lcom/appsomniacs/da2/DA2Activity;->m_hasPassedRLC:Z

    .line 180
    const/16 v1, 0x2329

    sput v1, Lcom/appsomniacs/da2/DA2Activity;->RC_SIGN_IN:I

    .line 239
    sput v4, Lcom/appsomniacs/da2/DA2Activity;->SALTSTEP:I

    .line 240
    const/16 v1, 0x14

    new-array v1, v1, [B

    sget v2, Lcom/appsomniacs/da2/DA2Activity;->SALTSTEP:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Lcom/appsomniacs/da2/DA2Activity;->SALTSTEP:I

    .line 242
    invoke-static {v2}, Lcom/appsomniacs/da2/DA2Activity;->getRndSaltyByte(I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    const/4 v2, 0x1

    sget v3, Lcom/appsomniacs/da2/DA2Activity;->SALTSTEP:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/appsomniacs/da2/DA2Activity;->SALTSTEP:I

    .line 243
    invoke-static {v3}, Lcom/appsomniacs/da2/DA2Activity;->getRndSaltyByte(I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/4 v2, 0x2

    sget v3, Lcom/appsomniacs/da2/DA2Activity;->SALTSTEP:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/appsomniacs/da2/DA2Activity;->SALTSTEP:I

    .line 244
    invoke-static {v3}, Lcom/appsomniacs/da2/DA2Activity;->getRndSaltyByte(I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/4 v2, 0x3

    sget v3, Lcom/appsomniacs/da2/DA2Activity;->SALTSTEP:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/appsomniacs/da2/DA2Activity;->SALTSTEP:I

    .line 245
    invoke-static {v3}, Lcom/appsomniacs/da2/DA2Activity;->getRndSaltyByte(I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/4 v2, 0x4

    sget v3, Lcom/appsomniacs/da2/DA2Activity;->SALTSTEP:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/appsomniacs/da2/DA2Activity;->SALTSTEP:I

    .line 246
    invoke-static {v3}, Lcom/appsomniacs/da2/DA2Activity;->getRndSaltyByte(I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/4 v2, 0x5

    sget v3, Lcom/appsomniacs/da2/DA2Activity;->SALTSTEP:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/appsomniacs/da2/DA2Activity;->SALTSTEP:I

    .line 247
    invoke-static {v3}, Lcom/appsomniacs/da2/DA2Activity;->getRndSaltyByte(I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/4 v2, 0x6

    sget v3, Lcom/appsomniacs/da2/DA2Activity;->SALTSTEP:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/appsomniacs/da2/DA2Activity;->SALTSTEP:I

    .line 248
    invoke-static {v3}, Lcom/appsomniacs/da2/DA2Activity;->getRndSaltyByte(I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/4 v2, 0x7

    sget v3, Lcom/appsomniacs/da2/DA2Activity;->SALTSTEP:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/appsomniacs/da2/DA2Activity;->SALTSTEP:I

    .line 249
    invoke-static {v3}, Lcom/appsomniacs/da2/DA2Activity;->getRndSaltyByte(I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/16 v2, 0x8

    sget v3, Lcom/appsomniacs/da2/DA2Activity;->SALTSTEP:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/appsomniacs/da2/DA2Activity;->SALTSTEP:I

    .line 250
    invoke-static {v3}, Lcom/appsomniacs/da2/DA2Activity;->getRndSaltyByte(I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/16 v2, 0x9

    sget v3, Lcom/appsomniacs/da2/DA2Activity;->SALTSTEP:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/appsomniacs/da2/DA2Activity;->SALTSTEP:I

    .line 251
    invoke-static {v3}, Lcom/appsomniacs/da2/DA2Activity;->getRndSaltyByte(I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/16 v2, 0xa

    sget v3, Lcom/appsomniacs/da2/DA2Activity;->SALTSTEP:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/appsomniacs/da2/DA2Activity;->SALTSTEP:I

    .line 252
    invoke-static {v3}, Lcom/appsomniacs/da2/DA2Activity;->getRndSaltyByte(I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/16 v2, 0xb

    sget v3, Lcom/appsomniacs/da2/DA2Activity;->SALTSTEP:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/appsomniacs/da2/DA2Activity;->SALTSTEP:I

    .line 253
    invoke-static {v3}, Lcom/appsomniacs/da2/DA2Activity;->getRndSaltyByte(I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/16 v2, 0xc

    sget v3, Lcom/appsomniacs/da2/DA2Activity;->SALTSTEP:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/appsomniacs/da2/DA2Activity;->SALTSTEP:I

    .line 254
    invoke-static {v3}, Lcom/appsomniacs/da2/DA2Activity;->getRndSaltyByte(I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/16 v2, 0xd

    sget v3, Lcom/appsomniacs/da2/DA2Activity;->SALTSTEP:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/appsomniacs/da2/DA2Activity;->SALTSTEP:I

    .line 255
    invoke-static {v3}, Lcom/appsomniacs/da2/DA2Activity;->getRndSaltyByte(I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/16 v2, 0xe

    sget v3, Lcom/appsomniacs/da2/DA2Activity;->SALTSTEP:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/appsomniacs/da2/DA2Activity;->SALTSTEP:I

    .line 256
    invoke-static {v3}, Lcom/appsomniacs/da2/DA2Activity;->getRndSaltyByte(I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/16 v2, 0xf

    sget v3, Lcom/appsomniacs/da2/DA2Activity;->SALTSTEP:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/appsomniacs/da2/DA2Activity;->SALTSTEP:I

    .line 257
    invoke-static {v3}, Lcom/appsomniacs/da2/DA2Activity;->getRndSaltyByte(I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/16 v2, 0x10

    sget v3, Lcom/appsomniacs/da2/DA2Activity;->SALTSTEP:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/appsomniacs/da2/DA2Activity;->SALTSTEP:I

    .line 258
    invoke-static {v3}, Lcom/appsomniacs/da2/DA2Activity;->getRndSaltyByte(I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/16 v2, 0x11

    sget v3, Lcom/appsomniacs/da2/DA2Activity;->SALTSTEP:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/appsomniacs/da2/DA2Activity;->SALTSTEP:I

    .line 259
    invoke-static {v3}, Lcom/appsomniacs/da2/DA2Activity;->getRndSaltyByte(I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/16 v2, 0x12

    sget v3, Lcom/appsomniacs/da2/DA2Activity;->SALTSTEP:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/appsomniacs/da2/DA2Activity;->SALTSTEP:I

    .line 260
    invoke-static {v3}, Lcom/appsomniacs/da2/DA2Activity;->getRndSaltyByte(I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/16 v2, 0x13

    sget v3, Lcom/appsomniacs/da2/DA2Activity;->SALTSTEP:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/appsomniacs/da2/DA2Activity;->SALTSTEP:I

    .line 261
    invoke-static {v3}, Lcom/appsomniacs/da2/DA2Activity;->getRndSaltyByte(I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    sput-object v1, Lcom/appsomniacs/da2/DA2Activity;->SALT:[B

    .line 808
    :try_start_134
    const-string v1, "AmazonGamesJni"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_139
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_134 .. :try_end_139} :catch_14f

    .line 815
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_139
    :try_start_139
    const-string v1, "kamcord"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_13e
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_139 .. :try_end_13e} :catch_16d

    .line 822
    :goto_13e
    const-string v1, "cocos2dcpp"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 2038
    const-string v1, ""

    sput-object v1, Lcom/appsomniacs/da2/DA2Activity;->mBillingStatusMessage:Ljava/lang/String;

    .line 2133
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/appsomniacs/da2/DA2Activity;->m_skuPriceLookup:Ljava/util/HashMap;

    return-void

    .line 809
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_14f
    move-exception v0

    .line 810
    .restart local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "DA2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AmazonGamesJni Lib not found. Which is ok if not building for Amazon...\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_139

    .line 816
    :catch_16d
    move-exception v0

    .line 817
    const-string v1, "DA2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Kamcord Lib not found. \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13e
.end method
.class final Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;
.super Ljava/lang/Object;
.source "AtomParsers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdDataHolder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 677
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 679
    return-void
.end method

.method private static parseAudioSampleEntry(Lcom/google/android/exoplayer/util/ParsableByteArray;IIIJLcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdDataHolder;I)V
    .locals 16
    .param p0, "parent"    # Lcom/google/android/exoplayer/util/ParsableByteArray;
    .param p1, "atomType"    # I
    .param p2, "position"    # I
    .param p3, "size"    # I
    .param p4, "durationUs"    # J
    .param p6, "out"    # Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdDataHolder;
    .param p7, "entryIndex"    # I

    .prologue
    .line 536
    add-int/lit8 v4, p2, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 537
    const/16 v4, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 538
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v6

    .line 539
    .local v6, "channelCount":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v3

    .line 540
    .local v3, "sampleSize":I
    const/4 v4, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 541
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedFixedPoint1616()I

    move-result v7

    .line 544
    .local v7, "sampleRate":I
    const/4 v2, 0x0

    .line 545
    .local v2, "mimeType":Ljava/lang/String;
    sget v4, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_ac_3:I

    move/from16 v0, p1

    if-ne v0, v4, :cond_3

    .line 546
    const-string v2, "audio/ac3"

    .line 551
    :cond_0
    :goto_0
    const/4 v14, 0x0

    .line 552
    .local v14, "initializationData":[B
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v12

    .line 553
    .local v12, "childPosition":I
    :goto_1
    sub-int v4, v12, p2

    move/from16 v0, p3

    if-ge v4, v0, :cond_9

    .line 554
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 555
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v13

    .line 556
    .local v13, "childStartPosition":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v10

    .line 557
    .local v10, "childAtomSize":I
    if-lez v10, :cond_4

    const/4 v4, 0x1

    :goto_2
    const-string v5, "childAtomSize should be positive"

    invoke-static {v4, v5}, Lcom/google/android/exoplayer/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 558
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v11

    .line 559
    .local v11, "childAtomType":I
    sget v4, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_mp4a:I

    move/from16 v0, p1

    if-eq v0, v4, :cond_1

    sget v4, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_enca:I

    move/from16 v0, p1

    if-ne v0, v4, :cond_6

    .line 560
    :cond_1
    sget v4, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_esds:I

    if-ne v11, v4, :cond_5

    .line 561
    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->parseEsdsFromParent(Lcom/google/android/exoplayer/util/ParsableByteArray;I)Landroid/util/Pair;

    move-result-object v15

    .line 563
    .local v15, "mimeTypeAndInitializationData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;[B>;"
    iget-object v2, v15, Landroid/util/Pair;->first:Ljava/lang/Object;

    .end local v2    # "mimeType":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 564
    .restart local v2    # "mimeType":Ljava/lang/String;
    iget-object v14, v15, Landroid/util/Pair;->second:Ljava/lang/Object;

    .end local v14    # "initializationData":[B
    check-cast v14, [B

    .line 565
    .restart local v14    # "initializationData":[B
    const-string v4, "audio/mp4a-latm"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 568
    invoke-static {v14}, Lcom/google/android/exoplayer/util/CodecSpecificDataUtil;->parseAacAudioSpecificConfig([B)Landroid/util/Pair;

    move-result-object v9

    .line 570
    .local v9, "audioSpecificConfig":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v4, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 571
    iget-object v4, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 588
    .end local v9    # "audioSpecificConfig":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v15    # "mimeTypeAndInitializationData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;[B>;"
    :cond_2
    :goto_3
    add-int/2addr v12, v10

    .line 589
    goto :goto_1

    .line 547
    .end local v10    # "childAtomSize":I
    .end local v11    # "childAtomType":I
    .end local v12    # "childPosition":I
    .end local v13    # "childStartPosition":I
    .end local v14    # "initializationData":[B
    :cond_3
    sget v4, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_ec_3:I

    move/from16 v0, p1

    if-ne v0, v4, :cond_0

    .line 548
    const-string v2, "audio/eac3"

    goto :goto_0

    .line 557
    .restart local v10    # "childAtomSize":I
    .restart local v12    # "childPosition":I
    .restart local v13    # "childStartPosition":I
    .restart local v14    # "initializationData":[B
    :cond_4
    const/4 v4, 0x0

    goto :goto_2

    .line 573
    .restart local v11    # "childAtomType":I
    :cond_5
    sget v4, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_sinf:I

    if-ne v11, v4, :cond_2

    .line 574
    move-object/from16 v0, p6

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdDataHolder;->trackEncryptionBoxes:[Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;

    move-object/from16 v0, p0

    invoke-static {v0, v13, v10}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->parseSinfFromParent(Lcom/google/android/exoplayer/util/ParsableByteArray;II)Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;

    move-result-object v5

    aput-object v5, v4, p7

    goto :goto_3

    .line 577
    :cond_6
    sget v4, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_ac_3:I

    move/from16 v0, p1

    if-ne v0, v4, :cond_8

    sget v4, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_dac3:I

    if-ne v11, v4, :cond_8

    .line 580
    add-int/lit8 v4, v13, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 581
    invoke-static/range {p0 .. p0}, Lcom/google/android/exoplayer/util/Ac3Util;->parseAnnexFAc3Format(Lcom/google/android/exoplayer/util/ParsableByteArray;)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v4

    move-object/from16 v0, p6

    iput-object v4, v0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdDataHolder;->mediaFormat:Lcom/google/android/exoplayer/MediaFormat;

    .line 599
    .end local v10    # "childAtomSize":I
    .end local v11    # "childAtomType":I
    .end local v13    # "childStartPosition":I
    :cond_7
    :goto_4
    return-void

    .line 583
    .restart local v10    # "childAtomSize":I
    .restart local v11    # "childAtomType":I
    .restart local v13    # "childStartPosition":I
    :cond_8
    sget v4, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_ec_3:I

    move/from16 v0, p1

    if-ne v0, v4, :cond_2

    sget v4, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_dec3:I

    if-ne v11, v4, :cond_2

    .line 584
    add-int/lit8 v4, v13, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 585
    invoke-static/range {p0 .. p0}, Lcom/google/android/exoplayer/util/Ac3Util;->parseAnnexFEAc3Format(Lcom/google/android/exoplayer/util/ParsableByteArray;)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v4

    move-object/from16 v0, p6

    iput-object v4, v0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdDataHolder;->mediaFormat:Lcom/google/android/exoplayer/MediaFormat;

    goto :goto_4

    .line 592
    .end local v10    # "childAtomSize":I
    .end local v11    # "childAtomType":I
    .end local v13    # "childStartPosition":I
    :cond_9
    if-eqz v2, :cond_7

    .line 596
    if-nez v14, :cond_a

    const/4 v8, 0x0

    :goto_5
    move-wide/from16 v4, p4

    invoke-static/range {v2 .. v8}, Lcom/google/android/exoplayer/MediaFormat;->createAudioFormat(Ljava/lang/String;IJIILjava/util/List;)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v4

    move-object/from16 v0, p6

    iput-object v4, v0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdDataHolder;->mediaFormat:Lcom/google/android/exoplayer/MediaFormat;

    goto :goto_4

    :cond_a
    invoke-static {v14}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    goto :goto_5
.end method

.method private static parseAvcCFromParent(Lcom/google/android/exoplayer/util/ParsableByteArray;I)Landroid/util/Pair;
    .locals 6
    .param p0, "parent"    # Lcom/google/android/exoplayer/util/ParsableByteArray;
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer/util/ParsableByteArray;",
            "I)",
            "Landroid/util/Pair",
            "<",
            "Ljava/util/List",
            "<[B>;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 420
    add-int/lit8 v5, p1, 0x8

    add-int/lit8 v5, v5, 0x4

    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 422
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    and-int/lit8 v5, v5, 0x3

    add-int/lit8 v2, v5, 0x1

    .line 423
    .local v2, "nalUnitLengthFieldLength":I
    const/4 v5, 0x3

    if-ne v2, v5, :cond_0

    .line 424
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5}, Ljava/lang/IllegalStateException;-><init>()V

    throw v5

    .line 426
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 429
    .local v0, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    and-int/lit8 v4, v5, 0x1f

    .line 430
    .local v4, "numSequenceParameterSets":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    if-ge v1, v4, :cond_1

    .line 431
    invoke-static {p0}, Lcom/google/android/exoplayer/util/NalUnitUtil;->parseChildNalUnit(Lcom/google/android/exoplayer/util/ParsableByteArray;)[B

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 430
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 433
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    .line 434
    .local v3, "numPictureParameterSets":I
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_2

    .line 435
    invoke-static {p0}, Lcom/google/android/exoplayer/util/NalUnitUtil;->parseChildNalUnit(Lcom/google/android/exoplayer/util/ParsableByteArray;)[B

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 434
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 437
    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    return-object v5
.end method

.method private static parseEsdsFromParent(Lcom/google/android/exoplayer/util/ParsableByteArray;I)Landroid/util/Pair;
    .locals 10
    .param p0, "parent"    # Lcom/google/android/exoplayer/util/ParsableByteArray;
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer/util/ParsableByteArray;",
            "I)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .prologue
    const/16 v9, 0x7f

    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 603
    add-int/lit8 v6, p1, 0x8

    add-int/lit8 v6, v6, 0x4

    invoke-virtual {p0, v6}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 605
    invoke-virtual {p0, v7}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 606
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    .line 607
    .local v5, "varIntByte":I
    :goto_0
    if-le v5, v9, :cond_0

    .line 608
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    goto :goto_0

    .line 610
    :cond_0
    invoke-virtual {p0, v8}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 612
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 613
    .local v0, "flags":I
    and-int/lit16 v6, v0, 0x80

    if-eqz v6, :cond_1

    .line 614
    invoke-virtual {p0, v8}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 616
    :cond_1
    and-int/lit8 v6, v0, 0x40

    if-eqz v6, :cond_2

    .line 617
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 619
    :cond_2
    and-int/lit8 v6, v0, 0x20

    if-eqz v6, :cond_3

    .line 620
    invoke-virtual {p0, v8}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 624
    :cond_3
    invoke-virtual {p0, v7}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 625
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    .line 626
    :goto_1
    if-le v5, v9, :cond_4

    .line 627
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    goto :goto_1

    .line 631
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    .line 633
    .local v3, "objectTypeIndication":I
    sparse-switch v3, :sswitch_data_0

    .line 657
    const/4 v2, 0x0

    .line 661
    .local v2, "mimeType":Ljava/lang/String;
    :goto_2
    const/16 v6, 0xc

    invoke-virtual {p0, v6}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 664
    invoke-virtual {p0, v7}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 665
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    .line 666
    and-int/lit8 v4, v5, 0x7f

    .line 667
    .local v4, "varInt":I
    :goto_3
    if-le v5, v9, :cond_5

    .line 668
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    .line 669
    shl-int/lit8 v4, v4, 0x8

    .line 670
    and-int/lit8 v6, v5, 0x7f

    or-int/2addr v4, v6

    goto :goto_3

    .line 635
    .end local v2    # "mimeType":Ljava/lang/String;
    .end local v4    # "varInt":I
    :sswitch_0
    const-string v2, "audio/mpeg"

    .line 637
    .restart local v2    # "mimeType":Ljava/lang/String;
    const/4 v6, 0x0

    invoke-static {v2, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    .line 674
    :goto_4
    return-object v6

    .line 639
    .end local v2    # "mimeType":Ljava/lang/String;
    :sswitch_1
    const-string v2, "video/mp4v-es"

    .line 640
    .restart local v2    # "mimeType":Ljava/lang/String;
    goto :goto_2

    .line 642
    .end local v2    # "mimeType":Ljava/lang/String;
    :sswitch_2
    const-string v2, "video/avc"

    .line 643
    .restart local v2    # "mimeType":Ljava/lang/String;
    goto :goto_2

    .line 645
    .end local v2    # "mimeType":Ljava/lang/String;
    :sswitch_3
    const-string v2, "video/hevc"

    .line 646
    .restart local v2    # "mimeType":Ljava/lang/String;
    goto :goto_2

    .line 648
    .end local v2    # "mimeType":Ljava/lang/String;
    :sswitch_4
    const-string v2, "audio/mp4a-latm"

    .line 649
    .restart local v2    # "mimeType":Ljava/lang/String;
    goto :goto_2

    .line 651
    .end local v2    # "mimeType":Ljava/lang/String;
    :sswitch_5
    const-string v2, "audio/ac3"

    .line 652
    .restart local v2    # "mimeType":Ljava/lang/String;
    goto :goto_2

    .line 654
    .end local v2    # "mimeType":Ljava/lang/String;
    :sswitch_6
    const-string v2, "audio/eac3"

    .line 655
    .restart local v2    # "mimeType":Ljava/lang/String;
    goto :goto_2

    .line 672
    .restart local v4    # "varInt":I
    :cond_5
    new-array v1, v4, [B

    .line 673
    .local v1, "initializationData":[B
    const/4 v6, 0x0

    invoke-virtual {p0, v1, v6, v4}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readBytes([BII)V

    .line 674
    invoke-static {v2, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    goto :goto_4

    .line 633
    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_1
        0x21 -> :sswitch_2
        0x23 -> :sswitch_3
        0x40 -> :sswitch_4
        0x6b -> :sswitch_0
        0xa5 -> :sswitch_5
        0xa6 -> :sswitch_6
    .end sparse-switch
.end method

.method private static parseHdlr(Lcom/google/android/exoplayer/util/ParsableByteArray;)I
    .locals 1
    .param p0, "hdlr"    # Lcom/google/android/exoplayer/util/ParsableByteArray;

    .prologue
    .line 309
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 310
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v0

    return v0
.end method

.method private static parseHvcCFromParent(Lcom/google/android/exoplayer/util/ParsableByteArray;I)Landroid/util/Pair;
    .locals 14
    .param p0, "parent"    # Lcom/google/android/exoplayer/util/ParsableByteArray;
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer/util/ParsableByteArray;",
            "I)",
            "Landroid/util/Pair",
            "<",
            "Ljava/util/List",
            "<[B>;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 443
    add-int/lit8 v11, p1, 0x8

    add-int/lit8 v11, v11, 0x15

    invoke-virtual {p0, v11}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 444
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v11

    and-int/lit8 v7, v11, 0x3

    .line 447
    .local v7, "lengthSizeMinusOne":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v9

    .line 448
    .local v9, "numberOfArrays":I
    const/4 v2, 0x0

    .line 449
    .local v2, "csdLength":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v3

    .line 450
    .local v3, "csdStartPosition":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v9, :cond_1

    .line 451
    const/4 v11, 0x1

    invoke-virtual {p0, v11}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 452
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v10

    .line 453
    .local v10, "numberOfNalUnits":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    if-ge v6, v10, :cond_0

    .line 454
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v8

    .line 455
    .local v8, "nalUnitLength":I
    add-int/lit8 v11, v8, 0x4

    add-int/2addr v2, v11

    .line 456
    invoke-virtual {p0, v8}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 453
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 450
    .end local v8    # "nalUnitLength":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 461
    .end local v6    # "j":I
    .end local v10    # "numberOfNalUnits":I
    :cond_1
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 462
    new-array v0, v2, [B

    .line 463
    .local v0, "buffer":[B
    const/4 v1, 0x0

    .line 464
    .local v1, "bufferPosition":I
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v9, :cond_3

    .line 465
    const/4 v11, 0x1

    invoke-virtual {p0, v11}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 466
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v10

    .line 467
    .restart local v10    # "numberOfNalUnits":I
    const/4 v6, 0x0

    .restart local v6    # "j":I
    :goto_3
    if-ge v6, v10, :cond_2

    .line 468
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v8

    .line 469
    .restart local v8    # "nalUnitLength":I
    sget-object v11, Lcom/google/android/exoplayer/util/NalUnitUtil;->NAL_START_CODE:[B

    const/4 v12, 0x0

    sget-object v13, Lcom/google/android/exoplayer/util/NalUnitUtil;->NAL_START_CODE:[B

    array-length v13, v13

    invoke-static {v11, v12, v0, v1, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 471
    sget-object v11, Lcom/google/android/exoplayer/util/NalUnitUtil;->NAL_START_CODE:[B

    array-length v11, v11

    add-int/2addr v1, v11

    .line 472
    iget-object v11, p0, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v12

    invoke-static {v11, v12, v0, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 473
    add-int/2addr v1, v8

    .line 474
    invoke-virtual {p0, v8}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 467
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 464
    .end local v8    # "nalUnitLength":I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 478
    .end local v6    # "j":I
    .end local v10    # "numberOfNalUnits":I
    :cond_3
    if-nez v2, :cond_4

    const/4 v5, 0x0

    .line 479
    .local v5, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    :goto_4
    add-int/lit8 v11, v7, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v5, v11}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v11

    return-object v11

    .line 478
    .end local v5    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    :cond_4
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    goto :goto_4
.end method

.method private static parseMdhd(Lcom/google/android/exoplayer/util/ParsableByteArray;)J
    .locals 4
    .param p0, "mdhd"    # Lcom/google/android/exoplayer/util/ParsableByteArray;

    .prologue
    const/16 v2, 0x8

    .line 320
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 321
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 322
    .local v0, "fullAtom":I
    invoke-static {v0}, Lcom/google/android/exoplayer/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v1

    .line 324
    .local v1, "version":I
    if-nez v1, :cond_0

    :goto_0
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 325
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v2

    return-wide v2

    .line 324
    :cond_0
    const/16 v2, 0x10

    goto :goto_0
.end method

.method private static parseMvhd(Lcom/google/android/exoplayer/util/ParsableByteArray;)J
    .locals 4
    .param p0, "mvhd"    # Lcom/google/android/exoplayer/util/ParsableByteArray;

    .prologue
    const/16 v2, 0x8

    .line 256
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 258
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 259
    .local v0, "fullAtom":I
    invoke-static {v0}, Lcom/google/android/exoplayer/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v1

    .line 261
    .local v1, "version":I
    if-nez v1, :cond_0

    :goto_0
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 263
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v2

    return-wide v2

    .line 261
    :cond_0
    const/16 v2, 0x10

    goto :goto_0
.end method

.method private static parsePaspFromParent(Lcom/google/android/exoplayer/util/ParsableByteArray;I)F
    .locals 4
    .param p0, "parent"    # Lcom/google/android/exoplayer/util/ParsableByteArray;
    .param p1, "position"    # I

    .prologue
    .line 507
    add-int/lit8 v2, p1, 0x8

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 508
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v0

    .line 509
    .local v0, "hSpacing":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v1

    .line 510
    .local v1, "vSpacing":I
    int-to-float v2, v0

    int-to-float v3, v1

    div-float/2addr v2, v3

    return v2
.end method

.method private static parseSchiFromParent(Lcom/google/android/exoplayer/util/ParsableByteArray;II)Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;
    .locals 9
    .param p0, "parent"    # Lcom/google/android/exoplayer/util/ParsableByteArray;
    .param p1, "position"    # I
    .param p2, "size"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 515
    add-int/lit8 v2, p1, 0x8

    .line 516
    .local v2, "childPosition":I
    :goto_0
    sub-int v8, v2, p1

    if-ge v8, p2, :cond_2

    .line 517
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 518
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 519
    .local v0, "childAtomSize":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 520
    .local v1, "childAtomType":I
    sget v8, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_tenc:I

    if-ne v1, v8, :cond_1

    .line 521
    const/4 v8, 0x4

    invoke-virtual {p0, v8}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 522
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v6

    .line 523
    .local v6, "firstInt":I
    shr-int/lit8 v8, v6, 0x8

    if-ne v8, v4, :cond_0

    .line 524
    .local v4, "defaultIsEncrypted":Z
    :goto_1
    and-int/lit16 v3, v6, 0xff

    .line 525
    .local v3, "defaultInitVectorSize":I
    const/16 v8, 0x10

    new-array v5, v8, [B

    .line 526
    .local v5, "defaultKeyId":[B
    array-length v8, v5

    invoke-virtual {p0, v5, v7, v8}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readBytes([BII)V

    .line 527
    new-instance v7, Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;

    invoke-direct {v7, v4, v3, v5}, Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;-><init>(ZI[B)V

    .line 531
    .end local v0    # "childAtomSize":I
    .end local v1    # "childAtomType":I
    .end local v3    # "defaultInitVectorSize":I
    .end local v4    # "defaultIsEncrypted":Z
    .end local v5    # "defaultKeyId":[B
    .end local v6    # "firstInt":I
    :goto_2
    return-object v7

    .restart local v0    # "childAtomSize":I
    .restart local v1    # "childAtomType":I
    .restart local v6    # "firstInt":I
    :cond_0
    move v4, v7

    .line 523
    goto :goto_1

    .line 529
    .end local v6    # "firstInt":I
    :cond_1
    add-int/2addr v2, v0

    .line 530
    goto :goto_0

    .line 531
    .end local v0    # "childAtomSize":I
    .end local v1    # "childAtomType":I
    :cond_2
    const/4 v7, 0x0

    goto :goto_2
.end method

.method private static parseSinfFromParent(Lcom/google/android/exoplayer/util/ParsableByteArray;II)Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;
    .locals 5
    .param p0, "parent"    # Lcom/google/android/exoplayer/util/ParsableByteArray;
    .param p1, "position"    # I
    .param p2, "size"    # I

    .prologue
    .line 484
    add-int/lit8 v2, p1, 0x8

    .line 486
    .local v2, "childPosition":I
    const/4 v3, 0x0

    .line 487
    .local v3, "trackEncryptionBox":Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;
    :goto_0
    sub-int v4, v2, p1

    if-ge v4, p2, :cond_3

    .line 488
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 489
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 490
    .local v0, "childAtomSize":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 491
    .local v1, "childAtomType":I
    sget v4, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_frma:I

    if-ne v1, v4, :cond_1

    .line 492
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    .line 500
    :cond_0
    :goto_1
    add-int/2addr v2, v0

    .line 501
    goto :goto_0

    .line 493
    :cond_1
    sget v4, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_schm:I

    if-ne v1, v4, :cond_2

    .line 494
    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 495
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    .line 496
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    goto :goto_1

    .line 497
    :cond_2
    sget v4, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_schi:I

    if-ne v1, v4, :cond_0

    .line 498
    invoke-static {p0, v2, v0}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->parseSchiFromParent(Lcom/google/android/exoplayer/util/ParsableByteArray;II)Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;

    move-result-object v3

    goto :goto_1

    .line 503
    .end local v0    # "childAtomSize":I
    .end local v1    # "childAtomType":I
    :cond_3
    return-object v3
.end method

.method public static parseStbl(Lcom/google/android/exoplayer/extractor/mp4/Track;Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;)Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;
    .locals 44
    .param p0, "track"    # Lcom/google/android/exoplayer/extractor/mp4/Track;
    .param p1, "stblAtom"    # Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;

    .prologue
    .line 81
    sget v40, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_stsz:I

    move-object/from16 v0, p1

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v40

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-object/from16 v33, v0

    .line 85
    .local v33, "stsz":Lcom/google/android/exoplayer/util/ParsableByteArray;
    sget v40, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_stco:I

    move-object/from16 v0, p1

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v9

    .line 86
    .local v9, "chunkOffsetsAtom":Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;
    if-nez v9, :cond_0

    .line 87
    sget v40, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_co64:I

    move-object/from16 v0, p1

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v9

    .line 89
    :cond_0
    iget-object v8, v9, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 91
    .local v8, "chunkOffsets":Lcom/google/android/exoplayer/util/ParsableByteArray;
    sget v40, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_stsc:I

    move-object/from16 v0, p1

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v40

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-object/from16 v30, v0

    .line 93
    .local v30, "stsc":Lcom/google/android/exoplayer/util/ParsableByteArray;
    sget v40, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_stts:I

    move-object/from16 v0, p1

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v40

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-object/from16 v34, v0

    .line 95
    .local v34, "stts":Lcom/google/android/exoplayer/util/ParsableByteArray;
    sget v40, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_stss:I

    move-object/from16 v0, p1

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v32

    .line 96
    .local v32, "stssAtom":Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;
    if-eqz v32, :cond_1

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-object/from16 v31, v0

    .line 98
    .local v31, "stss":Lcom/google/android/exoplayer/util/ParsableByteArray;
    :goto_0
    sget v40, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_ctts:I

    move-object/from16 v0, p1

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v11

    .line 99
    .local v11, "cttsAtom":Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;
    if-eqz v11, :cond_2

    iget-object v10, v11, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 102
    .local v10, "ctts":Lcom/google/android/exoplayer/util/ParsableByteArray;
    :goto_1
    const/16 v40, 0xc

    move-object/from16 v0, v33

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 103
    invoke-virtual/range {v33 .. v33}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v12

    .line 104
    .local v12, "fixedSampleSize":I
    invoke-virtual/range {v33 .. v33}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v27

    .line 106
    .local v27, "sampleCount":I
    move/from16 v0, v27

    new-array v0, v0, [J

    move-object/from16 v17, v0

    .line 107
    .local v17, "offsets":[J
    move/from16 v0, v27

    new-array v0, v0, [I

    move-object/from16 v29, v0

    .line 108
    .local v29, "sizes":[I
    move/from16 v0, v27

    new-array v0, v0, [J

    move-object/from16 v37, v0

    .line 109
    .local v37, "timestamps":[J
    move/from16 v0, v27

    new-array v13, v0, [I

    .line 110
    .local v13, "flags":[I
    if-nez v27, :cond_3

    .line 111
    new-instance v40, Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;

    move-object/from16 v0, v40

    move-object/from16 v1, v17

    move-object/from16 v2, v29

    move-object/from16 v3, v37

    invoke-direct {v0, v1, v2, v3, v13}, Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;-><init>([J[I[J[I)V

    .line 246
    :goto_2
    return-object v40

    .line 96
    .end local v10    # "ctts":Lcom/google/android/exoplayer/util/ParsableByteArray;
    .end local v11    # "cttsAtom":Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;
    .end local v12    # "fixedSampleSize":I
    .end local v13    # "flags":[I
    .end local v17    # "offsets":[J
    .end local v27    # "sampleCount":I
    .end local v29    # "sizes":[I
    .end local v31    # "stss":Lcom/google/android/exoplayer/util/ParsableByteArray;
    .end local v37    # "timestamps":[J
    :cond_1
    const/16 v31, 0x0

    goto :goto_0

    .line 99
    .restart local v11    # "cttsAtom":Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;
    .restart local v31    # "stss":Lcom/google/android/exoplayer/util/ParsableByteArray;
    :cond_2
    const/4 v10, 0x0

    goto :goto_1

    .line 115
    .restart local v10    # "ctts":Lcom/google/android/exoplayer/util/ParsableByteArray;
    .restart local v12    # "fixedSampleSize":I
    .restart local v13    # "flags":[I
    .restart local v17    # "offsets":[J
    .restart local v27    # "sampleCount":I
    .restart local v29    # "sizes":[I
    .restart local v37    # "timestamps":[J
    :cond_3
    const/16 v40, 0xc

    move/from16 v0, v40

    invoke-virtual {v8, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 116
    invoke-virtual {v8}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v6

    .line 118
    .local v6, "chunkCount":I
    const/16 v40, 0xc

    move-object/from16 v0, v30

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 119
    invoke-virtual/range {v30 .. v30}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v40

    add-int/lit8 v23, v40, -0x1

    .line 120
    .local v23, "remainingSamplesPerChunkChanges":I
    invoke-virtual/range {v30 .. v30}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v40

    const/16 v41, 0x1

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_d

    const/16 v40, 0x1

    :goto_3
    const-string v41, "stsc first chunk must be 1"

    invoke-static/range {v40 .. v41}, Lcom/google/android/exoplayer/util/Assertions;->checkState(ZLjava/lang/Object;)V

    .line 121
    invoke-virtual/range {v30 .. v30}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v28

    .line 122
    .local v28, "samplesPerChunk":I
    const/16 v40, 0x4

    move-object/from16 v0, v30

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 123
    const/4 v15, -0x1

    .line 124
    .local v15, "nextSamplesPerChunkChangeChunkIndex":I
    if-lez v23, :cond_4

    .line 126
    invoke-virtual/range {v30 .. v30}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v40

    add-int/lit8 v15, v40, -0x1

    .line 129
    :cond_4
    const/4 v7, 0x0

    .line 130
    .local v7, "chunkIndex":I
    move/from16 v22, v28

    .line 133
    .local v22, "remainingSamplesInChunk":I
    const/16 v40, 0xc

    move-object/from16 v0, v34

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 134
    invoke-virtual/range {v34 .. v34}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v40

    add-int/lit8 v25, v40, -0x1

    .line 135
    .local v25, "remainingTimestampDeltaChanges":I
    invoke-virtual/range {v34 .. v34}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v20

    .line 136
    .local v20, "remainingSamplesAtTimestampDelta":I
    invoke-virtual/range {v34 .. v34}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v35

    .line 139
    .local v35, "timestampDeltaInTimeUnits":I
    const/16 v21, 0x0

    .line 140
    .local v21, "remainingSamplesAtTimestampOffset":I
    const/16 v26, 0x0

    .line 141
    .local v26, "remainingTimestampOffsetChanges":I
    const/16 v36, 0x0

    .line 142
    .local v36, "timestampOffset":I
    if-eqz v10, :cond_5

    .line 143
    const/16 v40, 0xc

    move/from16 v0, v40

    invoke-virtual {v10, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 144
    invoke-virtual {v10}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v40

    add-int/lit8 v26, v40, -0x1

    .line 145
    invoke-virtual {v10}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v21

    .line 151
    invoke-virtual {v10}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v36

    .line 154
    :cond_5
    const/16 v16, -0x1

    .line 155
    .local v16, "nextSynchronizationSampleIndex":I
    const/16 v24, 0x0

    .line 156
    .local v24, "remainingSynchronizationSamples":I
    if-eqz v31, :cond_6

    .line 157
    const/16 v40, 0xc

    move-object/from16 v0, v31

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 158
    invoke-virtual/range {v31 .. v31}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v24

    .line 159
    invoke-virtual/range {v31 .. v31}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v40

    add-int/lit8 v16, v40, -0x1

    .line 164
    :cond_6
    iget v0, v9, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->type:I

    move/from16 v40, v0

    sget v41, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_stco:I

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_e

    .line 165
    invoke-virtual {v8}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v18

    .line 170
    .local v18, "offsetBytes":J
    :goto_4
    const-wide/16 v38, 0x0

    .line 171
    .local v38, "timestampTimeUnits":J
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_5
    move/from16 v0, v27

    if-ge v14, v0, :cond_13

    .line 172
    aput-wide v18, v17, v14

    .line 173
    if-nez v12, :cond_f

    invoke-virtual/range {v33 .. v33}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v40

    :goto_6
    aput v40, v29, v14

    .line 174
    move/from16 v0, v36

    int-to-long v0, v0

    move-wide/from16 v40, v0

    add-long v40, v40, v38

    aput-wide v40, v37, v14

    .line 177
    if-nez v31, :cond_10

    const/16 v40, 0x1

    :goto_7
    aput v40, v13, v14

    .line 178
    move/from16 v0, v16

    if-ne v14, v0, :cond_7

    .line 179
    const/16 v40, 0x1

    aput v40, v13, v14

    .line 180
    add-int/lit8 v24, v24, -0x1

    .line 181
    if-lez v24, :cond_7

    .line 182
    invoke-virtual/range {v31 .. v31}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v40

    add-int/lit8 v16, v40, -0x1

    .line 187
    :cond_7
    move/from16 v0, v35

    int-to-long v0, v0

    move-wide/from16 v40, v0

    add-long v38, v38, v40

    .line 188
    add-int/lit8 v20, v20, -0x1

    .line 189
    if-nez v20, :cond_8

    if-lez v25, :cond_8

    .line 190
    invoke-virtual/range {v34 .. v34}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v20

    .line 191
    invoke-virtual/range {v34 .. v34}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v35

    .line 192
    add-int/lit8 v25, v25, -0x1

    .line 196
    :cond_8
    if-eqz v10, :cond_9

    .line 197
    add-int/lit8 v21, v21, -0x1

    .line 198
    if-nez v21, :cond_9

    if-lez v26, :cond_9

    .line 199
    invoke-virtual {v10}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v21

    .line 201
    invoke-virtual {v10}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v36

    .line 202
    add-int/lit8 v26, v26, -0x1

    .line 207
    :cond_9
    add-int/lit8 v22, v22, -0x1

    .line 208
    if-nez v22, :cond_12

    .line 209
    add-int/lit8 v7, v7, 0x1

    .line 210
    if-ge v7, v6, :cond_a

    .line 211
    iget v0, v9, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->type:I

    move/from16 v40, v0

    sget v41, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_stco:I

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_11

    .line 212
    invoke-virtual {v8}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v18

    .line 219
    :cond_a
    :goto_8
    if-ne v7, v15, :cond_b

    .line 220
    invoke-virtual/range {v30 .. v30}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v28

    .line 221
    const/16 v40, 0x4

    move-object/from16 v0, v30

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 222
    add-int/lit8 v23, v23, -0x1

    .line 223
    if-lez v23, :cond_b

    .line 224
    invoke-virtual/range {v30 .. v30}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v40

    add-int/lit8 v15, v40, -0x1

    .line 229
    :cond_b
    if-ge v7, v6, :cond_c

    .line 230
    move/from16 v22, v28

    .line 171
    :cond_c
    :goto_9
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_5

    .line 120
    .end local v7    # "chunkIndex":I
    .end local v14    # "i":I
    .end local v15    # "nextSamplesPerChunkChangeChunkIndex":I
    .end local v16    # "nextSynchronizationSampleIndex":I
    .end local v18    # "offsetBytes":J
    .end local v20    # "remainingSamplesAtTimestampDelta":I
    .end local v21    # "remainingSamplesAtTimestampOffset":I
    .end local v22    # "remainingSamplesInChunk":I
    .end local v24    # "remainingSynchronizationSamples":I
    .end local v25    # "remainingTimestampDeltaChanges":I
    .end local v26    # "remainingTimestampOffsetChanges":I
    .end local v28    # "samplesPerChunk":I
    .end local v35    # "timestampDeltaInTimeUnits":I
    .end local v36    # "timestampOffset":I
    .end local v38    # "timestampTimeUnits":J
    :cond_d
    const/16 v40, 0x0

    goto/16 :goto_3

    .line 167
    .restart local v7    # "chunkIndex":I
    .restart local v15    # "nextSamplesPerChunkChangeChunkIndex":I
    .restart local v16    # "nextSynchronizationSampleIndex":I
    .restart local v20    # "remainingSamplesAtTimestampDelta":I
    .restart local v21    # "remainingSamplesAtTimestampOffset":I
    .restart local v22    # "remainingSamplesInChunk":I
    .restart local v24    # "remainingSynchronizationSamples":I
    .restart local v25    # "remainingTimestampDeltaChanges":I
    .restart local v26    # "remainingTimestampOffsetChanges":I
    .restart local v28    # "samplesPerChunk":I
    .restart local v35    # "timestampDeltaInTimeUnits":I
    .restart local v36    # "timestampOffset":I
    :cond_e
    invoke-virtual {v8}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v18

    .restart local v18    # "offsetBytes":J
    goto/16 :goto_4

    .restart local v14    # "i":I
    .restart local v38    # "timestampTimeUnits":J
    :cond_f
    move/from16 v40, v12

    .line 173
    goto/16 :goto_6

    .line 177
    :cond_10
    const/16 v40, 0x0

    goto/16 :goto_7

    .line 214
    :cond_11
    invoke-virtual {v8}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v18

    goto :goto_8

    .line 234
    :cond_12
    aget v40, v29, v14

    move/from16 v0, v40

    int-to-long v0, v0

    move-wide/from16 v40, v0

    add-long v18, v18, v40

    goto :goto_9

    .line 238
    :cond_13
    const-wide/32 v40, 0xf4240

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/exoplayer/extractor/mp4/Track;->timescale:J

    move-wide/from16 v42, v0

    move-object/from16 v0, v37

    move-wide/from16 v1, v40

    move-wide/from16 v3, v42

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer/util/Util;->scaleLargeTimestampsInPlace([JJJ)V

    .line 241
    if-nez v24, :cond_14

    const/16 v40, 0x1

    :goto_a
    invoke-static/range {v40 .. v40}, Lcom/google/android/exoplayer/util/Assertions;->checkArgument(Z)V

    .line 242
    if-nez v20, :cond_15

    const/16 v40, 0x1

    :goto_b
    invoke-static/range {v40 .. v40}, Lcom/google/android/exoplayer/util/Assertions;->checkArgument(Z)V

    .line 243
    if-nez v22, :cond_16

    const/16 v40, 0x1

    :goto_c
    invoke-static/range {v40 .. v40}, Lcom/google/android/exoplayer/util/Assertions;->checkArgument(Z)V

    .line 244
    if-nez v25, :cond_17

    const/16 v40, 0x1

    :goto_d
    invoke-static/range {v40 .. v40}, Lcom/google/android/exoplayer/util/Assertions;->checkArgument(Z)V

    .line 245
    if-nez v26, :cond_18

    const/16 v40, 0x1

    :goto_e
    invoke-static/range {v40 .. v40}, Lcom/google/android/exoplayer/util/Assertions;->checkArgument(Z)V

    .line 246
    new-instance v40, Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;

    move-object/from16 v0, v40

    move-object/from16 v1, v17

    move-object/from16 v2, v29

    move-object/from16 v3, v37

    invoke-direct {v0, v1, v2, v3, v13}, Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;-><init>([J[I[J[I)V

    goto/16 :goto_2

    .line 241
    :cond_14
    const/16 v40, 0x0

    goto :goto_a

    .line 242
    :cond_15
    const/16 v40, 0x0

    goto :goto_b

    .line 243
    :cond_16
    const/16 v40, 0x0

    goto :goto_c

    .line 244
    :cond_17
    const/16 v40, 0x0

    goto :goto_d

    .line 245
    :cond_18
    const/16 v40, 0x0

    goto :goto_e
.end method

.method private static parseStsd(Lcom/google/android/exoplayer/util/ParsableByteArray;J)Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdDataHolder;
    .locals 9
    .param p0, "stsd"    # Lcom/google/android/exoplayer/util/ParsableByteArray;
    .param p1, "durationUs"    # J

    .prologue
    .line 329
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 330
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v8

    .line 331
    .local v8, "numberOfEntries":I
    new-instance v6, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdDataHolder;

    invoke-direct {v6, v8}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdDataHolder;-><init>(I)V

    .line 332
    .local v6, "holder":Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdDataHolder;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v8, :cond_7

    .line 333
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v2

    .line 334
    .local v2, "childStartPosition":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v3

    .line 335
    .local v3, "childAtomSize":I
    if-lez v3, :cond_2

    const/4 v0, 0x1

    :goto_1
    const-string v4, "childAtomSize should be positive"

    invoke-static {v0, v4}, Lcom/google/android/exoplayer/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 336
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 337
    .local v1, "childAtomType":I
    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_avc1:I

    if-eq v1, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_avc3:I

    if-eq v1, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_encv:I

    if-eq v1, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_mp4v:I

    if-eq v1, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_hvc1:I

    if-eq v1, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_hev1:I

    if-eq v1, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_s263:I

    if-ne v1, v0, :cond_3

    :cond_0
    move-object v1, p0

    move-wide v4, p1

    .line 341
    invoke-static/range {v1 .. v7}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->parseVideoSampleEntry(Lcom/google/android/exoplayer/util/ParsableByteArray;IIJLcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdDataHolder;I)V

    .line 351
    .end local v1    # "childAtomType":I
    :cond_1
    :goto_2
    add-int v0, v2, v3

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 332
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 335
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 342
    .restart local v1    # "childAtomType":I
    :cond_3
    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_mp4a:I

    if-eq v1, v0, :cond_4

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_enca:I

    if-eq v1, v0, :cond_4

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_ac_3:I

    if-ne v1, v0, :cond_5

    :cond_4
    move-object v0, p0

    move-wide v4, p1

    .line 344
    invoke-static/range {v0 .. v7}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->parseAudioSampleEntry(Lcom/google/android/exoplayer/util/ParsableByteArray;IIIJLcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdDataHolder;I)V

    goto :goto_2

    .line 346
    :cond_5
    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_TTML:I

    if-ne v1, v0, :cond_6

    .line 347
    const-string v0, "application/ttml+xml"

    invoke-static {v0, p1, p2}, Lcom/google/android/exoplayer/MediaFormat;->createTextFormat(Ljava/lang/String;J)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v0

    iput-object v0, v6, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdDataHolder;->mediaFormat:Lcom/google/android/exoplayer/MediaFormat;

    goto :goto_2

    .line 348
    :cond_6
    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_tx3g:I

    if-ne v1, v0, :cond_1

    .line 349
    const-string v0, "application/x-quicktime-tx3g"

    invoke-static {v0, p1, p2}, Lcom/google/android/exoplayer/MediaFormat;->createTextFormat(Ljava/lang/String;J)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v0

    iput-object v0, v6, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdDataHolder;->mediaFormat:Lcom/google/android/exoplayer/MediaFormat;

    goto :goto_2

    .line 353
    .end local v1    # "childAtomType":I
    .end local v2    # "childStartPosition":I
    .end local v3    # "childAtomSize":I
    :cond_7
    return-object v6
.end method

.method private static parseTkhd(Lcom/google/android/exoplayer/util/ParsableByteArray;)Landroid/util/Pair;
    .locals 11
    .param p0, "tkhd"    # Lcom/google/android/exoplayer/util/ParsableByteArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer/util/ParsableByteArray;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x4

    const/16 v10, 0x8

    .line 273
    invoke-virtual {p0, v10}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 274
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v5

    .line 275
    .local v5, "fullAtom":I
    invoke-static {v5}, Lcom/google/android/exoplayer/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v8

    .line 277
    .local v8, "version":I
    if-nez v8, :cond_1

    move v9, v10

    :goto_0
    invoke-virtual {p0, v9}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 279
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v7

    .line 280
    .local v7, "trackId":I
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 282
    const/4 v4, 0x1

    .line 283
    .local v4, "durationUnknown":Z
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v3

    .line 284
    .local v3, "durationPosition":I
    if-nez v8, :cond_2

    .line 285
    .local v2, "durationByteCount":I
    :goto_1
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    if-ge v6, v2, :cond_0

    .line 286
    iget-object v9, p0, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    add-int v10, v3, v6

    aget-byte v9, v9, v10

    const/4 v10, -0x1

    if-eq v9, v10, :cond_3

    .line 287
    const/4 v4, 0x0

    .line 292
    :cond_0
    if-eqz v4, :cond_4

    .line 293
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 294
    const-wide/16 v0, -0x1

    .line 299
    .local v0, "duration":J
    :goto_3
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v9

    return-object v9

    .line 277
    .end local v0    # "duration":J
    .end local v2    # "durationByteCount":I
    .end local v3    # "durationPosition":I
    .end local v4    # "durationUnknown":Z
    .end local v6    # "i":I
    .end local v7    # "trackId":I
    :cond_1
    const/16 v9, 0x10

    goto :goto_0

    .restart local v3    # "durationPosition":I
    .restart local v4    # "durationUnknown":Z
    .restart local v7    # "trackId":I
    :cond_2
    move v2, v10

    .line 284
    goto :goto_1

    .line 285
    .restart local v2    # "durationByteCount":I
    .restart local v6    # "i":I
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 296
    :cond_4
    if-nez v8, :cond_5

    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v0

    .restart local v0    # "duration":J
    :goto_4
    goto :goto_3

    .end local v0    # "duration":J
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v0

    goto :goto_4
.end method

.method public static parseTrak(Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;)Lcom/google/android/exoplayer/extractor/mp4/Track;
    .locals 22
    .param p0, "trak"    # Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;
    .param p1, "mvhd"    # Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;

    .prologue
    .line 45
    sget v4, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_mdia:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;

    move-result-object v19

    .line 46
    .local v19, "mdia":Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;
    sget v4, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_hdlr:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-static {v4}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->parseHdlr(Lcom/google/android/exoplayer/util/ParsableByteArray;)I

    move-result v11

    .line 47
    .local v11, "trackType":I
    sget v4, Lcom/google/android/exoplayer/extractor/mp4/Track;->TYPE_AUDIO:I

    if-eq v11, v4, :cond_0

    sget v4, Lcom/google/android/exoplayer/extractor/mp4/Track;->TYPE_VIDEO:I

    if-eq v11, v4, :cond_0

    sget v4, Lcom/google/android/exoplayer/extractor/mp4/Track;->TYPE_TEXT:I

    if-eq v11, v4, :cond_0

    sget v4, Lcom/google/android/exoplayer/extractor/mp4/Track;->TYPE_SUBTITLE:I

    if-eq v11, v4, :cond_0

    .line 49
    const/4 v9, 0x0

    .line 67
    :goto_0
    return-object v9

    .line 52
    :cond_0
    sget v4, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_tkhd:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-static {v4}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->parseTkhd(Lcom/google/android/exoplayer/util/ParsableByteArray;)Landroid/util/Pair;

    move-result-object v8

    .line 53
    .local v8, "header":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    iget-object v4, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 54
    .local v10, "id":I
    iget-object v4, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 55
    .local v2, "duration":J
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-static {v4}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->parseMvhd(Lcom/google/android/exoplayer/util/ParsableByteArray;)J

    move-result-wide v6

    .line 57
    .local v6, "movieTimescale":J
    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-nez v4, :cond_1

    .line 58
    const-wide/16 v14, -0x1

    .line 62
    .local v14, "durationUs":J
    :goto_1
    sget v4, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_minf:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;

    move-result-object v4

    sget v5, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_stbl:I

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;

    move-result-object v20

    .line 65
    .local v20, "stbl":Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;
    sget v4, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_mdhd:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-static {v4}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->parseMdhd(Lcom/google/android/exoplayer/util/ParsableByteArray;)J

    move-result-wide v12

    .line 66
    .local v12, "mediaTimescale":J
    sget v4, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_stsd:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-static {v4, v14, v15}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->parseStsd(Lcom/google/android/exoplayer/util/ParsableByteArray;J)Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdDataHolder;

    move-result-object v21

    .line 67
    .local v21, "stsdData":Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdDataHolder;
    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdDataHolder;->mediaFormat:Lcom/google/android/exoplayer/MediaFormat;

    if-nez v4, :cond_2

    const/4 v9, 0x0

    goto :goto_0

    .line 60
    .end local v12    # "mediaTimescale":J
    .end local v14    # "durationUs":J
    .end local v20    # "stbl":Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;
    .end local v21    # "stsdData":Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdDataHolder;
    :cond_1
    const-wide/32 v4, 0xf4240

    invoke-static/range {v2 .. v7}, Lcom/google/android/exoplayer/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v14

    .restart local v14    # "durationUs":J
    goto :goto_1

    .line 67
    .restart local v12    # "mediaTimescale":J
    .restart local v20    # "stbl":Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;
    .restart local v21    # "stsdData":Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdDataHolder;
    :cond_2
    new-instance v9, Lcom/google/android/exoplayer/extractor/mp4/Track;

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdDataHolder;->mediaFormat:Lcom/google/android/exoplayer/MediaFormat;

    move-object/from16 v16, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdDataHolder;->trackEncryptionBoxes:[Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;

    move-object/from16 v17, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdDataHolder;->nalUnitLengthFieldLength:I

    move/from16 v18, v0

    invoke-direct/range {v9 .. v18}, Lcom/google/android/exoplayer/extractor/mp4/Track;-><init>(IIJJLcom/google/android/exoplayer/MediaFormat;[Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;I)V

    goto :goto_0
.end method

.method private static parseVideoSampleEntry(Lcom/google/android/exoplayer/util/ParsableByteArray;IIJLcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdDataHolder;I)V
    .locals 17
    .param p0, "parent"    # Lcom/google/android/exoplayer/util/ParsableByteArray;
    .param p1, "position"    # I
    .param p2, "size"    # I
    .param p3, "durationUs"    # J
    .param p5, "out"    # Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdDataHolder;
    .param p6, "entryIndex"    # I

    .prologue
    .line 358
    add-int/lit8 v3, p1, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 360
    const/16 v3, 0x18

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 361
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v6

    .line 362
    .local v6, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v7

    .line 363
    .local v7, "height":I
    const/high16 v8, 0x3f800000    # 1.0f

    .line 364
    .local v8, "pixelWidthHeightRatio":F
    const/16 v3, 0x32

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 366
    const/4 v9, 0x0

    .line 367
    .local v9, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v13

    .line 368
    .local v13, "childPosition":I
    const/4 v2, 0x0

    .line 369
    .local v2, "mimeType":Ljava/lang/String;
    :goto_0
    sub-int v3, v13, p1

    move/from16 v0, p2

    if-ge v3, v0, :cond_0

    .line 370
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 371
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v14

    .line 372
    .local v14, "childStartPosition":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v11

    .line 373
    .local v11, "childAtomSize":I
    if-nez v11, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v3

    sub-int v3, v3, p1

    move/from16 v0, p2

    if-ne v3, v0, :cond_1

    .line 410
    .end local v11    # "childAtomSize":I
    .end local v14    # "childStartPosition":I
    :cond_0
    if-nez v2, :cond_d

    .line 416
    :goto_1
    return-void

    .line 377
    .restart local v11    # "childAtomSize":I
    .restart local v14    # "childStartPosition":I
    :cond_1
    if-lez v11, :cond_3

    const/4 v3, 0x1

    :goto_2
    const-string v4, "childAtomSize should be positive"

    invoke-static {v3, v4}, Lcom/google/android/exoplayer/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 378
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v12

    .line 379
    .local v12, "childAtomType":I
    sget v3, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_avcC:I

    if-ne v12, v3, :cond_5

    .line 380
    if-nez v2, :cond_4

    const/4 v3, 0x1

    :goto_3
    invoke-static {v3}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 381
    const-string v2, "video/avc"

    .line 382
    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->parseAvcCFromParent(Lcom/google/android/exoplayer/util/ParsableByteArray;I)Landroid/util/Pair;

    move-result-object v10

    .line 383
    .local v10, "avcCData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/List<[B>;Ljava/lang/Integer;>;"
    iget-object v9, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    .end local v9    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    check-cast v9, Ljava/util/List;

    .line 384
    .restart local v9    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    iget-object v3, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object/from16 v0, p5

    iput v3, v0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdDataHolder;->nalUnitLengthFieldLength:I

    .line 406
    .end local v10    # "avcCData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/List<[B>;Ljava/lang/Integer;>;"
    :cond_2
    :goto_4
    add-int/2addr v13, v11

    .line 407
    goto :goto_0

    .line 377
    .end local v12    # "childAtomType":I
    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    .line 380
    .restart local v12    # "childAtomType":I
    :cond_4
    const/4 v3, 0x0

    goto :goto_3

    .line 385
    :cond_5
    sget v3, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_hvcC:I

    if-ne v12, v3, :cond_7

    .line 386
    if-nez v2, :cond_6

    const/4 v3, 0x1

    :goto_5
    invoke-static {v3}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 387
    const-string v2, "video/hevc"

    .line 388
    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->parseHvcCFromParent(Lcom/google/android/exoplayer/util/ParsableByteArray;I)Landroid/util/Pair;

    move-result-object v15

    .line 389
    .local v15, "hvcCData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/List<[B>;Ljava/lang/Integer;>;"
    iget-object v9, v15, Landroid/util/Pair;->first:Ljava/lang/Object;

    .end local v9    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    check-cast v9, Ljava/util/List;

    .line 390
    .restart local v9    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    iget-object v3, v15, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object/from16 v0, p5

    iput v3, v0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdDataHolder;->nalUnitLengthFieldLength:I

    goto :goto_4

    .line 386
    .end local v15    # "hvcCData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/List<[B>;Ljava/lang/Integer;>;"
    :cond_6
    const/4 v3, 0x0

    goto :goto_5

    .line 391
    :cond_7
    sget v3, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_d263:I

    if-ne v12, v3, :cond_9

    .line 392
    if-nez v2, :cond_8

    const/4 v3, 0x1

    :goto_6
    invoke-static {v3}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 393
    const-string v2, "video/3gpp"

    goto :goto_4

    .line 392
    :cond_8
    const/4 v3, 0x0

    goto :goto_6

    .line 394
    :cond_9
    sget v3, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_esds:I

    if-ne v12, v3, :cond_b

    .line 395
    if-nez v2, :cond_a

    const/4 v3, 0x1

    :goto_7
    invoke-static {v3}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 396
    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->parseEsdsFromParent(Lcom/google/android/exoplayer/util/ParsableByteArray;I)Landroid/util/Pair;

    move-result-object v16

    .line 398
    .local v16, "mimeTypeAndInitializationData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;[B>;"
    move-object/from16 v0, v16

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .end local v2    # "mimeType":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 399
    .restart local v2    # "mimeType":Ljava/lang/String;
    move-object/from16 v0, v16

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    .line 400
    goto :goto_4

    .line 395
    .end local v16    # "mimeTypeAndInitializationData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;[B>;"
    :cond_a
    const/4 v3, 0x0

    goto :goto_7

    .line 400
    :cond_b
    sget v3, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_sinf:I

    if-ne v12, v3, :cond_c

    .line 401
    move-object/from16 v0, p5

    iget-object v3, v0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdDataHolder;->trackEncryptionBoxes:[Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;

    move-object/from16 v0, p0

    invoke-static {v0, v14, v11}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->parseSinfFromParent(Lcom/google/android/exoplayer/util/ParsableByteArray;II)Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;

    move-result-object v4

    aput-object v4, v3, p6

    goto :goto_4

    .line 403
    :cond_c
    sget v3, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_pasp:I

    if-ne v12, v3, :cond_2

    .line 404
    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->parsePaspFromParent(Lcom/google/android/exoplayer/util/ParsableByteArray;I)F

    move-result v8

    goto :goto_4

    .line 414
    .end local v11    # "childAtomSize":I
    .end local v12    # "childAtomType":I
    .end local v14    # "childStartPosition":I
    :cond_d
    const/4 v3, -0x1

    move-wide/from16 v4, p3

    invoke-static/range {v2 .. v9}, Lcom/google/android/exoplayer/MediaFormat;->createVideoFormat(Ljava/lang/String;IJIIFLjava/util/List;)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v3

    move-object/from16 v0, p5

    iput-object v3, v0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdDataHolder;->mediaFormat:Lcom/google/android/exoplayer/MediaFormat;

    goto/16 :goto_1
.end method

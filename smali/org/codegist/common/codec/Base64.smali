.class public final Lorg/codegist/common/codec/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field private static final CA:[C

.field private static final IA:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 74
    const-string v2, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    sput-object v2, Lorg/codegist/common/codec/Base64;->CA:[C

    .line 75
    const/16 v2, 0x100

    new-array v2, v2, [I

    sput-object v2, Lorg/codegist/common/codec/Base64;->IA:[I

    .line 82
    sget-object v2, Lorg/codegist/common/codec/Base64;->IA:[I

    const/4 v3, -0x1

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([II)V

    .line 83
    const/4 v0, 0x0

    .local v0, "i":I
    sget-object v2, Lorg/codegist/common/codec/Base64;->CA:[C

    array-length v1, v2

    .local v1, "iS":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 84
    sget-object v2, Lorg/codegist/common/codec/Base64;->IA:[I

    sget-object v3, Lorg/codegist/common/codec/Base64;->CA:[C

    aget-char v3, v3, v0

    aput v0, v2, v3

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 85
    :cond_0
    sget-object v2, Lorg/codegist/common/codec/Base64;->IA:[I

    const/16 v3, 0x3d

    const/4 v4, 0x0

    aput v4, v2, v3

    .line 86
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 14
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x0

    .line 489
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    .line 490
    .local v10, "sLen":I
    :goto_0
    if-nez v10, :cond_2

    .line 491
    new-array v3, v12, [B

    .line 532
    :cond_0
    :goto_1
    return-object v3

    .end local v10    # "sLen":I
    :cond_1
    move v10, v12

    .line 489
    goto :goto_0

    .line 495
    .restart local v10    # "sLen":I
    :cond_2
    const/4 v11, 0x0

    .line 496
    .local v11, "sepCnt":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, v10, :cond_4

    .line 497
    sget-object v12, Lorg/codegist/common/codec/Base64;->IA:[I

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v13

    aget v12, v12, v13

    if-gez v12, :cond_3

    .line 498
    add-int/lit8 v11, v11, 0x1

    .line 496
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 501
    :cond_4
    sub-int v12, v10, v11

    rem-int/lit8 v12, v12, 0x4

    if-eqz v12, :cond_5

    .line 502
    const/4 v3, 0x0

    goto :goto_1

    .line 505
    :cond_5
    const/4 v7, 0x0

    .line 506
    .local v7, "pad":I
    move v4, v10

    :cond_6
    :goto_3
    const/4 v12, 0x1

    if-le v4, v12, :cond_7

    sget-object v12, Lorg/codegist/common/codec/Base64;->IA:[I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v13

    aget v12, v12, v13

    if-gtz v12, :cond_7

    .line 507
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0x3d

    if-ne v12, v13, :cond_6

    .line 508
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 510
    :cond_7
    sub-int v12, v10, v11

    mul-int/lit8 v12, v12, 0x6

    shr-int/lit8 v12, v12, 0x3

    sub-int v6, v12, v7

    .line 512
    .local v6, "len":I
    new-array v3, v6, [B

    .line 514
    .local v3, "dArr":[B
    const/4 v8, 0x0

    .local v8, "s":I
    const/4 v1, 0x0

    .local v1, "d":I
    move v2, v1

    .end local v1    # "d":I
    .local v2, "d":I
    :goto_4
    if-ge v2, v6, :cond_0

    .line 516
    const/4 v4, 0x0

    .line 517
    const/4 v5, 0x0

    .local v5, "j":I
    move v9, v8

    .end local v8    # "s":I
    .local v9, "s":I
    :goto_5
    const/4 v12, 0x4

    if-ge v5, v12, :cond_9

    .line 518
    sget-object v12, Lorg/codegist/common/codec/Base64;->IA:[I

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "s":I
    .restart local v8    # "s":I
    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v13

    aget v0, v12, v13

    .line 519
    .local v0, "c":I
    if-ltz v0, :cond_8

    .line 520
    mul-int/lit8 v12, v5, 0x6

    rsub-int/lit8 v12, v12, 0x12

    shl-int v12, v0, v12

    or-int/2addr v4, v12

    .line 517
    :goto_6
    add-int/lit8 v5, v5, 0x1

    move v9, v8

    .end local v8    # "s":I
    .restart local v9    # "s":I
    goto :goto_5

    .line 522
    .end local v9    # "s":I
    .restart local v8    # "s":I
    :cond_8
    add-int/lit8 v5, v5, -0x1

    goto :goto_6

    .line 525
    .end local v0    # "c":I
    .end local v8    # "s":I
    .restart local v9    # "s":I
    :cond_9
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "d":I
    .restart local v1    # "d":I
    shr-int/lit8 v12, v4, 0x10

    int-to-byte v12, v12

    aput-byte v12, v3, v2

    .line 526
    if-ge v1, v6, :cond_a

    .line 527
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "d":I
    .restart local v2    # "d":I
    shr-int/lit8 v12, v4, 0x8

    int-to-byte v12, v12

    aput-byte v12, v3, v1

    .line 528
    if-ge v2, v6, :cond_b

    .line 529
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "d":I
    .restart local v1    # "d":I
    int-to-byte v12, v4

    aput-byte v12, v3, v2

    :cond_a
    :goto_7
    move v2, v1

    .end local v1    # "d":I
    .restart local v2    # "d":I
    move v8, v9

    .line 531
    .end local v9    # "s":I
    .restart local v8    # "s":I
    goto :goto_4

    .end local v8    # "s":I
    .restart local v9    # "s":I
    :cond_b
    move v1, v2

    .end local v2    # "d":I
    .restart local v1    # "d":I
    goto :goto_7
.end method

.method public static decode([B)[B
    .locals 14
    .param p0, "sArr"    # [B

    .prologue
    .line 343
    array-length v10, p0

    .line 347
    .local v10, "sLen":I
    const/4 v11, 0x0

    .line 348
    .local v11, "sepCnt":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v10, :cond_1

    .line 349
    sget-object v12, Lorg/codegist/common/codec/Base64;->IA:[I

    aget-byte v13, p0, v4

    and-int/lit16 v13, v13, 0xff

    aget v12, v12, v13

    if-gez v12, :cond_0

    .line 350
    add-int/lit8 v11, v11, 0x1

    .line 348
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 353
    :cond_1
    sub-int v12, v10, v11

    rem-int/lit8 v12, v12, 0x4

    if-eqz v12, :cond_3

    .line 354
    const/4 v3, 0x0

    .line 385
    :cond_2
    return-object v3

    .line 356
    :cond_3
    const/4 v7, 0x0

    .line 357
    .local v7, "pad":I
    move v4, v10

    :cond_4
    :goto_1
    const/4 v12, 0x1

    if-le v4, v12, :cond_5

    sget-object v12, Lorg/codegist/common/codec/Base64;->IA:[I

    add-int/lit8 v4, v4, -0x1

    aget-byte v13, p0, v4

    and-int/lit16 v13, v13, 0xff

    aget v12, v12, v13

    if-gtz v12, :cond_5

    .line 358
    aget-byte v12, p0, v4

    const/16 v13, 0x3d

    if-ne v12, v13, :cond_4

    .line 359
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 361
    :cond_5
    sub-int v12, v10, v11

    mul-int/lit8 v12, v12, 0x6

    shr-int/lit8 v12, v12, 0x3

    sub-int v6, v12, v7

    .line 363
    .local v6, "len":I
    new-array v3, v6, [B

    .line 365
    .local v3, "dArr":[B
    const/4 v8, 0x0

    .local v8, "s":I
    const/4 v1, 0x0

    .local v1, "d":I
    move v2, v1

    .end local v1    # "d":I
    .local v2, "d":I
    :goto_2
    if-ge v2, v6, :cond_2

    .line 367
    const/4 v4, 0x0

    .line 368
    const/4 v5, 0x0

    .local v5, "j":I
    move v9, v8

    .end local v8    # "s":I
    .local v9, "s":I
    :goto_3
    const/4 v12, 0x4

    if-ge v5, v12, :cond_7

    .line 369
    sget-object v12, Lorg/codegist/common/codec/Base64;->IA:[I

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "s":I
    .restart local v8    # "s":I
    aget-byte v13, p0, v9

    and-int/lit16 v13, v13, 0xff

    aget v0, v12, v13

    .line 370
    .local v0, "c":I
    if-ltz v0, :cond_6

    .line 371
    mul-int/lit8 v12, v5, 0x6

    rsub-int/lit8 v12, v12, 0x12

    shl-int v12, v0, v12

    or-int/2addr v4, v12

    .line 368
    :goto_4
    add-int/lit8 v5, v5, 0x1

    move v9, v8

    .end local v8    # "s":I
    .restart local v9    # "s":I
    goto :goto_3

    .line 373
    .end local v9    # "s":I
    .restart local v8    # "s":I
    :cond_6
    add-int/lit8 v5, v5, -0x1

    goto :goto_4

    .line 377
    .end local v0    # "c":I
    .end local v8    # "s":I
    .restart local v9    # "s":I
    :cond_7
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "d":I
    .restart local v1    # "d":I
    shr-int/lit8 v12, v4, 0x10

    int-to-byte v12, v12

    aput-byte v12, v3, v2

    .line 378
    if-ge v1, v6, :cond_8

    .line 379
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "d":I
    .restart local v2    # "d":I
    shr-int/lit8 v12, v4, 0x8

    int-to-byte v12, v12

    aput-byte v12, v3, v1

    .line 380
    if-ge v2, v6, :cond_9

    .line 381
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "d":I
    .restart local v1    # "d":I
    int-to-byte v12, v4

    aput-byte v12, v3, v2

    :cond_8
    :goto_5
    move v2, v1

    .end local v1    # "d":I
    .restart local v2    # "d":I
    move v8, v9

    .line 383
    .end local v9    # "s":I
    .restart local v8    # "s":I
    goto :goto_2

    .end local v8    # "s":I
    .restart local v9    # "s":I
    :cond_9
    move v1, v2

    .end local v2    # "d":I
    .restart local v1    # "d":I
    goto :goto_5
.end method

.method public static decode([C)[B
    .locals 14
    .param p0, "sArr"    # [C

    .prologue
    const/4 v12, 0x0

    .line 160
    if-eqz p0, :cond_1

    array-length v10, p0

    .line 161
    .local v10, "sLen":I
    :goto_0
    if-nez v10, :cond_2

    .line 162
    new-array v3, v12, [B

    .line 202
    :cond_0
    :goto_1
    return-object v3

    .end local v10    # "sLen":I
    :cond_1
    move v10, v12

    .line 160
    goto :goto_0

    .line 166
    .restart local v10    # "sLen":I
    :cond_2
    const/4 v11, 0x0

    .line 167
    .local v11, "sepCnt":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, v10, :cond_4

    .line 168
    sget-object v12, Lorg/codegist/common/codec/Base64;->IA:[I

    aget-char v13, p0, v4

    aget v12, v12, v13

    if-gez v12, :cond_3

    .line 169
    add-int/lit8 v11, v11, 0x1

    .line 167
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 172
    :cond_4
    sub-int v12, v10, v11

    rem-int/lit8 v12, v12, 0x4

    if-eqz v12, :cond_5

    .line 173
    const/4 v3, 0x0

    goto :goto_1

    .line 175
    :cond_5
    const/4 v7, 0x0

    .line 176
    .local v7, "pad":I
    move v4, v10

    :cond_6
    :goto_3
    const/4 v12, 0x1

    if-le v4, v12, :cond_7

    sget-object v12, Lorg/codegist/common/codec/Base64;->IA:[I

    add-int/lit8 v4, v4, -0x1

    aget-char v13, p0, v4

    aget v12, v12, v13

    if-gtz v12, :cond_7

    .line 177
    aget-char v12, p0, v4

    const/16 v13, 0x3d

    if-ne v12, v13, :cond_6

    .line 178
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 180
    :cond_7
    sub-int v12, v10, v11

    mul-int/lit8 v12, v12, 0x6

    shr-int/lit8 v12, v12, 0x3

    sub-int v6, v12, v7

    .line 182
    .local v6, "len":I
    new-array v3, v6, [B

    .line 184
    .local v3, "dArr":[B
    const/4 v8, 0x0

    .local v8, "s":I
    const/4 v1, 0x0

    .local v1, "d":I
    move v2, v1

    .end local v1    # "d":I
    .local v2, "d":I
    :goto_4
    if-ge v2, v6, :cond_0

    .line 186
    const/4 v4, 0x0

    .line 187
    const/4 v5, 0x0

    .local v5, "j":I
    move v9, v8

    .end local v8    # "s":I
    .local v9, "s":I
    :goto_5
    const/4 v12, 0x4

    if-ge v5, v12, :cond_9

    .line 188
    sget-object v12, Lorg/codegist/common/codec/Base64;->IA:[I

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "s":I
    .restart local v8    # "s":I
    aget-char v13, p0, v9

    aget v0, v12, v13

    .line 189
    .local v0, "c":I
    if-ltz v0, :cond_8

    .line 190
    mul-int/lit8 v12, v5, 0x6

    rsub-int/lit8 v12, v12, 0x12

    shl-int v12, v0, v12

    or-int/2addr v4, v12

    .line 187
    :goto_6
    add-int/lit8 v5, v5, 0x1

    move v9, v8

    .end local v8    # "s":I
    .restart local v9    # "s":I
    goto :goto_5

    .line 192
    .end local v9    # "s":I
    .restart local v8    # "s":I
    :cond_8
    add-int/lit8 v5, v5, -0x1

    goto :goto_6

    .line 195
    .end local v0    # "c":I
    .end local v8    # "s":I
    .restart local v9    # "s":I
    :cond_9
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "d":I
    .restart local v1    # "d":I
    shr-int/lit8 v12, v4, 0x10

    int-to-byte v12, v12

    aput-byte v12, v3, v2

    .line 196
    if-ge v1, v6, :cond_a

    .line 197
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "d":I
    .restart local v2    # "d":I
    shr-int/lit8 v12, v4, 0x8

    int-to-byte v12, v12

    aput-byte v12, v3, v1

    .line 198
    if-ge v2, v6, :cond_b

    .line 199
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "d":I
    .restart local v1    # "d":I
    int-to-byte v12, v4

    aput-byte v12, v3, v2

    :cond_a
    :goto_7
    move v2, v1

    .end local v1    # "d":I
    .restart local v2    # "d":I
    move v8, v9

    .line 201
    .end local v9    # "s":I
    .restart local v8    # "s":I
    goto :goto_4

    .end local v8    # "s":I
    .restart local v9    # "s":I
    :cond_b
    move v1, v2

    .end local v2    # "d":I
    .restart local v1    # "d":I
    goto :goto_7
.end method

.method public static decodeFast(Ljava/lang/String;)[B
    .locals 21
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 548
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v16

    .line 549
    .local v16, "sLen":I
    if-nez v16, :cond_0

    .line 550
    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v6, v0, [B

    .line 598
    :goto_0
    return-object v6

    .line 552
    :cond_0
    const/4 v14, 0x0

    .local v14, "sIx":I
    add-int/lit8 v7, v16, -0x1

    .line 555
    .local v7, "eIx":I
    :goto_1
    if-ge v14, v7, :cond_1

    sget-object v18, Lorg/codegist/common/codec/Base64;->IA:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v19

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    aget v18, v18, v19

    if-gez v18, :cond_1

    .line 556
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 559
    :cond_1
    :goto_2
    if-lez v7, :cond_2

    sget-object v18, Lorg/codegist/common/codec/Base64;->IA:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v19

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    aget v18, v18, v19

    if-gez v18, :cond_2

    .line 560
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 563
    :cond_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v18

    const/16 v19, 0x3d

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    add-int/lit8 v18, v7, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v18

    const/16 v19, 0x3d

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    const/4 v12, 0x2

    .line 564
    .local v12, "pad":I
    :goto_3
    sub-int v18, v7, v14

    add-int/lit8 v2, v18, 0x1

    .line 565
    .local v2, "cCnt":I
    const/16 v18, 0x4c

    move/from16 v0, v16

    move/from16 v1, v18

    if-le v0, v1, :cond_6

    const/16 v18, 0x4c

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v18

    const/16 v19, 0xd

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    div-int/lit8 v18, v2, 0x4e

    :goto_4
    shl-int/lit8 v17, v18, 0x1

    .line 567
    .local v17, "sepCnt":I
    :goto_5
    sub-int v18, v2, v17

    mul-int/lit8 v18, v18, 0x6

    shr-int/lit8 v18, v18, 0x3

    sub-int v11, v18, v12

    .line 568
    .local v11, "len":I
    new-array v6, v11, [B

    .line 571
    .local v6, "dArr":[B
    const/4 v4, 0x0

    .line 572
    .local v4, "d":I
    const/4 v3, 0x0

    .local v3, "cc":I
    div-int/lit8 v18, v11, 0x3

    mul-int/lit8 v8, v18, 0x3

    .local v8, "eLen":I
    move v5, v4

    .end local v4    # "d":I
    .local v5, "d":I
    move v15, v14

    .end local v14    # "sIx":I
    .local v15, "sIx":I
    :goto_6
    if-ge v5, v8, :cond_7

    .line 574
    sget-object v18, Lorg/codegist/common/codec/Base64;->IA:[I

    add-int/lit8 v14, v15, 0x1

    .end local v15    # "sIx":I
    .restart local v14    # "sIx":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v19

    aget v18, v18, v19

    shl-int/lit8 v18, v18, 0x12

    sget-object v19, Lorg/codegist/common/codec/Base64;->IA:[I

    add-int/lit8 v15, v14, 0x1

    .end local v14    # "sIx":I
    .restart local v15    # "sIx":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v20

    aget v19, v19, v20

    shl-int/lit8 v19, v19, 0xc

    or-int v18, v18, v19

    sget-object v19, Lorg/codegist/common/codec/Base64;->IA:[I

    add-int/lit8 v14, v15, 0x1

    .end local v15    # "sIx":I
    .restart local v14    # "sIx":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v20

    aget v19, v19, v20

    shl-int/lit8 v19, v19, 0x6

    or-int v18, v18, v19

    sget-object v19, Lorg/codegist/common/codec/Base64;->IA:[I

    add-int/lit8 v15, v14, 0x1

    .end local v14    # "sIx":I
    .restart local v15    # "sIx":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v20

    aget v19, v19, v20

    or-int v9, v18, v19

    .line 577
    .local v9, "i":I
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "d":I
    .restart local v4    # "d":I
    shr-int/lit8 v18, v9, 0x10

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v6, v5

    .line 578
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "d":I
    .restart local v5    # "d":I
    shr-int/lit8 v18, v9, 0x8

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v6, v4

    .line 579
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "d":I
    .restart local v4    # "d":I
    int-to-byte v0, v9

    move/from16 v18, v0

    aput-byte v18, v6, v5

    .line 582
    if-lez v17, :cond_a

    add-int/lit8 v3, v3, 0x1

    const/16 v18, 0x13

    move/from16 v0, v18

    if-ne v3, v0, :cond_a

    .line 583
    add-int/lit8 v14, v15, 0x2

    .line 584
    .end local v15    # "sIx":I
    .restart local v14    # "sIx":I
    const/4 v3, 0x0

    :goto_7
    move v5, v4

    .end local v4    # "d":I
    .restart local v5    # "d":I
    move v15, v14

    .line 586
    .end local v14    # "sIx":I
    .restart local v15    # "sIx":I
    goto :goto_6

    .line 563
    .end local v2    # "cCnt":I
    .end local v3    # "cc":I
    .end local v5    # "d":I
    .end local v6    # "dArr":[B
    .end local v8    # "eLen":I
    .end local v9    # "i":I
    .end local v11    # "len":I
    .end local v12    # "pad":I
    .end local v15    # "sIx":I
    .end local v17    # "sepCnt":I
    .restart local v14    # "sIx":I
    :cond_3
    const/4 v12, 0x1

    goto/16 :goto_3

    :cond_4
    const/4 v12, 0x0

    goto/16 :goto_3

    .line 565
    .restart local v2    # "cCnt":I
    .restart local v12    # "pad":I
    :cond_5
    const/16 v18, 0x0

    goto/16 :goto_4

    :cond_6
    const/16 v17, 0x0

    goto/16 :goto_5

    .line 588
    .end local v14    # "sIx":I
    .restart local v3    # "cc":I
    .restart local v5    # "d":I
    .restart local v6    # "dArr":[B
    .restart local v8    # "eLen":I
    .restart local v11    # "len":I
    .restart local v15    # "sIx":I
    .restart local v17    # "sepCnt":I
    :cond_7
    if-ge v5, v11, :cond_9

    .line 590
    const/4 v9, 0x0

    .line 591
    .restart local v9    # "i":I
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_8
    sub-int v18, v7, v12

    move/from16 v0, v18

    if-gt v15, v0, :cond_8

    .line 592
    sget-object v18, Lorg/codegist/common/codec/Base64;->IA:[I

    add-int/lit8 v14, v15, 0x1

    .end local v15    # "sIx":I
    .restart local v14    # "sIx":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v19

    aget v18, v18, v19

    mul-int/lit8 v19, v10, 0x6

    rsub-int/lit8 v19, v19, 0x12

    shl-int v18, v18, v19

    or-int v9, v9, v18

    .line 591
    add-int/lit8 v10, v10, 0x1

    move v15, v14

    .end local v14    # "sIx":I
    .restart local v15    # "sIx":I
    goto :goto_8

    .line 594
    :cond_8
    const/16 v13, 0x10

    .local v13, "r":I
    :goto_9
    if-ge v5, v11, :cond_9

    .line 595
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "d":I
    .restart local v4    # "d":I
    shr-int v18, v9, v13

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v6, v5

    .line 594
    add-int/lit8 v13, v13, -0x8

    move v5, v4

    .end local v4    # "d":I
    .restart local v5    # "d":I
    goto :goto_9

    .end local v9    # "i":I
    .end local v10    # "j":I
    .end local v13    # "r":I
    :cond_9
    move v4, v5

    .end local v5    # "d":I
    .restart local v4    # "d":I
    move v14, v15

    .end local v15    # "sIx":I
    .restart local v14    # "sIx":I
    goto/16 :goto_0

    .end local v14    # "sIx":I
    .restart local v9    # "i":I
    .restart local v15    # "sIx":I
    :cond_a
    move v14, v15

    .end local v15    # "sIx":I
    .restart local v14    # "sIx":I
    goto :goto_7
.end method

.method public static decodeFast([B)[B
    .locals 21
    .param p0, "sArr"    # [B

    .prologue
    .line 402
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v16, v0

    .line 403
    .local v16, "sLen":I
    if-nez v16, :cond_0

    .line 404
    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v6, v0, [B

    .line 452
    :goto_0
    return-object v6

    .line 406
    :cond_0
    const/4 v14, 0x0

    .local v14, "sIx":I
    add-int/lit8 v7, v16, -0x1

    .line 409
    .local v7, "eIx":I
    :goto_1
    if-ge v14, v7, :cond_1

    sget-object v18, Lorg/codegist/common/codec/Base64;->IA:[I

    aget-byte v19, p0, v14

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    aget v18, v18, v19

    if-gez v18, :cond_1

    .line 410
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 413
    :cond_1
    :goto_2
    if-lez v7, :cond_2

    sget-object v18, Lorg/codegist/common/codec/Base64;->IA:[I

    aget-byte v19, p0, v7

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    aget v18, v18, v19

    if-gez v18, :cond_2

    .line 414
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 417
    :cond_2
    aget-byte v18, p0, v7

    const/16 v19, 0x3d

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    add-int/lit8 v18, v7, -0x1

    aget-byte v18, p0, v18

    const/16 v19, 0x3d

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    const/4 v12, 0x2

    .line 418
    .local v12, "pad":I
    :goto_3
    sub-int v18, v7, v14

    add-int/lit8 v2, v18, 0x1

    .line 419
    .local v2, "cCnt":I
    const/16 v18, 0x4c

    move/from16 v0, v16

    move/from16 v1, v18

    if-le v0, v1, :cond_6

    const/16 v18, 0x4c

    aget-byte v18, p0, v18

    const/16 v19, 0xd

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    div-int/lit8 v18, v2, 0x4e

    :goto_4
    shl-int/lit8 v17, v18, 0x1

    .line 421
    .local v17, "sepCnt":I
    :goto_5
    sub-int v18, v2, v17

    mul-int/lit8 v18, v18, 0x6

    shr-int/lit8 v18, v18, 0x3

    sub-int v11, v18, v12

    .line 422
    .local v11, "len":I
    new-array v6, v11, [B

    .line 425
    .local v6, "dArr":[B
    const/4 v4, 0x0

    .line 426
    .local v4, "d":I
    const/4 v3, 0x0

    .local v3, "cc":I
    div-int/lit8 v18, v11, 0x3

    mul-int/lit8 v8, v18, 0x3

    .local v8, "eLen":I
    move v5, v4

    .end local v4    # "d":I
    .local v5, "d":I
    move v15, v14

    .end local v14    # "sIx":I
    .local v15, "sIx":I
    :goto_6
    if-ge v5, v8, :cond_7

    .line 428
    sget-object v18, Lorg/codegist/common/codec/Base64;->IA:[I

    add-int/lit8 v14, v15, 0x1

    .end local v15    # "sIx":I
    .restart local v14    # "sIx":I
    aget-byte v19, p0, v15

    aget v18, v18, v19

    shl-int/lit8 v18, v18, 0x12

    sget-object v19, Lorg/codegist/common/codec/Base64;->IA:[I

    add-int/lit8 v15, v14, 0x1

    .end local v14    # "sIx":I
    .restart local v15    # "sIx":I
    aget-byte v20, p0, v14

    aget v19, v19, v20

    shl-int/lit8 v19, v19, 0xc

    or-int v18, v18, v19

    sget-object v19, Lorg/codegist/common/codec/Base64;->IA:[I

    add-int/lit8 v14, v15, 0x1

    .end local v15    # "sIx":I
    .restart local v14    # "sIx":I
    aget-byte v20, p0, v15

    aget v19, v19, v20

    shl-int/lit8 v19, v19, 0x6

    or-int v18, v18, v19

    sget-object v19, Lorg/codegist/common/codec/Base64;->IA:[I

    add-int/lit8 v15, v14, 0x1

    .end local v14    # "sIx":I
    .restart local v15    # "sIx":I
    aget-byte v20, p0, v14

    aget v19, v19, v20

    or-int v9, v18, v19

    .line 431
    .local v9, "i":I
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "d":I
    .restart local v4    # "d":I
    shr-int/lit8 v18, v9, 0x10

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v6, v5

    .line 432
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "d":I
    .restart local v5    # "d":I
    shr-int/lit8 v18, v9, 0x8

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v6, v4

    .line 433
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "d":I
    .restart local v4    # "d":I
    int-to-byte v0, v9

    move/from16 v18, v0

    aput-byte v18, v6, v5

    .line 436
    if-lez v17, :cond_a

    add-int/lit8 v3, v3, 0x1

    const/16 v18, 0x13

    move/from16 v0, v18

    if-ne v3, v0, :cond_a

    .line 437
    add-int/lit8 v14, v15, 0x2

    .line 438
    .end local v15    # "sIx":I
    .restart local v14    # "sIx":I
    const/4 v3, 0x0

    :goto_7
    move v5, v4

    .end local v4    # "d":I
    .restart local v5    # "d":I
    move v15, v14

    .line 440
    .end local v14    # "sIx":I
    .restart local v15    # "sIx":I
    goto :goto_6

    .line 417
    .end local v2    # "cCnt":I
    .end local v3    # "cc":I
    .end local v5    # "d":I
    .end local v6    # "dArr":[B
    .end local v8    # "eLen":I
    .end local v9    # "i":I
    .end local v11    # "len":I
    .end local v12    # "pad":I
    .end local v15    # "sIx":I
    .end local v17    # "sepCnt":I
    .restart local v14    # "sIx":I
    :cond_3
    const/4 v12, 0x1

    goto/16 :goto_3

    :cond_4
    const/4 v12, 0x0

    goto/16 :goto_3

    .line 419
    .restart local v2    # "cCnt":I
    .restart local v12    # "pad":I
    :cond_5
    const/16 v18, 0x0

    goto :goto_4

    :cond_6
    const/16 v17, 0x0

    goto :goto_5

    .line 442
    .end local v14    # "sIx":I
    .restart local v3    # "cc":I
    .restart local v5    # "d":I
    .restart local v6    # "dArr":[B
    .restart local v8    # "eLen":I
    .restart local v11    # "len":I
    .restart local v15    # "sIx":I
    .restart local v17    # "sepCnt":I
    :cond_7
    if-ge v5, v11, :cond_9

    .line 444
    const/4 v9, 0x0

    .line 445
    .restart local v9    # "i":I
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_8
    sub-int v18, v7, v12

    move/from16 v0, v18

    if-gt v15, v0, :cond_8

    .line 446
    sget-object v18, Lorg/codegist/common/codec/Base64;->IA:[I

    add-int/lit8 v14, v15, 0x1

    .end local v15    # "sIx":I
    .restart local v14    # "sIx":I
    aget-byte v19, p0, v15

    aget v18, v18, v19

    mul-int/lit8 v19, v10, 0x6

    rsub-int/lit8 v19, v19, 0x12

    shl-int v18, v18, v19

    or-int v9, v9, v18

    .line 445
    add-int/lit8 v10, v10, 0x1

    move v15, v14

    .end local v14    # "sIx":I
    .restart local v15    # "sIx":I
    goto :goto_8

    .line 448
    :cond_8
    const/16 v13, 0x10

    .local v13, "r":I
    :goto_9
    if-ge v5, v11, :cond_9

    .line 449
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "d":I
    .restart local v4    # "d":I
    shr-int v18, v9, v13

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v6, v5

    .line 448
    add-int/lit8 v13, v13, -0x8

    move v5, v4

    .end local v4    # "d":I
    .restart local v5    # "d":I
    goto :goto_9

    .end local v9    # "i":I
    .end local v10    # "j":I
    .end local v13    # "r":I
    :cond_9
    move v4, v5

    .end local v5    # "d":I
    .restart local v4    # "d":I
    move v14, v15

    .end local v15    # "sIx":I
    .restart local v14    # "sIx":I
    goto/16 :goto_0

    .end local v14    # "sIx":I
    .restart local v9    # "i":I
    .restart local v15    # "sIx":I
    :cond_a
    move v14, v15

    .end local v15    # "sIx":I
    .restart local v14    # "sIx":I
    goto :goto_7
.end method

.method public static decodeFast([C)[B
    .locals 21
    .param p0, "sArr"    # [C

    .prologue
    .line 218
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v16, v0

    .line 219
    .local v16, "sLen":I
    if-nez v16, :cond_0

    .line 220
    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v6, v0, [B

    .line 268
    :goto_0
    return-object v6

    .line 222
    :cond_0
    const/4 v14, 0x0

    .local v14, "sIx":I
    add-int/lit8 v7, v16, -0x1

    .line 225
    .local v7, "eIx":I
    :goto_1
    if-ge v14, v7, :cond_1

    sget-object v18, Lorg/codegist/common/codec/Base64;->IA:[I

    aget-char v19, p0, v14

    aget v18, v18, v19

    if-gez v18, :cond_1

    .line 226
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 229
    :cond_1
    :goto_2
    if-lez v7, :cond_2

    sget-object v18, Lorg/codegist/common/codec/Base64;->IA:[I

    aget-char v19, p0, v7

    aget v18, v18, v19

    if-gez v18, :cond_2

    .line 230
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 233
    :cond_2
    aget-char v18, p0, v7

    const/16 v19, 0x3d

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    add-int/lit8 v18, v7, -0x1

    aget-char v18, p0, v18

    const/16 v19, 0x3d

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    const/4 v12, 0x2

    .line 234
    .local v12, "pad":I
    :goto_3
    sub-int v18, v7, v14

    add-int/lit8 v2, v18, 0x1

    .line 235
    .local v2, "cCnt":I
    const/16 v18, 0x4c

    move/from16 v0, v16

    move/from16 v1, v18

    if-le v0, v1, :cond_6

    const/16 v18, 0x4c

    aget-char v18, p0, v18

    const/16 v19, 0xd

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    div-int/lit8 v18, v2, 0x4e

    :goto_4
    shl-int/lit8 v17, v18, 0x1

    .line 237
    .local v17, "sepCnt":I
    :goto_5
    sub-int v18, v2, v17

    mul-int/lit8 v18, v18, 0x6

    shr-int/lit8 v18, v18, 0x3

    sub-int v11, v18, v12

    .line 238
    .local v11, "len":I
    new-array v6, v11, [B

    .line 241
    .local v6, "dArr":[B
    const/4 v4, 0x0

    .line 242
    .local v4, "d":I
    const/4 v3, 0x0

    .local v3, "cc":I
    div-int/lit8 v18, v11, 0x3

    mul-int/lit8 v8, v18, 0x3

    .local v8, "eLen":I
    move v5, v4

    .end local v4    # "d":I
    .local v5, "d":I
    move v15, v14

    .end local v14    # "sIx":I
    .local v15, "sIx":I
    :goto_6
    if-ge v5, v8, :cond_7

    .line 244
    sget-object v18, Lorg/codegist/common/codec/Base64;->IA:[I

    add-int/lit8 v14, v15, 0x1

    .end local v15    # "sIx":I
    .restart local v14    # "sIx":I
    aget-char v19, p0, v15

    aget v18, v18, v19

    shl-int/lit8 v18, v18, 0x12

    sget-object v19, Lorg/codegist/common/codec/Base64;->IA:[I

    add-int/lit8 v15, v14, 0x1

    .end local v14    # "sIx":I
    .restart local v15    # "sIx":I
    aget-char v20, p0, v14

    aget v19, v19, v20

    shl-int/lit8 v19, v19, 0xc

    or-int v18, v18, v19

    sget-object v19, Lorg/codegist/common/codec/Base64;->IA:[I

    add-int/lit8 v14, v15, 0x1

    .end local v15    # "sIx":I
    .restart local v14    # "sIx":I
    aget-char v20, p0, v15

    aget v19, v19, v20

    shl-int/lit8 v19, v19, 0x6

    or-int v18, v18, v19

    sget-object v19, Lorg/codegist/common/codec/Base64;->IA:[I

    add-int/lit8 v15, v14, 0x1

    .end local v14    # "sIx":I
    .restart local v15    # "sIx":I
    aget-char v20, p0, v14

    aget v19, v19, v20

    or-int v9, v18, v19

    .line 247
    .local v9, "i":I
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "d":I
    .restart local v4    # "d":I
    shr-int/lit8 v18, v9, 0x10

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v6, v5

    .line 248
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "d":I
    .restart local v5    # "d":I
    shr-int/lit8 v18, v9, 0x8

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v6, v4

    .line 249
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "d":I
    .restart local v4    # "d":I
    int-to-byte v0, v9

    move/from16 v18, v0

    aput-byte v18, v6, v5

    .line 252
    if-lez v17, :cond_a

    add-int/lit8 v3, v3, 0x1

    const/16 v18, 0x13

    move/from16 v0, v18

    if-ne v3, v0, :cond_a

    .line 253
    add-int/lit8 v14, v15, 0x2

    .line 254
    .end local v15    # "sIx":I
    .restart local v14    # "sIx":I
    const/4 v3, 0x0

    :goto_7
    move v5, v4

    .end local v4    # "d":I
    .restart local v5    # "d":I
    move v15, v14

    .line 256
    .end local v14    # "sIx":I
    .restart local v15    # "sIx":I
    goto :goto_6

    .line 233
    .end local v2    # "cCnt":I
    .end local v3    # "cc":I
    .end local v5    # "d":I
    .end local v6    # "dArr":[B
    .end local v8    # "eLen":I
    .end local v9    # "i":I
    .end local v11    # "len":I
    .end local v12    # "pad":I
    .end local v15    # "sIx":I
    .end local v17    # "sepCnt":I
    .restart local v14    # "sIx":I
    :cond_3
    const/4 v12, 0x1

    goto/16 :goto_3

    :cond_4
    const/4 v12, 0x0

    goto/16 :goto_3

    .line 235
    .restart local v2    # "cCnt":I
    .restart local v12    # "pad":I
    :cond_5
    const/16 v18, 0x0

    goto :goto_4

    :cond_6
    const/16 v17, 0x0

    goto :goto_5

    .line 258
    .end local v14    # "sIx":I
    .restart local v3    # "cc":I
    .restart local v5    # "d":I
    .restart local v6    # "dArr":[B
    .restart local v8    # "eLen":I
    .restart local v11    # "len":I
    .restart local v15    # "sIx":I
    .restart local v17    # "sepCnt":I
    :cond_7
    if-ge v5, v11, :cond_9

    .line 260
    const/4 v9, 0x0

    .line 261
    .restart local v9    # "i":I
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_8
    sub-int v18, v7, v12

    move/from16 v0, v18

    if-gt v15, v0, :cond_8

    .line 262
    sget-object v18, Lorg/codegist/common/codec/Base64;->IA:[I

    add-int/lit8 v14, v15, 0x1

    .end local v15    # "sIx":I
    .restart local v14    # "sIx":I
    aget-char v19, p0, v15

    aget v18, v18, v19

    mul-int/lit8 v19, v10, 0x6

    rsub-int/lit8 v19, v19, 0x12

    shl-int v18, v18, v19

    or-int v9, v9, v18

    .line 261
    add-int/lit8 v10, v10, 0x1

    move v15, v14

    .end local v14    # "sIx":I
    .restart local v15    # "sIx":I
    goto :goto_8

    .line 264
    :cond_8
    const/16 v13, 0x10

    .local v13, "r":I
    :goto_9
    if-ge v5, v11, :cond_9

    .line 265
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "d":I
    .restart local v4    # "d":I
    shr-int v18, v9, v13

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v6, v5

    .line 264
    add-int/lit8 v13, v13, -0x8

    move v5, v4

    .end local v4    # "d":I
    .restart local v5    # "d":I
    goto :goto_9

    .end local v9    # "i":I
    .end local v10    # "j":I
    .end local v13    # "r":I
    :cond_9
    move v4, v5

    .end local v5    # "d":I
    .restart local v4    # "d":I
    move v14, v15

    .end local v15    # "sIx":I
    .restart local v14    # "sIx":I
    goto/16 :goto_0

    .end local v14    # "sIx":I
    .restart local v9    # "i":I
    .restart local v15    # "sIx":I
    :cond_a
    move v14, v15

    .end local v15    # "sIx":I
    .restart local v14    # "sIx":I
    goto :goto_7
.end method

.method public static encodeToByte([B)[B
    .locals 1
    .param p0, "sArr"    # [B

    .prologue
    .line 276
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/codegist/common/codec/Base64;->encodeToByte([BZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static encodeToByte([BZ)[B
    .locals 15
    .param p0, "sArr"    # [B
    .param p1, "lineSep"    # Z

    .prologue
    .line 290
    if-eqz p0, :cond_1

    array-length v11, p0

    .line 291
    .local v11, "sLen":I
    :goto_0
    if-nez v11, :cond_2

    .line 292
    const/4 v12, 0x0

    new-array v4, v12, [B

    .line 330
    :cond_0
    :goto_1
    return-object v4

    .line 290
    .end local v11    # "sLen":I
    :cond_1
    const/4 v11, 0x0

    goto :goto_0

    .line 294
    .restart local v11    # "sLen":I
    :cond_2
    div-int/lit8 v12, v11, 0x3

    mul-int/lit8 v6, v12, 0x3

    .line 295
    .local v6, "eLen":I
    add-int/lit8 v12, v11, -0x1

    div-int/lit8 v12, v12, 0x3

    add-int/lit8 v12, v12, 0x1

    shl-int/lit8 v0, v12, 0x2

    .line 296
    .local v0, "cCnt":I
    if-eqz p1, :cond_3

    add-int/lit8 v12, v0, -0x1

    div-int/lit8 v12, v12, 0x4c

    shl-int/lit8 v12, v12, 0x1

    :goto_2
    add-int v5, v0, v12

    .line 297
    .local v5, "dLen":I
    new-array v4, v5, [B

    .line 300
    .local v4, "dArr":[B
    const/4 v9, 0x0

    .local v9, "s":I
    const/4 v2, 0x0

    .local v2, "d":I
    const/4 v1, 0x0

    .local v1, "cc":I
    move v3, v2

    .end local v2    # "d":I
    .local v3, "d":I
    move v10, v9

    .end local v9    # "s":I
    .local v10, "s":I
    :goto_3
    if-ge v10, v6, :cond_4

    .line 302
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "s":I
    .restart local v9    # "s":I
    aget-byte v12, p0, v10

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x10

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "s":I
    .restart local v10    # "s":I
    aget-byte v13, p0, v9

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x8

    or-int/2addr v12, v13

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "s":I
    .restart local v9    # "s":I
    aget-byte v13, p0, v10

    and-int/lit16 v13, v13, 0xff

    or-int v7, v12, v13

    .line 305
    .local v7, "i":I
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "d":I
    .restart local v2    # "d":I
    sget-object v12, Lorg/codegist/common/codec/Base64;->CA:[C

    ushr-int/lit8 v13, v7, 0x12

    and-int/lit8 v13, v13, 0x3f

    aget-char v12, v12, v13

    int-to-byte v12, v12

    aput-byte v12, v4, v3

    .line 306
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "d":I
    .restart local v3    # "d":I
    sget-object v12, Lorg/codegist/common/codec/Base64;->CA:[C

    ushr-int/lit8 v13, v7, 0xc

    and-int/lit8 v13, v13, 0x3f

    aget-char v12, v12, v13

    int-to-byte v12, v12

    aput-byte v12, v4, v2

    .line 307
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "d":I
    .restart local v2    # "d":I
    sget-object v12, Lorg/codegist/common/codec/Base64;->CA:[C

    ushr-int/lit8 v13, v7, 0x6

    and-int/lit8 v13, v13, 0x3f

    aget-char v12, v12, v13

    int-to-byte v12, v12

    aput-byte v12, v4, v3

    .line 308
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "d":I
    .restart local v3    # "d":I
    sget-object v12, Lorg/codegist/common/codec/Base64;->CA:[C

    and-int/lit8 v13, v7, 0x3f

    aget-char v12, v12, v13

    int-to-byte v12, v12

    aput-byte v12, v4, v2

    .line 311
    if-eqz p1, :cond_7

    add-int/lit8 v1, v1, 0x1

    const/16 v12, 0x13

    if-ne v1, v12, :cond_7

    add-int/lit8 v12, v5, -0x2

    if-ge v3, v12, :cond_7

    .line 312
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "d":I
    .restart local v2    # "d":I
    const/16 v12, 0xd

    aput-byte v12, v4, v3

    .line 313
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "d":I
    .restart local v3    # "d":I
    const/16 v12, 0xa

    aput-byte v12, v4, v2

    .line 314
    const/4 v1, 0x0

    move v2, v3

    .end local v3    # "d":I
    .restart local v2    # "d":I
    :goto_4
    move v3, v2

    .end local v2    # "d":I
    .restart local v3    # "d":I
    move v10, v9

    .line 316
    .end local v9    # "s":I
    .restart local v10    # "s":I
    goto :goto_3

    .line 296
    .end local v1    # "cc":I
    .end local v3    # "d":I
    .end local v4    # "dArr":[B
    .end local v5    # "dLen":I
    .end local v7    # "i":I
    .end local v10    # "s":I
    :cond_3
    const/4 v12, 0x0

    goto :goto_2

    .line 319
    .restart local v1    # "cc":I
    .restart local v3    # "d":I
    .restart local v4    # "dArr":[B
    .restart local v5    # "dLen":I
    .restart local v10    # "s":I
    :cond_4
    sub-int v8, v11, v6

    .line 320
    .local v8, "left":I
    if-lez v8, :cond_0

    .line 322
    aget-byte v12, p0, v6

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v13, v12, 0xa

    const/4 v12, 0x2

    if-ne v8, v12, :cond_5

    add-int/lit8 v12, v11, -0x1

    aget-byte v12, p0, v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x2

    :goto_5
    or-int v7, v13, v12

    .line 325
    .restart local v7    # "i":I
    add-int/lit8 v12, v5, -0x4

    sget-object v13, Lorg/codegist/common/codec/Base64;->CA:[C

    shr-int/lit8 v14, v7, 0xc

    aget-char v13, v13, v14

    int-to-byte v13, v13

    aput-byte v13, v4, v12

    .line 326
    add-int/lit8 v12, v5, -0x3

    sget-object v13, Lorg/codegist/common/codec/Base64;->CA:[C

    ushr-int/lit8 v14, v7, 0x6

    and-int/lit8 v14, v14, 0x3f

    aget-char v13, v13, v14

    int-to-byte v13, v13

    aput-byte v13, v4, v12

    .line 327
    add-int/lit8 v13, v5, -0x2

    const/4 v12, 0x2

    if-ne v8, v12, :cond_6

    sget-object v12, Lorg/codegist/common/codec/Base64;->CA:[C

    and-int/lit8 v14, v7, 0x3f

    aget-char v12, v12, v14

    int-to-byte v12, v12

    :goto_6
    aput-byte v12, v4, v13

    .line 328
    add-int/lit8 v12, v5, -0x1

    const/16 v13, 0x3d

    aput-byte v13, v4, v12

    goto/16 :goto_1

    .line 322
    .end local v7    # "i":I
    :cond_5
    const/4 v12, 0x0

    goto :goto_5

    .line 327
    .restart local v7    # "i":I
    :cond_6
    const/16 v12, 0x3d

    goto :goto_6

    .end local v8    # "left":I
    .end local v10    # "s":I
    .restart local v9    # "s":I
    :cond_7
    move v2, v3

    .end local v3    # "d":I
    .restart local v2    # "d":I
    goto :goto_4
.end method

.method public static encodeToChar([B)[C
    .locals 1
    .param p0, "sArr"    # [B

    .prologue
    .line 93
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/codegist/common/codec/Base64;->encodeToChar([BZ)[C

    move-result-object v0

    return-object v0
.end method

.method public static encodeToChar([BZ)[C
    .locals 15
    .param p0, "sArr"    # [B
    .param p1, "lineSep"    # Z

    .prologue
    .line 107
    if-eqz p0, :cond_1

    array-length v11, p0

    .line 108
    .local v11, "sLen":I
    :goto_0
    if-nez v11, :cond_2

    .line 109
    const/4 v12, 0x0

    new-array v4, v12, [C

    .line 147
    :cond_0
    :goto_1
    return-object v4

    .line 107
    .end local v11    # "sLen":I
    :cond_1
    const/4 v11, 0x0

    goto :goto_0

    .line 111
    .restart local v11    # "sLen":I
    :cond_2
    div-int/lit8 v12, v11, 0x3

    mul-int/lit8 v6, v12, 0x3

    .line 112
    .local v6, "eLen":I
    add-int/lit8 v12, v11, -0x1

    div-int/lit8 v12, v12, 0x3

    add-int/lit8 v12, v12, 0x1

    shl-int/lit8 v0, v12, 0x2

    .line 113
    .local v0, "cCnt":I
    if-eqz p1, :cond_3

    add-int/lit8 v12, v0, -0x1

    div-int/lit8 v12, v12, 0x4c

    shl-int/lit8 v12, v12, 0x1

    :goto_2
    add-int v5, v0, v12

    .line 114
    .local v5, "dLen":I
    new-array v4, v5, [C

    .line 117
    .local v4, "dArr":[C
    const/4 v9, 0x0

    .local v9, "s":I
    const/4 v2, 0x0

    .local v2, "d":I
    const/4 v1, 0x0

    .local v1, "cc":I
    move v3, v2

    .end local v2    # "d":I
    .local v3, "d":I
    move v10, v9

    .end local v9    # "s":I
    .local v10, "s":I
    :goto_3
    if-ge v10, v6, :cond_4

    .line 119
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "s":I
    .restart local v9    # "s":I
    aget-byte v12, p0, v10

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x10

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "s":I
    .restart local v10    # "s":I
    aget-byte v13, p0, v9

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x8

    or-int/2addr v12, v13

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "s":I
    .restart local v9    # "s":I
    aget-byte v13, p0, v10

    and-int/lit16 v13, v13, 0xff

    or-int v7, v12, v13

    .line 122
    .local v7, "i":I
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "d":I
    .restart local v2    # "d":I
    sget-object v12, Lorg/codegist/common/codec/Base64;->CA:[C

    ushr-int/lit8 v13, v7, 0x12

    and-int/lit8 v13, v13, 0x3f

    aget-char v12, v12, v13

    aput-char v12, v4, v3

    .line 123
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "d":I
    .restart local v3    # "d":I
    sget-object v12, Lorg/codegist/common/codec/Base64;->CA:[C

    ushr-int/lit8 v13, v7, 0xc

    and-int/lit8 v13, v13, 0x3f

    aget-char v12, v12, v13

    aput-char v12, v4, v2

    .line 124
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "d":I
    .restart local v2    # "d":I
    sget-object v12, Lorg/codegist/common/codec/Base64;->CA:[C

    ushr-int/lit8 v13, v7, 0x6

    and-int/lit8 v13, v13, 0x3f

    aget-char v12, v12, v13

    aput-char v12, v4, v3

    .line 125
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "d":I
    .restart local v3    # "d":I
    sget-object v12, Lorg/codegist/common/codec/Base64;->CA:[C

    and-int/lit8 v13, v7, 0x3f

    aget-char v12, v12, v13

    aput-char v12, v4, v2

    .line 128
    if-eqz p1, :cond_7

    add-int/lit8 v1, v1, 0x1

    const/16 v12, 0x13

    if-ne v1, v12, :cond_7

    add-int/lit8 v12, v5, -0x2

    if-ge v3, v12, :cond_7

    .line 129
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "d":I
    .restart local v2    # "d":I
    const/16 v12, 0xd

    aput-char v12, v4, v3

    .line 130
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "d":I
    .restart local v3    # "d":I
    const/16 v12, 0xa

    aput-char v12, v4, v2

    .line 131
    const/4 v1, 0x0

    move v2, v3

    .end local v3    # "d":I
    .restart local v2    # "d":I
    :goto_4
    move v3, v2

    .end local v2    # "d":I
    .restart local v3    # "d":I
    move v10, v9

    .line 133
    .end local v9    # "s":I
    .restart local v10    # "s":I
    goto :goto_3

    .line 113
    .end local v1    # "cc":I
    .end local v3    # "d":I
    .end local v4    # "dArr":[C
    .end local v5    # "dLen":I
    .end local v7    # "i":I
    .end local v10    # "s":I
    :cond_3
    const/4 v12, 0x0

    goto :goto_2

    .line 136
    .restart local v1    # "cc":I
    .restart local v3    # "d":I
    .restart local v4    # "dArr":[C
    .restart local v5    # "dLen":I
    .restart local v10    # "s":I
    :cond_4
    sub-int v8, v11, v6

    .line 137
    .local v8, "left":I
    if-lez v8, :cond_0

    .line 139
    aget-byte v12, p0, v6

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v13, v12, 0xa

    const/4 v12, 0x2

    if-ne v8, v12, :cond_5

    add-int/lit8 v12, v11, -0x1

    aget-byte v12, p0, v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x2

    :goto_5
    or-int v7, v13, v12

    .line 142
    .restart local v7    # "i":I
    add-int/lit8 v12, v5, -0x4

    sget-object v13, Lorg/codegist/common/codec/Base64;->CA:[C

    shr-int/lit8 v14, v7, 0xc

    aget-char v13, v13, v14

    aput-char v13, v4, v12

    .line 143
    add-int/lit8 v12, v5, -0x3

    sget-object v13, Lorg/codegist/common/codec/Base64;->CA:[C

    ushr-int/lit8 v14, v7, 0x6

    and-int/lit8 v14, v14, 0x3f

    aget-char v13, v13, v14

    aput-char v13, v4, v12

    .line 144
    add-int/lit8 v13, v5, -0x2

    const/4 v12, 0x2

    if-ne v8, v12, :cond_6

    sget-object v12, Lorg/codegist/common/codec/Base64;->CA:[C

    and-int/lit8 v14, v7, 0x3f

    aget-char v12, v12, v14

    :goto_6
    aput-char v12, v4, v13

    .line 145
    add-int/lit8 v12, v5, -0x1

    const/16 v13, 0x3d

    aput-char v13, v4, v12

    goto/16 :goto_1

    .line 139
    .end local v7    # "i":I
    :cond_5
    const/4 v12, 0x0

    goto :goto_5

    .line 144
    .restart local v7    # "i":I
    :cond_6
    const/16 v12, 0x3d

    goto :goto_6

    .end local v8    # "left":I
    .end local v10    # "s":I
    .restart local v9    # "s":I
    :cond_7
    move v2, v3

    .end local v3    # "d":I
    .restart local v2    # "d":I
    goto :goto_4
.end method

.method public static encodeToString([B)Ljava/lang/String;
    .locals 1
    .param p0, "sArr"    # [B

    .prologue
    .line 460
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/codegist/common/codec/Base64;->encodeToString([BZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeToString([BZ)Ljava/lang/String;
    .locals 2
    .param p0, "sArr"    # [B
    .param p1, "lineSep"    # Z

    .prologue
    .line 474
    new-instance v0, Ljava/lang/String;

    invoke-static {p0, p1}, Lorg/codegist/common/codec/Base64;->encodeToChar([BZ)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

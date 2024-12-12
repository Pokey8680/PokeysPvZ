.class Lcom/millennialmedia/android/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field private static final CA:[C

.field private static final IA:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 80
    const-string v2, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    sput-object v2, Lcom/millennialmedia/android/Base64;->CA:[C

    .line 82
    const/16 v2, 0x100

    new-array v2, v2, [I

    sput-object v2, Lcom/millennialmedia/android/Base64;->IA:[I

    .line 84
    sget-object v2, Lcom/millennialmedia/android/Base64;->IA:[I

    const/4 v3, -0x1

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([II)V

    .line 85
    const/4 v0, 0x0

    .local v0, "i":I
    sget-object v2, Lcom/millennialmedia/android/Base64;->CA:[C

    array-length v1, v2

    .local v1, "iS":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 86
    sget-object v2, Lcom/millennialmedia/android/Base64;->IA:[I

    sget-object v3, Lcom/millennialmedia/android/Base64;->CA:[C

    aget-char v3, v3, v0

    aput v0, v2, v3

    .line 85
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 87
    :cond_0
    sget-object v2, Lcom/millennialmedia/android/Base64;->IA:[I

    const/16 v3, 0x3d

    const/4 v4, 0x0

    aput v4, v2, v3

    .line 88
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final decode(Ljava/lang/String;)[B
    .locals 14
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x0

    .line 538
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    .line 539
    .local v10, "sLen":I
    :goto_0
    if-nez v10, :cond_2

    .line 540
    new-array v3, v12, [B

    .line 587
    :cond_0
    :goto_1
    return-object v3

    .end local v10    # "sLen":I
    :cond_1
    move v10, v12

    .line 538
    goto :goto_0

    .line 545
    .restart local v10    # "sLen":I
    :cond_2
    const/4 v11, 0x0

    .line 547
    .local v11, "sepCnt":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, v10, :cond_4

    .line 550
    sget-object v12, Lcom/millennialmedia/android/Base64;->IA:[I

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v13

    aget v12, v12, v13

    if-gez v12, :cond_3

    .line 551
    add-int/lit8 v11, v11, 0x1

    .line 547
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 555
    :cond_4
    sub-int v12, v10, v11

    rem-int/lit8 v12, v12, 0x4

    if-eqz v12, :cond_5

    .line 556
    const/4 v3, 0x0

    goto :goto_1

    .line 559
    :cond_5
    const/4 v7, 0x0

    .line 560
    .local v7, "pad":I
    move v4, v10

    :cond_6
    :goto_3
    const/4 v12, 0x1

    if-le v4, v12, :cond_7

    sget-object v12, Lcom/millennialmedia/android/Base64;->IA:[I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v13

    aget v12, v12, v13

    if-gtz v12, :cond_7

    .line 561
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0x3d

    if-ne v12, v13, :cond_6

    .line 562
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 564
    :cond_7
    sub-int v12, v10, v11

    mul-int/lit8 v12, v12, 0x6

    shr-int/lit8 v12, v12, 0x3

    sub-int v6, v12, v7

    .line 566
    .local v6, "len":I
    new-array v3, v6, [B

    .line 568
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

    .line 570
    const/4 v4, 0x0

    .line 571
    const/4 v5, 0x0

    .local v5, "j":I
    move v9, v8

    .end local v8    # "s":I
    .local v9, "s":I
    :goto_5
    const/4 v12, 0x4

    if-ge v5, v12, :cond_9

    .line 573
    sget-object v12, Lcom/millennialmedia/android/Base64;->IA:[I

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "s":I
    .restart local v8    # "s":I
    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v13

    aget v0, v12, v13

    .line 574
    .local v0, "c":I
    if-ltz v0, :cond_8

    .line 575
    mul-int/lit8 v12, v5, 0x6

    rsub-int/lit8 v12, v12, 0x12

    shl-int v12, v0, v12

    or-int/2addr v4, v12

    .line 571
    :goto_6
    add-int/lit8 v5, v5, 0x1

    move v9, v8

    .end local v8    # "s":I
    .restart local v9    # "s":I
    goto :goto_5

    .line 577
    .end local v9    # "s":I
    .restart local v8    # "s":I
    :cond_8
    add-int/lit8 v5, v5, -0x1

    goto :goto_6

    .line 580
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

    .line 581
    if-ge v1, v6, :cond_a

    .line 582
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "d":I
    .restart local v2    # "d":I
    shr-int/lit8 v12, v4, 0x8

    int-to-byte v12, v12

    aput-byte v12, v3, v1

    .line 583
    if-ge v2, v6, :cond_b

    .line 584
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

    .line 586
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

.method public static final decode([B)[B
    .locals 14
    .param p0, "sArr"    # [B

    .prologue
    .line 372
    array-length v10, p0

    .line 377
    .local v10, "sLen":I
    const/4 v11, 0x0

    .line 379
    .local v11, "sepCnt":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v10, :cond_1

    .line 382
    sget-object v12, Lcom/millennialmedia/android/Base64;->IA:[I

    aget-byte v13, p0, v4

    and-int/lit16 v13, v13, 0xff

    aget v12, v12, v13

    if-gez v12, :cond_0

    .line 383
    add-int/lit8 v11, v11, 0x1

    .line 379
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 387
    :cond_1
    sub-int v12, v10, v11

    rem-int/lit8 v12, v12, 0x4

    if-eqz v12, :cond_3

    .line 388
    const/4 v3, 0x0

    .line 420
    :cond_2
    return-object v3

    .line 390
    :cond_3
    const/4 v7, 0x0

    .line 391
    .local v7, "pad":I
    move v4, v10

    :cond_4
    :goto_1
    const/4 v12, 0x1

    if-le v4, v12, :cond_5

    sget-object v12, Lcom/millennialmedia/android/Base64;->IA:[I

    add-int/lit8 v4, v4, -0x1

    aget-byte v13, p0, v4

    and-int/lit16 v13, v13, 0xff

    aget v12, v12, v13

    if-gtz v12, :cond_5

    .line 392
    aget-byte v12, p0, v4

    const/16 v13, 0x3d

    if-ne v12, v13, :cond_4

    .line 393
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 395
    :cond_5
    sub-int v12, v10, v11

    mul-int/lit8 v12, v12, 0x6

    shr-int/lit8 v12, v12, 0x3

    sub-int v6, v12, v7

    .line 397
    .local v6, "len":I
    new-array v3, v6, [B

    .line 399
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

    .line 401
    const/4 v4, 0x0

    .line 402
    const/4 v5, 0x0

    .local v5, "j":I
    move v9, v8

    .end local v8    # "s":I
    .local v9, "s":I
    :goto_3
    const/4 v12, 0x4

    if-ge v5, v12, :cond_7

    .line 404
    sget-object v12, Lcom/millennialmedia/android/Base64;->IA:[I

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "s":I
    .restart local v8    # "s":I
    aget-byte v13, p0, v9

    and-int/lit16 v13, v13, 0xff

    aget v0, v12, v13

    .line 405
    .local v0, "c":I
    if-ltz v0, :cond_6

    .line 406
    mul-int/lit8 v12, v5, 0x6

    rsub-int/lit8 v12, v12, 0x12

    shl-int v12, v0, v12

    or-int/2addr v4, v12

    .line 402
    :goto_4
    add-int/lit8 v5, v5, 0x1

    move v9, v8

    .end local v8    # "s":I
    .restart local v9    # "s":I
    goto :goto_3

    .line 408
    .end local v9    # "s":I
    .restart local v8    # "s":I
    :cond_6
    add-int/lit8 v5, v5, -0x1

    goto :goto_4

    .line 412
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

    .line 413
    if-ge v1, v6, :cond_8

    .line 414
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "d":I
    .restart local v2    # "d":I
    shr-int/lit8 v12, v4, 0x8

    int-to-byte v12, v12

    aput-byte v12, v3, v1

    .line 415
    if-ge v2, v6, :cond_9

    .line 416
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

    .line 418
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

.method public static final encodeToChar([BZ)[C
    .locals 15
    .param p0, "sArr"    # [B
    .param p1, "lineSep"    # Z

    .prologue
    .line 110
    if-eqz p0, :cond_1

    array-length v11, p0

    .line 111
    .local v11, "sLen":I
    :goto_0
    if-nez v11, :cond_2

    .line 112
    const/4 v12, 0x0

    new-array v4, v12, [C

    .line 155
    :cond_0
    :goto_1
    return-object v4

    .line 110
    .end local v11    # "sLen":I
    :cond_1
    const/4 v11, 0x0

    goto :goto_0

    .line 114
    .restart local v11    # "sLen":I
    :cond_2
    div-int/lit8 v12, v11, 0x3

    mul-int/lit8 v6, v12, 0x3

    .line 115
    .local v6, "eLen":I
    add-int/lit8 v12, v11, -0x1

    div-int/lit8 v12, v12, 0x3

    add-int/lit8 v12, v12, 0x1

    shl-int/lit8 v0, v12, 0x2

    .line 116
    .local v0, "cCnt":I
    if-eqz p1, :cond_3

    add-int/lit8 v12, v0, -0x1

    div-int/lit8 v12, v12, 0x4c

    shl-int/lit8 v12, v12, 0x1

    :goto_2
    add-int v5, v0, v12

    .line 119
    .local v5, "dLen":I
    new-array v4, v5, [C

    .line 122
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

    .line 125
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

    .line 129
    .local v7, "i":I
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "d":I
    .restart local v2    # "d":I
    sget-object v12, Lcom/millennialmedia/android/Base64;->CA:[C

    ushr-int/lit8 v13, v7, 0x12

    and-int/lit8 v13, v13, 0x3f

    aget-char v12, v12, v13

    aput-char v12, v4, v3

    .line 130
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "d":I
    .restart local v3    # "d":I
    sget-object v12, Lcom/millennialmedia/android/Base64;->CA:[C

    ushr-int/lit8 v13, v7, 0xc

    and-int/lit8 v13, v13, 0x3f

    aget-char v12, v12, v13

    aput-char v12, v4, v2

    .line 131
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "d":I
    .restart local v2    # "d":I
    sget-object v12, Lcom/millennialmedia/android/Base64;->CA:[C

    ushr-int/lit8 v13, v7, 0x6

    and-int/lit8 v13, v13, 0x3f

    aget-char v12, v12, v13

    aput-char v12, v4, v3

    .line 132
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "d":I
    .restart local v3    # "d":I
    sget-object v12, Lcom/millennialmedia/android/Base64;->CA:[C

    and-int/lit8 v13, v7, 0x3f

    aget-char v12, v12, v13

    aput-char v12, v4, v2

    .line 135
    if-eqz p1, :cond_7

    add-int/lit8 v1, v1, 0x1

    const/16 v12, 0x13

    if-ne v1, v12, :cond_7

    add-int/lit8 v12, v5, -0x2

    if-ge v3, v12, :cond_7

    .line 136
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "d":I
    .restart local v2    # "d":I
    const/16 v12, 0xd

    aput-char v12, v4, v3

    .line 137
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "d":I
    .restart local v3    # "d":I
    const/16 v12, 0xa

    aput-char v12, v4, v2

    .line 138
    const/4 v1, 0x0

    move v2, v3

    .end local v3    # "d":I
    .restart local v2    # "d":I
    :goto_4
    move v3, v2

    .end local v2    # "d":I
    .restart local v3    # "d":I
    move v10, v9

    .line 140
    .end local v9    # "s":I
    .restart local v10    # "s":I
    goto :goto_3

    .line 116
    .end local v1    # "cc":I
    .end local v3    # "d":I
    .end local v4    # "dArr":[C
    .end local v5    # "dLen":I
    .end local v7    # "i":I
    .end local v10    # "s":I
    :cond_3
    const/4 v12, 0x0

    goto :goto_2

    .line 143
    .restart local v1    # "cc":I
    .restart local v3    # "d":I
    .restart local v4    # "dArr":[C
    .restart local v5    # "dLen":I
    .restart local v10    # "s":I
    :cond_4
    sub-int v8, v11, v6

    .line 144
    .local v8, "left":I
    if-lez v8, :cond_0

    .line 146
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

    .line 150
    .restart local v7    # "i":I
    add-int/lit8 v12, v5, -0x4

    sget-object v13, Lcom/millennialmedia/android/Base64;->CA:[C

    shr-int/lit8 v14, v7, 0xc

    aget-char v13, v13, v14

    aput-char v13, v4, v12

    .line 151
    add-int/lit8 v12, v5, -0x3

    sget-object v13, Lcom/millennialmedia/android/Base64;->CA:[C

    ushr-int/lit8 v14, v7, 0x6

    and-int/lit8 v14, v14, 0x3f

    aget-char v13, v13, v14

    aput-char v13, v4, v12

    .line 152
    add-int/lit8 v13, v5, -0x2

    const/4 v12, 0x2

    if-ne v8, v12, :cond_6

    sget-object v12, Lcom/millennialmedia/android/Base64;->CA:[C

    and-int/lit8 v14, v7, 0x3f

    aget-char v12, v12, v14

    :goto_6
    aput-char v12, v4, v13

    .line 153
    add-int/lit8 v12, v5, -0x1

    const/16 v13, 0x3d

    aput-char v13, v4, v12

    goto/16 :goto_1

    .line 146
    .end local v7    # "i":I
    :cond_5
    const/4 v12, 0x0

    goto :goto_5

    .line 152
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

.method public static final encodeToString([BZ)Ljava/lang/String;
    .locals 2
    .param p0, "sArr"    # [B
    .param p1, "lineSep"    # Z

    .prologue
    .line 517
    new-instance v0, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/millennialmedia/android/Base64;->encodeToChar([BZ)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

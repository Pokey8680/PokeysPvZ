.class public Lorg/restlet/engine/util/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field private static final BASE64_DIGITS:[C

.field private static final DECODER_RING:[B


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    .line 48
    const-string v6, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    sput-object v6, Lorg/restlet/engine/util/Base64;->BASE64_DIGITS:[C

    .line 56
    const/16 v6, 0x80

    new-array v6, v6, [B

    sput-object v6, Lorg/restlet/engine/util/Base64;->DECODER_RING:[B

    .line 62
    sget-object v6, Lorg/restlet/engine/util/Base64;->DECODER_RING:[B

    const/4 v7, -0x1

    invoke-static {v6, v7}, Ljava/util/Arrays;->fill([BB)V

    .line 63
    const/4 v2, 0x0

    .line 64
    .local v2, "i":I
    sget-object v0, Lorg/restlet/engine/util/Base64;->BASE64_DIGITS:[C

    .local v0, "arr$":[C
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    move v3, v2

    .end local v2    # "i":I
    .local v3, "i":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-char v1, v0, v4

    .line 65
    .local v1, "c":C
    sget-object v6, Lorg/restlet/engine/util/Base64;->DECODER_RING:[B

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    int-to-byte v7, v3

    aput-byte v7, v6, v1

    .line 64
    add-int/lit8 v4, v4, 0x1

    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    .line 67
    .end local v1    # "c":C
    :cond_0
    sget-object v6, Lorg/restlet/engine/util/Base64;->DECODER_RING:[B

    const/16 v7, 0x3d

    const/4 v8, 0x0

    aput-byte v8, v6, v7

    .line 68
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final byteAt([BII)I
    .locals 1
    .param p0, "data"    # [B
    .param p1, "block"    # I
    .param p2, "off"    # I

    .prologue
    .line 82
    mul-int/lit8 v0, p1, 0x3

    add-int/2addr v0, p2

    aget-byte v0, p0, v0

    invoke-static {v0}, Lorg/restlet/engine/util/Base64;->unsign(B)I

    move-result v0

    return v0
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 1
    .param p0, "encodedString"    # Ljava/lang/String;

    .prologue
    .line 182
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, Lorg/restlet/engine/util/Base64;->decode([C)[B

    move-result-object v0

    return-object v0
.end method

.method public static decode([C)[B
    .locals 24
    .param p0, "chars"    # [C

    .prologue
    .line 95
    const/16 v16, 0x0

    .line 96
    .local v16, "newlineCount":I
    move-object/from16 v2, p0

    .local v2, "arr$":[C
    array-length v15, v2

    .local v15, "len$":I
    const/4 v13, 0x0

    .local v13, "i$":I
    :goto_0
    if-ge v13, v15, :cond_0

    aget-char v5, v2, v13

    .line 97
    .local v5, "c":C
    packed-switch v5, :pswitch_data_0

    .line 96
    :goto_1
    :pswitch_0
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 100
    :pswitch_1
    add-int/lit8 v16, v16, 0x1

    .line 101
    goto :goto_1

    .line 106
    .end local v5    # "c":C
    :cond_0
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v21, v0

    sub-int v14, v21, v16

    .line 108
    .local v14, "len":I
    rem-int/lit8 v21, v14, 0x4

    if-eqz v21, :cond_1

    .line 109
    new-instance v21, Ljava/lang/IllegalArgumentException;

    const-string v22, "Base64.decode() requires input length to be a multiple of 4"

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 113
    :cond_1
    add-int/lit8 v21, v14, 0x3

    div-int/lit8 v21, v21, 0x4

    mul-int/lit8 v18, v21, 0x3

    .line 116
    .local v18, "numBytes":I
    const/16 v21, 0x1

    move/from16 v0, v21

    if-le v14, v0, :cond_2

    .line 117
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v21, v0

    add-int/lit8 v21, v21, -0x2

    aget-char v21, p0, v21

    const/16 v22, 0x3d

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_4

    .line 118
    add-int/lit8 v18, v18, -0x2

    .line 124
    :cond_2
    :goto_2
    move/from16 v0, v18

    new-array v0, v0, [B

    move-object/from16 v19, v0

    .line 125
    .local v19, "result":[B
    const/16 v17, 0x0

    .line 128
    .local v17, "newlineOffset":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_3
    add-int/lit8 v21, v14, 0x3

    div-int/lit8 v21, v21, 0x4

    move/from16 v0, v21

    if-ge v12, v0, :cond_b

    .line 129
    mul-int/lit8 v21, v12, 0x4

    add-int v10, v17, v21

    .line 131
    .local v10, "charOffset":I
    add-int/lit8 v11, v10, 0x1

    .end local v10    # "charOffset":I
    .local v11, "charOffset":I
    aget-char v6, p0, v10

    .line 132
    .local v6, "c1":C
    add-int/lit8 v10, v11, 0x1

    .end local v11    # "charOffset":I
    .restart local v10    # "charOffset":I
    aget-char v7, p0, v11

    .line 133
    .local v7, "c2":C
    add-int/lit8 v11, v10, 0x1

    .end local v10    # "charOffset":I
    .restart local v11    # "charOffset":I
    aget-char v8, p0, v10

    .line 134
    .local v8, "c3":C
    add-int/lit8 v10, v11, 0x1

    .end local v11    # "charOffset":I
    .restart local v10    # "charOffset":I
    aget-char v9, p0, v11

    .line 136
    .local v9, "c4":C
    invoke-static {v6}, Lorg/restlet/engine/util/Base64;->validChar(C)Z

    move-result v21

    if-eqz v21, :cond_3

    invoke-static {v7}, Lorg/restlet/engine/util/Base64;->validChar(C)Z

    move-result v21

    if-eqz v21, :cond_3

    invoke-static {v8}, Lorg/restlet/engine/util/Base64;->validChar(C)Z

    move-result v21

    if-eqz v21, :cond_3

    invoke-static {v9}, Lorg/restlet/engine/util/Base64;->validChar(C)Z

    move-result v21

    if-nez v21, :cond_5

    .line 137
    :cond_3
    new-instance v21, Ljava/lang/IllegalArgumentException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Invalid Base64 character in block: \'"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\'"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 119
    .end local v6    # "c1":C
    .end local v7    # "c2":C
    .end local v8    # "c3":C
    .end local v9    # "c4":C
    .end local v10    # "charOffset":I
    .end local v12    # "i":I
    .end local v17    # "newlineOffset":I
    .end local v19    # "result":[B
    :cond_4
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v21, v0

    add-int/lit8 v21, v21, -0x1

    aget-char v21, p0, v21

    const/16 v22, 0x3d

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_2

    .line 120
    add-int/lit8 v18, v18, -0x1

    goto/16 :goto_2

    .line 143
    .restart local v6    # "c1":C
    .restart local v7    # "c2":C
    .restart local v8    # "c3":C
    .restart local v9    # "c4":C
    .restart local v10    # "charOffset":I
    .restart local v12    # "i":I
    .restart local v17    # "newlineOffset":I
    .restart local v19    # "result":[B
    :cond_5
    sget-object v21, Lorg/restlet/engine/util/Base64;->DECODER_RING:[B

    aget-byte v21, v21, v6

    shl-int/lit8 v21, v21, 0x12

    sget-object v22, Lorg/restlet/engine/util/Base64;->DECODER_RING:[B

    aget-byte v22, v22, v7

    shl-int/lit8 v22, v22, 0xc

    or-int v22, v22, v21

    const/16 v21, 0x3d

    move/from16 v0, v21

    if-ne v8, v0, :cond_9

    const/16 v21, 0x0

    :goto_4
    or-int v22, v22, v21

    const/16 v21, 0x3d

    move/from16 v0, v21

    if-ne v9, v0, :cond_a

    const/16 v21, 0x0

    :goto_5
    or-int v20, v22, v21

    .line 148
    .local v20, "x":I
    mul-int/lit8 v3, v12, 0x3

    .line 149
    .local v3, "byteOffset":I
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "byteOffset":I
    .local v4, "byteOffset":I
    shr-int/lit8 v21, v20, 0x10

    move/from16 v0, v21

    int-to-byte v0, v0

    move/from16 v21, v0

    aput-byte v21, v19, v3

    .line 150
    const/16 v21, 0x3d

    move/from16 v0, v21

    if-eq v8, v0, :cond_6

    .line 151
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "byteOffset":I
    .restart local v3    # "byteOffset":I
    shr-int/lit8 v21, v20, 0x8

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-byte v0, v0

    move/from16 v21, v0

    aput-byte v21, v19, v4

    .line 152
    const/16 v21, 0x3d

    move/from16 v0, v21

    if-eq v9, v0, :cond_7

    .line 153
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "byteOffset":I
    .restart local v4    # "byteOffset":I
    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-byte v0, v0

    move/from16 v21, v0

    aput-byte v21, v19, v3

    :cond_6
    move v3, v4

    .line 158
    .end local v4    # "byteOffset":I
    .restart local v3    # "byteOffset":I
    :cond_7
    :goto_6
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-le v0, v10, :cond_8

    .line 159
    add-int/lit8 v11, v10, 0x1

    .end local v10    # "charOffset":I
    .restart local v11    # "charOffset":I
    aget-char v21, p0, v10

    packed-switch v21, :pswitch_data_1

    :pswitch_2
    move v10, v11

    .line 128
    .end local v11    # "charOffset":I
    .restart local v10    # "charOffset":I
    :cond_8
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_3

    .line 143
    .end local v3    # "byteOffset":I
    .end local v20    # "x":I
    :cond_9
    sget-object v21, Lorg/restlet/engine/util/Base64;->DECODER_RING:[B

    aget-byte v21, v21, v8

    shl-int/lit8 v21, v21, 0x6

    goto :goto_4

    :cond_a
    sget-object v21, Lorg/restlet/engine/util/Base64;->DECODER_RING:[B

    aget-byte v21, v21, v9

    goto :goto_5

    .line 162
    .end local v10    # "charOffset":I
    .restart local v3    # "byteOffset":I
    .restart local v11    # "charOffset":I
    .restart local v20    # "x":I
    :pswitch_3
    add-int/lit8 v17, v17, 0x1

    move v10, v11

    .line 163
    .end local v11    # "charOffset":I
    .restart local v10    # "charOffset":I
    goto :goto_6

    .line 170
    .end local v3    # "byteOffset":I
    .end local v6    # "c1":C
    .end local v7    # "c2":C
    .end local v8    # "c3":C
    .end local v9    # "c4":C
    .end local v10    # "charOffset":I
    .end local v20    # "x":I
    :cond_b
    return-object v19

    .line 97
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 159
    :pswitch_data_1
    .packed-switch 0xa
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static encode([BIIZ)Ljava/lang/String;
    .locals 11
    .param p0, "bytes"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I
    .param p3, "newlines"    # Z

    .prologue
    const/16 v8, 0x3d

    const/4 v10, 0x1

    const/4 v7, 0x0

    .line 215
    add-int/lit8 v6, p2, 0x2

    div-int/lit8 v6, v6, 0x3

    mul-int/lit8 v9, v6, 0x4

    if-eqz p3, :cond_2

    div-int/lit8 v6, p2, 0x2b

    :goto_0
    add-int/2addr v6, v9

    new-array v1, v6, [C

    .line 217
    .local v1, "output":[C
    const/4 v3, 0x0

    .line 220
    .local v3, "pos":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    add-int/lit8 v6, p2, 0x2

    div-int/lit8 v6, v6, 0x3

    if-ge v0, v6, :cond_8

    .line 221
    const/4 v2, 0x0

    .line 223
    .local v2, "pad":I
    add-int/lit8 v6, p2, 0x1

    add-int/lit8 v9, v0, 0x1

    mul-int/lit8 v9, v9, 0x3

    if-ge v6, v9, :cond_3

    .line 225
    const/4 v2, 0x2

    .line 232
    :cond_0
    :goto_2
    invoke-static {p0, v0, p1}, Lorg/restlet/engine/util/Base64;->byteAt([BII)I

    move-result v6

    shl-int/lit8 v9, v6, 0x10

    if-le v2, v10, :cond_4

    move v6, v7

    :goto_3
    or-int/2addr v9, v6

    if-lez v2, :cond_5

    move v6, v7

    :goto_4
    or-int v5, v9, v6

    .line 237
    .local v5, "x":I
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "pos":I
    .local v4, "pos":I
    sget-object v6, Lorg/restlet/engine/util/Base64;->BASE64_DIGITS:[C

    shr-int/lit8 v9, v5, 0x12

    aget-char v6, v6, v9

    aput-char v6, v1, v3

    .line 238
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "pos":I
    .restart local v3    # "pos":I
    sget-object v6, Lorg/restlet/engine/util/Base64;->BASE64_DIGITS:[C

    shr-int/lit8 v9, v5, 0xc

    and-int/lit8 v9, v9, 0x3f

    aget-char v6, v6, v9

    aput-char v6, v1, v4

    .line 239
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "pos":I
    .restart local v4    # "pos":I
    if-le v2, v10, :cond_6

    move v6, v8

    :goto_5
    aput-char v6, v1, v3

    .line 240
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "pos":I
    .restart local v3    # "pos":I
    if-lez v2, :cond_7

    move v6, v8

    :goto_6
    aput-char v6, v1, v4

    .line 242
    if-eqz p3, :cond_1

    add-int/lit8 v6, v0, 0x1

    rem-int/lit8 v6, v6, 0x13

    if-nez v6, :cond_1

    .line 243
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "pos":I
    .restart local v4    # "pos":I
    const/16 v6, 0xa

    aput-char v6, v1, v3

    move v3, v4

    .line 220
    .end local v4    # "pos":I
    .restart local v3    # "pos":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    .end local v1    # "output":[C
    .end local v2    # "pad":I
    .end local v3    # "pos":I
    .end local v5    # "x":I
    :cond_2
    move v6, v7

    .line 215
    goto :goto_0

    .line 226
    .restart local v0    # "i":I
    .restart local v1    # "output":[C
    .restart local v2    # "pad":I
    .restart local v3    # "pos":I
    :cond_3
    add-int/lit8 v6, v0, 0x1

    mul-int/lit8 v6, v6, 0x3

    if-ge p2, v6, :cond_0

    .line 228
    const/4 v2, 0x1

    goto :goto_2

    .line 232
    :cond_4
    add-int/lit8 v6, p1, 0x1

    invoke-static {p0, v0, v6}, Lorg/restlet/engine/util/Base64;->byteAt([BII)I

    move-result v6

    shl-int/lit8 v6, v6, 0x8

    goto :goto_3

    :cond_5
    add-int/lit8 v6, p1, 0x2

    invoke-static {p0, v0, v6}, Lorg/restlet/engine/util/Base64;->byteAt([BII)I

    move-result v6

    goto :goto_4

    .line 239
    .end local v3    # "pos":I
    .restart local v4    # "pos":I
    .restart local v5    # "x":I
    :cond_6
    sget-object v6, Lorg/restlet/engine/util/Base64;->BASE64_DIGITS:[C

    shr-int/lit8 v9, v5, 0x6

    and-int/lit8 v9, v9, 0x3f

    aget-char v6, v6, v9

    goto :goto_5

    .line 240
    .end local v4    # "pos":I
    .restart local v3    # "pos":I
    :cond_7
    sget-object v6, Lorg/restlet/engine/util/Base64;->BASE64_DIGITS:[C

    and-int/lit8 v9, v5, 0x3f

    aget-char v6, v6, v9

    goto :goto_6

    .line 246
    .end local v2    # "pad":I
    .end local v5    # "x":I
    :cond_8
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v1, v7, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v6
.end method

.method public static encode([BZ)Ljava/lang/String;
    .locals 2
    .param p0, "bytes"    # [B
    .param p1, "newlines"    # Z

    .prologue
    .line 196
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lorg/restlet/engine/util/Base64;->encode([BIIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encode([CLjava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .param p0, "chars"    # [C
    .param p1, "charset"    # Ljava/lang/String;
    .param p2, "newlines"    # Z

    .prologue
    .line 276
    invoke-static {p0, p1}, Lorg/restlet/engine/io/BioUtils;->toByteArray([CLjava/lang/String;)[B

    move-result-object v0

    invoke-static {v0, p2}, Lorg/restlet/engine/util/Base64;->encode([BZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encode([CZ)Ljava/lang/String;
    .locals 1
    .param p0, "chars"    # [C
    .param p1, "newlines"    # Z

    .prologue
    .line 260
    invoke-static {p0}, Lorg/restlet/engine/io/BioUtils;->toByteArray([C)[B

    move-result-object v0

    invoke-static {v0, p1}, Lorg/restlet/engine/util/Base64;->encode([BZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final unsign(B)I
    .locals 0
    .param p0, "b"    # B

    .prologue
    .line 287
    if-gez p0, :cond_0

    add-int/lit16 p0, p0, 0x100

    .end local p0    # "b":B
    :cond_0
    return p0
.end method

.method private static final validChar(C)Z
    .locals 2
    .param p0, "c"    # C

    .prologue
    .line 298
    const/16 v0, 0x80

    if-ge p0, v0, :cond_0

    sget-object v0, Lorg/restlet/engine/util/Base64;->DECODER_RING:[B

    aget-byte v0, v0, p0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

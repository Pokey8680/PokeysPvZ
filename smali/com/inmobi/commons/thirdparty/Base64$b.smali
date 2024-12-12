.class Lcom/inmobi/commons/thirdparty/Base64$b;
.super Lcom/inmobi/commons/thirdparty/Base64$c;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/commons/thirdparty/Base64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# static fields
.field private static final a:[I

.field private static final b:[I


# instance fields
.field private c:I

.field private d:I

.field private final e:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x100

    .line 161
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/inmobi/commons/thirdparty/Base64$b;->a:[I

    .line 184
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/inmobi/commons/thirdparty/Base64$b;->b:[I

    return-void

    .line 161
    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x3e
        -0x1
        -0x1
        -0x1
        0x3f
        0x34
        0x35
        0x36
        0x37
        0x38
        0x39
        0x3a
        0x3b
        0x3c
        0x3d
        -0x1
        -0x1
        -0x1
        -0x2
        -0x1
        -0x1
        -0x1
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x20
        0x21
        0x22
        0x23
        0x24
        0x25
        0x26
        0x27
        0x28
        0x29
        0x2a
        0x2b
        0x2c
        0x2d
        0x2e
        0x2f
        0x30
        0x31
        0x32
        0x33
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    .line 184
    :array_1
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x3e
        -0x1
        -0x1
        0x34
        0x35
        0x36
        0x37
        0x38
        0x39
        0x3a
        0x3b
        0x3c
        0x3d
        -0x1
        -0x1
        -0x1
        -0x2
        -0x1
        -0x1
        -0x1
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        -0x1
        -0x1
        -0x1
        -0x1
        0x3f
        -0x1
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x20
        0x21
        0x22
        0x23
        0x24
        0x25
        0x26
        0x27
        0x28
        0x29
        0x2a
        0x2b
        0x2c
        0x2d
        0x2e
        0x2f
        0x30
        0x31
        0x32
        0x33
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method public constructor <init>(I[B)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 221
    invoke-direct {p0}, Lcom/inmobi/commons/thirdparty/Base64$c;-><init>()V

    .line 222
    iput-object p2, p0, Lcom/inmobi/commons/thirdparty/Base64$b;->f:[B

    .line 224
    and-int/lit8 v0, p1, 0x8

    if-nez v0, :cond_0

    sget-object v0, Lcom/inmobi/commons/thirdparty/Base64$b;->a:[I

    :goto_0
    iput-object v0, p0, Lcom/inmobi/commons/thirdparty/Base64$b;->e:[I

    .line 225
    iput v1, p0, Lcom/inmobi/commons/thirdparty/Base64$b;->c:I

    .line 226
    iput v1, p0, Lcom/inmobi/commons/thirdparty/Base64$b;->d:I

    .line 227
    return-void

    .line 224
    :cond_0
    sget-object v0, Lcom/inmobi/commons/thirdparty/Base64$b;->b:[I

    goto :goto_0
.end method


# virtual methods
.method public a([BIIZ)Z
    .locals 10

    .prologue
    .line 244
    iget v0, p0, Lcom/inmobi/commons/thirdparty/Base64$b;->c:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 245
    const/4 v0, 0x0

    .line 421
    :goto_0
    return v0

    .line 249
    :cond_0
    add-int v4, p3, p2

    .line 256
    iget v3, p0, Lcom/inmobi/commons/thirdparty/Base64$b;->c:I

    .line 257
    iget v1, p0, Lcom/inmobi/commons/thirdparty/Base64$b;->d:I

    .line 258
    const/4 v0, 0x0

    .line 259
    iget-object v5, p0, Lcom/inmobi/commons/thirdparty/Base64$b;->f:[B

    .line 260
    iget-object v6, p0, Lcom/inmobi/commons/thirdparty/Base64$b;->e:[I

    move v2, p2

    .line 262
    :goto_1
    if-ge v2, v4, :cond_c

    .line 277
    if-nez v3, :cond_2

    .line 282
    :goto_2
    add-int/lit8 v7, v2, 0x4

    if-gt v7, v4, :cond_1

    aget-byte v1, p1, v2

    and-int/lit16 v1, v1, 0xff

    aget v1, v6, v1

    shl-int/lit8 v1, v1, 0x12

    add-int/lit8 v7, v2, 0x1

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    aget v7, v6, v7

    shl-int/lit8 v7, v7, 0xc

    or-int/2addr v1, v7

    add-int/lit8 v7, v2, 0x2

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    aget v7, v6, v7

    shl-int/lit8 v7, v7, 0x6

    or-int/2addr v1, v7

    add-int/lit8 v7, v2, 0x3

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    aget v7, v6, v7

    or-int/2addr v1, v7

    if-ltz v1, :cond_1

    .line 283
    add-int/lit8 v7, v0, 0x2

    int-to-byte v8, v1

    aput-byte v8, v5, v7

    .line 284
    add-int/lit8 v7, v0, 0x1

    shr-int/lit8 v8, v1, 0x8

    int-to-byte v8, v8

    aput-byte v8, v5, v7

    .line 285
    shr-int/lit8 v7, v1, 0x10

    int-to-byte v7, v7

    aput-byte v7, v5, v0

    .line 286
    add-int/lit8 v0, v0, 0x3

    .line 287
    add-int/lit8 v2, v2, 0x4

    goto :goto_2

    .line 289
    :cond_1
    if-lt v2, v4, :cond_2

    move v2, v1

    .line 377
    :goto_3
    if-nez p4, :cond_b

    .line 380
    iput v3, p0, Lcom/inmobi/commons/thirdparty/Base64$b;->c:I

    .line 381
    iput v2, p0, Lcom/inmobi/commons/thirdparty/Base64$b;->d:I

    .line 382
    iput v0, p0, Lcom/inmobi/commons/thirdparty/Base64$b;->g:I

    .line 383
    const/4 v0, 0x1

    goto :goto_0

    .line 299
    :cond_2
    add-int/lit8 p2, v2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    aget v2, v6, v2

    .line 301
    packed-switch v3, :pswitch_data_0

    :cond_3
    move v2, v3

    :goto_4
    move v3, v2

    move v2, p2

    .line 375
    goto :goto_1

    .line 303
    :pswitch_0
    if-ltz v2, :cond_4

    .line 305
    add-int/lit8 v1, v3, 0x1

    move v9, v2

    move v2, v1

    move v1, v9

    goto :goto_4

    .line 306
    :cond_4
    const/4 v7, -0x1

    if-eq v2, v7, :cond_3

    .line 307
    const/4 v0, 0x6

    iput v0, p0, Lcom/inmobi/commons/thirdparty/Base64$b;->c:I

    .line 308
    const/4 v0, 0x0

    goto :goto_0

    .line 313
    :pswitch_1
    if-ltz v2, :cond_5

    .line 314
    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v1, v2

    .line 315
    add-int/lit8 v2, v3, 0x1

    goto :goto_4

    .line 316
    :cond_5
    const/4 v7, -0x1

    if-eq v2, v7, :cond_3

    .line 317
    const/4 v0, 0x6

    iput v0, p0, Lcom/inmobi/commons/thirdparty/Base64$b;->c:I

    .line 318
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 323
    :pswitch_2
    if-ltz v2, :cond_6

    .line 324
    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v1, v2

    .line 325
    add-int/lit8 v2, v3, 0x1

    goto :goto_4

    .line 326
    :cond_6
    const/4 v7, -0x2

    if-ne v2, v7, :cond_7

    .line 329
    add-int/lit8 v2, v0, 0x1

    shr-int/lit8 v3, v1, 0x4

    int-to-byte v3, v3

    aput-byte v3, v5, v0

    .line 330
    const/4 v0, 0x4

    move v9, v2

    move v2, v0

    move v0, v9

    goto :goto_4

    .line 331
    :cond_7
    const/4 v7, -0x1

    if-eq v2, v7, :cond_3

    .line 332
    const/4 v0, 0x6

    iput v0, p0, Lcom/inmobi/commons/thirdparty/Base64$b;->c:I

    .line 333
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 338
    :pswitch_3
    if-ltz v2, :cond_8

    .line 340
    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v1, v2

    .line 341
    add-int/lit8 v2, v0, 0x2

    int-to-byte v3, v1

    aput-byte v3, v5, v2

    .line 342
    add-int/lit8 v2, v0, 0x1

    shr-int/lit8 v3, v1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v5, v2

    .line 343
    shr-int/lit8 v2, v1, 0x10

    int-to-byte v2, v2

    aput-byte v2, v5, v0

    .line 344
    add-int/lit8 v0, v0, 0x3

    .line 345
    const/4 v2, 0x0

    goto :goto_4

    .line 346
    :cond_8
    const/4 v7, -0x2

    if-ne v2, v7, :cond_9

    .line 349
    add-int/lit8 v2, v0, 0x1

    shr-int/lit8 v3, v1, 0x2

    int-to-byte v3, v3

    aput-byte v3, v5, v2

    .line 350
    shr-int/lit8 v2, v1, 0xa

    int-to-byte v2, v2

    aput-byte v2, v5, v0

    .line 351
    add-int/lit8 v0, v0, 0x2

    .line 352
    const/4 v2, 0x5

    goto :goto_4

    .line 353
    :cond_9
    const/4 v7, -0x1

    if-eq v2, v7, :cond_3

    .line 354
    const/4 v0, 0x6

    iput v0, p0, Lcom/inmobi/commons/thirdparty/Base64$b;->c:I

    .line 355
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 360
    :pswitch_4
    const/4 v7, -0x2

    if-ne v2, v7, :cond_a

    .line 361
    add-int/lit8 v2, v3, 0x1

    goto :goto_4

    .line 362
    :cond_a
    const/4 v7, -0x1

    if-eq v2, v7, :cond_3

    .line 363
    const/4 v0, 0x6

    iput v0, p0, Lcom/inmobi/commons/thirdparty/Base64$b;->c:I

    .line 364
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 369
    :pswitch_5
    const/4 v7, -0x1

    if-eq v2, v7, :cond_3

    .line 370
    const/4 v0, 0x6

    iput v0, p0, Lcom/inmobi/commons/thirdparty/Base64$b;->c:I

    .line 371
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 389
    :cond_b
    packed-switch v3, :pswitch_data_1

    .line 419
    :goto_5
    :pswitch_6
    iput v3, p0, Lcom/inmobi/commons/thirdparty/Base64$b;->c:I

    .line 420
    iput v0, p0, Lcom/inmobi/commons/thirdparty/Base64$b;->g:I

    .line 421
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 396
    :pswitch_7
    const/4 v0, 0x6

    iput v0, p0, Lcom/inmobi/commons/thirdparty/Base64$b;->c:I

    .line 397
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 401
    :pswitch_8
    add-int/lit8 v1, v0, 0x1

    shr-int/lit8 v2, v2, 0x4

    int-to-byte v2, v2

    aput-byte v2, v5, v0

    move v0, v1

    .line 402
    goto :goto_5

    .line 406
    :pswitch_9
    add-int/lit8 v1, v0, 0x1

    shr-int/lit8 v4, v2, 0xa

    int-to-byte v4, v4

    aput-byte v4, v5, v0

    .line 407
    add-int/lit8 v0, v1, 0x1

    shr-int/lit8 v2, v2, 0x2

    int-to-byte v2, v2

    aput-byte v2, v5, v1

    goto :goto_5

    .line 411
    :pswitch_a
    const/4 v0, 0x6

    iput v0, p0, Lcom/inmobi/commons/thirdparty/Base64$b;->c:I

    .line 412
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_c
    move v2, v1

    goto/16 :goto_3

    .line 301
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 389
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

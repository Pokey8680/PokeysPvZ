.class public Lcom/millennialmedia/google/gson/stream/JsonReader;
.super Ljava/lang/Object;
.source "JsonReader.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final MIN_INCOMPLETE_INTEGER:J = -0xcccccccccccccccL

.field private static final NON_EXECUTE_PREFIX:[C

.field private static final NUMBER_CHAR_DECIMAL:I = 0x3

.field private static final NUMBER_CHAR_DIGIT:I = 0x2

.field private static final NUMBER_CHAR_EXP_DIGIT:I = 0x7

.field private static final NUMBER_CHAR_EXP_E:I = 0x5

.field private static final NUMBER_CHAR_EXP_SIGN:I = 0x6

.field private static final NUMBER_CHAR_FRACTION_DIGIT:I = 0x4

.field private static final NUMBER_CHAR_NONE:I = 0x0

.field private static final NUMBER_CHAR_SIGN:I = 0x1

.field private static final PEEKED_BEGIN_ARRAY:I = 0x3

.field private static final PEEKED_BEGIN_OBJECT:I = 0x1

.field private static final PEEKED_BUFFERED:I = 0xb

.field private static final PEEKED_DOUBLE_QUOTED:I = 0x9

.field private static final PEEKED_DOUBLE_QUOTED_NAME:I = 0xd

.field private static final PEEKED_END_ARRAY:I = 0x4

.field private static final PEEKED_END_OBJECT:I = 0x2

.field private static final PEEKED_EOF:I = 0x11

.field private static final PEEKED_FALSE:I = 0x6

.field private static final PEEKED_LONG:I = 0xf

.field private static final PEEKED_NONE:I = 0x0

.field private static final PEEKED_NULL:I = 0x7

.field private static final PEEKED_NUMBER:I = 0x10

.field private static final PEEKED_SINGLE_QUOTED:I = 0x8

.field private static final PEEKED_SINGLE_QUOTED_NAME:I = 0xc

.field private static final PEEKED_TRUE:I = 0x5

.field private static final PEEKED_UNQUOTED:I = 0xa

.field private static final PEEKED_UNQUOTED_NAME:I = 0xe


# instance fields
.field private final buffer:[C

.field private final in:Ljava/io/Reader;

.field private lenient:Z

.field private limit:I

.field private lineNumber:I

.field private lineStart:I

.field private peeked:I

.field private peekedLong:J

.field private peekedNumberLength:I

.field private peekedString:Ljava/lang/String;

.field private pos:I

.field private stack:[I

.field private stackSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 211
    const-string v0, ")]}\'\n"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/google/gson/stream/JsonReader;->NON_EXECUTE_PREFIX:[C

    .line 1659
    new-instance v0, Lcom/millennialmedia/google/gson/stream/JsonReader$1;

    invoke-direct {v0}, Lcom/millennialmedia/google/gson/stream/JsonReader$1;-><init>()V

    sput-object v0, Lcom/millennialmedia/google/gson/internal/JsonReaderInternalAccess;->INSTANCE:Lcom/millennialmedia/google/gson/internal/JsonReaderInternalAccess;

    .line 1687
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 3
    .param p1, "in"    # Ljava/io/Reader;

    .prologue
    const/4 v1, 0x0

    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    iput-boolean v1, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->lenient:Z

    .line 257
    const/16 v0, 0x400

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->buffer:[C

    .line 258
    iput v1, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    .line 259
    iput v1, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->limit:I

    .line 261
    iput v1, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->lineNumber:I

    .line 262
    iput v1, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->lineStart:I

    .line 264
    iput v1, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peeked:I

    .line 289
    const/16 v0, 0x20

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->stack:[I

    .line 290
    iput v1, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->stackSize:I

    .line 292
    iget-object v0, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->stack:[I

    iget v1, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->stackSize:I

    const/4 v2, 0x6

    aput v2, v0, v1

    .line 300
    if-nez p1, :cond_0

    .line 301
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "in == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 303
    :cond_0
    iput-object p1, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->in:Ljava/io/Reader;

    .line 304
    return-void
.end method

.method static synthetic access$000(Lcom/millennialmedia/google/gson/stream/JsonReader;)I
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/google/gson/stream/JsonReader;

    .prologue
    .line 208
    iget v0, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peeked:I

    return v0
.end method

.method static synthetic access$002(Lcom/millennialmedia/google/gson/stream/JsonReader;I)I
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/google/gson/stream/JsonReader;
    .param p1, "x1"    # I

    .prologue
    .line 208
    iput p1, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peeked:I

    return p1
.end method

.method static synthetic access$100(Lcom/millennialmedia/google/gson/stream/JsonReader;)I
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/google/gson/stream/JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 208
    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/millennialmedia/google/gson/stream/JsonReader;)I
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/google/gson/stream/JsonReader;

    .prologue
    .line 208
    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/millennialmedia/google/gson/stream/JsonReader;)I
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/google/gson/stream/JsonReader;

    .prologue
    .line 208
    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v0

    return v0
.end method

.method private checkLenient()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1501
    iget-boolean v0, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->lenient:Z

    if-nez v0, :cond_0

    .line 1502
    const-string v0, "Use JsonReader.setLenient(true) to accept malformed JSON"

    invoke-direct {p0, v0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 1504
    :cond_0
    return-void
.end method

.method private consumeNonExecutePrefix()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1640
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/millennialmedia/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    .line 1641
    iget v1, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    .line 1643
    iget v1, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    sget-object v2, Lcom/millennialmedia/google/gson/stream/JsonReader;->NON_EXECUTE_PREFIX:[C

    array-length v2, v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->limit:I

    if-le v1, v2, :cond_1

    sget-object v1, Lcom/millennialmedia/google/gson/stream/JsonReader;->NON_EXECUTE_PREFIX:[C

    array-length v1, v1

    invoke-direct {p0, v1}, Lcom/millennialmedia/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1656
    :cond_0
    :goto_0
    return-void

    .line 1648
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Lcom/millennialmedia/google/gson/stream/JsonReader;->NON_EXECUTE_PREFIX:[C

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 1649
    iget-object v1, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->buffer:[C

    iget v2, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v2, v0

    aget-char v1, v1, v2

    sget-object v2, Lcom/millennialmedia/google/gson/stream/JsonReader;->NON_EXECUTE_PREFIX:[C

    aget-char v2, v2, v0

    if-ne v1, v2, :cond_0

    .line 1648
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1655
    :cond_2
    iget v1, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    sget-object v2, Lcom/millennialmedia/google/gson/stream/JsonReader;->NON_EXECUTE_PREFIX:[C

    array-length v2, v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    goto :goto_0
.end method

.method private doPeek()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x7

    const/4 v8, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x1

    .line 485
    iget-object v6, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->stack:[I

    iget v7, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v7, v7, -0x1

    aget v1, v6, v7

    .line 486
    .local v1, "peekStack":I
    if-ne v1, v4, :cond_3

    .line 487
    iget-object v6, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->stack:[I

    iget v7, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v7, v7, -0x1

    aput v3, v6, v7

    .line 574
    :cond_0
    :goto_0
    :pswitch_0
    :sswitch_0
    invoke-direct {p0, v4}, Lcom/millennialmedia/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v0

    .line 575
    .local v0, "c":I
    sparse-switch v0, :sswitch_data_0

    .line 605
    iget v3, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    .line 608
    iget v3, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->stackSize:I

    if-ne v3, v4, :cond_1

    .line 609
    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->checkLenient()V

    .line 612
    :cond_1
    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->peekKeyword()I

    move-result v2

    .line 613
    .local v2, "result":I
    if-eqz v2, :cond_14

    .line 627
    .end local v2    # "result":I
    :cond_2
    :goto_1
    return v2

    .line 488
    .end local v0    # "c":I
    :cond_3
    if-ne v1, v3, :cond_4

    .line 490
    invoke-direct {p0, v4}, Lcom/millennialmedia/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v0

    .line 491
    .restart local v0    # "c":I
    sparse-switch v0, :sswitch_data_1

    .line 499
    const-string v3, "Unterminated array"

    invoke-direct {p0, v3}, Lcom/millennialmedia/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v3

    throw v3

    .line 493
    :sswitch_1
    iput v2, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peeked:I

    goto :goto_1

    .line 495
    :sswitch_2
    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->checkLenient()V

    goto :goto_0

    .line 501
    .end local v0    # "c":I
    :cond_4
    const/4 v6, 0x3

    if-eq v1, v6, :cond_5

    if-ne v1, v8, :cond_9

    .line 503
    :cond_5
    iget-object v5, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->stack:[I

    iget v6, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v6, v6, -0x1

    aput v2, v5, v6

    .line 505
    if-ne v1, v8, :cond_6

    .line 506
    invoke-direct {p0, v4}, Lcom/millennialmedia/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v0

    .line 507
    .restart local v0    # "c":I
    sparse-switch v0, :sswitch_data_2

    .line 515
    const-string v3, "Unterminated object"

    invoke-direct {p0, v3}, Lcom/millennialmedia/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v3

    throw v3

    .line 509
    :sswitch_3
    iput v3, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peeked:I

    move v2, v3

    goto :goto_1

    .line 511
    :sswitch_4
    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->checkLenient()V

    .line 518
    .end local v0    # "c":I
    :cond_6
    :sswitch_5
    invoke-direct {p0, v4}, Lcom/millennialmedia/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v0

    .line 519
    .restart local v0    # "c":I
    sparse-switch v0, :sswitch_data_3

    .line 532
    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->checkLenient()V

    .line 533
    iget v3, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    .line 535
    int-to-char v3, v0

    invoke-direct {p0, v3}, Lcom/millennialmedia/google/gson/stream/JsonReader;->isLiteral(C)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 536
    const/16 v2, 0xe

    iput v2, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peeked:I

    goto :goto_1

    .line 521
    :sswitch_6
    const/16 v2, 0xd

    iput v2, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peeked:I

    goto :goto_1

    .line 523
    :sswitch_7
    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->checkLenient()V

    .line 524
    const/16 v2, 0xc

    iput v2, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peeked:I

    goto :goto_1

    .line 526
    :sswitch_8
    if-eq v1, v8, :cond_7

    .line 527
    iput v3, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peeked:I

    move v2, v3

    goto :goto_1

    .line 529
    :cond_7
    const-string v3, "Expected name"

    invoke-direct {p0, v3}, Lcom/millennialmedia/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v3

    throw v3

    .line 538
    :cond_8
    const-string v3, "Expected name"

    invoke-direct {p0, v3}, Lcom/millennialmedia/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v3

    throw v3

    .line 541
    .end local v0    # "c":I
    :cond_9
    if-ne v1, v2, :cond_b

    .line 542
    iget-object v6, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->stack:[I

    iget v7, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v7, v7, -0x1

    aput v8, v6, v7

    .line 544
    invoke-direct {p0, v4}, Lcom/millennialmedia/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v0

    .line 545
    .restart local v0    # "c":I
    packed-switch v0, :pswitch_data_0

    .line 555
    :pswitch_1
    const-string v3, "Expected \':\'"

    invoke-direct {p0, v3}, Lcom/millennialmedia/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v3

    throw v3

    .line 549
    :pswitch_2
    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->checkLenient()V

    .line 550
    iget v6, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    iget v7, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->limit:I

    if-lt v6, v7, :cond_a

    invoke-direct {p0, v4}, Lcom/millennialmedia/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v6

    if-eqz v6, :cond_0

    :cond_a
    iget-object v6, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->buffer:[C

    iget v7, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    aget-char v6, v6, v7

    const/16 v7, 0x3e

    if-ne v6, v7, :cond_0

    .line 551
    iget v6, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    goto/16 :goto_0

    .line 557
    .end local v0    # "c":I
    :cond_b
    const/4 v6, 0x6

    if-ne v1, v6, :cond_d

    .line 558
    iget-boolean v6, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->lenient:Z

    if-eqz v6, :cond_c

    .line 559
    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->consumeNonExecutePrefix()V

    .line 561
    :cond_c
    iget-object v6, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->stack:[I

    iget v7, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v7, v7, -0x1

    aput v5, v6, v7

    goto/16 :goto_0

    .line 562
    :cond_d
    if-ne v1, v5, :cond_f

    .line 563
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/millennialmedia/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v0

    .line 564
    .restart local v0    # "c":I
    const/4 v6, -0x1

    if-ne v0, v6, :cond_e

    .line 565
    const/16 v2, 0x11

    iput v2, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peeked:I

    goto/16 :goto_1

    .line 567
    :cond_e
    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->checkLenient()V

    .line 568
    iget v6, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    goto/16 :goto_0

    .line 570
    .end local v0    # "c":I
    :cond_f
    const/16 v6, 0x8

    if-ne v1, v6, :cond_0

    .line 571
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "JsonReader is closed"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 577
    .restart local v0    # "c":I
    :sswitch_9
    if-ne v1, v4, :cond_10

    .line 578
    iput v2, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peeked:I

    goto/16 :goto_1

    .line 584
    :cond_10
    :sswitch_a
    if-eq v1, v4, :cond_11

    if-ne v1, v3, :cond_12

    .line 586
    :cond_11
    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->checkLenient()V

    .line 587
    iget v3, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    .line 588
    iput v5, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peeked:I

    move v2, v5

    goto/16 :goto_1

    .line 590
    :cond_12
    const-string v3, "Unexpected value"

    invoke-direct {p0, v3}, Lcom/millennialmedia/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v3

    throw v3

    .line 593
    :sswitch_b
    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->checkLenient()V

    .line 594
    const/16 v2, 0x8

    iput v2, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peeked:I

    goto/16 :goto_1

    .line 596
    :sswitch_c
    iget v3, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->stackSize:I

    if-ne v3, v4, :cond_13

    .line 597
    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->checkLenient()V

    .line 599
    :cond_13
    const/16 v2, 0x9

    iput v2, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peeked:I

    goto/16 :goto_1

    .line 601
    :sswitch_d
    const/4 v2, 0x3

    iput v2, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peeked:I

    goto/16 :goto_1

    .line 603
    :sswitch_e
    iput v4, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peeked:I

    move v2, v4

    goto/16 :goto_1

    .line 617
    .restart local v2    # "result":I
    :cond_14
    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->peekNumber()I

    move-result v2

    .line 618
    if-nez v2, :cond_2

    .line 622
    iget-object v3, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->buffer:[C

    iget v4, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    aget-char v3, v3, v4

    invoke-direct {p0, v3}, Lcom/millennialmedia/google/gson/stream/JsonReader;->isLiteral(C)Z

    move-result v3

    if-nez v3, :cond_15

    .line 623
    const-string v3, "Expected value"

    invoke-direct {p0, v3}, Lcom/millennialmedia/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v3

    throw v3

    .line 626
    :cond_15
    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->checkLenient()V

    .line 627
    const/16 v2, 0xa

    iput v2, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peeked:I

    goto/16 :goto_1

    .line 575
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_c
        0x27 -> :sswitch_b
        0x2c -> :sswitch_a
        0x3b -> :sswitch_a
        0x5b -> :sswitch_d
        0x5d -> :sswitch_9
        0x7b -> :sswitch_e
    .end sparse-switch

    .line 491
    :sswitch_data_1
    .sparse-switch
        0x2c -> :sswitch_0
        0x3b -> :sswitch_2
        0x5d -> :sswitch_1
    .end sparse-switch

    .line 507
    :sswitch_data_2
    .sparse-switch
        0x2c -> :sswitch_5
        0x3b -> :sswitch_4
        0x7d -> :sswitch_3
    .end sparse-switch

    .line 519
    :sswitch_data_3
    .sparse-switch
        0x22 -> :sswitch_6
        0x27 -> :sswitch_7
        0x7d -> :sswitch_8
    .end sparse-switch

    .line 545
    :pswitch_data_0
    .packed-switch 0x3a
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private fillBuffer(I)Z
    .locals 7
    .param p1, "minimum"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1360
    iget-object v0, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->buffer:[C

    .line 1361
    .local v0, "buffer":[C
    iget v3, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->lineStart:I

    iget v4, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->lineStart:I

    .line 1362
    iget v3, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->limit:I

    iget v4, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    if-eq v3, v4, :cond_3

    .line 1363
    iget v3, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->limit:I

    iget v4, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->limit:I

    .line 1364
    iget v3, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    iget v4, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->limit:I

    invoke-static {v0, v3, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1369
    :goto_0
    iput v2, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    .line 1371
    :cond_0
    iget-object v3, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->in:Ljava/io/Reader;

    iget v4, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->limit:I

    array-length v5, v0

    iget v6, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->limit:I

    sub-int/2addr v5, v6

    invoke-virtual {v3, v0, v4, v5}, Ljava/io/Reader;->read([CII)I

    move-result v1

    .local v1, "total":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    .line 1372
    iget v3, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->limit:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->limit:I

    .line 1376
    iget v3, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->lineNumber:I

    if-nez v3, :cond_1

    iget v3, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->lineStart:I

    if-nez v3, :cond_1

    iget v3, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->limit:I

    if-lez v3, :cond_1

    aget-char v3, v0, v2

    const v4, 0xfeff

    if-ne v3, v4, :cond_1

    .line 1378
    iget v3, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    .line 1379
    iget v3, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->lineStart:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->lineStart:I

    .line 1380
    add-int/lit8 p1, p1, 0x1

    .line 1383
    :cond_1
    iget v3, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->limit:I

    if-lt v3, p1, :cond_0

    .line 1384
    const/4 v2, 0x1

    .line 1387
    :cond_2
    return v2

    .line 1366
    .end local v1    # "total":I
    :cond_3
    iput v2, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->limit:I

    goto :goto_0
.end method

.method private getColumnNumber()I
    .locals 2

    .prologue
    .line 1397
    iget v0, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    iget v1, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->lineStart:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private getLineNumber()I
    .locals 1

    .prologue
    .line 1392
    iget v0, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->lineNumber:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private isLiteral(C)Z
    .locals 1
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 793
    sparse-switch p1, :sswitch_data_0

    .line 813
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 799
    :sswitch_0
    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->checkLenient()V

    .line 811
    :sswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 793
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0xa -> :sswitch_1
        0xc -> :sswitch_1
        0xd -> :sswitch_1
        0x20 -> :sswitch_1
        0x23 -> :sswitch_0
        0x2c -> :sswitch_1
        0x2f -> :sswitch_0
        0x3a -> :sswitch_1
        0x3b -> :sswitch_0
        0x3d -> :sswitch_0
        0x5b -> :sswitch_1
        0x5c -> :sswitch_0
        0x5d -> :sswitch_1
        0x7b -> :sswitch_1
        0x7d -> :sswitch_1
    .end sparse-switch
.end method

.method private nextNonWhitespace(Z)I
    .locals 10
    .param p1, "throwOnEof"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1417
    iget-object v0, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->buffer:[C

    .line 1418
    .local v0, "buffer":[C
    iget v4, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    .line 1419
    .local v4, "p":I
    iget v3, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->limit:I

    .line 1421
    .local v3, "l":I
    :goto_0
    if-ne v4, v3, :cond_1

    .line 1422
    iput v4, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    .line 1423
    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lcom/millennialmedia/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1491
    if-eqz p1, :cond_8

    .line 1492
    new-instance v7, Ljava/io/EOFException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "End of input at line "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " column "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1426
    :cond_0
    iget v4, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    .line 1427
    iget v3, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->limit:I

    .line 1430
    :cond_1
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "p":I
    .local v5, "p":I
    aget-char v1, v0, v4

    .line 1431
    .local v1, "c":I
    const/16 v7, 0xa

    if-ne v1, v7, :cond_2

    .line 1432
    iget v7, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->lineNumber:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->lineNumber:I

    .line 1433
    iput v5, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->lineStart:I

    move v4, v5

    .line 1434
    .end local v5    # "p":I
    .restart local v4    # "p":I
    goto :goto_0

    .line 1435
    .end local v4    # "p":I
    .restart local v5    # "p":I
    :cond_2
    const/16 v7, 0x20

    if-eq v1, v7, :cond_9

    const/16 v7, 0xd

    if-eq v1, v7, :cond_9

    const/16 v7, 0x9

    if-ne v1, v7, :cond_3

    move v4, v5

    .line 1436
    .end local v5    # "p":I
    .restart local v4    # "p":I
    goto :goto_0

    .line 1439
    .end local v4    # "p":I
    .restart local v5    # "p":I
    :cond_3
    const/16 v7, 0x2f

    if-ne v1, v7, :cond_6

    .line 1440
    iput v5, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    .line 1441
    if-ne v5, v3, :cond_4

    .line 1442
    iget v7, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    .line 1444
    const/4 v7, 0x2

    invoke-direct {p0, v7}, Lcom/millennialmedia/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v2

    .line 1445
    .local v2, "charsLoaded":Z
    iget v7, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    .line 1446
    if-nez v2, :cond_4

    move v4, v5

    .line 1495
    .end local v1    # "c":I
    .end local v2    # "charsLoaded":Z
    .end local v5    # "p":I
    .restart local v4    # "p":I
    :goto_1
    return v1

    .line 1451
    .end local v4    # "p":I
    .restart local v1    # "c":I
    .restart local v5    # "p":I
    :cond_4
    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->checkLenient()V

    .line 1452
    iget v7, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    aget-char v6, v0, v7

    .line 1453
    .local v6, "peek":C
    sparse-switch v6, :sswitch_data_0

    move v4, v5

    .line 1473
    .end local v5    # "p":I
    .restart local v4    # "p":I
    goto :goto_1

    .line 1456
    .end local v4    # "p":I
    .restart local v5    # "p":I
    :sswitch_0
    iget v7, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    .line 1457
    const-string v7, "*/"

    invoke-direct {p0, v7}, Lcom/millennialmedia/google/gson/stream/JsonReader;->skipTo(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 1458
    const-string v7, "Unterminated comment"

    invoke-direct {p0, v7}, Lcom/millennialmedia/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v7

    throw v7

    .line 1460
    :cond_5
    iget v7, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v4, v7, 0x2

    .line 1461
    .end local v5    # "p":I
    .restart local v4    # "p":I
    iget v3, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->limit:I

    .line 1462
    goto/16 :goto_0

    .line 1466
    .end local v4    # "p":I
    .restart local v5    # "p":I
    :sswitch_1
    iget v7, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    .line 1467
    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->skipToEndOfLine()V

    .line 1468
    iget v4, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    .line 1469
    .end local v5    # "p":I
    .restart local v4    # "p":I
    iget v3, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->limit:I

    .line 1470
    goto/16 :goto_0

    .line 1475
    .end local v4    # "p":I
    .end local v6    # "peek":C
    .restart local v5    # "p":I
    :cond_6
    const/16 v7, 0x23

    if-ne v1, v7, :cond_7

    .line 1476
    iput v5, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    .line 1482
    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->checkLenient()V

    .line 1483
    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->skipToEndOfLine()V

    .line 1484
    iget v4, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    .line 1485
    .end local v5    # "p":I
    .restart local v4    # "p":I
    iget v3, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->limit:I

    goto/16 :goto_0

    .line 1487
    .end local v4    # "p":I
    .restart local v5    # "p":I
    :cond_7
    iput v5, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    move v4, v5

    .line 1488
    .end local v5    # "p":I
    .restart local v4    # "p":I
    goto :goto_1

    .line 1495
    .end local v1    # "c":I
    :cond_8
    const/4 v1, -0x1

    goto :goto_1

    .end local v4    # "p":I
    .restart local v1    # "c":I
    .restart local v5    # "p":I
    :cond_9
    move v4, v5

    .end local v5    # "p":I
    .restart local v4    # "p":I
    goto/16 :goto_0

    .line 1453
    :sswitch_data_0
    .sparse-switch
        0x2a -> :sswitch_0
        0x2f -> :sswitch_1
    .end sparse-switch
.end method

.method private nextQuotedValue(C)Ljava/lang/String;
    .locals 8
    .param p1, "quote"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1062
    iget-object v0, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->buffer:[C

    .line 1063
    .local v0, "buffer":[C
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1065
    .local v1, "builder":Ljava/lang/StringBuilder;
    :cond_0
    iget v4, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    .line 1066
    .local v4, "p":I
    iget v3, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->limit:I

    .line 1068
    .local v3, "l":I
    move v6, v4

    .local v6, "start":I
    move v5, v4

    .line 1069
    .end local v4    # "p":I
    .local v5, "p":I
    :goto_0
    if-ge v5, v3, :cond_4

    .line 1070
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "p":I
    .restart local v4    # "p":I
    aget-char v2, v0, v5

    .line 1072
    .local v2, "c":I
    if-ne v2, p1, :cond_1

    .line 1073
    iput v4, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    .line 1074
    sub-int v7, v4, v6

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v1, v0, v6, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1075
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 1076
    :cond_1
    const/16 v7, 0x5c

    if-ne v2, v7, :cond_3

    .line 1077
    iput v4, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    .line 1078
    sub-int v7, v4, v6

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v1, v0, v6, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1079
    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->readEscapeCharacter()C

    move-result v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1080
    iget v4, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    .line 1081
    iget v3, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->limit:I

    .line 1082
    move v6, v4

    :cond_2
    :goto_1
    move v5, v4

    .line 1087
    .end local v4    # "p":I
    .restart local v5    # "p":I
    goto :goto_0

    .line 1083
    .end local v5    # "p":I
    .restart local v4    # "p":I
    :cond_3
    const/16 v7, 0xa

    if-ne v2, v7, :cond_2

    .line 1084
    iget v7, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->lineNumber:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->lineNumber:I

    .line 1085
    iput v4, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->lineStart:I

    goto :goto_1

    .line 1089
    .end local v2    # "c":I
    .end local v4    # "p":I
    .restart local v5    # "p":I
    :cond_4
    sub-int v7, v5, v6

    invoke-virtual {v1, v0, v6, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1090
    iput v5, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    .line 1091
    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lcom/millennialmedia/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1092
    const-string v7, "Unterminated string"

    invoke-direct {p0, v7}, Lcom/millennialmedia/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v7

    throw v7
.end method

.method private nextUnquotedValue()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1103
    const/4 v0, 0x0

    .line 1104
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 1108
    .local v1, "i":I
    :cond_0
    :goto_0
    iget v3, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v3, v1

    iget v4, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->limit:I

    if-ge v3, v4, :cond_2

    .line 1109
    iget-object v3, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->buffer:[C

    iget v4, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v4, v1

    aget-char v3, v3, v4

    sparse-switch v3, :sswitch_data_0

    .line 1108
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1115
    :sswitch_0
    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->checkLenient()V

    .line 1154
    :cond_1
    :goto_1
    :sswitch_1
    if-nez v0, :cond_5

    .line 1155
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->buffer:[C

    iget v4, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    invoke-direct {v2, v3, v4, v1}, Ljava/lang/String;-><init>([CII)V

    .line 1160
    .local v2, "result":Ljava/lang/String;
    :goto_2
    iget v3, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    .line 1161
    return-object v2

    .line 1132
    .end local v2    # "result":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->buffer:[C

    array-length v3, v3

    if-ge v1, v3, :cond_3

    .line 1133
    add-int/lit8 v3, v1, 0x1

    invoke-direct {p0, v3}, Lcom/millennialmedia/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 1142
    :cond_3
    if-nez v0, :cond_4

    .line 1143
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0    # "builder":Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1145
    .restart local v0    # "builder":Ljava/lang/StringBuilder;
    :cond_4
    iget-object v3, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->buffer:[C

    iget v4, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    invoke-virtual {v0, v3, v4, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1146
    iget v3, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    .line 1147
    const/4 v1, 0x0

    .line 1148
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/millennialmedia/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 1157
    :cond_5
    iget-object v3, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->buffer:[C

    iget v4, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    invoke-virtual {v0, v3, v4, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1158
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "result":Ljava/lang/String;
    goto :goto_2

    .line 1109
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0xa -> :sswitch_1
        0xc -> :sswitch_1
        0xd -> :sswitch_1
        0x20 -> :sswitch_1
        0x23 -> :sswitch_0
        0x2c -> :sswitch_1
        0x2f -> :sswitch_0
        0x3a -> :sswitch_1
        0x3b -> :sswitch_0
        0x3d -> :sswitch_0
        0x5b -> :sswitch_1
        0x5c -> :sswitch_0
        0x5d -> :sswitch_1
        0x7b -> :sswitch_1
        0x7d -> :sswitch_1
    .end sparse-switch
.end method

.method private peekKeyword()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 634
    iget-object v7, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->buffer:[C

    iget v8, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    aget-char v0, v7, v8

    .line 638
    .local v0, "c":C
    const/16 v7, 0x74

    if-eq v0, v7, :cond_0

    const/16 v7, 0x54

    if-ne v0, v7, :cond_1

    .line 639
    :cond_0
    const-string v2, "true"

    .line 640
    .local v2, "keyword":Ljava/lang/String;
    const-string v3, "TRUE"

    .line 641
    .local v3, "keywordUpper":Ljava/lang/String;
    const/4 v5, 0x5

    .line 655
    .local v5, "peeking":I
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    .line 656
    .local v4, "length":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    if-ge v1, v4, :cond_8

    .line 657
    iget v7, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v7, v1

    iget v8, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->limit:I

    if-lt v7, v8, :cond_6

    add-int/lit8 v7, v1, 0x1

    invoke-direct {p0, v7}, Lcom/millennialmedia/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v7

    if-nez v7, :cond_6

    move v5, v6

    .line 674
    .end local v1    # "i":I
    .end local v2    # "keyword":Ljava/lang/String;
    .end local v3    # "keywordUpper":Ljava/lang/String;
    .end local v4    # "length":I
    .end local v5    # "peeking":I
    :goto_2
    return v5

    .line 642
    :cond_1
    const/16 v7, 0x66

    if-eq v0, v7, :cond_2

    const/16 v7, 0x46

    if-ne v0, v7, :cond_3

    .line 643
    :cond_2
    const-string v2, "false"

    .line 644
    .restart local v2    # "keyword":Ljava/lang/String;
    const-string v3, "FALSE"

    .line 645
    .restart local v3    # "keywordUpper":Ljava/lang/String;
    const/4 v5, 0x6

    .restart local v5    # "peeking":I
    goto :goto_0

    .line 646
    .end local v2    # "keyword":Ljava/lang/String;
    .end local v3    # "keywordUpper":Ljava/lang/String;
    .end local v5    # "peeking":I
    :cond_3
    const/16 v7, 0x6e

    if-eq v0, v7, :cond_4

    const/16 v7, 0x4e

    if-ne v0, v7, :cond_5

    .line 647
    :cond_4
    const-string v2, "null"

    .line 648
    .restart local v2    # "keyword":Ljava/lang/String;
    const-string v3, "NULL"

    .line 649
    .restart local v3    # "keywordUpper":Ljava/lang/String;
    const/4 v5, 0x7

    .restart local v5    # "peeking":I
    goto :goto_0

    .end local v2    # "keyword":Ljava/lang/String;
    .end local v3    # "keywordUpper":Ljava/lang/String;
    .end local v5    # "peeking":I
    :cond_5
    move v5, v6

    .line 651
    goto :goto_2

    .line 660
    .restart local v1    # "i":I
    .restart local v2    # "keyword":Ljava/lang/String;
    .restart local v3    # "keywordUpper":Ljava/lang/String;
    .restart local v4    # "length":I
    .restart local v5    # "peeking":I
    :cond_6
    iget-object v7, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->buffer:[C

    iget v8, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v8, v1

    aget-char v0, v7, v8

    .line 661
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v0, v7, :cond_7

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v0, v7, :cond_7

    move v5, v6

    .line 662
    goto :goto_2

    .line 656
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 666
    :cond_8
    iget v7, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v7, v4

    iget v8, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->limit:I

    if-lt v7, v8, :cond_9

    add-int/lit8 v7, v4, 0x1

    invoke-direct {p0, v7}, Lcom/millennialmedia/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v7

    if-eqz v7, :cond_a

    :cond_9
    iget-object v7, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->buffer:[C

    iget v8, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v8, v4

    aget-char v7, v7, v8

    invoke-direct {p0, v7}, Lcom/millennialmedia/google/gson/stream/JsonReader;->isLiteral(C)Z

    move-result v7

    if-eqz v7, :cond_a

    move v5, v6

    .line 668
    goto :goto_2

    .line 673
    :cond_a
    iget v6, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v6, v4

    iput v6, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    .line 674
    iput v5, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peeked:I

    goto :goto_2
.end method

.method private peekNumber()I
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 681
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/millennialmedia/google/gson/stream/JsonReader;->buffer:[C

    .line 682
    .local v2, "buffer":[C
    move-object/from16 v0, p0

    iget v9, v0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    .line 683
    .local v9, "p":I
    move-object/from16 v0, p0

    iget v6, v0, Lcom/millennialmedia/google/gson/stream/JsonReader;->limit:I

    .line 685
    .local v6, "l":I
    const-wide/16 v12, 0x0

    .line 686
    .local v12, "value":J
    const/4 v8, 0x0

    .line 687
    .local v8, "negative":Z
    const/4 v4, 0x1

    .line 688
    .local v4, "fitsInLong":Z
    const/4 v7, 0x0

    .line 690
    .local v7, "last":I
    const/4 v5, 0x0

    .line 694
    .local v5, "i":I
    :goto_0
    add-int v14, v9, v5

    if-ne v14, v6, :cond_4

    .line 695
    array-length v14, v2

    if-ne v5, v14, :cond_0

    .line 700
    const/4 v14, 0x0

    .line 787
    .end local v12    # "value":J
    :goto_1
    return v14

    .line 702
    .restart local v12    # "value":J
    :cond_0
    add-int/lit8 v14, v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/millennialmedia/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v14

    if-nez v14, :cond_3

    .line 776
    :cond_1
    const/4 v14, 0x2

    if-ne v7, v14, :cond_17

    if-eqz v4, :cond_17

    const-wide/high16 v14, -0x8000000000000000L

    cmp-long v14, v12, v14

    if-nez v14, :cond_2

    if-eqz v8, :cond_17

    .line 778
    :cond_2
    if-eqz v8, :cond_16

    .end local v12    # "value":J
    :goto_2
    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peekedLong:J

    .line 779
    move-object/from16 v0, p0

    iget v14, v0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v14, v5

    move-object/from16 v0, p0

    iput v14, v0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    .line 780
    const/16 v14, 0xf

    move-object/from16 v0, p0

    iput v14, v0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peeked:I

    goto :goto_1

    .line 705
    .restart local v12    # "value":J
    :cond_3
    move-object/from16 v0, p0

    iget v9, v0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    .line 706
    move-object/from16 v0, p0

    iget v6, v0, Lcom/millennialmedia/google/gson/stream/JsonReader;->limit:I

    .line 709
    :cond_4
    add-int v14, v9, v5

    aget-char v3, v2, v14

    .line 710
    .local v3, "c":C
    sparse-switch v3, :sswitch_data_0

    .line 746
    const/16 v14, 0x30

    if-lt v3, v14, :cond_5

    const/16 v14, 0x39

    if-le v3, v14, :cond_d

    .line 747
    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/millennialmedia/google/gson/stream/JsonReader;->isLiteral(C)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 750
    const/4 v14, 0x0

    goto :goto_1

    .line 712
    :sswitch_0
    if-nez v7, :cond_7

    .line 713
    const/4 v8, 0x1

    .line 714
    const/4 v7, 0x1

    .line 693
    :cond_6
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 716
    :cond_7
    const/4 v14, 0x5

    if-ne v7, v14, :cond_8

    .line 717
    const/4 v7, 0x6

    .line 718
    goto :goto_3

    .line 720
    :cond_8
    const/4 v14, 0x0

    goto :goto_1

    .line 723
    :sswitch_1
    const/4 v14, 0x5

    if-ne v7, v14, :cond_9

    .line 724
    const/4 v7, 0x6

    .line 725
    goto :goto_3

    .line 727
    :cond_9
    const/4 v14, 0x0

    goto :goto_1

    .line 731
    :sswitch_2
    const/4 v14, 0x2

    if-eq v7, v14, :cond_a

    const/4 v14, 0x4

    if-ne v7, v14, :cond_b

    .line 733
    :cond_a
    const/4 v7, 0x5

    .line 734
    goto :goto_3

    .line 736
    :cond_b
    const/4 v14, 0x0

    goto :goto_1

    .line 739
    :sswitch_3
    const/4 v14, 0x2

    if-ne v7, v14, :cond_c

    .line 740
    const/4 v7, 0x3

    .line 741
    goto :goto_3

    .line 743
    :cond_c
    const/4 v14, 0x0

    goto :goto_1

    .line 752
    :cond_d
    const/4 v14, 0x1

    if-eq v7, v14, :cond_e

    if-nez v7, :cond_f

    .line 753
    :cond_e
    add-int/lit8 v14, v3, -0x30

    neg-int v14, v14

    int-to-long v12, v14

    .line 754
    const/4 v7, 0x2

    goto :goto_3

    .line 755
    :cond_f
    const/4 v14, 0x2

    if-ne v7, v14, :cond_13

    .line 756
    const-wide/16 v14, 0x0

    cmp-long v14, v12, v14

    if-nez v14, :cond_10

    .line 757
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 761
    :cond_10
    const-wide/16 v14, 0xa

    mul-long/2addr v14, v12

    add-int/lit8 v16, v3, -0x30

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    sub-long v10, v14, v16

    .line 762
    .local v10, "newValue":J
    const-wide v14, -0xcccccccccccccccL

    cmp-long v14, v12, v14

    if-gtz v14, :cond_11

    const-wide v14, -0xcccccccccccccccL

    cmp-long v14, v12, v14

    if-nez v14, :cond_12

    cmp-long v14, v10, v12

    if-gez v14, :cond_12

    :cond_11
    const/4 v14, 0x1

    :goto_4
    and-int/2addr v4, v14

    .line 764
    move-wide v12, v10

    .line 765
    goto :goto_3

    .line 762
    :cond_12
    const/4 v14, 0x0

    goto :goto_4

    .line 765
    .end local v10    # "newValue":J
    :cond_13
    const/4 v14, 0x3

    if-ne v7, v14, :cond_14

    .line 766
    const/4 v7, 0x4

    goto :goto_3

    .line 767
    :cond_14
    const/4 v14, 0x5

    if-eq v7, v14, :cond_15

    const/4 v14, 0x6

    if-ne v7, v14, :cond_6

    .line 769
    :cond_15
    const/4 v7, 0x7

    goto :goto_3

    .line 778
    .end local v3    # "c":C
    :cond_16
    neg-long v12, v12

    goto/16 :goto_2

    .line 781
    :cond_17
    const/4 v14, 0x2

    if-eq v7, v14, :cond_18

    const/4 v14, 0x4

    if-eq v7, v14, :cond_18

    const/4 v14, 0x7

    if-ne v7, v14, :cond_19

    .line 784
    :cond_18
    move-object/from16 v0, p0

    iput v5, v0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peekedNumberLength:I

    .line 785
    const/16 v14, 0x10

    move-object/from16 v0, p0

    iput v14, v0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peeked:I

    goto/16 :goto_1

    .line 787
    :cond_19
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 710
    :sswitch_data_0
    .sparse-switch
        0x2b -> :sswitch_1
        0x2d -> :sswitch_0
        0x2e -> :sswitch_3
        0x45 -> :sswitch_2
        0x65 -> :sswitch_2
    .end sparse-switch
.end method

.method private push(I)V
    .locals 4
    .param p1, "newTop"    # I

    .prologue
    const/4 v3, 0x0

    .line 1346
    iget v1, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->stackSize:I

    iget-object v2, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->stack:[I

    array-length v2, v2

    if-ne v1, v2, :cond_0

    .line 1347
    iget v1, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->stackSize:I

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [I

    .line 1348
    .local v0, "newStack":[I
    iget-object v1, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->stack:[I

    iget v2, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->stackSize:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1349
    iput-object v0, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->stack:[I

    .line 1351
    .end local v0    # "newStack":[I
    :cond_0
    iget-object v1, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->stack:[I

    iget v2, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->stackSize:I

    aput p1, v1, v2

    .line 1352
    return-void
.end method

.method private readEscapeCharacter()C
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x4

    .line 1566
    iget v5, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    iget v6, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->limit:I

    if-ne v5, v6, :cond_0

    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/millennialmedia/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1567
    const-string v5, "Unterminated escape sequence"

    invoke-direct {p0, v5}, Lcom/millennialmedia/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v5

    throw v5

    .line 1570
    :cond_0
    iget-object v5, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->buffer:[C

    iget v6, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    aget-char v2, v5, v6

    .line 1571
    .local v2, "escaped":C
    sparse-switch v2, :sswitch_data_0

    :goto_0
    move v4, v2

    .line 1620
    :goto_1
    return v4

    .line 1573
    :sswitch_0
    iget v5, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v5, v5, 0x4

    iget v6, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->limit:I

    if-le v5, v6, :cond_1

    invoke-direct {p0, v10}, Lcom/millennialmedia/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1574
    const-string v5, "Unterminated escape sequence"

    invoke-direct {p0, v5}, Lcom/millennialmedia/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v5

    throw v5

    .line 1578
    :cond_1
    const/4 v4, 0x0

    .line 1579
    .local v4, "result":C
    iget v3, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    .local v3, "i":I
    add-int/lit8 v1, v3, 0x4

    .local v1, "end":I
    :goto_2
    if-ge v3, v1, :cond_5

    .line 1580
    iget-object v5, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->buffer:[C

    aget-char v0, v5, v3

    .line 1581
    .local v0, "c":C
    shl-int/lit8 v5, v4, 0x4

    int-to-char v4, v5

    .line 1582
    const/16 v5, 0x30

    if-lt v0, v5, :cond_2

    const/16 v5, 0x39

    if-gt v0, v5, :cond_2

    .line 1583
    add-int/lit8 v5, v0, -0x30

    add-int/2addr v5, v4

    int-to-char v4, v5

    .line 1579
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1584
    :cond_2
    const/16 v5, 0x61

    if-lt v0, v5, :cond_3

    const/16 v5, 0x66

    if-gt v0, v5, :cond_3

    .line 1585
    add-int/lit8 v5, v0, -0x61

    add-int/lit8 v5, v5, 0xa

    add-int/2addr v5, v4

    int-to-char v4, v5

    goto :goto_3

    .line 1586
    :cond_3
    const/16 v5, 0x41

    if-lt v0, v5, :cond_4

    const/16 v5, 0x46

    if-gt v0, v5, :cond_4

    .line 1587
    add-int/lit8 v5, v0, -0x41

    add-int/lit8 v5, v5, 0xa

    add-int/2addr v5, v4

    int-to-char v4, v5

    goto :goto_3

    .line 1589
    :cond_4
    new-instance v5, Ljava/lang/NumberFormatException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\\u"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/lang/String;

    iget-object v8, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->buffer:[C

    iget v9, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    invoke-direct {v7, v8, v9, v10}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1593
    .end local v0    # "c":C
    :cond_5
    iget v5, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    goto :goto_1

    .line 1597
    .end local v1    # "end":I
    .end local v3    # "i":I
    .end local v4    # "result":C
    :sswitch_1
    const/16 v4, 0x9

    goto :goto_1

    .line 1600
    :sswitch_2
    const/16 v4, 0x8

    goto :goto_1

    .line 1603
    :sswitch_3
    const/16 v4, 0xa

    goto/16 :goto_1

    .line 1606
    :sswitch_4
    const/16 v4, 0xd

    goto/16 :goto_1

    .line 1609
    :sswitch_5
    const/16 v4, 0xc

    goto/16 :goto_1

    .line 1612
    :sswitch_6
    iget v5, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->lineNumber:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->lineNumber:I

    .line 1613
    iget v5, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    iput v5, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->lineStart:I

    goto/16 :goto_0

    .line 1571
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_6
        0x62 -> :sswitch_2
        0x66 -> :sswitch_5
        0x6e -> :sswitch_3
        0x72 -> :sswitch_4
        0x74 -> :sswitch_1
        0x75 -> :sswitch_0
    .end sparse-switch
.end method

.method private skipQuotedValue(C)V
    .locals 6
    .param p1, "quote"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1168
    iget-object v0, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->buffer:[C

    .line 1170
    .local v0, "buffer":[C
    :cond_0
    iget v3, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    .line 1171
    .local v3, "p":I
    iget v2, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->limit:I

    .local v2, "l":I
    move v4, v3

    .line 1173
    .end local v3    # "p":I
    .local v4, "p":I
    :goto_0
    if-ge v4, v2, :cond_4

    .line 1174
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "p":I
    .restart local v3    # "p":I
    aget-char v1, v0, v4

    .line 1175
    .local v1, "c":I
    if-ne v1, p1, :cond_1

    .line 1176
    iput v3, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    .line 1177
    return-void

    .line 1178
    :cond_1
    const/16 v5, 0x5c

    if-ne v1, v5, :cond_3

    .line 1179
    iput v3, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    .line 1180
    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->readEscapeCharacter()C

    .line 1181
    iget v3, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    .line 1182
    iget v2, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->limit:I

    :cond_2
    :goto_1
    move v4, v3

    .line 1187
    .end local v3    # "p":I
    .restart local v4    # "p":I
    goto :goto_0

    .line 1183
    .end local v4    # "p":I
    .restart local v3    # "p":I
    :cond_3
    const/16 v5, 0xa

    if-ne v1, v5, :cond_2

    .line 1184
    iget v5, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->lineNumber:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->lineNumber:I

    .line 1185
    iput v3, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->lineStart:I

    goto :goto_1

    .line 1188
    .end local v1    # "c":I
    .end local v3    # "p":I
    .restart local v4    # "p":I
    :cond_4
    iput v4, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    .line 1189
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/millennialmedia/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1190
    const-string v5, "Unterminated string"

    invoke-direct {p0, v5}, Lcom/millennialmedia/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v5

    throw v5
.end method

.method private skipTo(Ljava/lang/String;)Z
    .locals 3
    .param p1, "toFind"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1532
    :goto_0
    iget v1, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->limit:I

    if-le v1, v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/millennialmedia/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1533
    :cond_0
    iget-object v1, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->buffer:[C

    iget v2, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    aget-char v1, v1, v2

    const/16 v2, 0xa

    if-ne v1, v2, :cond_2

    .line 1534
    iget v1, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->lineNumber:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->lineNumber:I

    .line 1535
    iget v1, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->lineStart:I

    .line 1532
    :cond_1
    iget v1, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    goto :goto_0

    .line 1538
    :cond_2
    const/4 v0, 0x0

    .local v0, "c":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 1539
    iget-object v1, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->buffer:[C

    iget v2, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v2, v0

    aget-char v1, v1, v2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v1, v2, :cond_1

    .line 1538
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1543
    :cond_3
    const/4 v1, 0x1

    .line 1545
    .end local v0    # "c":I
    :goto_2
    return v1

    :cond_4
    const/4 v1, 0x0

    goto :goto_2
.end method

.method private skipToEndOfLine()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1513
    :cond_0
    iget v1, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    iget v2, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->limit:I

    if-lt v1, v2, :cond_1

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/millennialmedia/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1514
    :cond_1
    iget-object v1, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->buffer:[C

    iget v2, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    aget-char v0, v1, v2

    .line 1515
    .local v0, "c":C
    const/16 v1, 0xa

    if-ne v0, v1, :cond_3

    .line 1516
    iget v1, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->lineNumber:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->lineNumber:I

    .line 1517
    iget v1, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    iput v1, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->lineStart:I

    .line 1523
    .end local v0    # "c":C
    :cond_2
    :goto_0
    return-void

    .line 1519
    .restart local v0    # "c":C
    :cond_3
    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    goto :goto_0
.end method

.method private skipUnquotedValue()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1196
    :cond_0
    const/4 v0, 0x0

    .line 1197
    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->limit:I

    if-ge v1, v2, :cond_1

    .line 1198
    iget-object v1, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->buffer:[C

    iget v2, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v2, v0

    aget-char v1, v1, v2

    sparse-switch v1, :sswitch_data_0

    .line 1197
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1204
    :sswitch_0
    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->checkLenient()V

    .line 1216
    :sswitch_1
    iget v1, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    .line 1222
    :goto_1
    return-void

    .line 1220
    :cond_1
    iget v1, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    .line 1221
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/millennialmedia/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 1198
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0xa -> :sswitch_1
        0xc -> :sswitch_1
        0xd -> :sswitch_1
        0x20 -> :sswitch_1
        0x23 -> :sswitch_0
        0x2c -> :sswitch_1
        0x2f -> :sswitch_0
        0x3a -> :sswitch_1
        0x3b -> :sswitch_0
        0x3d -> :sswitch_0
        0x5b -> :sswitch_1
        0x5c -> :sswitch_0
        0x5d -> :sswitch_1
        0x7b -> :sswitch_1
        0x7d -> :sswitch_1
    .end sparse-switch
.end method

.method private syntaxError(Ljava/lang/String;)Ljava/io/IOException;
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1630
    new-instance v0, Lcom/millennialmedia/google/gson/stream/MalformedJsonException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/millennialmedia/google/gson/stream/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public beginArray()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 354
    iget v0, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peeked:I

    .line 355
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 356
    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 358
    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 359
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/millennialmedia/google/gson/stream/JsonReader;->push(I)V

    .line 360
    const/4 v1, 0x0

    iput v1, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peeked:I

    .line 366
    return-void

    .line 362
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected BEGIN_ARRAY but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->peek()Lcom/millennialmedia/google/gson/stream/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at line "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " column "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public beginObject()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 394
    iget v0, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peeked:I

    .line 395
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 396
    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 398
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 399
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/millennialmedia/google/gson/stream/JsonReader;->push(I)V

    .line 400
    const/4 v1, 0x0

    iput v1, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peeked:I

    .line 406
    return-void

    .line 402
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected BEGIN_OBJECT but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->peek()Lcom/millennialmedia/google/gson/stream/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at line "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " column "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1297
    iput v2, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peeked:I

    .line 1298
    iget-object v0, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->stack:[I

    const/16 v1, 0x8

    aput v1, v0, v2

    .line 1299
    const/4 v0, 0x1

    iput v0, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->stackSize:I

    .line 1300
    iget-object v0, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 1301
    return-void
.end method

.method public endArray()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 374
    iget v0, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peeked:I

    .line 375
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 376
    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 378
    :cond_0
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 379
    iget v1, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->stackSize:I

    .line 380
    const/4 v1, 0x0

    iput v1, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peeked:I

    .line 386
    return-void

    .line 382
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected END_ARRAY but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->peek()Lcom/millennialmedia/google/gson/stream/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at line "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " column "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public endObject()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 414
    iget v0, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peeked:I

    .line 415
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 416
    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 418
    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 419
    iget v1, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->stackSize:I

    .line 420
    const/4 v1, 0x0

    iput v1, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peeked:I

    .line 426
    return-void

    .line 422
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected END_OBJECT but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->peek()Lcom/millennialmedia/google/gson/stream/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at line "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " column "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public hasNext()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 433
    iget v0, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peeked:I

    .line 434
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 435
    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 437
    :cond_0
    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final isLenient()Z
    .locals 1

    .prologue
    .line 345
    iget-boolean v0, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->lenient:Z

    return v0
.end method

.method public nextBoolean()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 898
    iget v0, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peeked:I

    .line 899
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 900
    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 902
    :cond_0
    const/4 v2, 0x5

    if-ne v0, v2, :cond_1

    .line 903
    iput v1, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peeked:I

    .line 904
    const/4 v1, 0x1

    .line 907
    :goto_0
    return v1

    .line 905
    :cond_1
    const/4 v2, 0x6

    if-ne v0, v2, :cond_2

    .line 906
    iput v1, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peeked:I

    goto :goto_0

    .line 909
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected a boolean but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->peek()Lcom/millennialmedia/google/gson/stream/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at line "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " column "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public nextDouble()D
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0xb

    const/16 v4, 0x8

    const/4 v7, 0x0

    .line 950
    iget v0, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peeked:I

    .line 951
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 952
    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 955
    :cond_0
    const/16 v1, 0xf

    if-ne v0, v1, :cond_1

    .line 956
    iput v7, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peeked:I

    .line 957
    iget-wide v4, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peekedLong:J

    long-to-double v2, v4

    .line 984
    :goto_0
    return-wide v2

    .line 960
    :cond_1
    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 961
    new-instance v1, Ljava/lang/String;

    iget-object v4, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->buffer:[C

    iget v5, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    iget v6, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peekedNumberLength:I

    invoke-direct {v1, v4, v5, v6}, Ljava/lang/String;-><init>([CII)V

    iput-object v1, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 962
    iget v1, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    iget v4, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peekedNumberLength:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    .line 974
    :cond_2
    :goto_1
    iput v8, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peeked:I

    .line 975
    iget-object v1, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 977
    .local v2, "result":D
    iget-boolean v1, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->lenient:Z

    if-nez v1, :cond_9

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 978
    :cond_3
    new-instance v1, Lcom/millennialmedia/google/gson/stream/MalformedJsonException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "JSON forbids NaN and infinities: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " at line "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " column "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/millennialmedia/google/gson/stream/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 963
    .end local v2    # "result":D
    :cond_4
    if-eq v0, v4, :cond_5

    const/16 v1, 0x9

    if-ne v0, v1, :cond_7

    .line 964
    :cond_5
    if-ne v0, v4, :cond_6

    const/16 v1, 0x27

    :goto_2
    invoke-direct {p0, v1}, Lcom/millennialmedia/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    goto :goto_1

    :cond_6
    const/16 v1, 0x22

    goto :goto_2

    .line 966
    :cond_7
    const/16 v1, 0xa

    if-ne v0, v1, :cond_8

    .line 967
    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->nextUnquotedValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    goto :goto_1

    .line 968
    :cond_8
    if-eq v0, v8, :cond_2

    .line 969
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected a double but was "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->peek()Lcom/millennialmedia/google/gson/stream/JsonToken;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " at line "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " column "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 982
    .restart local v2    # "result":D
    :cond_9
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 983
    iput v7, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peeked:I

    goto/16 :goto_0
.end method

.method public nextInt()I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x8

    const/4 v10, 0x0

    .line 1240
    iget v2, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peeked:I

    .line 1241
    .local v2, "p":I
    if-nez v2, :cond_0

    .line 1242
    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->doPeek()I

    move-result v2

    .line 1246
    :cond_0
    const/16 v5, 0xf

    if-ne v2, v5, :cond_2

    .line 1247
    iget-wide v6, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peekedLong:J

    long-to-int v3, v6

    .line 1248
    .local v3, "result":I
    iget-wide v6, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peekedLong:J

    int-to-long v8, v3

    cmp-long v5, v6, v8

    if-eqz v5, :cond_1

    .line 1250
    new-instance v5, Ljava/lang/NumberFormatException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Expected an int but was "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peekedLong:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " at line "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " column "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1254
    :cond_1
    iput v10, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peeked:I

    move v4, v3

    .line 1289
    .end local v3    # "result":I
    .local v4, "result":I
    :goto_0
    return v4

    .line 1258
    .end local v4    # "result":I
    :cond_2
    const/16 v5, 0x10

    if-ne v2, v5, :cond_3

    .line 1259
    new-instance v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->buffer:[C

    iget v7, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    iget v8, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peekedNumberLength:I

    invoke-direct {v5, v6, v7, v8}, Ljava/lang/String;-><init>([CII)V

    iput-object v5, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 1260
    iget v5, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    iget v6, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peekedNumberLength:I

    add-int/2addr v5, v6

    iput v5, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    .line 1277
    :goto_1
    const/16 v5, 0xb

    iput v5, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peeked:I

    .line 1278
    iget-object v5, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 1280
    .local v0, "asDouble":D
    double-to-int v3, v0

    .line 1281
    .restart local v3    # "result":I
    int-to-double v6, v3

    cmpl-double v5, v6, v0

    if-eqz v5, :cond_7

    .line 1283
    new-instance v5, Ljava/lang/NumberFormatException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Expected an int but was "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " at line "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " column "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1261
    .end local v0    # "asDouble":D
    .end local v3    # "result":I
    :cond_3
    if-eq v2, v6, :cond_4

    const/16 v5, 0x9

    if-ne v2, v5, :cond_6

    .line 1262
    :cond_4
    if-ne v2, v6, :cond_5

    const/16 v5, 0x27

    :goto_2
    invoke-direct {p0, v5}, Lcom/millennialmedia/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 1265
    :try_start_0
    iget-object v5, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1266
    .restart local v3    # "result":I
    const/4 v5, 0x0

    iput v5, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peeked:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v3

    .line 1267
    .end local v3    # "result":I
    .restart local v4    # "result":I
    goto :goto_0

    .line 1262
    .end local v4    # "result":I
    :cond_5
    const/16 v5, 0x22

    goto :goto_2

    .line 1272
    :cond_6
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Expected an int but was "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->peek()Lcom/millennialmedia/google/gson/stream/JsonToken;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " at line "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " column "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1287
    .restart local v0    # "asDouble":D
    .restart local v3    # "result":I
    :cond_7
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 1288
    iput v10, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peeked:I

    move v4, v3

    .line 1289
    .end local v3    # "result":I
    .restart local v4    # "result":I
    goto/16 :goto_0

    .line 1268
    .end local v0    # "asDouble":D
    .end local v4    # "result":I
    :catch_0
    move-exception v5

    goto/16 :goto_1
.end method

.method public nextLong()J
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x8

    const/4 v9, 0x0

    .line 1003
    iget v2, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peeked:I

    .line 1004
    .local v2, "p":I
    if-nez v2, :cond_0

    .line 1005
    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->doPeek()I

    move-result v2

    .line 1008
    :cond_0
    const/16 v3, 0xf

    if-ne v2, v3, :cond_1

    .line 1009
    iput v9, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peeked:I

    .line 1010
    iget-wide v4, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peekedLong:J

    .line 1044
    :goto_0
    return-wide v4

    .line 1013
    :cond_1
    const/16 v3, 0x10

    if-ne v2, v3, :cond_2

    .line 1014
    new-instance v3, Ljava/lang/String;

    iget-object v6, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->buffer:[C

    iget v7, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    iget v8, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peekedNumberLength:I

    invoke-direct {v3, v6, v7, v8}, Ljava/lang/String;-><init>([CII)V

    iput-object v3, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 1015
    iget v3, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    iget v6, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peekedNumberLength:I

    add-int/2addr v3, v6

    iput v3, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    .line 1032
    :goto_1
    const/16 v3, 0xb

    iput v3, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peeked:I

    .line 1033
    iget-object v3, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 1035
    .local v0, "asDouble":D
    double-to-long v4, v0

    .line 1036
    .local v4, "result":J
    long-to-double v6, v4

    cmpl-double v3, v6, v0

    if-eqz v3, :cond_6

    .line 1038
    new-instance v3, Ljava/lang/NumberFormatException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Expected a long but was "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " at line "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " column "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1016
    .end local v0    # "asDouble":D
    .end local v4    # "result":J
    :cond_2
    if-eq v2, v6, :cond_3

    const/16 v3, 0x9

    if-ne v2, v3, :cond_5

    .line 1017
    :cond_3
    if-ne v2, v6, :cond_4

    const/16 v3, 0x27

    :goto_2
    invoke-direct {p0, v3}, Lcom/millennialmedia/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 1020
    :try_start_0
    iget-object v3, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 1021
    .restart local v4    # "result":J
    const/4 v3, 0x0

    iput v3, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peeked:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1023
    .end local v4    # "result":J
    :catch_0
    move-exception v3

    goto :goto_1

    .line 1017
    :cond_4
    const/16 v3, 0x22

    goto :goto_2

    .line 1027
    :cond_5
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Expected a long but was "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->peek()Lcom/millennialmedia/google/gson/stream/JsonToken;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " at line "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " column "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1042
    .restart local v0    # "asDouble":D
    .restart local v4    # "result":J
    :cond_6
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 1043
    iput v9, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peeked:I

    goto/16 :goto_0
.end method

.method public nextName()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 827
    iget v0, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peeked:I

    .line 828
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 829
    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 832
    :cond_0
    const/16 v2, 0xe

    if-ne v0, v2, :cond_1

    .line 833
    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->nextUnquotedValue()Ljava/lang/String;

    move-result-object v1

    .line 843
    .local v1, "result":Ljava/lang/String;
    :goto_0
    const/4 v2, 0x0

    iput v2, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peeked:I

    .line 844
    return-object v1

    .line 834
    .end local v1    # "result":Ljava/lang/String;
    :cond_1
    const/16 v2, 0xc

    if-ne v0, v2, :cond_2

    .line 835
    const/16 v2, 0x27

    invoke-direct {p0, v2}, Lcom/millennialmedia/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_0

    .line 836
    .end local v1    # "result":Ljava/lang/String;
    :cond_2
    const/16 v2, 0xd

    if-ne v0, v2, :cond_3

    .line 837
    const/16 v2, 0x22

    invoke-direct {p0, v2}, Lcom/millennialmedia/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_0

    .line 839
    .end local v1    # "result":Ljava/lang/String;
    :cond_3
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected a name but was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->peek()Lcom/millennialmedia/google/gson/stream/JsonToken;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at line "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " column "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public nextNull()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 922
    iget v0, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peeked:I

    .line 923
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 924
    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 926
    :cond_0
    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 927
    const/4 v1, 0x0

    iput v1, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peeked:I

    .line 933
    return-void

    .line 929
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected null but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->peek()Lcom/millennialmedia/google/gson/stream/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at line "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " column "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public nextString()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 859
    iget v0, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peeked:I

    .line 860
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 861
    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 864
    :cond_0
    const/16 v2, 0xa

    if-ne v0, v2, :cond_1

    .line 865
    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->nextUnquotedValue()Ljava/lang/String;

    move-result-object v1

    .line 883
    .local v1, "result":Ljava/lang/String;
    :goto_0
    const/4 v2, 0x0

    iput v2, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peeked:I

    .line 884
    return-object v1

    .line 866
    .end local v1    # "result":Ljava/lang/String;
    :cond_1
    const/16 v2, 0x8

    if-ne v0, v2, :cond_2

    .line 867
    const/16 v2, 0x27

    invoke-direct {p0, v2}, Lcom/millennialmedia/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_0

    .line 868
    .end local v1    # "result":Ljava/lang/String;
    :cond_2
    const/16 v2, 0x9

    if-ne v0, v2, :cond_3

    .line 869
    const/16 v2, 0x22

    invoke-direct {p0, v2}, Lcom/millennialmedia/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_0

    .line 870
    .end local v1    # "result":Ljava/lang/String;
    :cond_3
    const/16 v2, 0xb

    if-ne v0, v2, :cond_4

    .line 871
    iget-object v1, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 872
    .restart local v1    # "result":Ljava/lang/String;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    goto :goto_0

    .line 873
    .end local v1    # "result":Ljava/lang/String;
    :cond_4
    const/16 v2, 0xf

    if-ne v0, v2, :cond_5

    .line 874
    iget-wide v2, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peekedLong:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_0

    .line 875
    .end local v1    # "result":Ljava/lang/String;
    :cond_5
    const/16 v2, 0x10

    if-ne v0, v2, :cond_6

    .line 876
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->buffer:[C

    iget v3, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    iget v4, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peekedNumberLength:I

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([CII)V

    .line 877
    .restart local v1    # "result":Ljava/lang/String;
    iget v2, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    iget v3, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peekedNumberLength:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    goto :goto_0

    .line 879
    .end local v1    # "result":Ljava/lang/String;
    :cond_6
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected a string but was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->peek()Lcom/millennialmedia/google/gson/stream/JsonToken;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at line "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " column "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public peek()Lcom/millennialmedia/google/gson/stream/JsonToken;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 445
    iget v0, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peeked:I

    .line 446
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 447
    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 450
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 479
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 452
    :pswitch_0
    sget-object v1, Lcom/millennialmedia/google/gson/stream/JsonToken;->BEGIN_OBJECT:Lcom/millennialmedia/google/gson/stream/JsonToken;

    .line 477
    :goto_0
    return-object v1

    .line 454
    :pswitch_1
    sget-object v1, Lcom/millennialmedia/google/gson/stream/JsonToken;->END_OBJECT:Lcom/millennialmedia/google/gson/stream/JsonToken;

    goto :goto_0

    .line 456
    :pswitch_2
    sget-object v1, Lcom/millennialmedia/google/gson/stream/JsonToken;->BEGIN_ARRAY:Lcom/millennialmedia/google/gson/stream/JsonToken;

    goto :goto_0

    .line 458
    :pswitch_3
    sget-object v1, Lcom/millennialmedia/google/gson/stream/JsonToken;->END_ARRAY:Lcom/millennialmedia/google/gson/stream/JsonToken;

    goto :goto_0

    .line 462
    :pswitch_4
    sget-object v1, Lcom/millennialmedia/google/gson/stream/JsonToken;->NAME:Lcom/millennialmedia/google/gson/stream/JsonToken;

    goto :goto_0

    .line 465
    :pswitch_5
    sget-object v1, Lcom/millennialmedia/google/gson/stream/JsonToken;->BOOLEAN:Lcom/millennialmedia/google/gson/stream/JsonToken;

    goto :goto_0

    .line 467
    :pswitch_6
    sget-object v1, Lcom/millennialmedia/google/gson/stream/JsonToken;->NULL:Lcom/millennialmedia/google/gson/stream/JsonToken;

    goto :goto_0

    .line 472
    :pswitch_7
    sget-object v1, Lcom/millennialmedia/google/gson/stream/JsonToken;->STRING:Lcom/millennialmedia/google/gson/stream/JsonToken;

    goto :goto_0

    .line 475
    :pswitch_8
    sget-object v1, Lcom/millennialmedia/google/gson/stream/JsonToken;->NUMBER:Lcom/millennialmedia/google/gson/stream/JsonToken;

    goto :goto_0

    .line 477
    :pswitch_9
    sget-object v1, Lcom/millennialmedia/google/gson/stream/JsonToken;->END_DOCUMENT:Lcom/millennialmedia/google/gson/stream/JsonToken;

    goto :goto_0

    .line 450
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_8
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public final setLenient(Z)V
    .locals 0
    .param p1, "lenient"    # Z

    .prologue
    .line 337
    iput-boolean p1, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->lenient:Z

    .line 338
    return-void
.end method

.method public skipValue()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 1310
    const/4 v0, 0x0

    .line 1312
    .local v0, "count":I
    :cond_0
    iget v1, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peeked:I

    .line 1313
    .local v1, "p":I
    if-nez v1, :cond_1

    .line 1314
    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->doPeek()I

    move-result v1

    .line 1317
    :cond_1
    if-ne v1, v5, :cond_3

    .line 1318
    invoke-direct {p0, v4}, Lcom/millennialmedia/google/gson/stream/JsonReader;->push(I)V

    .line 1319
    add-int/lit8 v0, v0, 0x1

    .line 1340
    :cond_2
    :goto_0
    const/4 v2, 0x0

    iput v2, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peeked:I

    .line 1341
    if-nez v0, :cond_0

    .line 1342
    return-void

    .line 1320
    :cond_3
    if-ne v1, v4, :cond_4

    .line 1321
    invoke-direct {p0, v5}, Lcom/millennialmedia/google/gson/stream/JsonReader;->push(I)V

    .line 1322
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1323
    :cond_4
    const/4 v2, 0x4

    if-ne v1, v2, :cond_5

    .line 1324
    iget v2, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->stackSize:I

    .line 1325
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1326
    :cond_5
    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    .line 1327
    iget v2, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->stackSize:I

    .line 1328
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1329
    :cond_6
    const/16 v2, 0xe

    if-eq v1, v2, :cond_7

    const/16 v2, 0xa

    if-ne v1, v2, :cond_8

    .line 1330
    :cond_7
    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->skipUnquotedValue()V

    goto :goto_0

    .line 1331
    :cond_8
    const/16 v2, 0x8

    if-eq v1, v2, :cond_9

    const/16 v2, 0xc

    if-ne v1, v2, :cond_a

    .line 1333
    :cond_9
    const/16 v2, 0x27

    invoke-direct {p0, v2}, Lcom/millennialmedia/google/gson/stream/JsonReader;->skipQuotedValue(C)V

    goto :goto_0

    .line 1334
    :cond_a
    const/16 v2, 0x9

    if-eq v1, v2, :cond_b

    const/16 v2, 0xd

    if-ne v1, v2, :cond_c

    .line 1336
    :cond_b
    const/16 v2, 0x22

    invoke-direct {p0, v2}, Lcom/millennialmedia/google/gson/stream/JsonReader;->skipQuotedValue(C)V

    goto :goto_0

    .line 1337
    :cond_c
    const/16 v2, 0x10

    if-ne v1, v2, :cond_2

    .line 1338
    iget v2, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    iget v3, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->peekedNumberLength:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/millennialmedia/google/gson/stream/JsonReader;->pos:I

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1551
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " at line "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " column "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/millennialmedia/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

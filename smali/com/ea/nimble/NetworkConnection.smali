.class Lcom/ea/nimble/NetworkConnection;
.super Ljava/lang/Object;
.source "NetworkConnection.java"

# interfaces
.implements Lcom/ea/nimble/NetworkConnectionHandle;
.implements Ljava/lang/Runnable;
.implements Lcom/ea/nimble/LogSource;


# static fields
.field private static MAXIMUM_RAW_DATA_LENGTH:I

.field static s_loggingIdCount:I


# instance fields
.field private m_completionCallback:Lcom/ea/nimble/NetworkConnectionCallback;

.field private m_connectionStartTimestamp:Ljava/util/Date;

.field private m_headerCallback:Lcom/ea/nimble/NetworkConnectionCallback;

.field private m_loggingId:Ljava/lang/String;

.field private m_manager:Lcom/ea/nimble/NetworkImpl;

.field private m_otDispatch:Lcom/ea/nimble/IOperationalTelemetryDispatch;

.field private m_progressCallback:Lcom/ea/nimble/NetworkConnectionCallback;

.field private m_request:Lcom/ea/nimble/HttpRequest;

.field private m_requestDataForLog:Ljava/lang/String;

.field private m_response:Lcom/ea/nimble/HttpResponse;

.field private m_responseDataForLog:Ljava/lang/StringBuilder;

.field private m_thread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 254
    const/high16 v0, 0x100000

    sput v0, Lcom/ea/nimble/NetworkConnection;->MAXIMUM_RAW_DATA_LENGTH:I

    .line 1072
    const/16 v0, 0x64

    sput v0, Lcom/ea/nimble/NetworkConnection;->s_loggingIdCount:I

    return-void
.end method

.method public constructor <init>(Lcom/ea/nimble/NetworkImpl;Lcom/ea/nimble/HttpRequest;)V
    .locals 1
    .param p1, "manager"    # Lcom/ea/nimble/NetworkImpl;
    .param p2, "request"    # Lcom/ea/nimble/HttpRequest;

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/ea/nimble/NetworkConnection;-><init>(Lcom/ea/nimble/NetworkImpl;Lcom/ea/nimble/HttpRequest;Lcom/ea/nimble/IOperationalTelemetryDispatch;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Lcom/ea/nimble/NetworkImpl;Lcom/ea/nimble/HttpRequest;Lcom/ea/nimble/IOperationalTelemetryDispatch;)V
    .locals 2
    .param p1, "manager"    # Lcom/ea/nimble/NetworkImpl;
    .param p2, "request"    # Lcom/ea/nimble/HttpRequest;
    .param p3, "otDispatch"    # Lcom/ea/nimble/IOperationalTelemetryDispatch;

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/ea/nimble/NetworkConnection;->m_manager:Lcom/ea/nimble/NetworkImpl;

    .line 39
    iput-object v1, p0, Lcom/ea/nimble/NetworkConnection;->m_thread:Ljava/lang/Thread;

    .line 40
    iput-object p2, p0, Lcom/ea/nimble/NetworkConnection;->m_request:Lcom/ea/nimble/HttpRequest;

    .line 41
    new-instance v0, Lcom/ea/nimble/HttpResponse;

    invoke-direct {v0}, Lcom/ea/nimble/HttpResponse;-><init>()V

    iput-object v0, p0, Lcom/ea/nimble/NetworkConnection;->m_response:Lcom/ea/nimble/HttpResponse;

    .line 42
    iput-object v1, p0, Lcom/ea/nimble/NetworkConnection;->m_headerCallback:Lcom/ea/nimble/NetworkConnectionCallback;

    .line 43
    iput-object v1, p0, Lcom/ea/nimble/NetworkConnection;->m_progressCallback:Lcom/ea/nimble/NetworkConnectionCallback;

    .line 44
    iput-object v1, p0, Lcom/ea/nimble/NetworkConnection;->m_completionCallback:Lcom/ea/nimble/NetworkConnectionCallback;

    .line 45
    iput-object v1, p0, Lcom/ea/nimble/NetworkConnection;->m_connectionStartTimestamp:Ljava/util/Date;

    .line 46
    iput-object p3, p0, Lcom/ea/nimble/NetworkConnection;->m_otDispatch:Lcom/ea/nimble/IOperationalTelemetryDispatch;

    .line 50
    sget v0, Lcom/ea/nimble/NetworkConnection;->s_loggingIdCount:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ea/nimble/NetworkConnection;->m_loggingId:Ljava/lang/String;

    .line 51
    sget v0, Lcom/ea/nimble/NetworkConnection;->s_loggingIdCount:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/ea/nimble/NetworkConnection;->s_loggingIdCount:I

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_0

    .line 54
    const/16 v0, 0x64

    sput v0, Lcom/ea/nimble/NetworkConnection;->s_loggingIdCount:I

    .line 56
    :cond_0
    return-void
.end method

.method private beautifyJSONString(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p1, "JSONString"    # Ljava/lang/String;

    .prologue
    const/4 v13, 0x0

    .line 749
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    if-gtz v11, :cond_1

    .line 819
    .end local p1    # "JSONString":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 753
    .restart local p1    # "JSONString":Ljava/lang/String;
    :cond_1
    const-string v11, "line.separator"

    invoke-static {v11}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 754
    .local v1, "NEWLINE":Ljava/lang/String;
    const-string v0, "\t"

    .line 755
    .local v0, "INDENTATION":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit16 v5, v11, 0x800

    .line 757
    .local v5, "estimatedSize":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 760
    .local v3, "beautifiedString":Ljava/lang/StringBuilder;
    new-instance v10, Ljava/util/Stack;

    invoke-direct {v10}, Ljava/util/Stack;-><init>()V

    .line 763
    .local v10, "validate":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/Character;>;"
    const/4 v7, 0x0

    .line 764
    .local v7, "indentationCount":I
    const/4 v9, 0x0

    .line 765
    .local v9, "skipWhites":Z
    const/4 v2, 0x1

    .line 766
    .local v2, "addedNewLine":Z
    const/4 v6, 0x0

    .end local v2    # "addedNewLine":Z
    .local v6, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v6, v11, :cond_7

    .line 767
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 768
    .local v4, "curr":C
    sparse-switch v4, :sswitch_data_0

    .line 808
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 809
    const/4 v9, 0x0

    move v2, v9

    .line 766
    :cond_2
    :goto_2
    :sswitch_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 774
    :sswitch_1
    if-nez v9, :cond_2

    .line 776
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 781
    :sswitch_2
    if-nez v2, :cond_3

    .line 783
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\t"

    invoke-direct {p0, v12, v7}, Lcom/ea/nimble/NetworkConnection;->multiplyStringNTimes(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 785
    :cond_3
    add-int/lit8 v7, v7, 0x1

    .line 786
    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 787
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\t"

    invoke-direct {p0, v12, v7}, Lcom/ea/nimble/NetworkConnection;->multiplyStringNTimes(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 788
    const/4 v9, 0x1

    move v2, v9

    .line 789
    .local v2, "addedNewLine":I
    goto :goto_2

    .line 791
    .end local v2    # "addedNewLine":I
    :sswitch_3
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\t"

    invoke-direct {p0, v12, v7}, Lcom/ea/nimble/NetworkConnection;->multiplyStringNTimes(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 792
    const/4 v9, 0x1

    move v2, v9

    .line 793
    .restart local v2    # "addedNewLine":I
    goto :goto_2

    .line 796
    .end local v2    # "addedNewLine":I
    :sswitch_4
    add-int/lit8 v7, v7, -0x1

    .line 798
    invoke-virtual {v10}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Character;

    invoke-virtual {v11}, Ljava/lang/Character;->charValue()C

    move-result v8

    .line 799
    .local v8, "poppedChar":C
    const/16 v11, 0x7d

    if-ne v4, v11, :cond_4

    const/16 v11, 0x7b

    if-ne v8, v11, :cond_5

    :cond_4
    const/16 v11, 0x5d

    if-ne v4, v11, :cond_6

    const/16 v11, 0x5b

    if-eq v8, v11, :cond_6

    .line 801
    :cond_5
    const-string v11, "JSONString expect valid closing brackets but found none"

    new-array v12, v13, [Ljava/lang/Object;

    invoke-static {p0, v11, v12}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 804
    :cond_6
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\t"

    invoke-direct {p0, v12, v7}, Lcom/ea/nimble/NetworkConnection;->multiplyStringNTimes(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 805
    const/4 v9, 0x1

    .line 806
    goto :goto_2

    .line 813
    .end local v4    # "curr":C
    .end local v8    # "poppedChar":C
    :cond_7
    invoke-virtual {v10}, Ljava/util/Stack;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_8

    .line 815
    const-string v11, "JSONString did not close it\'s brackets, invalid json"

    new-array v12, v13, [Ljava/lang/Object;

    invoke-static {p0, v11, v12}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 819
    :cond_8
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 768
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0xa -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_1
        0x2c -> :sswitch_3
        0x5b -> :sswitch_2
        0x5d -> :sswitch_4
        0x7b -> :sswitch_2
        0x7d -> :sswitch_4
    .end sparse-switch
.end method

.method private downloadToBuffer(Ljava/net/HttpURLConnection;)V
    .locals 10
    .param p1, "connection"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 528
    const/4 v2, 0x0

    .line 530
    .local v2, "read":I
    invoke-direct {p0}, Lcom/ea/nimble/NetworkConnection;->prepareResponseLog()V

    .line 531
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 534
    .local v0, "input":Ljava/io/InputStream;
    :cond_0
    :goto_0
    if-ltz v2, :cond_5

    .line 536
    :try_start_0
    iget-object v4, p0, Lcom/ea/nimble/NetworkConnection;->m_response:Lcom/ea/nimble/HttpResponse;

    iget-object v4, v4, Lcom/ea/nimble/HttpResponse;->data:Lcom/ea/nimble/ByteBufferIOStream;

    invoke-virtual {v4}, Lcom/ea/nimble/ByteBufferIOStream;->prepareSegment()[B

    move-result-object v3

    .line 537
    .local v3, "segment":[B
    const/4 v1, 0x0

    .line 540
    .local v1, "offset":I
    :cond_1
    array-length v4, v3

    sub-int/2addr v4, v1

    invoke-virtual {v0, v3, v1, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 541
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 543
    new-instance v4, Ljava/io/InterruptedIOException;

    invoke-direct {v4}, Ljava/io/InterruptedIOException;-><init>()V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 568
    .end local v1    # "offset":I
    .end local v3    # "segment":[B
    :catchall_0
    move-exception v4

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v4

    .line 545
    .restart local v1    # "offset":I
    .restart local v3    # "segment":[B
    :cond_2
    if-gez v2, :cond_3

    .line 559
    :goto_1
    :try_start_1
    iget-object v4, p0, Lcom/ea/nimble/NetworkConnection;->m_response:Lcom/ea/nimble/HttpResponse;

    iget-object v4, v4, Lcom/ea/nimble/HttpResponse;->data:Lcom/ea/nimble/ByteBufferIOStream;

    invoke-virtual {v4, v3, v1}, Lcom/ea/nimble/ByteBufferIOStream;->appendSegmentToBuffer([BI)V

    .line 560
    iget-object v4, p0, Lcom/ea/nimble/NetworkConnection;->m_progressCallback:Lcom/ea/nimble/NetworkConnectionCallback;

    if-eqz v4, :cond_0

    .line 562
    iget-object v4, p0, Lcom/ea/nimble/NetworkConnection;->m_progressCallback:Lcom/ea/nimble/NetworkConnectionCallback;

    invoke-interface {v4, p0}, Lcom/ea/nimble/NetworkConnectionCallback;->callback(Lcom/ea/nimble/NetworkConnectionHandle;)V

    goto :goto_0

    .line 549
    :cond_3
    if-nez v2, :cond_4

    .line 551
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 558
    :goto_2
    array-length v4, v3

    if-lt v1, v4, :cond_1

    goto :goto_1

    .line 555
    :cond_4
    invoke-direct {p0, v3, v1, v2}, Lcom/ea/nimble/NetworkConnection;->prepareResponseLog([BII)V

    .line 556
    add-int/2addr v1, v2

    .line 557
    iget-object v4, p0, Lcom/ea/nimble/NetworkConnection;->m_response:Lcom/ea/nimble/HttpResponse;

    iget-wide v6, v4, Lcom/ea/nimble/HttpResponse;->downloadedContentLength:J

    int-to-long v8, v2

    add-long/2addr v6, v8

    iput-wide v6, v4, Lcom/ea/nimble/HttpResponse;->downloadedContentLength:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 568
    .end local v1    # "offset":I
    .end local v3    # "segment":[B
    :cond_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 570
    return-void
.end method

.method private downloadToBufferWithError(Ljava/net/HttpURLConnection;)V
    .locals 10
    .param p1, "connection"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 583
    const/4 v2, 0x0

    .line 585
    .local v2, "read":I
    invoke-direct {p0}, Lcom/ea/nimble/NetworkConnection;->prepareResponseLog()V

    .line 586
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    .line 587
    .local v0, "input":Ljava/io/InputStream;
    if-nez v0, :cond_1

    .line 630
    :goto_0
    return-void

    .line 605
    .local v1, "offset":I
    .local v3, "segment":[B
    :cond_0
    if-gez v2, :cond_3

    .line 619
    :goto_1
    :try_start_0
    iget-object v4, p0, Lcom/ea/nimble/NetworkConnection;->m_response:Lcom/ea/nimble/HttpResponse;

    iget-object v4, v4, Lcom/ea/nimble/HttpResponse;->data:Lcom/ea/nimble/ByteBufferIOStream;

    invoke-virtual {v4, v3, v1}, Lcom/ea/nimble/ByteBufferIOStream;->appendSegmentToBuffer([BI)V

    .line 620
    iget-object v4, p0, Lcom/ea/nimble/NetworkConnection;->m_progressCallback:Lcom/ea/nimble/NetworkConnectionCallback;

    if-eqz v4, :cond_1

    .line 622
    iget-object v4, p0, Lcom/ea/nimble/NetworkConnection;->m_progressCallback:Lcom/ea/nimble/NetworkConnectionCallback;

    invoke-interface {v4, p0}, Lcom/ea/nimble/NetworkConnectionCallback;->callback(Lcom/ea/nimble/NetworkConnectionHandle;)V

    .line 594
    .end local v1    # "offset":I
    .end local v3    # "segment":[B
    :cond_1
    if-ltz v2, :cond_5

    .line 596
    iget-object v4, p0, Lcom/ea/nimble/NetworkConnection;->m_response:Lcom/ea/nimble/HttpResponse;

    iget-object v4, v4, Lcom/ea/nimble/HttpResponse;->data:Lcom/ea/nimble/ByteBufferIOStream;

    invoke-virtual {v4}, Lcom/ea/nimble/ByteBufferIOStream;->prepareSegment()[B

    move-result-object v3

    .line 597
    .restart local v3    # "segment":[B
    const/4 v1, 0x0

    .line 600
    .restart local v1    # "offset":I
    :cond_2
    array-length v4, v3

    sub-int/2addr v4, v1

    invoke-virtual {v0, v3, v1, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 601
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 603
    new-instance v4, Ljava/io/InterruptedIOException;

    invoke-direct {v4}, Ljava/io/InterruptedIOException;-><init>()V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 628
    .end local v1    # "offset":I
    .end local v3    # "segment":[B
    :catchall_0
    move-exception v4

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v4

    .line 609
    .restart local v1    # "offset":I
    .restart local v3    # "segment":[B
    :cond_3
    if-nez v2, :cond_4

    .line 611
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 618
    :goto_2
    array-length v4, v3

    if-lt v1, v4, :cond_2

    goto :goto_1

    .line 615
    :cond_4
    invoke-direct {p0, v3, v1, v2}, Lcom/ea/nimble/NetworkConnection;->prepareResponseLog([BII)V

    .line 616
    add-int/2addr v1, v2

    .line 617
    iget-object v4, p0, Lcom/ea/nimble/NetworkConnection;->m_response:Lcom/ea/nimble/HttpResponse;

    iget-wide v6, v4, Lcom/ea/nimble/HttpResponse;->downloadedContentLength:J

    int-to-long v8, v2

    add-long/2addr v6, v8

    iput-wide v6, v4, Lcom/ea/nimble/HttpResponse;->downloadedContentLength:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 628
    .end local v1    # "offset":I
    .end local v3    # "segment":[B
    :cond_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_0
.end method

.method private downloadToFile(Ljava/net/HttpURLConnection;)V
    .locals 20
    .param p1, "connection"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 433
    invoke-direct/range {p0 .. p1}, Lcom/ea/nimble/NetworkConnection;->skipDownloadForOverwritePolicy(Ljava/net/HttpURLConnection;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 522
    :cond_0
    :goto_0
    return-void

    .line 439
    :cond_1
    new-instance v16, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ea/nimble/NetworkConnection;->m_request:Lcom/ea/nimble/HttpRequest;

    iget-object v4, v4, Lcom/ea/nimble/HttpRequest;->targetFilePath:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 440
    .local v16, "targetFile":Ljava/io/File;
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getComponent()Lcom/ea/nimble/IApplicationEnvironment;

    move-result-object v4

    invoke-interface {v4}, Lcom/ea/nimble/IApplicationEnvironment;->getCachePath()Ljava/lang/String;

    move-result-object v11

    .line 441
    .local v11, "cachePath":Ljava/lang/String;
    new-instance v17, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 442
    .local v17, "tempFile":Ljava/io/File;
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ea/nimble/NetworkConnection;->m_request:Lcom/ea/nimble/HttpRequest;

    iget-object v4, v4, Lcom/ea/nimble/HttpRequest;->overwritePolicy:Ljava/util/EnumSet;

    sget-object v5, Lcom/ea/nimble/IHttpRequest$OverwritePolicy;->RESUME_DOWNLOAD:Lcom/ea/nimble/IHttpRequest$OverwritePolicy;

    .line 443
    invoke-virtual {v4, v5}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v9, 0x1

    .line 445
    .local v9, "append":Z
    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v13

    .line 446
    .local v13, "input":Ljava/io/InputStream;
    new-instance v14, Ljava/io/FileOutputStream;

    move-object/from16 v0, v17

    invoke-direct {v14, v0, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 447
    .local v14, "output":Ljava/io/FileOutputStream;
    const/high16 v8, 0x10000

    .line 448
    .local v8, "FILE_CHUCK":I
    const/high16 v4, 0x10000

    new-array v10, v4, [B

    .line 451
    .local v10, "buffer":[B
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Started File Download for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lcom/ea/nimble/Log$Helper;->LOGI(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 455
    :cond_2
    :goto_2
    :try_start_0
    invoke-virtual {v13, v10}, Ljava/io/InputStream;->read([B)I

    move-result v15

    .local v15, "read":I
    if-ltz v15, :cond_5

    .line 457
    if-nez v15, :cond_4

    .line 459
    invoke-static {}, Ljava/lang/Thread;->yield()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 473
    .end local v15    # "read":I
    :catchall_0
    move-exception v4

    invoke-virtual {v13}, Ljava/io/InputStream;->close()V

    .line 474
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V

    throw v4

    .line 443
    .end local v8    # "FILE_CHUCK":I
    .end local v9    # "append":Z
    .end local v10    # "buffer":[B
    .end local v13    # "input":Ljava/io/InputStream;
    .end local v14    # "output":Ljava/io/FileOutputStream;
    :cond_3
    const/4 v9, 0x0

    goto :goto_1

    .line 463
    .restart local v8    # "FILE_CHUCK":I
    .restart local v9    # "append":Z
    .restart local v10    # "buffer":[B
    .restart local v13    # "input":Ljava/io/InputStream;
    .restart local v14    # "output":Ljava/io/FileOutputStream;
    .restart local v15    # "read":I
    :cond_4
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v14, v10, v4, v15}, Ljava/io/FileOutputStream;->write([BII)V

    .line 464
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ea/nimble/NetworkConnection;->m_response:Lcom/ea/nimble/HttpResponse;

    iget-wide v6, v4, Lcom/ea/nimble/HttpResponse;->downloadedContentLength:J

    int-to-long v0, v15

    move-wide/from16 v18, v0

    add-long v6, v6, v18

    iput-wide v6, v4, Lcom/ea/nimble/HttpResponse;->downloadedContentLength:J

    .line 465
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ea/nimble/NetworkConnection;->m_progressCallback:Lcom/ea/nimble/NetworkConnectionCallback;

    if-eqz v4, :cond_2

    .line 467
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ea/nimble/NetworkConnection;->m_progressCallback:Lcom/ea/nimble/NetworkConnectionCallback;

    move-object/from16 v0, p0

    invoke-interface {v4, v0}, Lcom/ea/nimble/NetworkConnectionCallback;->callback(Lcom/ea/nimble/NetworkConnectionHandle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 473
    :cond_5
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V

    .line 474
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V

    .line 477
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 479
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_6

    .line 481
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to delete existed target file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 484
    :cond_6
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 486
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to move temp file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to target file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lcom/ea/nimble/Log$Helper;->LOGI(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 487
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Using fallback, and copying file instead "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "to target file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lcom/ea/nimble/Log$Helper;->LOGI(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 488
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_7

    .line 490
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->createNewFile()Z

    .line 493
    :cond_7
    const/4 v3, 0x0

    .line 494
    .local v3, "source":Ljava/nio/channels/FileChannel;
    const/4 v2, 0x0

    .line 498
    .local v2, "destination":Ljava/nio/channels/FileChannel;
    :try_start_2
    new-instance v4, Ljava/io/FileInputStream;

    move-object/from16 v0, v17

    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v4}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    .line 499
    new-instance v4, Ljava/io/FileOutputStream;

    move-object/from16 v0, v16

    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    .line 500
    const-wide/16 v4, 0x0

    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 508
    if-eqz v3, :cond_8

    .line 510
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V

    .line 512
    :cond_8
    if-eqz v2, :cond_9

    .line 514
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V

    .line 516
    :cond_9
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 518
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->delete()Z

    goto/16 :goto_0

    .line 502
    :catch_0
    move-exception v12

    .line 504
    .local v12, "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ERROR while copying file, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 508
    if-eqz v3, :cond_a

    .line 510
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V

    .line 512
    :cond_a
    if-eqz v2, :cond_b

    .line 514
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V

    .line 516
    :cond_b
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 518
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->delete()Z

    goto/16 :goto_0

    .line 508
    .end local v12    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v4

    if-eqz v3, :cond_c

    .line 510
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V

    .line 512
    :cond_c
    if-eqz v2, :cond_d

    .line 514
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V

    .line 516
    :cond_d
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 518
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->delete()Z

    :cond_e
    throw v4
.end method

.method private finish()V
    .locals 2

    .prologue
    .line 659
    iget-object v0, p0, Lcom/ea/nimble/NetworkConnection;->m_response:Lcom/ea/nimble/HttpResponse;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/ea/nimble/HttpResponse;->isCompleted:Z

    .line 662
    invoke-virtual {p0}, Lcom/ea/nimble/NetworkConnection;->logOperationalTelemetryResponse()V

    .line 665
    iget-object v0, p0, Lcom/ea/nimble/NetworkConnection;->m_completionCallback:Lcom/ea/nimble/NetworkConnectionCallback;

    if-eqz v0, :cond_0

    .line 667
    iget-object v0, p0, Lcom/ea/nimble/NetworkConnection;->m_completionCallback:Lcom/ea/nimble/NetworkConnectionCallback;

    invoke-interface {v0, p0}, Lcom/ea/nimble/NetworkConnectionCallback;->callback(Lcom/ea/nimble/NetworkConnectionHandle;)V

    .line 669
    :cond_0
    monitor-enter p0

    .line 671
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 672
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 674
    iget-object v0, p0, Lcom/ea/nimble/NetworkConnection;->m_manager:Lcom/ea/nimble/NetworkImpl;

    invoke-virtual {v0, p0}, Lcom/ea/nimble/NetworkImpl;->removeConnection(Lcom/ea/nimble/NetworkConnection;)V

    .line 675
    return-void

    .line 672
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private httpRecv(Ljava/net/HttpURLConnection;)V
    .locals 14
    .param p1, "connection"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/ea/nimble/Error;
        }
    .end annotation

    .prologue
    const-wide/16 v12, 0x0

    const/16 v11, 0xc8

    .line 325
    const/4 v3, 0x0

    .line 328
    .local v3, "httpRecv":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 350
    :goto_0
    iget-object v6, p0, Lcom/ea/nimble/NetworkConnection;->m_response:Lcom/ea/nimble/HttpResponse;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v7

    iput-object v7, v6, Lcom/ea/nimble/HttpResponse;->url:Ljava/net/URL;

    .line 354
    :try_start_1
    iget-object v6, p0, Lcom/ea/nimble/NetworkConnection;->m_response:Lcom/ea/nimble/HttpResponse;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    iput v7, v6, Lcom/ea/nimble/HttpResponse;->statusCode:I

    .line 355
    iget-object v6, p0, Lcom/ea/nimble/NetworkConnection;->m_response:Lcom/ea/nimble/HttpResponse;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v7

    int-to-long v8, v7

    iput-wide v8, v6, Lcom/ea/nimble/HttpResponse;->expectedContentLength:J

    .line 356
    iget-object v6, p0, Lcom/ea/nimble/NetworkConnection;->m_response:Lcom/ea/nimble/HttpResponse;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getLastModified()J

    move-result-wide v8

    iput-wide v8, v6, Lcom/ea/nimble/HttpResponse;->lastModified:J

    .line 358
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 360
    .local v2, "headerEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iget-object v6, p0, Lcom/ea/nimble/NetworkConnection;->m_response:Lcom/ea/nimble/HttpResponse;

    iget-object v8, v6, Lcom/ea/nimble/HttpResponse;->headers:Ljava/util/HashMap;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    const-string v10, ", "

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Iterable;

    invoke-static {v10, v6}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 424
    .end local v2    # "headerEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :catchall_0
    move-exception v6

    if-eqz v3, :cond_0

    .line 425
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 427
    :cond_0
    invoke-direct {p0}, Lcom/ea/nimble/NetworkConnection;->logCommunication()V

    throw v6

    .line 330
    :catch_0
    move-exception v0

    .line 335
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v3

    goto :goto_0

    .line 341
    :catch_1
    move-exception v1

    .line 343
    .local v1, "e1":Ljava/lang/Exception;
    new-instance v6, Lcom/ea/nimble/Error;

    sget-object v7, Lcom/ea/nimble/Error$Code;->NETWORK_CONNECTION_ERROR:Lcom/ea/nimble/Error$Code;

    const-string v8, "Exception when getting error stream from HTTP connection."

    invoke-direct {v6, v7, v8, v1}, Lcom/ea/nimble/Error;-><init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 363
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "e1":Ljava/lang/Exception;
    :cond_1
    :try_start_3
    iget-object v6, p0, Lcom/ea/nimble/NetworkConnection;->m_response:Lcom/ea/nimble/HttpResponse;

    iget-wide v6, v6, Lcom/ea/nimble/HttpResponse;->expectedContentLength:J

    sget v8, Lcom/ea/nimble/NetworkConnection;->MAXIMUM_RAW_DATA_LENGTH:I

    int-to-long v8, v8

    cmp-long v6, v6, v8

    if-lez v6, :cond_2

    const/4 v5, 0x1

    .line 364
    .local v5, "isOversize":Z
    :goto_2
    iget-object v6, p0, Lcom/ea/nimble/NetworkConnection;->m_request:Lcom/ea/nimble/HttpRequest;

    iget-object v6, v6, Lcom/ea/nimble/HttpRequest;->targetFilePath:Ljava/lang/String;

    invoke-static {v6}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v4

    .line 366
    .local v4, "isFileDownload":Z
    if-eqz v5, :cond_3

    if-nez v4, :cond_3

    .line 368
    new-instance v6, Lcom/ea/nimble/Error;

    sget-object v7, Lcom/ea/nimble/Error$Code;->NETWORK_OVERSIZE_DATA:Lcom/ea/nimble/Error$Code;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Request "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is oversize, please provide a local file path to download it as file."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/ea/nimble/Error;-><init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;)V

    throw v6

    .line 363
    .end local v4    # "isFileDownload":Z
    .end local v5    # "isOversize":Z
    :cond_2
    const/4 v5, 0x0

    goto :goto_2

    .line 372
    .restart local v4    # "isFileDownload":Z
    .restart local v5    # "isOversize":Z
    :cond_3
    iget-object v6, p0, Lcom/ea/nimble/NetworkConnection;->m_response:Lcom/ea/nimble/HttpResponse;

    const-wide/16 v8, 0x0

    iput-wide v8, v6, Lcom/ea/nimble/HttpResponse;->downloadedContentLength:J

    .line 374
    iget-object v6, p0, Lcom/ea/nimble/NetworkConnection;->m_headerCallback:Lcom/ea/nimble/NetworkConnectionCallback;

    if-eqz v6, :cond_4

    .line 376
    iget-object v6, p0, Lcom/ea/nimble/NetworkConnection;->m_headerCallback:Lcom/ea/nimble/NetworkConnectionCallback;

    invoke-interface {v6, p0}, Lcom/ea/nimble/NetworkConnectionCallback;->callback(Lcom/ea/nimble/NetworkConnectionHandle;)V

    .line 379
    :cond_4
    if-eqz v4, :cond_7

    if-eqz v3, :cond_7

    .line 381
    invoke-direct {p0, p1}, Lcom/ea/nimble/NetworkConnection;->downloadToFile(Ljava/net/HttpURLConnection;)V

    .line 413
    :cond_5
    :goto_3
    iget-object v6, p0, Lcom/ea/nimble/NetworkConnection;->m_response:Lcom/ea/nimble/HttpResponse;

    iget v6, v6, Lcom/ea/nimble/HttpResponse;->statusCode:I

    if-eq v6, v11, :cond_a

    if-eqz v4, :cond_6

    iget-object v6, p0, Lcom/ea/nimble/NetworkConnection;->m_response:Lcom/ea/nimble/HttpResponse;

    iget v6, v6, Lcom/ea/nimble/HttpResponse;->statusCode:I

    const/16 v7, 0xce

    if-eq v6, v7, :cond_a

    .line 419
    :cond_6
    new-instance v6, Lcom/ea/nimble/HttpError;

    iget-object v7, p0, Lcom/ea/nimble/NetworkConnection;->m_response:Lcom/ea/nimble/HttpResponse;

    iget v7, v7, Lcom/ea/nimble/HttpResponse;->statusCode:I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Request "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " failed for HTTP error"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/ea/nimble/HttpError;-><init>(ILjava/lang/String;)V

    throw v6

    .line 383
    :cond_7
    iget-object v6, p0, Lcom/ea/nimble/NetworkConnection;->m_response:Lcom/ea/nimble/HttpResponse;

    iget-wide v6, v6, Lcom/ea/nimble/HttpResponse;->expectedContentLength:J

    cmp-long v6, v6, v12

    if-eqz v6, :cond_5

    .line 385
    iget-object v6, p0, Lcom/ea/nimble/NetworkConnection;->m_response:Lcom/ea/nimble/HttpResponse;

    iget-object v6, v6, Lcom/ea/nimble/HttpResponse;->data:Lcom/ea/nimble/ByteBufferIOStream;

    if-nez v6, :cond_8

    .line 387
    iget-object v6, p0, Lcom/ea/nimble/NetworkConnection;->m_response:Lcom/ea/nimble/HttpResponse;

    new-instance v7, Lcom/ea/nimble/ByteBufferIOStream;

    iget-object v8, p0, Lcom/ea/nimble/NetworkConnection;->m_response:Lcom/ea/nimble/HttpResponse;

    iget-wide v8, v8, Lcom/ea/nimble/HttpResponse;->expectedContentLength:J

    long-to-int v8, v8

    invoke-direct {v7, v8}, Lcom/ea/nimble/ByteBufferIOStream;-><init>(I)V

    iput-object v7, v6, Lcom/ea/nimble/HttpResponse;->data:Lcom/ea/nimble/ByteBufferIOStream;

    .line 394
    :goto_4
    iget-object v6, p0, Lcom/ea/nimble/NetworkConnection;->m_response:Lcom/ea/nimble/HttpResponse;

    iget v6, v6, Lcom/ea/nimble/HttpResponse;->statusCode:I

    if-ne v6, v11, :cond_9

    .line 395
    invoke-direct {p0, p1}, Lcom/ea/nimble/NetworkConnection;->downloadToBuffer(Ljava/net/HttpURLConnection;)V

    goto :goto_3

    .line 391
    :cond_8
    iget-object v6, p0, Lcom/ea/nimble/NetworkConnection;->m_response:Lcom/ea/nimble/HttpResponse;

    iget-object v6, v6, Lcom/ea/nimble/HttpResponse;->data:Lcom/ea/nimble/ByteBufferIOStream;

    invoke-virtual {v6}, Lcom/ea/nimble/ByteBufferIOStream;->clear()V

    goto :goto_4

    .line 407
    :cond_9
    invoke-direct {p0, p1}, Lcom/ea/nimble/NetworkConnection;->downloadToBufferWithError(Ljava/net/HttpURLConnection;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 424
    :cond_a
    if-eqz v3, :cond_b

    .line 425
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 427
    :cond_b
    invoke-direct {p0}, Lcom/ea/nimble/NetworkConnection;->logCommunication()V

    .line 429
    return-void
.end method

.method private httpSend(Ljava/net/HttpURLConnection;)V
    .locals 8
    .param p1, "connection"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 259
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    iput-object v6, p0, Lcom/ea/nimble/NetworkConnection;->m_connectionStartTimestamp:Ljava/util/Date;

    .line 262
    iget-object v6, p0, Lcom/ea/nimble/NetworkConnection;->m_request:Lcom/ea/nimble/HttpRequest;

    iget-object v6, v6, Lcom/ea/nimble/HttpRequest;->headers:Ljava/util/HashMap;

    if-eqz v6, :cond_0

    .line 264
    iget-object v6, p0, Lcom/ea/nimble/NetworkConnection;->m_request:Lcom/ea/nimble/HttpRequest;

    iget-object v6, v6, Lcom/ea/nimble/HttpRequest;->headers:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 266
    .local v4, "key":Ljava/lang/String;
    iget-object v6, p0, Lcom/ea/nimble/NetworkConnection;->m_request:Lcom/ea/nimble/HttpRequest;

    iget-object v6, v6, Lcom/ea/nimble/HttpRequest;->headers:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p1, v4, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 270
    .end local v4    # "key":Ljava/lang/String;
    :cond_0
    iget-object v6, p0, Lcom/ea/nimble/NetworkConnection;->m_request:Lcom/ea/nimble/HttpRequest;

    invoke-virtual {v6}, Lcom/ea/nimble/HttpRequest;->getMethod()Lcom/ea/nimble/IHttpRequest$Method;

    move-result-object v6

    sget-object v7, Lcom/ea/nimble/IHttpRequest$Method;->POST:Lcom/ea/nimble/IHttpRequest$Method;

    if-eq v6, v7, :cond_2

    iget-object v6, p0, Lcom/ea/nimble/NetworkConnection;->m_request:Lcom/ea/nimble/HttpRequest;

    invoke-virtual {v6}, Lcom/ea/nimble/HttpRequest;->getMethod()Lcom/ea/nimble/IHttpRequest$Method;

    move-result-object v6

    sget-object v7, Lcom/ea/nimble/IHttpRequest$Method;->PUT:Lcom/ea/nimble/IHttpRequest$Method;

    if-eq v6, v7, :cond_2

    .line 272
    invoke-direct {p0}, Lcom/ea/nimble/NetworkConnection;->logRequest()V

    .line 315
    :cond_1
    :goto_1
    return-void

    .line 276
    :cond_2
    iget-object v6, p0, Lcom/ea/nimble/NetworkConnection;->m_request:Lcom/ea/nimble/HttpRequest;

    iget-object v6, v6, Lcom/ea/nimble/HttpRequest;->data:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 277
    .local v0, "data":[B
    if-eqz v0, :cond_3

    array-length v6, v0

    if-gtz v6, :cond_4

    .line 280
    :cond_3
    invoke-direct {p0}, Lcom/ea/nimble/NetworkConnection;->logRequest()V

    goto :goto_1

    .line 284
    :cond_4
    invoke-direct {p0, v0}, Lcom/ea/nimble/NetworkConnection;->prepareRequestLog([B)V

    .line 285
    invoke-direct {p0}, Lcom/ea/nimble/NetworkConnection;->logRequest()V

    .line 287
    const/4 v6, 0x1

    invoke-virtual {p1, v6}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 288
    array-length v6, v0

    invoke-virtual {p1, v6}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 291
    const/4 v3, 0x0

    .line 295
    .local v3, "httpSend":Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    .line 299
    invoke-virtual {v3, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 310
    if-eqz v3, :cond_1

    .line 312
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    goto :goto_1

    .line 301
    :catch_0
    move-exception v1

    .line 303
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v5, Ljava/io/StringWriter;

    invoke-direct {v5}, Ljava/io/StringWriter;-><init>()V

    .line 304
    .local v5, "sw":Ljava/io/StringWriter;
    new-instance v6, Ljava/io/PrintWriter;

    invoke-direct {v6, v5}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v1, v6}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 305
    invoke-virtual {v5}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    .line 306
    .local v2, "exceptionAsString":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception in network connection:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {p0, v6, v7}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 310
    if-eqz v3, :cond_1

    .line 312
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    goto :goto_1

    .line 310
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "exceptionAsString":Ljava/lang/String;
    .end local v5    # "sw":Ljava/io/StringWriter;
    :catchall_0
    move-exception v6

    if-eqz v3, :cond_5

    .line 312
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    :cond_5
    throw v6
.end method

.method private logCommunication()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/16 v11, 0xa

    .line 868
    invoke-static {}, Lcom/ea/nimble/Log;->getComponent()Lcom/ea/nimble/ILog;

    move-result-object v8

    invoke-interface {v8}, Lcom/ea/nimble/ILog;->getThresholdLevel()I

    move-result v8

    const/16 v9, 0x64

    if-le v8, v9, :cond_0

    .line 954
    :goto_0
    return-void

    .line 872
    :cond_0
    const/16 v3, 0x1000

    .line 873
    .local v3, "estimateSize":I
    iget-object v8, p0, Lcom/ea/nimble/NetworkConnection;->m_requestDataForLog:Ljava/lang/String;

    if-eqz v8, :cond_1

    .line 875
    iget-object v8, p0, Lcom/ea/nimble/NetworkConnection;->m_requestDataForLog:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v3, v8

    .line 877
    :cond_1
    iget-object v8, p0, Lcom/ea/nimble/NetworkConnection;->m_responseDataForLog:Ljava/lang/StringBuilder;

    if-eqz v8, :cond_2

    .line 879
    iget-object v8, p0, Lcom/ea/nimble/NetworkConnection;->m_responseDataForLog:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    add-int/2addr v3, v8

    .line 881
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 882
    .local v6, "str":Ljava/lang/StringBuilder;
    const-string v8, "\n>>>> CONNECTION ID %s FINISHED >>>>>>>>>>>>>>\n"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/ea/nimble/NetworkConnection;->m_loggingId:Ljava/lang/String;

    aput-object v10, v9, v12

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 883
    const-string v8, "\n>>>> REQUEST >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>\n"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 884
    const-string v8, "REQUEST: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/ea/nimble/NetworkConnection;->m_request:Lcom/ea/nimble/HttpRequest;

    iget-object v9, v9, Lcom/ea/nimble/HttpRequest;->method:Lcom/ea/nimble/IHttpRequest$Method;

    invoke-virtual {v9}, Lcom/ea/nimble/IHttpRequest$Method;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 885
    const/16 v8, 0x20

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/ea/nimble/NetworkConnection;->m_request:Lcom/ea/nimble/HttpRequest;

    iget-object v9, v9, Lcom/ea/nimble/HttpRequest;->url:Ljava/net/URL;

    invoke-virtual {v9}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 886
    iget-object v8, p0, Lcom/ea/nimble/NetworkConnection;->m_request:Lcom/ea/nimble/HttpRequest;

    iget-object v8, v8, Lcom/ea/nimble/HttpRequest;->headers:Ljava/util/HashMap;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/ea/nimble/NetworkConnection;->m_request:Lcom/ea/nimble/HttpRequest;

    iget-object v8, v8, Lcom/ea/nimble/HttpRequest;->headers:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    if-lez v8, :cond_3

    .line 888
    iget-object v8, p0, Lcom/ea/nimble/NetworkConnection;->m_request:Lcom/ea/nimble/HttpRequest;

    iget-object v8, v8, Lcom/ea/nimble/HttpRequest;->headers:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 890
    .local v4, "key":Ljava/lang/String;
    const-string v9, "REQ HEADER: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 891
    iget-object v9, p0, Lcom/ea/nimble/NetworkConnection;->m_request:Lcom/ea/nimble/HttpRequest;

    iget-object v9, v9, Lcom/ea/nimble/HttpRequest;->headers:Ljava/util/HashMap;

    invoke-virtual {v9, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 892
    .local v7, "value":Ljava/lang/String;
    const-string v9, " VALUE: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 896
    .end local v4    # "key":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    :cond_3
    iget-object v8, p0, Lcom/ea/nimble/NetworkConnection;->m_requestDataForLog:Ljava/lang/String;

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/ea/nimble/NetworkConnection;->m_requestDataForLog:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_6

    .line 898
    const-string v8, "REQ BODY:\n"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 899
    iget-object v8, p0, Lcom/ea/nimble/NetworkConnection;->m_requestDataForLog:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 902
    .local v0, "bodyString":Ljava/lang/String;
    iget-object v8, p0, Lcom/ea/nimble/NetworkConnection;->m_request:Lcom/ea/nimble/HttpRequest;

    iget-object v8, v8, Lcom/ea/nimble/HttpRequest;->headers:Ljava/util/HashMap;

    const-string v9, "Content-Type"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 903
    .local v1, "contentType":Ljava/lang/String;
    if-eqz v1, :cond_5

    const-string v8, "application/json"

    invoke-virtual {v1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, "text/json"

    .line 904
    invoke-virtual {v1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 905
    :cond_4
    invoke-direct {p0, v0}, Lcom/ea/nimble/NetworkConnection;->beautifyJSONString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 907
    :cond_5
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 910
    .end local v0    # "bodyString":Ljava/lang/String;
    .end local v1    # "contentType":Ljava/lang/String;
    :cond_6
    const-string v8, "<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<\n"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 911
    const-string v8, ">>>> RESPONSE >>>>>>>>>>>>>>>>>>>>>>>>>>>>>\n"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 912
    const-string v8, "RESP URL: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/ea/nimble/NetworkConnection;->m_response:Lcom/ea/nimble/HttpResponse;

    iget-object v9, v9, Lcom/ea/nimble/HttpResponse;->url:Ljava/net/URL;

    invoke-virtual {v9}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 913
    const-string v8, "RESP STATUS: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/ea/nimble/NetworkConnection;->m_response:Lcom/ea/nimble/HttpResponse;

    iget v9, v9, Lcom/ea/nimble/HttpResponse;->statusCode:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 914
    iget-object v8, p0, Lcom/ea/nimble/NetworkConnection;->m_response:Lcom/ea/nimble/HttpResponse;

    iget-object v8, v8, Lcom/ea/nimble/HttpResponse;->headers:Ljava/util/HashMap;

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/ea/nimble/NetworkConnection;->m_response:Lcom/ea/nimble/HttpResponse;

    iget-object v8, v8, Lcom/ea/nimble/HttpResponse;->headers:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    if-lez v8, :cond_7

    .line 916
    iget-object v8, p0, Lcom/ea/nimble/NetworkConnection;->m_response:Lcom/ea/nimble/HttpResponse;

    iget-object v8, v8, Lcom/ea/nimble/HttpResponse;->headers:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 918
    .restart local v4    # "key":Ljava/lang/String;
    const-string v9, "RESP HEADER: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 919
    iget-object v9, p0, Lcom/ea/nimble/NetworkConnection;->m_response:Lcom/ea/nimble/HttpResponse;

    iget-object v9, v9, Lcom/ea/nimble/HttpResponse;->headers:Ljava/util/HashMap;

    invoke-virtual {v9, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 920
    .restart local v7    # "value":Ljava/lang/String;
    const-string v9, " VALUE: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 923
    .end local v4    # "key":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    :cond_7
    const-string v8, "RESP BODY:\n"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 924
    const-string v5, ""

    .line 927
    .local v5, "respBodyString":Ljava/lang/String;
    :try_start_0
    const-string v5, "<Empty>: there is no response body for this call"

    .line 928
    iget-object v8, p0, Lcom/ea/nimble/NetworkConnection;->m_responseDataForLog:Ljava/lang/StringBuilder;

    if-eqz v8, :cond_8

    .line 930
    iget-object v8, p0, Lcom/ea/nimble/NetworkConnection;->m_responseDataForLog:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 946
    :cond_8
    :goto_3
    iget-object v8, p0, Lcom/ea/nimble/NetworkConnection;->m_request:Lcom/ea/nimble/HttpRequest;

    iget-object v8, v8, Lcom/ea/nimble/HttpRequest;->headers:Ljava/util/HashMap;

    const-string v9, "Content-Type"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 947
    .restart local v1    # "contentType":Ljava/lang/String;
    if-eqz v1, :cond_a

    const-string v8, "application/json"

    invoke-virtual {v1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_9

    const-string v8, "text/json"

    .line 948
    invoke-virtual {v1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 949
    :cond_9
    invoke-direct {p0, v5}, Lcom/ea/nimble/NetworkConnection;->beautifyJSONString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 951
    :cond_a
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 952
    const-string v8, "<<<< CONNECTION FINISHED <<<<<<<<<<<<<<<<<<<<<"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 953
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v12, [Ljava/lang/Object;

    invoke-static {p0, v8, v9}, Lcom/ea/nimble/Log$Helper;->LOGV(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 934
    .end local v1    # "contentType":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 936
    .local v2, "e":Ljava/lang/Exception;
    const-string v8, "Attempting to process the response body failed."

    new-array v9, v12, [Ljava/lang/Object;

    invoke-static {p0, v8, v9}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 937
    iget-object v8, p0, Lcom/ea/nimble/NetworkConnection;->m_response:Lcom/ea/nimble/HttpResponse;

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/ea/nimble/NetworkConnection;->m_response:Lcom/ea/nimble/HttpResponse;

    invoke-virtual {v8}, Lcom/ea/nimble/HttpResponse;->getError()Ljava/lang/Exception;

    move-result-object v8

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/ea/nimble/NetworkConnection;->m_response:Lcom/ea/nimble/HttpResponse;

    invoke-virtual {v8}, Lcom/ea/nimble/HttpResponse;->getError()Ljava/lang/Exception;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_8

    .line 939
    iget-object v8, p0, Lcom/ea/nimble/NetworkConnection;->m_response:Lcom/ea/nimble/HttpResponse;

    invoke-virtual {v8}, Lcom/ea/nimble/HttpResponse;->getError()Ljava/lang/Exception;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    goto :goto_3
.end method

.method private logRequest()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/16 v9, 0xa

    .line 825
    invoke-static {}, Lcom/ea/nimble/Log;->getComponent()Lcom/ea/nimble/ILog;

    move-result-object v6

    invoke-interface {v6}, Lcom/ea/nimble/ILog;->getThresholdLevel()I

    move-result v6

    const/16 v7, 0x64

    if-le v6, v7, :cond_0

    .line 864
    :goto_0
    return-void

    .line 829
    :cond_0
    const/16 v2, 0x800

    .line 830
    .local v2, "estimateSize":I
    iget-object v6, p0, Lcom/ea/nimble/NetworkConnection;->m_requestDataForLog:Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 832
    iget-object v6, p0, Lcom/ea/nimble/NetworkConnection;->m_requestDataForLog:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v2, v6

    .line 834
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 835
    .local v4, "str":Ljava/lang/StringBuilder;
    const-string v6, "\n>>>> CONNECTION ID %s BEGIN >>>>>>>>>>>>>>>>>\n"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/ea/nimble/NetworkConnection;->m_loggingId:Ljava/lang/String;

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 836
    const-string v6, "REQUEST: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/ea/nimble/NetworkConnection;->m_request:Lcom/ea/nimble/HttpRequest;

    iget-object v7, v7, Lcom/ea/nimble/HttpRequest;->method:Lcom/ea/nimble/IHttpRequest$Method;

    invoke-virtual {v7}, Lcom/ea/nimble/IHttpRequest$Method;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 837
    const/16 v6, 0x20

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/ea/nimble/NetworkConnection;->m_request:Lcom/ea/nimble/HttpRequest;

    iget-object v7, v7, Lcom/ea/nimble/HttpRequest;->url:Ljava/net/URL;

    invoke-virtual {v7}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 838
    iget-object v6, p0, Lcom/ea/nimble/NetworkConnection;->m_request:Lcom/ea/nimble/HttpRequest;

    iget-object v6, v6, Lcom/ea/nimble/HttpRequest;->headers:Ljava/util/HashMap;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/ea/nimble/NetworkConnection;->m_request:Lcom/ea/nimble/HttpRequest;

    iget-object v6, v6, Lcom/ea/nimble/HttpRequest;->headers:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 840
    iget-object v6, p0, Lcom/ea/nimble/NetworkConnection;->m_request:Lcom/ea/nimble/HttpRequest;

    iget-object v6, v6, Lcom/ea/nimble/HttpRequest;->headers:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 842
    .local v3, "key":Ljava/lang/String;
    const-string v7, "REQ HEADER: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 843
    iget-object v7, p0, Lcom/ea/nimble/NetworkConnection;->m_request:Lcom/ea/nimble/HttpRequest;

    iget-object v7, v7, Lcom/ea/nimble/HttpRequest;->headers:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 844
    .local v5, "value":Ljava/lang/String;
    const-string v7, " VALUE: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 848
    .end local v3    # "key":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lcom/ea/nimble/NetworkConnection;->m_requestDataForLog:Ljava/lang/String;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/ea/nimble/NetworkConnection;->m_requestDataForLog:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_5

    .line 850
    const-string v6, "REQ BODY:\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 851
    iget-object v6, p0, Lcom/ea/nimble/NetworkConnection;->m_requestDataForLog:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 854
    .local v0, "bodyString":Ljava/lang/String;
    iget-object v6, p0, Lcom/ea/nimble/NetworkConnection;->m_request:Lcom/ea/nimble/HttpRequest;

    iget-object v6, v6, Lcom/ea/nimble/HttpRequest;->headers:Ljava/util/HashMap;

    const-string v7, "Content-Type"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 855
    .local v1, "contentType":Ljava/lang/String;
    if-eqz v1, :cond_4

    const-string v6, "application/json"

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "text/json"

    .line 856
    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 857
    :cond_3
    invoke-direct {p0, v0}, Lcom/ea/nimble/NetworkConnection;->beautifyJSONString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 859
    :cond_4
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 862
    .end local v0    # "bodyString":Ljava/lang/String;
    .end local v1    # "contentType":Ljava/lang/String;
    :cond_5
    const-string v6, "<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 863
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {p0, v6, v7}, Lcom/ea/nimble/Log$Helper;->LOGV(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method private multiplyStringNTimes(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "times"    # I

    .prologue
    .line 742
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    mul-int/2addr v2, p2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 743
    .local v1, "str":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 744
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 743
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 745
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private prepareRequestLog([B)V
    .locals 3
    .param p1, "data"    # [B

    .prologue
    .line 692
    invoke-static {}, Lcom/ea/nimble/Log;->getComponent()Lcom/ea/nimble/ILog;

    move-result-object v1

    invoke-interface {v1}, Lcom/ea/nimble/ILog;->getThresholdLevel()I

    move-result v1

    const/16 v2, 0x64

    if-le v1, v2, :cond_0

    .line 705
    :goto_0
    return-void

    .line 699
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v1, p0, Lcom/ea/nimble/NetworkConnection;->m_requestDataForLog:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 701
    :catch_0
    move-exception v0

    .line 703
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ea/nimble/NetworkConnection;->m_requestDataForLog:Ljava/lang/String;

    goto :goto_0
.end method

.method private prepareResponseLog()V
    .locals 6

    .prologue
    .line 709
    invoke-static {}, Lcom/ea/nimble/Log;->getComponent()Lcom/ea/nimble/ILog;

    move-result-object v1

    invoke-interface {v1}, Lcom/ea/nimble/ILog;->getThresholdLevel()I

    move-result v1

    const/16 v2, 0x64

    if-le v1, v2, :cond_0

    .line 719
    :goto_0
    return-void

    .line 717
    :cond_0
    iget-object v1, p0, Lcom/ea/nimble/NetworkConnection;->m_response:Lcom/ea/nimble/HttpResponse;

    iget-wide v2, v1, Lcom/ea/nimble/HttpResponse;->expectedContentLength:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/ea/nimble/NetworkConnection;->m_response:Lcom/ea/nimble/HttpResponse;

    iget-wide v2, v1, Lcom/ea/nimble/HttpResponse;->expectedContentLength:J

    long-to-int v0, v2

    .line 718
    .local v0, "estimateSize":I
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v1, p0, Lcom/ea/nimble/NetworkConnection;->m_responseDataForLog:Ljava/lang/StringBuilder;

    goto :goto_0

    .line 717
    .end local v0    # "estimateSize":I
    :cond_1
    const/16 v0, 0x1000

    goto :goto_1
.end method

.method private prepareResponseLog([BII)V
    .locals 4
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 723
    invoke-static {}, Lcom/ea/nimble/Log;->getComponent()Lcom/ea/nimble/ILog;

    move-result-object v2

    invoke-interface {v2}, Lcom/ea/nimble/ILog;->getThresholdLevel()I

    move-result v2

    const/16 v3, 0x64

    if-gt v2, v3, :cond_0

    iget-object v2, p0, Lcom/ea/nimble/NetworkConnection;->m_responseDataForLog:Ljava/lang/StringBuilder;

    if-nez v2, :cond_1

    .line 739
    :cond_0
    :goto_0
    return-void

    .line 730
    :cond_1
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, p1, p2, p3, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 731
    .local v1, "str":Ljava/lang/String;
    iget-object v2, p0, Lcom/ea/nimble/NetworkConnection;->m_responseDataForLog:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 733
    .end local v1    # "str":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 737
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/ea/nimble/NetworkConnection;->m_responseDataForLog:Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private skipDownloadForOverwritePolicy(Ljava/net/HttpURLConnection;)Z
    .locals 6
    .param p1, "connection"    # Ljava/net/HttpURLConnection;

    .prologue
    const/4 v1, 0x1

    .line 635
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/ea/nimble/NetworkConnection;->m_request:Lcom/ea/nimble/HttpRequest;

    iget-object v2, v2, Lcom/ea/nimble/HttpRequest;->targetFilePath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 637
    .local v0, "targetFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 640
    const/4 v1, 0x0

    .line 654
    :cond_0
    :goto_0
    return v1

    .line 643
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    iget-object v4, p0, Lcom/ea/nimble/NetworkConnection;->m_response:Lcom/ea/nimble/HttpResponse;

    iget-wide v4, v4, Lcom/ea/nimble/HttpResponse;->expectedContentLength:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/ea/nimble/NetworkConnection;->m_request:Lcom/ea/nimble/HttpRequest;

    iget-object v2, v2, Lcom/ea/nimble/HttpRequest;->overwritePolicy:Ljava/util/EnumSet;

    sget-object v3, Lcom/ea/nimble/IHttpRequest$OverwritePolicy;->LENGTH_CHECK:Lcom/ea/nimble/IHttpRequest$OverwritePolicy;

    .line 644
    invoke-virtual {v2, v3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 649
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    iget-object v4, p0, Lcom/ea/nimble/NetworkConnection;->m_response:Lcom/ea/nimble/HttpResponse;

    iget-wide v4, v4, Lcom/ea/nimble/HttpResponse;->lastModified:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    iget-object v2, p0, Lcom/ea/nimble/NetworkConnection;->m_request:Lcom/ea/nimble/HttpRequest;

    iget-object v2, v2, Lcom/ea/nimble/HttpRequest;->overwritePolicy:Ljava/util/EnumSet;

    sget-object v3, Lcom/ea/nimble/IHttpRequest$OverwritePolicy;->DATE_CHECK:Lcom/ea/nimble/IHttpRequest$OverwritePolicy;

    .line 650
    invoke-virtual {v2, v3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 4

    .prologue
    .line 135
    monitor-enter p0

    .line 137
    :try_start_0
    iget-object v0, p0, Lcom/ea/nimble/NetworkConnection;->m_thread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/ea/nimble/NetworkConnection;->m_thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 146
    :goto_0
    monitor-exit p0

    .line 147
    return-void

    .line 143
    :cond_0
    new-instance v0, Lcom/ea/nimble/Error;

    sget-object v1, Lcom/ea/nimble/Error$Code;->NETWORK_OPERATION_CANCELLED:Lcom/ea/nimble/Error$Code;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Network connection "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 144
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is cancelled"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/ea/nimble/Error;-><init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0, v0}, Lcom/ea/nimble/NetworkConnection;->finishWithError(Ljava/lang/Exception;)V

    goto :goto_0

    .line 146
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method cancelForAppSuspend()V
    .locals 0

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/ea/nimble/NetworkConnection;->cancel()V

    .line 152
    return-void
.end method

.method finishWithError(Ljava/lang/Exception;)V
    .locals 6
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 679
    iget-object v0, p0, Lcom/ea/nimble/NetworkConnection;->m_response:Lcom/ea/nimble/HttpResponse;

    iget-boolean v0, v0, Lcom/ea/nimble/HttpResponse;->isCompleted:Z

    if-eqz v0, :cond_0

    .line 682
    const-string v0, "Finished connection %s skipped an error %s"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGI(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 688
    :goto_0
    return-void

    .line 685
    :cond_0
    const-string v0, "Running connection number %s with name %s failed for error %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/ea/nimble/NetworkConnection;->m_loggingId:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 686
    iget-object v0, p0, Lcom/ea/nimble/NetworkConnection;->m_response:Lcom/ea/nimble/HttpResponse;

    iput-object p1, v0, Lcom/ea/nimble/HttpResponse;->error:Ljava/lang/Exception;

    .line 687
    invoke-direct {p0}, Lcom/ea/nimble/NetworkConnection;->finish()V

    goto :goto_0
.end method

.method public getCompletionCallback()Lcom/ea/nimble/NetworkConnectionCallback;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/ea/nimble/NetworkConnection;->m_completionCallback:Lcom/ea/nimble/NetworkConnectionCallback;

    return-object v0
.end method

.method public getHeaderCallback()Lcom/ea/nimble/NetworkConnectionCallback;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/ea/nimble/NetworkConnection;->m_headerCallback:Lcom/ea/nimble/NetworkConnectionCallback;

    return-object v0
.end method

.method public getLogSourceTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    const-string v0, "Network"

    return-object v0
.end method

.method public getProgressCallback()Lcom/ea/nimble/NetworkConnectionCallback;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/ea/nimble/NetworkConnection;->m_progressCallback:Lcom/ea/nimble/NetworkConnectionCallback;

    return-object v0
.end method

.method public getRequest()Lcom/ea/nimble/HttpRequest;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/ea/nimble/NetworkConnection;->m_request:Lcom/ea/nimble/HttpRequest;

    return-object v0
.end method

.method public bridge synthetic getRequest()Lcom/ea/nimble/IHttpRequest;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/ea/nimble/NetworkConnection;->getRequest()Lcom/ea/nimble/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public getResponse()Lcom/ea/nimble/HttpResponse;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/ea/nimble/NetworkConnection;->m_response:Lcom/ea/nimble/HttpResponse;

    return-object v0
.end method

.method public bridge synthetic getResponse()Lcom/ea/nimble/IHttpResponse;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/ea/nimble/NetworkConnection;->getResponse()Lcom/ea/nimble/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method logOperationalTelemetryResponse()V
    .locals 26

    .prologue
    .line 958
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ea/nimble/NetworkConnection;->m_request:Lcom/ea/nimble/HttpRequest;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ea/nimble/NetworkConnection;->m_request:Lcom/ea/nimble/HttpRequest;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ea/nimble/HttpRequest;->url:Ljava/net/URL;

    move-object/from16 v21, v0

    if-nez v21, :cond_1

    .line 960
    :cond_0
    const-string v21, "Empty request object and/or request URL for OT logging."

    const/16 v22, 0x0

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1057
    :goto_0
    return-void

    .line 966
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ea/nimble/NetworkConnection;->m_response:Lcom/ea/nimble/HttpResponse;

    move-object/from16 v21, v0

    if-nez v21, :cond_2

    .line 968
    const-string v21, "Empty response object for OT logging."

    const/16 v22, 0x0

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 975
    :cond_2
    invoke-static {}, Lcom/ea/nimble/BaseCore;->getInstance()Lcom/ea/nimble/BaseCore;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/ea/nimble/BaseCore;->isActive()Z

    move-result v21

    if-nez v21, :cond_3

    .line 977
    const-string v21, "BaseCore not active for operational telemetry logging."

    const/16 v22, 0x0

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGV(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 982
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ea/nimble/NetworkConnection;->m_otDispatch:Lcom/ea/nimble/IOperationalTelemetryDispatch;

    move-object/from16 v21, v0

    if-nez v21, :cond_4

    .line 984
    invoke-static {}, Lcom/ea/nimble/OperationalTelemetryDispatch;->getComponent()Lcom/ea/nimble/IOperationalTelemetryDispatch;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ea/nimble/NetworkConnection;->m_otDispatch:Lcom/ea/nimble/IOperationalTelemetryDispatch;

    .line 985
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ea/nimble/NetworkConnection;->m_otDispatch:Lcom/ea/nimble/IOperationalTelemetryDispatch;

    move-object/from16 v21, v0

    if-nez v21, :cond_4

    .line 987
    const-string v21, "OperationalTelemetry Component not active for operational telemetry logging."

    const/16 v22, 0x0

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGV(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 993
    :cond_4
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 995
    .local v9, "eventDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ea/nimble/NetworkConnection;->m_request:Lcom/ea/nimble/HttpRequest;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ea/nimble/HttpRequest;->url:Ljava/net/URL;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v16

    .line 996
    .local v16, "protocol":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ea/nimble/NetworkConnection;->m_request:Lcom/ea/nimble/HttpRequest;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ea/nimble/HttpRequest;->url:Ljava/net/URL;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v15

    .line 997
    .local v15, "path":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ea/nimble/NetworkConnection;->m_request:Lcom/ea/nimble/HttpRequest;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ea/nimble/HttpRequest;->url:Ljava/net/URL;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v17

    .line 998
    .local v17, "query":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ea/nimble/NetworkConnection;->m_request:Lcom/ea/nimble/HttpRequest;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ea/nimble/HttpRequest;->url:Ljava/net/URL;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v11

    .line 999
    .local v11, "host":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ea/nimble/NetworkConnection;->m_response:Lcom/ea/nimble/HttpResponse;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/ea/nimble/HttpResponse;->statusCode:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    .line 1000
    .local v19, "statusCode":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ea/nimble/NetworkConnection;->m_request:Lcom/ea/nimble/HttpRequest;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ea/nimble/HttpRequest;->url:Ljava/net/URL;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1003
    .local v4, "absolute":Ljava/lang/String;
    const-string v18, "0"

    .line 1004
    .local v18, "responseTimeMs":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ea/nimble/NetworkConnection;->m_connectionStartTimestamp:Ljava/util/Date;

    move-object/from16 v21, v0

    if-eqz v21, :cond_5

    .line 1008
    :try_start_0
    new-instance v14, Ljava/util/Date;

    invoke-direct {v14}, Ljava/util/Date;-><init>()V

    .line 1009
    .local v14, "now":Ljava/util/Date;
    if-eqz v14, :cond_5

    .line 1011
    invoke-virtual {v14}, Ljava/util/Date;->getTime()J

    move-result-wide v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ea/nimble/NetworkConnection;->m_connectionStartTimestamp:Ljava/util/Date;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/Date;->getTime()J

    move-result-wide v24

    sub-long v12, v22, v24

    .line 1012
    .local v12, "milliseconds":J
    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v18

    .line 1022
    .end local v12    # "milliseconds":J
    .end local v14    # "now":Ljava/util/Date;
    :cond_5
    :goto_1
    const/16 v20, 0x0

    .line 1023
    .local v20, "timedOut":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ea/nimble/NetworkConnection;->m_response:Lcom/ea/nimble/HttpResponse;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/ea/nimble/HttpResponse;->getError()Ljava/lang/Exception;

    move-result-object v10

    .line 1024
    .local v10, "exception":Ljava/lang/Exception;
    if-eqz v10, :cond_6

    .line 1026
    instance-of v0, v10, Lcom/ea/nimble/Error;

    move/from16 v21, v0

    if-eqz v21, :cond_8

    move-object v7, v10

    .line 1028
    check-cast v7, Lcom/ea/nimble/Error;

    .line 1029
    .local v7, "error":Lcom/ea/nimble/Error;
    invoke-virtual {v7}, Lcom/ea/nimble/Error;->getCode()I

    move-result v8

    .line 1030
    .local v8, "errorCode":I
    invoke-virtual {v7}, Lcom/ea/nimble/Error;->getDomain()Ljava/lang/String;

    move-result-object v5

    .line 1032
    .local v5, "domain":Ljava/lang/String;
    const-string v21, "NIMBLE_ERROR_DOMAIN"

    move-object/from16 v0, v21

    invoke-virtual {v9, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1033
    const-string v21, "NIMBLE_ERROR_CODE"

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1036
    invoke-virtual {v7}, Lcom/ea/nimble/Error;->getDomain()Ljava/lang/String;

    move-result-object v21

    const-string v22, "NimbleError"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_7

    sget-object v21, Lcom/ea/nimble/Error$Code;->NETWORK_TIMEOUT:Lcom/ea/nimble/Error$Code;

    invoke-virtual/range {v21 .. v21}, Lcom/ea/nimble/Error$Code;->intValue()I

    move-result v21

    move/from16 v0, v21

    if-ne v8, v0, :cond_7

    const/16 v20, 0x1

    .line 1046
    .end local v5    # "domain":Ljava/lang/String;
    .end local v7    # "error":Lcom/ea/nimble/Error;
    .end local v8    # "errorCode":I
    :cond_6
    :goto_2
    const-string v21, "CONNECTIONID"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ea/nimble/NetworkConnection;->m_loggingId:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1047
    const-string v21, "URL_ABSOLUTE"

    move-object/from16 v0, v21

    invoke-virtual {v9, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1048
    const-string v21, "URL_PROTOCOL"

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1049
    const-string v21, "URL_PATH"

    move-object/from16 v0, v21

    invoke-virtual {v9, v0, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1050
    const-string v21, "URL_QUERY"

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1051
    const-string v21, "URL_HOST"

    move-object/from16 v0, v21

    invoke-virtual {v9, v0, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1052
    const-string v21, "RESPONSE_TIME_MS"

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1053
    const-string v21, "HTTP_STATUS_CODE"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1054
    const-string v21, "REQUEST_TIMED_OUT"

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1056
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ea/nimble/NetworkConnection;->m_otDispatch:Lcom/ea/nimble/IOperationalTelemetryDispatch;

    move-object/from16 v21, v0

    const-string v22, "com.ea.nimble.network"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v0, v1, v9}, Lcom/ea/nimble/IOperationalTelemetryDispatch;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 1015
    .end local v10    # "exception":Ljava/lang/Exception;
    .end local v20    # "timedOut":Z
    :catch_0
    move-exception v6

    .line 1017
    .local v6, "e":Ljava/lang/Exception;
    const-string v21, "Unable to allocate new Date object to calculate response time."

    const/16 v22, 0x0

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1036
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v5    # "domain":Ljava/lang/String;
    .restart local v7    # "error":Lcom/ea/nimble/Error;
    .restart local v8    # "errorCode":I
    .restart local v10    # "exception":Ljava/lang/Exception;
    .restart local v20    # "timedOut":Z
    :cond_7
    const/16 v20, 0x0

    goto :goto_2

    .line 1042
    .end local v5    # "domain":Ljava/lang/String;
    .end local v7    # "error":Lcom/ea/nimble/Error;
    .end local v8    # "errorCode":I
    :cond_8
    const-string v21, "NIMBLE_ERROR_DOMAIN"

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2
.end method

.method public run()V
    .locals 8

    .prologue
    const-wide v6, 0x408f400000000000L    # 1000.0

    .line 159
    :try_start_0
    iget-object v3, p0, Lcom/ea/nimble/NetworkConnection;->m_response:Lcom/ea/nimble/HttpResponse;

    iget-boolean v3, v3, Lcom/ea/nimble/HttpResponse;->isCompleted:Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/ea/nimble/Error; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    if-eqz v3, :cond_0

    .line 247
    monitor-enter p0

    .line 249
    const/4 v3, 0x0

    :try_start_1
    iput-object v3, p0, Lcom/ea/nimble/NetworkConnection;->m_thread:Ljava/lang/Thread;

    .line 250
    monitor-exit p0

    .line 252
    :goto_0
    return-void

    .line 250
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 163
    :cond_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 165
    new-instance v3, Ljava/io/InterruptedIOException;

    invoke-direct {v3}, Ljava/io/InterruptedIOException;-><init>()V

    throw v3
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/InterruptedIOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lcom/ea/nimble/Error; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    .line 203
    :catch_0
    move-exception v1

    .line 206
    .local v1, "e":Ljava/lang/ClassCastException;
    :try_start_3
    new-instance v3, Lcom/ea/nimble/Error;

    sget-object v4, Lcom/ea/nimble/Error$Code;->NETWORK_UNSUPPORTED_CONNECTION_TYPE:Lcom/ea/nimble/Error$Code;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Request "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " failed for unsupported connection type"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/ea/nimble/NetworkConnection;->m_request:Lcom/ea/nimble/HttpRequest;

    .line 207
    invoke-virtual {v6}, Lcom/ea/nimble/HttpRequest;->getUrl()Ljava/net/URL;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, v1}, Lcom/ea/nimble/Error;-><init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 206
    invoke-virtual {p0, v3}, Lcom/ea/nimble/NetworkConnection;->finishWithError(Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    .line 247
    monitor-enter p0

    .line 249
    const/4 v3, 0x0

    :try_start_4
    iput-object v3, p0, Lcom/ea/nimble/NetworkConnection;->m_thread:Ljava/lang/Thread;

    .line 250
    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v3

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v3

    .line 168
    .end local v1    # "e":Ljava/lang/ClassCastException;
    :cond_1
    :try_start_5
    monitor-enter p0
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/InterruptedIOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/net/UnknownHostException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Lcom/ea/nimble/Error; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_7

    .line 170
    :try_start_6
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    iput-object v3, p0, Lcom/ea/nimble/NetworkConnection;->m_thread:Ljava/lang/Thread;

    .line 171
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 172
    :try_start_7
    iget-object v3, p0, Lcom/ea/nimble/NetworkConnection;->m_request:Lcom/ea/nimble/HttpRequest;

    invoke-virtual {v3}, Lcom/ea/nimble/HttpRequest;->getUrl()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 173
    .local v0, "connection":Ljava/net/HttpURLConnection;
    iget-object v3, p0, Lcom/ea/nimble/NetworkConnection;->m_request:Lcom/ea/nimble/HttpRequest;

    iget-object v3, v3, Lcom/ea/nimble/HttpRequest;->method:Lcom/ea/nimble/IHttpRequest$Method;

    invoke-virtual {v3}, Lcom/ea/nimble/IHttpRequest$Method;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 174
    iget-object v3, p0, Lcom/ea/nimble/NetworkConnection;->m_request:Lcom/ea/nimble/HttpRequest;

    iget-wide v4, v3, Lcom/ea/nimble/HttpRequest;->timeout:D

    mul-double/2addr v4, v6

    double-to-int v3, v4

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 178
    iget-object v3, p0, Lcom/ea/nimble/NetworkConnection;->m_request:Lcom/ea/nimble/HttpRequest;

    iget-wide v4, v3, Lcom/ea/nimble/HttpRequest;->timeout:D

    mul-double/2addr v4, v6

    double-to-int v3, v4

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 189
    const-string v3, "Connection"

    const-string v4, "close"

    invoke-virtual {v0, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 193
    new-instance v3, Ljava/io/InterruptedIOException;

    invoke-direct {v3}, Ljava/io/InterruptedIOException;-><init>()V

    throw v3
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/InterruptedIOException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/net/UnknownHostException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Lcom/ea/nimble/Error; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    .line 209
    .end local v0    # "connection":Ljava/net/HttpURLConnection;
    :catch_1
    move-exception v1

    .line 211
    .local v1, "e":Ljava/net/SocketTimeoutException;
    :try_start_8
    new-instance v3, Lcom/ea/nimble/Error;

    sget-object v4, Lcom/ea/nimble/Error$Code;->NETWORK_TIMEOUT:Lcom/ea/nimble/Error$Code;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Connection "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " timed out"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, v1}, Lcom/ea/nimble/Error;-><init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v3}, Lcom/ea/nimble/NetworkConnection;->finishWithError(Ljava/lang/Exception;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    .line 247
    monitor-enter p0

    .line 249
    const/4 v3, 0x0

    :try_start_9
    iput-object v3, p0, Lcom/ea/nimble/NetworkConnection;->m_thread:Ljava/lang/Thread;

    .line 250
    monitor-exit p0

    goto/16 :goto_0

    :catchall_2
    move-exception v3

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw v3

    .line 171
    .end local v1    # "e":Ljava/net/SocketTimeoutException;
    :catchall_3
    move-exception v3

    :try_start_a
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :try_start_b
    throw v3
    :try_end_b
    .catch Ljava/lang/ClassCastException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/io/InterruptedIOException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/net/UnknownHostException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4
    .catch Lcom/ea/nimble/Error; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    .line 213
    :catch_2
    move-exception v1

    .line 215
    .local v1, "e":Ljava/io/InterruptedIOException;
    :try_start_c
    new-instance v3, Lcom/ea/nimble/Error;

    sget-object v4, Lcom/ea/nimble/Error$Code;->NETWORK_OPERATION_CANCELLED:Lcom/ea/nimble/Error$Code;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Connection "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is cancelled"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, v1}, Lcom/ea/nimble/Error;-><init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v3}, Lcom/ea/nimble/NetworkConnection;->finishWithError(Ljava/lang/Exception;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    .line 247
    monitor-enter p0

    .line 249
    const/4 v3, 0x0

    :try_start_d
    iput-object v3, p0, Lcom/ea/nimble/NetworkConnection;->m_thread:Ljava/lang/Thread;

    .line 250
    monitor-exit p0

    goto/16 :goto_0

    :catchall_4
    move-exception v3

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    throw v3

    .line 195
    .end local v1    # "e":Ljava/io/InterruptedIOException;
    .restart local v0    # "connection":Ljava/net/HttpURLConnection;
    :cond_2
    :try_start_e
    invoke-direct {p0, v0}, Lcom/ea/nimble/NetworkConnection;->httpSend(Ljava/net/HttpURLConnection;)V

    .line 196
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 198
    new-instance v3, Ljava/io/InterruptedIOException;

    invoke-direct {v3}, Ljava/io/InterruptedIOException;-><init>()V

    throw v3
    :try_end_e
    .catch Ljava/lang/ClassCastException; {:try_start_e .. :try_end_e} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_e .. :try_end_e} :catch_1
    .catch Ljava/io/InterruptedIOException; {:try_start_e .. :try_end_e} :catch_2
    .catch Ljava/net/UnknownHostException; {:try_start_e .. :try_end_e} :catch_3
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_4
    .catch Lcom/ea/nimble/Error; {:try_start_e .. :try_end_e} :catch_5
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    .line 217
    .end local v0    # "connection":Ljava/net/HttpURLConnection;
    :catch_3
    move-exception v1

    .line 219
    .local v1, "e":Ljava/net/UnknownHostException;
    :try_start_f
    iget-object v3, p0, Lcom/ea/nimble/NetworkConnection;->m_manager:Lcom/ea/nimble/NetworkImpl;

    invoke-virtual {v3}, Lcom/ea/nimble/NetworkImpl;->getStatus()Lcom/ea/nimble/Network$Status;

    move-result-object v2

    .line 221
    .local v2, "networkStatus":Lcom/ea/nimble/Network$Status;
    sget-object v3, Lcom/ea/nimble/Network$Status;->OK:Lcom/ea/nimble/Network$Status;

    if-eq v2, v3, :cond_4

    .line 223
    new-instance v3, Lcom/ea/nimble/Error;

    sget-object v4, Lcom/ea/nimble/Error$Code;->NETWORK_NO_CONNECTION:Lcom/ea/nimble/Error$Code;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No network connection, network status "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 224
    invoke-virtual {v2}, Lcom/ea/nimble/Network$Status;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, v1}, Lcom/ea/nimble/Error;-><init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 223
    invoke-virtual {p0, v3}, Lcom/ea/nimble/NetworkConnection;->finishWithError(Ljava/lang/Exception;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    .line 247
    :goto_1
    monitor-enter p0

    .line 249
    const/4 v3, 0x0

    :try_start_10
    iput-object v3, p0, Lcom/ea/nimble/NetworkConnection;->m_thread:Ljava/lang/Thread;

    .line 250
    monitor-exit p0

    goto/16 :goto_0

    :catchall_5
    move-exception v3

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    throw v3

    .line 200
    .end local v1    # "e":Ljava/net/UnknownHostException;
    .end local v2    # "networkStatus":Lcom/ea/nimble/Network$Status;
    .restart local v0    # "connection":Ljava/net/HttpURLConnection;
    :cond_3
    :try_start_11
    invoke-direct {p0, v0}, Lcom/ea/nimble/NetworkConnection;->httpRecv(Ljava/net/HttpURLConnection;)V

    .line 201
    invoke-direct {p0}, Lcom/ea/nimble/NetworkConnection;->finish()V
    :try_end_11
    .catch Ljava/lang/ClassCastException; {:try_start_11 .. :try_end_11} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_11 .. :try_end_11} :catch_1
    .catch Ljava/io/InterruptedIOException; {:try_start_11 .. :try_end_11} :catch_2
    .catch Ljava/net/UnknownHostException; {:try_start_11 .. :try_end_11} :catch_3
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_4
    .catch Lcom/ea/nimble/Error; {:try_start_11 .. :try_end_11} :catch_5
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_6
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    .line 247
    monitor-enter p0

    .line 249
    const/4 v3, 0x0

    :try_start_12
    iput-object v3, p0, Lcom/ea/nimble/NetworkConnection;->m_thread:Ljava/lang/Thread;

    .line 250
    monitor-exit p0

    goto/16 :goto_0

    :catchall_6
    move-exception v3

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    throw v3

    .line 228
    .end local v0    # "connection":Ljava/net/HttpURLConnection;
    .restart local v1    # "e":Ljava/net/UnknownHostException;
    .restart local v2    # "networkStatus":Lcom/ea/nimble/Network$Status;
    :cond_4
    :try_start_13
    new-instance v3, Lcom/ea/nimble/Error;

    sget-object v4, Lcom/ea/nimble/Error$Code;->NETWORK_UNREACHABLE:Lcom/ea/nimble/Error$Code;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Request "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 229
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " failed for unreachable host"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, v1}, Lcom/ea/nimble/Error;-><init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 228
    invoke-virtual {p0, v3}, Lcom/ea/nimble/NetworkConnection;->finishWithError(Ljava/lang/Exception;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    goto :goto_1

    .line 247
    .end local v1    # "e":Ljava/net/UnknownHostException;
    .end local v2    # "networkStatus":Lcom/ea/nimble/Network$Status;
    :catchall_7
    move-exception v3

    monitor-enter p0

    .line 249
    const/4 v4, 0x0

    :try_start_14
    iput-object v4, p0, Lcom/ea/nimble/NetworkConnection;->m_thread:Ljava/lang/Thread;

    .line 250
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_b

    throw v3

    .line 232
    :catch_4
    move-exception v1

    .line 234
    .local v1, "e":Ljava/io/IOException;
    :try_start_15
    new-instance v3, Lcom/ea/nimble/Error;

    sget-object v4, Lcom/ea/nimble/Error$Code;->NETWORK_CONNECTION_ERROR:Lcom/ea/nimble/Error$Code;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Connection "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 235
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " failed with I/O exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, v1}, Lcom/ea/nimble/Error;-><init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 234
    invoke-virtual {p0, v3}, Lcom/ea/nimble/NetworkConnection;->finishWithError(Ljava/lang/Exception;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    .line 247
    monitor-enter p0

    .line 249
    const/4 v3, 0x0

    :try_start_16
    iput-object v3, p0, Lcom/ea/nimble/NetworkConnection;->m_thread:Ljava/lang/Thread;

    .line 250
    monitor-exit p0

    goto/16 :goto_0

    :catchall_8
    move-exception v3

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_8

    throw v3

    .line 237
    .end local v1    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v1

    .line 239
    .local v1, "e":Lcom/ea/nimble/Error;
    :try_start_17
    invoke-virtual {p0, v1}, Lcom/ea/nimble/NetworkConnection;->finishWithError(Ljava/lang/Exception;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_7

    .line 247
    monitor-enter p0

    .line 249
    const/4 v3, 0x0

    :try_start_18
    iput-object v3, p0, Lcom/ea/nimble/NetworkConnection;->m_thread:Ljava/lang/Thread;

    .line 250
    monitor-exit p0

    goto/16 :goto_0

    :catchall_9
    move-exception v3

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_9

    throw v3

    .line 241
    .end local v1    # "e":Lcom/ea/nimble/Error;
    :catch_6
    move-exception v1

    .line 243
    .local v1, "e":Ljava/lang/Exception;
    :try_start_19
    new-instance v3, Lcom/ea/nimble/Error;

    sget-object v4, Lcom/ea/nimble/Error$Code;->SYSTEM_UNEXPECTED:Lcom/ea/nimble/Error$Code;

    const-string v5, "Unexpected error."

    invoke-direct {v3, v4, v5, v1}, Lcom/ea/nimble/Error;-><init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v3}, Lcom/ea/nimble/NetworkConnection;->finishWithError(Ljava/lang/Exception;)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_7

    .line 247
    monitor-enter p0

    .line 249
    const/4 v3, 0x0

    :try_start_1a
    iput-object v3, p0, Lcom/ea/nimble/NetworkConnection;->m_thread:Ljava/lang/Thread;

    .line 250
    monitor-exit p0

    goto/16 :goto_0

    :catchall_a
    move-exception v3

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_a

    throw v3

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_b
    move-exception v3

    :try_start_1b
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_b

    throw v3
.end method

.method public setCompletionCallback(Lcom/ea/nimble/NetworkConnectionCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/ea/nimble/NetworkConnectionCallback;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/ea/nimble/NetworkConnection;->m_completionCallback:Lcom/ea/nimble/NetworkConnectionCallback;

    .line 110
    return-void
.end method

.method public setHeaderCallback(Lcom/ea/nimble/NetworkConnectionCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/ea/nimble/NetworkConnectionCallback;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/ea/nimble/NetworkConnection;->m_headerCallback:Lcom/ea/nimble/NetworkConnectionCallback;

    .line 86
    return-void
.end method

.method public setProgressCallback(Lcom/ea/nimble/NetworkConnectionCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/ea/nimble/NetworkConnectionCallback;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/ea/nimble/NetworkConnection;->m_progressCallback:Lcom/ea/nimble/NetworkConnectionCallback;

    .line 98
    return-void
.end method

.method public waitOn()V
    .locals 1

    .prologue
    .line 115
    monitor-enter p0

    .line 117
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/ea/nimble/NetworkConnection;->m_response:Lcom/ea/nimble/HttpResponse;

    iget-boolean v0, v0, Lcom/ea/nimble/HttpResponse;->isCompleted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 121
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 123
    :catch_0
    move-exception v0

    goto :goto_0

    .line 128
    :cond_0
    :try_start_2
    monitor-exit p0

    .line 129
    return-void

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

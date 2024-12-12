.class public abstract Lorg/restlet/engine/connector/OutboundWay;
.super Lorg/restlet/engine/connector/Way;
.source "OutboundWay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/restlet/engine/connector/OutboundWay$1;
    }
.end annotation


# instance fields
.field private volatile entityChannel:Ljava/nio/channels/ReadableByteChannel;

.field private volatile entityChannelType:Lorg/restlet/engine/connector/EntityType;

.field private volatile entitySelectionKey:Ljava/nio/channels/SelectionKey;

.field private volatile headerIndex:I


# direct methods
.method public constructor <init>(Lorg/restlet/engine/connector/Connection;I)V
    .locals 1
    .param p2, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/restlet/engine/connector/Connection",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .local p1, "connection":Lorg/restlet/engine/connector/Connection;, "Lorg/restlet/engine/connector/Connection<*>;"
    const/4 v0, 0x0

    .line 108
    invoke-direct {p0, p1, p2}, Lorg/restlet/engine/connector/Way;-><init>(Lorg/restlet/engine/connector/Connection;I)V

    .line 109
    iput-object v0, p0, Lorg/restlet/engine/connector/OutboundWay;->entityChannel:Ljava/nio/channels/ReadableByteChannel;

    .line 110
    iput-object v0, p0, Lorg/restlet/engine/connector/OutboundWay;->entitySelectionKey:Ljava/nio/channels/SelectionKey;

    .line 111
    const/4 v0, 0x0

    iput v0, p0, Lorg/restlet/engine/connector/OutboundWay;->headerIndex:I

    .line 112
    return-void
.end method

.method protected static getVersion(Lorg/restlet/Request;)Ljava/lang/String;
    .locals 4
    .param p0, "request"    # Lorg/restlet/Request;

    .prologue
    .line 78
    invoke-virtual {p0}, Lorg/restlet/Request;->getProtocol()Lorg/restlet/data/Protocol;

    move-result-object v0

    .line 79
    .local v0, "protocol":Lorg/restlet/data/Protocol;
    invoke-virtual {v0}, Lorg/restlet/data/Protocol;->getVersion()Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, "protocolVersion":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lorg/restlet/data/Protocol;->getTechnicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v1, :cond_0

    const-string v1, "1.1"

    .end local v1    # "protocolVersion":Ljava/lang/String;
    :cond_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method protected addEntityHeaders(Lorg/restlet/representation/Representation;Lorg/restlet/util/Series;)V
    .locals 0
    .param p1, "entity"    # Lorg/restlet/representation/Representation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/restlet/representation/Representation;",
            "Lorg/restlet/util/Series",
            "<",
            "Lorg/restlet/engine/header/Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 122
    .local p2, "headers":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<Lorg/restlet/engine/header/Header;>;"
    invoke-static {p1, p2}, Lorg/restlet/engine/header/HeaderUtils;->addEntityHeaders(Lorg/restlet/representation/Representation;Lorg/restlet/util/Series;)V

    .line 123
    return-void
.end method

.method protected addGeneralHeaders(Lorg/restlet/util/Series;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/restlet/util/Series",
            "<",
            "Lorg/restlet/engine/header/Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 132
    .local p1, "headers":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<Lorg/restlet/engine/header/Header;>;"
    invoke-virtual {p0}, Lorg/restlet/engine/connector/OutboundWay;->getConnection()Lorg/restlet/engine/connector/Connection;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/engine/connector/Connection;->isPersistent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    const-string v0, "Connection"

    const-string v1, "close"

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lorg/restlet/util/Series;->set(Ljava/lang/String;Ljava/lang/String;Z)Lorg/restlet/util/NamedValue;

    .line 136
    :cond_0
    invoke-virtual {p0}, Lorg/restlet/engine/connector/OutboundWay;->getActualMessage()Lorg/restlet/Message;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/Message;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/restlet/engine/connector/OutboundWay;->shouldBeChunked(Lorg/restlet/representation/Representation;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    const-string v0, "Transfer-Encoding"

    const-string v1, "chunked"

    invoke-virtual {p1, v0, v1}, Lorg/restlet/util/Series;->add(Ljava/lang/String;Ljava/lang/String;)Z

    .line 140
    :cond_1
    invoke-virtual {p0}, Lorg/restlet/engine/connector/OutboundWay;->getActualMessage()Lorg/restlet/Message;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/restlet/engine/header/HeaderUtils;->addGeneralHeaders(Lorg/restlet/Message;Lorg/restlet/util/Series;)V

    .line 141
    return-void
.end method

.method protected abstract addHeaders(Lorg/restlet/util/Series;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/restlet/util/Series",
            "<",
            "Lorg/restlet/engine/header/Header;",
            ">;)V"
        }
    .end annotation
.end method

.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 154
    invoke-super {p0}, Lorg/restlet/engine/connector/Way;->clear()V

    .line 155
    iput-object v0, p0, Lorg/restlet/engine/connector/OutboundWay;->entityChannel:Ljava/nio/channels/ReadableByteChannel;

    .line 156
    iput-object v0, p0, Lorg/restlet/engine/connector/OutboundWay;->entitySelectionKey:Ljava/nio/channels/SelectionKey;

    .line 157
    const/4 v0, 0x0

    iput v0, p0, Lorg/restlet/engine/connector/OutboundWay;->headerIndex:I

    .line 158
    return-void
.end method

.method public flushBuffer()V
    .locals 0

    .prologue
    .line 603
    return-void
.end method

.method public getEntityChannel()Ljava/nio/channels/ReadableByteChannel;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lorg/restlet/engine/connector/OutboundWay;->entityChannel:Ljava/nio/channels/ReadableByteChannel;

    return-object v0
.end method

.method protected getEntityChannelType()Lorg/restlet/engine/connector/EntityType;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lorg/restlet/engine/connector/OutboundWay;->entityChannelType:Lorg/restlet/engine/connector/EntityType;

    return-object v0
.end method

.method public getEntityFileChannel()Ljava/nio/channels/FileChannel;
    .locals 1

    .prologue
    .line 184
    invoke-virtual {p0}, Lorg/restlet/engine/connector/OutboundWay;->getEntityChannel()Ljava/nio/channels/ReadableByteChannel;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/FileChannel;

    return-object v0
.end method

.method public getEntityInterestOps()I
    .locals 3

    .prologue
    .line 193
    const/4 v0, 0x0

    .line 195
    .local v0, "result":I
    invoke-virtual {p0}, Lorg/restlet/engine/connector/OutboundWay;->getIoState()Lorg/restlet/engine/io/IoState;

    move-result-object v1

    sget-object v2, Lorg/restlet/engine/io/IoState;->INTEREST:Lorg/restlet/engine/io/IoState;

    if-ne v1, v2, :cond_0

    .line 196
    const/4 v0, 0x1

    .line 199
    :cond_0
    return v0
.end method

.method public getEntitySelectableChannel()Ljava/nio/channels/SelectableChannel;
    .locals 1

    .prologue
    .line 208
    invoke-virtual {p0}, Lorg/restlet/engine/connector/OutboundWay;->getEntityChannel()Ljava/nio/channels/ReadableByteChannel;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SelectableChannel;

    return-object v0
.end method

.method public getEntitySelectionKey()Ljava/nio/channels/SelectionKey;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lorg/restlet/engine/connector/OutboundWay;->entitySelectionKey:Ljava/nio/channels/SelectionKey;

    return-object v0
.end method

.method protected getHeaderIndex()I
    .locals 1

    .prologue
    .line 227
    iget v0, p0, Lorg/restlet/engine/connector/OutboundWay;->headerIndex:I

    return v0
.end method

.method public getInterestOperations()I
    .locals 3

    .prologue
    .line 232
    const/4 v0, 0x0

    .line 234
    .local v0, "result":I
    invoke-virtual {p0}, Lorg/restlet/engine/connector/OutboundWay;->getIoState()Lorg/restlet/engine/io/IoState;

    move-result-object v1

    sget-object v2, Lorg/restlet/engine/io/IoState;->INTEREST:Lorg/restlet/engine/io/IoState;

    if-ne v1, v2, :cond_0

    .line 235
    const/4 v0, 0x4

    .line 238
    :cond_0
    return v0
.end method

.method protected abstract handle(Lorg/restlet/Response;)V
.end method

.method protected hasIoInterest()Z
    .locals 2

    .prologue
    .line 250
    invoke-virtual {p0}, Lorg/restlet/engine/connector/OutboundWay;->getMessageState()Lorg/restlet/engine/connector/MessageState;

    move-result-object v0

    sget-object v1, Lorg/restlet/engine/connector/MessageState;->START:Lorg/restlet/engine/connector/MessageState;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/restlet/engine/connector/OutboundWay;->getBuffer()Lorg/restlet/engine/io/Buffer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/engine/io/Buffer;->canDrain()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public varargs onDrain(Lorg/restlet/engine/io/Buffer;I[Ljava/lang/Object;)I
    .locals 5
    .param p1, "buffer"    # Lorg/restlet/engine/io/Buffer;
    .param p2, "maxDrained"    # I
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 347
    invoke-virtual {p0}, Lorg/restlet/engine/connector/OutboundWay;->getBuffer()Lorg/restlet/engine/io/Buffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/restlet/engine/connector/OutboundWay;->getConnection()Lorg/restlet/engine/connector/Connection;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/engine/connector/Connection;->getWritableSelectionChannel()Lorg/restlet/engine/io/WritableSelectionChannel;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/restlet/engine/io/Buffer;->drain(Ljava/nio/channels/WritableByteChannel;)I

    move-result v0

    .line 350
    .local v0, "result":I
    invoke-virtual {p0}, Lorg/restlet/engine/connector/OutboundWay;->getLogger()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 351
    invoke-virtual {p0}, Lorg/restlet/engine/connector/OutboundWay;->getLogger()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bytes written"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 354
    :cond_0
    invoke-virtual {p0}, Lorg/restlet/engine/connector/OutboundWay;->getHelper()Lorg/restlet/engine/connector/ConnectionHelper;

    move-result-object v1

    invoke-virtual {v1}, Lorg/restlet/engine/connector/ConnectionHelper;->getThrottleTimeMs()I

    move-result v1

    if-lez v1, :cond_1

    .line 356
    :try_start_0
    invoke-virtual {p0}, Lorg/restlet/engine/connector/OutboundWay;->getHelper()Lorg/restlet/engine/connector/ConnectionHelper;

    move-result-object v1

    invoke-virtual {v1}, Lorg/restlet/engine/connector/ConnectionHelper;->getThrottleTimeMs()I

    move-result v1

    int-to-long v2, v1

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 361
    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 362
    invoke-virtual {p0}, Lorg/restlet/engine/connector/OutboundWay;->getIoState()Lorg/restlet/engine/io/IoState;

    move-result-object v1

    sget-object v2, Lorg/restlet/engine/io/IoState;->PROCESSING:Lorg/restlet/engine/io/IoState;

    if-ne v1, v2, :cond_2

    .line 367
    sget-object v1, Lorg/restlet/engine/io/IoState;->INTEREST:Lorg/restlet/engine/io/IoState;

    invoke-virtual {p0, v1}, Lorg/restlet/engine/connector/OutboundWay;->setIoState(Lorg/restlet/engine/io/IoState;)V

    .line 371
    :cond_2
    return v0

    .line 357
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onError(Lorg/restlet/data/Status;)V
    .locals 2
    .param p1, "status"    # Lorg/restlet/data/Status;

    .prologue
    .line 376
    invoke-virtual {p0}, Lorg/restlet/engine/connector/OutboundWay;->getHelper()Lorg/restlet/engine/connector/ConnectionHelper;

    move-result-object v0

    invoke-virtual {p0}, Lorg/restlet/engine/connector/OutboundWay;->getMessage()Lorg/restlet/Response;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/restlet/engine/connector/ConnectionHelper;->onOutboundError(Lorg/restlet/data/Status;Lorg/restlet/Response;)V

    .line 377
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/restlet/engine/connector/OutboundWay;->setMessage(Lorg/restlet/Response;)V

    .line 378
    return-void
.end method

.method public varargs onFill(Lorg/restlet/engine/io/Buffer;[Ljava/lang/Object;)I
    .locals 7
    .param p1, "buffer"    # Lorg/restlet/engine/io/Buffer;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 382
    invoke-virtual {p1}, Lorg/restlet/engine/io/Buffer;->remaining()I

    move-result v3

    .line 386
    .local v3, "remaining":I
    invoke-virtual {p0}, Lorg/restlet/engine/connector/OutboundWay;->getMessageState()Lorg/restlet/engine/connector/MessageState;

    move-result-object v4

    sget-object v5, Lorg/restlet/engine/connector/MessageState;->BODY:Lorg/restlet/engine/connector/MessageState;

    if-ne v4, v5, :cond_2

    .line 388
    :try_start_0
    invoke-virtual {p0}, Lorg/restlet/engine/connector/OutboundWay;->getEntityChannel()Ljava/nio/channels/ReadableByteChannel;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/restlet/engine/io/Buffer;->fill(Ljava/nio/channels/ReadableByteChannel;)I

    move-result v0

    .line 391
    .local v0, "filled":I
    const/4 v4, -0x1

    if-ne v0, v4, :cond_0

    .line 392
    sget-object v4, Lorg/restlet/engine/connector/MessageState;->END:Lorg/restlet/engine/connector/MessageState;

    invoke-virtual {p0, v4}, Lorg/restlet/engine/connector/OutboundWay;->setMessageState(Lorg/restlet/engine/connector/MessageState;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 434
    .end local v0    # "filled":I
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lorg/restlet/engine/io/Buffer;->remaining()I

    move-result v4

    sub-int v4, v3, v4

    return v4

    .line 394
    :catch_0
    move-exception v1

    .line 395
    .local v1, "ioe":Ljava/io/IOException;
    invoke-virtual {p0}, Lorg/restlet/engine/connector/OutboundWay;->getLogger()Ljava/util/logging/Logger;

    move-result-object v4

    sget-object v5, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 396
    invoke-virtual {p0}, Lorg/restlet/engine/connector/OutboundWay;->getLogger()Ljava/util/logging/Logger;

    move-result-object v4

    sget-object v5, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v6, "Unable to read the entity"

    invoke-virtual {v4, v5, v6, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 400
    :cond_1
    throw v1

    .line 402
    .end local v1    # "ioe":Ljava/io/IOException;
    :cond_2
    invoke-virtual {p0}, Lorg/restlet/engine/connector/OutboundWay;->getMessageState()Lorg/restlet/engine/connector/MessageState;

    move-result-object v4

    sget-object v5, Lorg/restlet/engine/connector/MessageState;->END:Lorg/restlet/engine/connector/MessageState;

    if-eq v4, v5, :cond_0

    .line 405
    invoke-virtual {p0}, Lorg/restlet/engine/connector/OutboundWay;->getLineBuilder()Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-nez v4, :cond_3

    .line 407
    invoke-virtual {p0}, Lorg/restlet/engine/connector/OutboundWay;->writeLine()V

    .line 410
    :cond_3
    invoke-virtual {p0}, Lorg/restlet/engine/connector/OutboundWay;->getLineBuilder()Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 413
    invoke-virtual {p0}, Lorg/restlet/engine/connector/OutboundWay;->getLineBuilder()Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lt v3, v4, :cond_5

    .line 415
    invoke-virtual {p0}, Lorg/restlet/engine/connector/OutboundWay;->getLineBuilder()Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/restlet/engine/util/StringUtils;->getLatin1Bytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/restlet/engine/io/Buffer;->fill([B)V

    .line 418
    invoke-virtual {p0}, Lorg/restlet/engine/connector/OutboundWay;->getLogger()Ljava/util/logging/Logger;

    move-result-object v4

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 419
    invoke-virtual {p0}, Lorg/restlet/engine/connector/OutboundWay;->getLineBuilder()Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 420
    .local v2, "line":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v2, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 421
    invoke-virtual {p0}, Lorg/restlet/engine/connector/OutboundWay;->getLogger()Ljava/util/logging/Logger;

    move-result-object v4

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v4, v5, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 424
    .end local v2    # "line":Ljava/lang/String;
    :cond_4
    invoke-virtual {p0}, Lorg/restlet/engine/connector/OutboundWay;->clearLineBuilder()V

    goto/16 :goto_0

    .line 427
    :cond_5
    invoke-virtual {p0}, Lorg/restlet/engine/connector/OutboundWay;->getLineBuilder()Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/restlet/engine/util/StringUtils;->getLatin1Bytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/restlet/engine/io/Buffer;->fill([B)V

    .line 429
    invoke-virtual {p0}, Lorg/restlet/engine/connector/OutboundWay;->getLineBuilder()Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto/16 :goto_0
.end method

.method public onFillEof()V
    .locals 0

    .prologue
    .line 441
    return-void
.end method

.method public onHeadersCompleted()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 260
    invoke-virtual {p0}, Lorg/restlet/engine/connector/OutboundWay;->getLogger()Ljava/util/logging/Logger;

    move-result-object v4

    sget-object v5, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 261
    invoke-virtual {p0}, Lorg/restlet/engine/connector/OutboundWay;->getLogger()Ljava/util/logging/Logger;

    move-result-object v4

    const-string v5, "Outbound message start line and headers sent"

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 265
    :cond_0
    invoke-virtual {p0}, Lorg/restlet/engine/connector/OutboundWay;->getActualMessage()Lorg/restlet/Message;

    move-result-object v4

    invoke-virtual {v4}, Lorg/restlet/Message;->isEntityAvailable()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 267
    invoke-static {}, Lorg/restlet/engine/ConnectorHelper;->getConnectorService()Lorg/restlet/service/ConnectorService;

    move-result-object v1

    .line 270
    .local v1, "connectorService":Lorg/restlet/service/ConnectorService;
    if-eqz v1, :cond_1

    .line 271
    invoke-virtual {p0}, Lorg/restlet/engine/connector/OutboundWay;->getActualMessage()Lorg/restlet/Message;

    move-result-object v4

    invoke-virtual {v4}, Lorg/restlet/Message;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/restlet/service/ConnectorService;->afterSend(Lorg/restlet/representation/Representation;)V

    .line 274
    :cond_1
    sget-object v4, Lorg/restlet/engine/connector/MessageState;->BODY:Lorg/restlet/engine/connector/MessageState;

    invoke-virtual {p0, v4}, Lorg/restlet/engine/connector/OutboundWay;->setMessageState(Lorg/restlet/engine/connector/MessageState;)V

    .line 275
    invoke-virtual {p0}, Lorg/restlet/engine/connector/OutboundWay;->getActualMessage()Lorg/restlet/Message;

    move-result-object v4

    invoke-virtual {v4}, Lorg/restlet/Message;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v4

    invoke-virtual {v4}, Lorg/restlet/representation/Representation;->getChannel()Ljava/nio/channels/ReadableByteChannel;

    move-result-object v2

    .line 278
    .local v2, "rbc":Ljava/nio/channels/ReadableByteChannel;
    instance-of v4, v2, Ljava/nio/channels/FileChannel;

    if-eqz v4, :cond_2

    .line 279
    sget-object v4, Lorg/restlet/engine/connector/EntityType;->TRANSFERABLE:Lorg/restlet/engine/connector/EntityType;

    invoke-virtual {p0, v4}, Lorg/restlet/engine/connector/OutboundWay;->setEntityChannelType(Lorg/restlet/engine/connector/EntityType;)V

    .line 300
    :goto_0
    invoke-virtual {p0}, Lorg/restlet/engine/connector/OutboundWay;->getActualMessage()Lorg/restlet/Message;

    move-result-object v4

    invoke-virtual {v4}, Lorg/restlet/Message;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v4

    invoke-virtual {v4}, Lorg/restlet/representation/Representation;->getAvailableSize()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_7

    .line 301
    new-instance v4, Lorg/restlet/engine/io/ReadableChunkingChannel;

    invoke-virtual {p0}, Lorg/restlet/engine/connector/OutboundWay;->getBuffer()Lorg/restlet/engine/io/Buffer;

    move-result-object v5

    invoke-virtual {v5}, Lorg/restlet/engine/io/Buffer;->capacity()I

    move-result v5

    invoke-direct {v4, v2, v5}, Lorg/restlet/engine/io/ReadableChunkingChannel;-><init>(Ljava/nio/channels/ReadableByteChannel;I)V

    invoke-virtual {p0, v4}, Lorg/restlet/engine/connector/OutboundWay;->setEntityChannel(Ljava/nio/channels/ReadableByteChannel;)V

    .line 311
    .end local v1    # "connectorService":Lorg/restlet/service/ConnectorService;
    .end local v2    # "rbc":Ljava/nio/channels/ReadableByteChannel;
    :goto_1
    return-void

    .line 280
    .restart local v1    # "connectorService":Lorg/restlet/service/ConnectorService;
    .restart local v2    # "rbc":Ljava/nio/channels/ReadableByteChannel;
    :cond_2
    instance-of v4, v2, Lorg/restlet/engine/io/BlockableChannel;

    if-eqz v4, :cond_4

    move-object v0, v2

    .line 281
    check-cast v0, Lorg/restlet/engine/io/BlockableChannel;

    .line 283
    .local v0, "bc":Lorg/restlet/engine/io/BlockableChannel;
    invoke-interface {v0}, Lorg/restlet/engine/io/BlockableChannel;->isBlocking()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 284
    sget-object v4, Lorg/restlet/engine/connector/EntityType;->BLOCKING:Lorg/restlet/engine/connector/EntityType;

    invoke-virtual {p0, v4}, Lorg/restlet/engine/connector/OutboundWay;->setEntityChannelType(Lorg/restlet/engine/connector/EntityType;)V

    goto :goto_0

    .line 286
    :cond_3
    sget-object v4, Lorg/restlet/engine/connector/EntityType;->NON_BLOCKING:Lorg/restlet/engine/connector/EntityType;

    invoke-virtual {p0, v4}, Lorg/restlet/engine/connector/OutboundWay;->setEntityChannelType(Lorg/restlet/engine/connector/EntityType;)V

    goto :goto_0

    .line 288
    .end local v0    # "bc":Lorg/restlet/engine/io/BlockableChannel;
    :cond_4
    instance-of v4, v2, Ljava/nio/channels/SelectableChannel;

    if-eqz v4, :cond_6

    move-object v3, v2

    .line 289
    check-cast v3, Ljava/nio/channels/SelectableChannel;

    .line 291
    .local v3, "sc":Ljava/nio/channels/SelectableChannel;
    invoke-virtual {v3}, Ljava/nio/channels/SelectableChannel;->isBlocking()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 292
    sget-object v4, Lorg/restlet/engine/connector/EntityType;->BLOCKING:Lorg/restlet/engine/connector/EntityType;

    invoke-virtual {p0, v4}, Lorg/restlet/engine/connector/OutboundWay;->setEntityChannelType(Lorg/restlet/engine/connector/EntityType;)V

    goto :goto_0

    .line 294
    :cond_5
    sget-object v4, Lorg/restlet/engine/connector/EntityType;->NON_BLOCKING:Lorg/restlet/engine/connector/EntityType;

    invoke-virtual {p0, v4}, Lorg/restlet/engine/connector/OutboundWay;->setEntityChannelType(Lorg/restlet/engine/connector/EntityType;)V

    goto :goto_0

    .line 297
    .end local v3    # "sc":Ljava/nio/channels/SelectableChannel;
    :cond_6
    sget-object v4, Lorg/restlet/engine/connector/EntityType;->BLOCKING:Lorg/restlet/engine/connector/EntityType;

    invoke-virtual {p0, v4}, Lorg/restlet/engine/connector/OutboundWay;->setEntityChannelType(Lorg/restlet/engine/connector/EntityType;)V

    goto :goto_0

    .line 304
    :cond_7
    new-instance v4, Lorg/restlet/engine/io/ReadableSizedChannel;

    invoke-virtual {p0}, Lorg/restlet/engine/connector/OutboundWay;->getActualMessage()Lorg/restlet/Message;

    move-result-object v5

    invoke-virtual {v5}, Lorg/restlet/Message;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v5

    invoke-virtual {v5}, Lorg/restlet/representation/Representation;->getAvailableSize()J

    move-result-wide v6

    invoke-direct {v4, v2, v6, v7}, Lorg/restlet/engine/io/ReadableSizedChannel;-><init>(Ljava/nio/channels/ReadableByteChannel;J)V

    invoke-virtual {p0, v4}, Lorg/restlet/engine/connector/OutboundWay;->setEntityChannel(Ljava/nio/channels/ReadableByteChannel;)V

    goto :goto_1

    .line 309
    .end local v1    # "connectorService":Lorg/restlet/service/ConnectorService;
    .end local v2    # "rbc":Ljava/nio/channels/ReadableByteChannel;
    :cond_8
    sget-object v4, Lorg/restlet/engine/connector/MessageState;->END:Lorg/restlet/engine/connector/MessageState;

    invoke-virtual {p0, v4}, Lorg/restlet/engine/connector/OutboundWay;->setMessageState(Lorg/restlet/engine/connector/MessageState;)V

    goto :goto_1
.end method

.method public onMessageCompleted(Z)V
    .locals 4
    .param p1, "endReached"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 315
    invoke-virtual {p0}, Lorg/restlet/engine/connector/OutboundWay;->getActualMessage()Lorg/restlet/Message;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 316
    invoke-virtual {p0}, Lorg/restlet/engine/connector/OutboundWay;->getActualMessage()Lorg/restlet/Message;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/Message;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v1

    .line 318
    .local v1, "messageEntity":Lorg/restlet/representation/Representation;
    invoke-virtual {p0}, Lorg/restlet/engine/connector/OutboundWay;->getEntityChannel()Ljava/nio/channels/ReadableByteChannel;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 319
    invoke-virtual {p0}, Lorg/restlet/engine/connector/OutboundWay;->getEntityChannel()Ljava/nio/channels/ReadableByteChannel;

    move-result-object v2

    invoke-interface {v2}, Ljava/nio/channels/ReadableByteChannel;->close()V

    .line 323
    :cond_0
    if-eqz v1, :cond_1

    .line 324
    invoke-virtual {v1}, Lorg/restlet/representation/Representation;->release()V

    .line 328
    :cond_1
    invoke-static {}, Lorg/restlet/engine/ConnectorHelper;->getConnectorService()Lorg/restlet/service/ConnectorService;

    move-result-object v0

    .line 331
    .local v0, "connectorService":Lorg/restlet/service/ConnectorService;
    if-eqz v0, :cond_2

    .line 332
    invoke-virtual {v0, v1}, Lorg/restlet/service/ConnectorService;->afterSend(Lorg/restlet/representation/Representation;)V

    .line 336
    .end local v0    # "connectorService":Lorg/restlet/service/ConnectorService;
    .end local v1    # "messageEntity":Lorg/restlet/representation/Representation;
    :cond_2
    invoke-super {p0, p1}, Lorg/restlet/engine/connector/Way;->onMessageCompleted(Z)V

    .line 337
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lorg/restlet/engine/connector/OutboundWay;->setHeaderIndex(I)V

    .line 339
    invoke-virtual {p0}, Lorg/restlet/engine/connector/OutboundWay;->getLogger()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 340
    invoke-virtual {p0}, Lorg/restlet/engine/connector/OutboundWay;->getLogger()Ljava/util/logging/Logger;

    move-result-object v2

    const-string v3, "Outbound message completed"

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 342
    :cond_3
    return-void
.end method

.method protected onPostProcessing()V
    .locals 2

    .prologue
    .line 445
    invoke-virtual {p0}, Lorg/restlet/engine/connector/OutboundWay;->getMessageState()Lorg/restlet/engine/connector/MessageState;

    move-result-object v0

    sget-object v1, Lorg/restlet/engine/connector/MessageState;->IDLE:Lorg/restlet/engine/connector/MessageState;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/restlet/engine/connector/OutboundWay;->getBuffer()Lorg/restlet/engine/io/Buffer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/engine/io/Buffer;->canDrain()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 447
    :cond_0
    sget-object v0, Lorg/restlet/engine/io/IoState;->INTEREST:Lorg/restlet/engine/io/IoState;

    invoke-virtual {p0, v0}, Lorg/restlet/engine/connector/OutboundWay;->setIoState(Lorg/restlet/engine/io/IoState;)V

    .line 451
    :goto_0
    return-void

    .line 449
    :cond_1
    sget-object v0, Lorg/restlet/engine/io/IoState;->IDLE:Lorg/restlet/engine/io/IoState;

    invoke-virtual {p0, v0}, Lorg/restlet/engine/connector/OutboundWay;->setIoState(Lorg/restlet/engine/io/IoState;)V

    goto :goto_0
.end method

.method public onTimeOut()V
    .locals 3

    .prologue
    .line 455
    invoke-virtual {p0}, Lorg/restlet/engine/connector/OutboundWay;->getMessage()Lorg/restlet/Response;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 456
    invoke-virtual {p0}, Lorg/restlet/engine/connector/OutboundWay;->getHelper()Lorg/restlet/engine/connector/ConnectionHelper;

    move-result-object v0

    sget-object v1, Lorg/restlet/data/Status;->CONNECTOR_ERROR_COMMUNICATION:Lorg/restlet/data/Status;

    invoke-virtual {p0}, Lorg/restlet/engine/connector/OutboundWay;->getMessage()Lorg/restlet/Response;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/restlet/engine/connector/ConnectionHelper;->onOutboundError(Lorg/restlet/data/Status;Lorg/restlet/Response;)V

    .line 459
    :cond_0
    return-void
.end method

.method public processIoBuffer()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 463
    invoke-super {p0}, Lorg/restlet/engine/connector/Way;->processIoBuffer()I

    move-result v0

    .line 465
    .local v0, "result":I
    invoke-virtual {p0}, Lorg/restlet/engine/connector/OutboundWay;->getMessage()Lorg/restlet/Response;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 466
    invoke-virtual {p0}, Lorg/restlet/engine/connector/OutboundWay;->getMessageState()Lorg/restlet/engine/connector/MessageState;

    move-result-object v1

    sget-object v2, Lorg/restlet/engine/connector/MessageState;->END:Lorg/restlet/engine/connector/MessageState;

    if-ne v1, v2, :cond_1

    .line 468
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/restlet/engine/connector/OutboundWay;->onMessageCompleted(Z)V

    .line 475
    :cond_0
    :goto_0
    return v0

    .line 469
    :cond_1
    invoke-virtual {p0}, Lorg/restlet/engine/connector/OutboundWay;->getMessageState()Lorg/restlet/engine/connector/MessageState;

    move-result-object v1

    sget-object v2, Lorg/restlet/engine/connector/MessageState;->IDLE:Lorg/restlet/engine/connector/MessageState;

    if-ne v1, v2, :cond_0

    .line 471
    invoke-virtual {p0}, Lorg/restlet/engine/connector/OutboundWay;->updateState()V

    goto :goto_0
.end method

.method public setEntityChannel(Ljava/nio/channels/ReadableByteChannel;)V
    .locals 0
    .param p1, "entityChannel"    # Ljava/nio/channels/ReadableByteChannel;

    .prologue
    .line 485
    iput-object p1, p0, Lorg/restlet/engine/connector/OutboundWay;->entityChannel:Ljava/nio/channels/ReadableByteChannel;

    .line 486
    return-void
.end method

.method protected setEntityChannelType(Lorg/restlet/engine/connector/EntityType;)V
    .locals 0
    .param p1, "entityChannelType"    # Lorg/restlet/engine/connector/EntityType;

    .prologue
    .line 495
    iput-object p1, p0, Lorg/restlet/engine/connector/OutboundWay;->entityChannelType:Lorg/restlet/engine/connector/EntityType;

    .line 496
    return-void
.end method

.method public setEntitySelectionKey(Ljava/nio/channels/SelectionKey;)V
    .locals 0
    .param p1, "entityKey"    # Ljava/nio/channels/SelectionKey;

    .prologue
    .line 506
    iput-object p1, p0, Lorg/restlet/engine/connector/OutboundWay;->entitySelectionKey:Ljava/nio/channels/SelectionKey;

    .line 507
    return-void
.end method

.method protected setHeaderIndex(I)V
    .locals 0
    .param p1, "headerIndex"    # I

    .prologue
    .line 516
    iput p1, p0, Lorg/restlet/engine/connector/OutboundWay;->headerIndex:I

    .line 517
    return-void
.end method

.method protected shouldBeChunked(Lorg/restlet/representation/Representation;)Z
    .locals 4
    .param p1, "entity"    # Lorg/restlet/representation/Representation;

    .prologue
    .line 527
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/restlet/representation/Representation;->getAvailableSize()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateState()V
    .locals 2

    .prologue
    .line 533
    invoke-virtual {p0}, Lorg/restlet/engine/connector/OutboundWay;->getMessageState()Lorg/restlet/engine/connector/MessageState;

    move-result-object v0

    sget-object v1, Lorg/restlet/engine/connector/MessageState;->IDLE:Lorg/restlet/engine/connector/MessageState;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/restlet/engine/connector/OutboundWay;->getMessage()Lorg/restlet/Response;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 534
    sget-object v0, Lorg/restlet/engine/connector/MessageState;->START:Lorg/restlet/engine/connector/MessageState;

    invoke-virtual {p0, v0}, Lorg/restlet/engine/connector/OutboundWay;->setMessageState(Lorg/restlet/engine/connector/MessageState;)V

    .line 537
    :cond_0
    invoke-super {p0}, Lorg/restlet/engine/connector/Way;->updateState()V

    .line 538
    return-void
.end method

.method protected writeLine()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0xd

    const/16 v3, 0xa

    .line 546
    sget-object v1, Lorg/restlet/engine/connector/OutboundWay$1;->$SwitchMap$org$restlet$engine$connector$MessageState:[I

    invoke-virtual {p0}, Lorg/restlet/engine/connector/OutboundWay;->getMessageState()Lorg/restlet/engine/connector/MessageState;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/engine/connector/MessageState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 589
    :goto_0
    return-void

    .line 548
    :pswitch_0
    invoke-virtual {p0}, Lorg/restlet/engine/connector/OutboundWay;->getHelper()Lorg/restlet/engine/connector/ConnectionHelper;

    move-result-object v1

    invoke-virtual {v1}, Lorg/restlet/engine/connector/ConnectionHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 549
    invoke-virtual {p0}, Lorg/restlet/engine/connector/OutboundWay;->getHelper()Lorg/restlet/engine/connector/ConnectionHelper;

    move-result-object v1

    invoke-virtual {v1}, Lorg/restlet/engine/connector/ConnectionHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Writing message to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/restlet/engine/connector/OutboundWay;->getConnection()Lorg/restlet/engine/connector/Connection;

    move-result-object v4

    invoke-virtual {v4}, Lorg/restlet/engine/connector/Connection;->getSocketAddress()Ljava/net/SocketAddress;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 555
    :cond_0
    invoke-virtual {p0}, Lorg/restlet/engine/connector/OutboundWay;->writeStartLine()V

    .line 556
    sget-object v1, Lorg/restlet/engine/connector/MessageState;->HEADERS:Lorg/restlet/engine/connector/MessageState;

    invoke-virtual {p0, v1}, Lorg/restlet/engine/connector/OutboundWay;->setMessageState(Lorg/restlet/engine/connector/MessageState;)V

    goto :goto_0

    .line 560
    :pswitch_1
    invoke-virtual {p0}, Lorg/restlet/engine/connector/OutboundWay;->getHeaders()Lorg/restlet/util/Series;

    move-result-object v1

    if-nez v1, :cond_1

    .line 561
    new-instance v1, Lorg/restlet/util/Series;

    const-class v2, Lorg/restlet/engine/header/Header;

    invoke-direct {v1, v2}, Lorg/restlet/util/Series;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lorg/restlet/engine/connector/OutboundWay;->setHeaders(Lorg/restlet/util/Series;)V

    .line 562
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/restlet/engine/connector/OutboundWay;->setHeaderIndex(I)V

    .line 563
    invoke-virtual {p0}, Lorg/restlet/engine/connector/OutboundWay;->getHeaders()Lorg/restlet/util/Series;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/restlet/engine/connector/OutboundWay;->addHeaders(Lorg/restlet/util/Series;)V

    .line 566
    :cond_1
    invoke-virtual {p0}, Lorg/restlet/engine/connector/OutboundWay;->getHeaderIndex()I

    move-result v1

    invoke-virtual {p0}, Lorg/restlet/engine/connector/OutboundWay;->getHeaders()Lorg/restlet/util/Series;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/util/Series;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 568
    invoke-virtual {p0}, Lorg/restlet/engine/connector/OutboundWay;->getHeaders()Lorg/restlet/util/Series;

    move-result-object v1

    invoke-virtual {p0}, Lorg/restlet/engine/connector/OutboundWay;->getHeaderIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/restlet/util/Series;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/restlet/engine/header/Header;

    .line 569
    .local v0, "header":Lorg/restlet/engine/header/Header;
    invoke-virtual {p0}, Lorg/restlet/engine/connector/OutboundWay;->getLineBuilder()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/restlet/engine/header/Header;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    invoke-virtual {p0}, Lorg/restlet/engine/connector/OutboundWay;->getLineBuilder()Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    invoke-virtual {p0}, Lorg/restlet/engine/connector/OutboundWay;->getLineBuilder()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/restlet/engine/header/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    invoke-virtual {p0}, Lorg/restlet/engine/connector/OutboundWay;->getLineBuilder()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 573
    invoke-virtual {p0}, Lorg/restlet/engine/connector/OutboundWay;->getLineBuilder()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 576
    invoke-virtual {p0}, Lorg/restlet/engine/connector/OutboundWay;->getHeaderIndex()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lorg/restlet/engine/connector/OutboundWay;->setHeaderIndex(I)V

    goto/16 :goto_0

    .line 579
    .end local v0    # "header":Lorg/restlet/engine/header/Header;
    :cond_2
    invoke-virtual {p0}, Lorg/restlet/engine/connector/OutboundWay;->getLineBuilder()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 580
    invoke-virtual {p0}, Lorg/restlet/engine/connector/OutboundWay;->getLineBuilder()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 581
    invoke-virtual {p0}, Lorg/restlet/engine/connector/OutboundWay;->onHeadersCompleted()V

    goto/16 :goto_0

    .line 546
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected abstract writeStartLine()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

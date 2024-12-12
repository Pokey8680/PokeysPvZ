.class public abstract Lorg/restlet/engine/connector/InboundWay;
.super Lorg/restlet/engine/connector/Way;
.source "InboundWay.java"


# instance fields
.field private volatile builderIndex:I

.field private volatile entityRegistration:Lorg/restlet/util/SelectionRegistration;


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
    .line 80
    .local p1, "connection":Lorg/restlet/engine/connector/Connection;, "Lorg/restlet/engine/connector/Connection<*>;"
    invoke-direct {p0, p1, p2}, Lorg/restlet/engine/connector/Way;-><init>(Lorg/restlet/engine/connector/Connection;I)V

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Lorg/restlet/engine/connector/InboundWay;->builderIndex:I

    .line 82
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 86
    invoke-super {p0}, Lorg/restlet/engine/connector/Way;->clear()V

    .line 87
    const/4 v0, 0x0

    iput v0, p0, Lorg/restlet/engine/connector/InboundWay;->builderIndex:I

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/restlet/engine/connector/InboundWay;->entityRegistration:Lorg/restlet/util/SelectionRegistration;

    .line 89
    return-void
.end method

.method protected createEntity(Lorg/restlet/util/Series;)Lorg/restlet/representation/Representation;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/restlet/util/Series",
            "<",
            "Lorg/restlet/engine/header/Header;",
            ">;)",
            "Lorg/restlet/representation/Representation;"
        }
    .end annotation

    .prologue
    .line 99
    .local p1, "headers":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<Lorg/restlet/engine/header/Header;>;"
    const/4 v9, 0x0

    .line 100
    .local v9, "result":Lorg/restlet/representation/Representation;
    invoke-static {p1}, Lorg/restlet/engine/header/HeaderUtils;->getContentLength(Lorg/restlet/util/Series;)J

    move-result-wide v4

    .line 101
    .local v4, "contentLength":J
    invoke-static {p1}, Lorg/restlet/engine/header/HeaderUtils;->isChunkedEncoding(Lorg/restlet/util/Series;)Z

    move-result v7

    .line 104
    .local v7, "chunkedEncoding":Z
    invoke-static {p1}, Lorg/restlet/engine/header/HeaderUtils;->isConnectionClose(Lorg/restlet/util/Series;)Z

    move-result v8

    .line 107
    .local v8, "connectionClose":Z
    const-wide/16 v2, -0x1

    cmp-long v1, v4, v2

    if-eqz v1, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v1, v4, v2

    if-nez v1, :cond_1

    :cond_0
    if-nez v7, :cond_1

    if-eqz v8, :cond_5

    .line 109
    :cond_1
    const/4 v0, 0x0

    .line 111
    .local v0, "inboundEntityChannel":Lorg/restlet/engine/io/ReadableSelectionChannel;
    if-eqz v7, :cond_4

    .line 113
    new-instance v0, Lorg/restlet/engine/io/ReadableChunkedChannel;

    .end local v0    # "inboundEntityChannel":Lorg/restlet/engine/io/ReadableSelectionChannel;
    invoke-virtual {p0}, Lorg/restlet/engine/connector/InboundWay;->getBuffer()Lorg/restlet/engine/io/Buffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/restlet/engine/connector/InboundWay;->getConnection()Lorg/restlet/engine/connector/Connection;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/engine/connector/Connection;->getReadableSelectionChannel()Lorg/restlet/engine/io/ReadableSelectionChannel;

    move-result-object v2

    invoke-virtual {p0}, Lorg/restlet/engine/connector/InboundWay;->getConnection()Lorg/restlet/engine/connector/Connection;

    move-result-object v3

    invoke-virtual {v3}, Lorg/restlet/engine/connector/Connection;->getRegistration()Lorg/restlet/util/SelectionRegistration;

    move-result-object v3

    invoke-virtual {v3}, Lorg/restlet/util/SelectionRegistration;->getWakeupListener()Lorg/restlet/engine/io/WakeupListener;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lorg/restlet/engine/io/ReadableChunkedChannel;-><init>(Lorg/restlet/engine/io/CompletionListener;Lorg/restlet/engine/io/Buffer;Lorg/restlet/engine/io/ReadableSelectionChannel;Lorg/restlet/engine/io/WakeupListener;)V

    .line 125
    .restart local v0    # "inboundEntityChannel":Lorg/restlet/engine/io/ReadableSelectionChannel;
    :goto_0
    invoke-interface {v0}, Lorg/restlet/engine/io/ReadableSelectionChannel;->getRegistration()Lorg/restlet/util/SelectionRegistration;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/restlet/engine/connector/InboundWay;->setEntityRegistration(Lorg/restlet/util/SelectionRegistration;)V

    .line 127
    if-eqz v0, :cond_2

    .line 128
    new-instance v9, Lorg/restlet/representation/ReadableRepresentation;

    .end local v9    # "result":Lorg/restlet/representation/Representation;
    const/4 v1, 0x0

    invoke-direct {v9, v0, v1, v4, v5}, Lorg/restlet/representation/ReadableRepresentation;-><init>(Ljava/nio/channels/ReadableByteChannel;Lorg/restlet/data/MediaType;J)V

    .line 130
    .restart local v9    # "result":Lorg/restlet/representation/Representation;
    invoke-virtual {v9, v4, v5}, Lorg/restlet/representation/Representation;->setSize(J)V

    .line 131
    sget-object v1, Lorg/restlet/engine/connector/MessageState;->BODY:Lorg/restlet/engine/connector/MessageState;

    invoke-virtual {p0, v1}, Lorg/restlet/engine/connector/InboundWay;->setMessageState(Lorg/restlet/engine/connector/MessageState;)V

    .line 137
    .end local v0    # "inboundEntityChannel":Lorg/restlet/engine/io/ReadableSelectionChannel;
    :cond_2
    :goto_1
    if-eqz p1, :cond_3

    .line 139
    :try_start_0
    invoke-static {p1, v9}, Lorg/restlet/engine/header/HeaderUtils;->extractEntityHeaders(Ljava/lang/Iterable;Lorg/restlet/representation/Representation;)Lorg/restlet/representation/Representation;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 146
    :cond_3
    :goto_2
    return-object v9

    .line 119
    .restart local v0    # "inboundEntityChannel":Lorg/restlet/engine/io/ReadableSelectionChannel;
    :cond_4
    new-instance v0, Lorg/restlet/engine/io/ReadableSizedSelectionChannel;

    .end local v0    # "inboundEntityChannel":Lorg/restlet/engine/io/ReadableSelectionChannel;
    invoke-virtual {p0}, Lorg/restlet/engine/connector/InboundWay;->getBuffer()Lorg/restlet/engine/io/Buffer;

    move-result-object v2

    invoke-virtual {p0}, Lorg/restlet/engine/connector/InboundWay;->getConnection()Lorg/restlet/engine/connector/Connection;

    move-result-object v1

    invoke-virtual {v1}, Lorg/restlet/engine/connector/Connection;->getReadableSelectionChannel()Lorg/restlet/engine/io/ReadableSelectionChannel;

    move-result-object v3

    invoke-virtual {p0}, Lorg/restlet/engine/connector/InboundWay;->getRegistration()Lorg/restlet/util/SelectionRegistration;

    move-result-object v1

    invoke-virtual {v1}, Lorg/restlet/util/SelectionRegistration;->getWakeupListener()Lorg/restlet/engine/io/WakeupListener;

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lorg/restlet/engine/io/ReadableSizedSelectionChannel;-><init>(Lorg/restlet/engine/io/CompletionListener;Lorg/restlet/engine/io/Buffer;Lorg/restlet/engine/io/ReadableSelectionChannel;JLorg/restlet/engine/io/WakeupListener;)V

    .restart local v0    # "inboundEntityChannel":Lorg/restlet/engine/io/ReadableSelectionChannel;
    goto :goto_0

    .line 134
    .end local v0    # "inboundEntityChannel":Lorg/restlet/engine/io/ReadableSelectionChannel;
    :cond_5
    new-instance v9, Lorg/restlet/representation/EmptyRepresentation;

    .end local v9    # "result":Lorg/restlet/representation/Representation;
    invoke-direct {v9}, Lorg/restlet/representation/EmptyRepresentation;-><init>()V

    .restart local v9    # "result":Lorg/restlet/representation/Representation;
    goto :goto_1

    .line 140
    :catch_0
    move-exception v10

    .line 141
    .local v10, "t":Ljava/lang/Throwable;
    invoke-virtual {p0}, Lorg/restlet/engine/connector/InboundWay;->getLogger()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Error while parsing entity headers"

    invoke-virtual {v1, v2, v3, v10}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method protected fillLine()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 156
    const/4 v0, 0x0

    .line 157
    .local v0, "result":Z
    invoke-virtual {p0}, Lorg/restlet/engine/connector/InboundWay;->getBuffer()Lorg/restlet/engine/io/Buffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/restlet/engine/connector/InboundWay;->getLineBuilder()Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/restlet/engine/connector/InboundWay;->getLineBuilderState()Lorg/restlet/engine/io/BufferState;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/restlet/engine/io/Buffer;->drain(Ljava/lang/StringBuilder;Lorg/restlet/engine/io/BufferState;)Lorg/restlet/engine/io/BufferState;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/restlet/engine/connector/InboundWay;->setLineBuilderState(Lorg/restlet/engine/io/BufferState;)V

    .line 160
    invoke-virtual {p0}, Lorg/restlet/engine/connector/InboundWay;->getLineBuilderState()Lorg/restlet/engine/io/BufferState;

    move-result-object v1

    sget-object v2, Lorg/restlet/engine/io/BufferState;->DRAINING:Lorg/restlet/engine/io/BufferState;

    if-ne v1, v2, :cond_0

    .line 161
    const/4 v0, 0x1

    .line 163
    invoke-virtual {p0}, Lorg/restlet/engine/connector/InboundWay;->getLogger()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 164
    invoke-virtual {p0}, Lorg/restlet/engine/connector/InboundWay;->getLogger()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {p0}, Lorg/restlet/engine/connector/InboundWay;->getLineBuilder()Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 168
    :cond_0
    return v0
.end method

.method protected getBuilderIndex()I
    .locals 1

    .prologue
    .line 177
    iget v0, p0, Lorg/restlet/engine/connector/InboundWay;->builderIndex:I

    return v0
.end method

.method protected getEntityRegistration()Lorg/restlet/util/SelectionRegistration;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lorg/restlet/engine/connector/InboundWay;->entityRegistration:Lorg/restlet/util/SelectionRegistration;

    return-object v0
.end method

.method public getInterestOperations()I
    .locals 3

    .prologue
    .line 191
    const/4 v0, 0x0

    .line 193
    .local v0, "result":I
    invoke-virtual {p0}, Lorg/restlet/engine/connector/InboundWay;->getIoState()Lorg/restlet/engine/io/IoState;

    move-result-object v1

    sget-object v2, Lorg/restlet/engine/io/IoState;->INTEREST:Lorg/restlet/engine/io/IoState;

    if-ne v1, v2, :cond_0

    .line 194
    const/4 v0, 0x1

    .line 197
    :cond_0
    return v0
.end method

.method protected isLineReadable()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 207
    invoke-virtual {p0}, Lorg/restlet/engine/connector/InboundWay;->getBuffer()Lorg/restlet/engine/io/Buffer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/engine/io/Buffer;->canDrain()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/restlet/engine/connector/InboundWay;->getMessageState()Lorg/restlet/engine/connector/MessageState;

    move-result-object v0

    sget-object v1, Lorg/restlet/engine/connector/MessageState;->IDLE:Lorg/restlet/engine/connector/MessageState;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/restlet/engine/connector/InboundWay;->getMessageState()Lorg/restlet/engine/connector/MessageState;

    move-result-object v0

    sget-object v1, Lorg/restlet/engine/connector/MessageState;->BODY:Lorg/restlet/engine/connector/MessageState;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/restlet/engine/connector/InboundWay;->fillLine()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public varargs onDrain(Lorg/restlet/engine/io/Buffer;I[Ljava/lang/Object;)I
    .locals 8
    .param p1, "buffer"    # Lorg/restlet/engine/io/Buffer;
    .param p2, "maxDrained"    # I
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 228
    const/4 v3, 0x0

    .line 232
    .local v3, "result":I
    const/4 v1, 0x1

    .line 233
    .local v1, "continueReading":Z
    invoke-virtual {p1}, Lorg/restlet/engine/io/Buffer;->remaining()I

    move-result v0

    .line 235
    .local v0, "beforeDrain":I
    :cond_0
    :goto_0
    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lorg/restlet/engine/connector/InboundWay;->isLineReadable()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 237
    invoke-virtual {p0}, Lorg/restlet/engine/connector/InboundWay;->getMessageState()Lorg/restlet/engine/connector/MessageState;

    move-result-object v4

    sget-object v5, Lorg/restlet/engine/connector/MessageState;->START:Lorg/restlet/engine/connector/MessageState;

    if-ne v4, v5, :cond_3

    .line 238
    invoke-virtual {p0}, Lorg/restlet/engine/connector/InboundWay;->getLineBuilder()Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 241
    const/4 v1, 0x0

    goto :goto_0

    .line 243
    :cond_1
    invoke-virtual {p0}, Lorg/restlet/engine/connector/InboundWay;->getHelper()Lorg/restlet/engine/connector/ConnectionHelper;

    move-result-object v4

    invoke-virtual {v4}, Lorg/restlet/engine/connector/ConnectionHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v4

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 244
    invoke-virtual {p0}, Lorg/restlet/engine/connector/InboundWay;->getHelper()Lorg/restlet/engine/connector/ConnectionHelper;

    move-result-object v4

    invoke-virtual {v4}, Lorg/restlet/engine/connector/ConnectionHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Reading message from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lorg/restlet/engine/connector/InboundWay;->getConnection()Lorg/restlet/engine/connector/Connection;

    move-result-object v6

    invoke-virtual {v6}, Lorg/restlet/engine/connector/Connection;->getSocketAddress()Ljava/net/SocketAddress;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 249
    :cond_2
    invoke-virtual {p0}, Lorg/restlet/engine/connector/InboundWay;->readStartLine()V

    goto :goto_0

    .line 251
    :cond_3
    invoke-virtual {p0}, Lorg/restlet/engine/connector/InboundWay;->getMessageState()Lorg/restlet/engine/connector/MessageState;

    move-result-object v4

    sget-object v5, Lorg/restlet/engine/connector/MessageState;->HEADERS:Lorg/restlet/engine/connector/MessageState;

    if-ne v4, v5, :cond_0

    .line 252
    invoke-virtual {p0}, Lorg/restlet/engine/connector/InboundWay;->readHeader()Lorg/restlet/engine/header/Header;

    move-result-object v2

    .line 254
    .local v2, "header":Lorg/restlet/engine/header/Header;
    if-eqz v2, :cond_5

    .line 255
    invoke-virtual {p0}, Lorg/restlet/engine/connector/InboundWay;->getHeaders()Lorg/restlet/util/Series;

    move-result-object v4

    if-nez v4, :cond_4

    .line 256
    new-instance v4, Lorg/restlet/util/Series;

    const-class v5, Lorg/restlet/engine/header/Header;

    invoke-direct {v4, v5}, Lorg/restlet/util/Series;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p0, v4}, Lorg/restlet/engine/connector/InboundWay;->setHeaders(Lorg/restlet/util/Series;)V

    .line 259
    :cond_4
    invoke-virtual {p0}, Lorg/restlet/engine/connector/InboundWay;->getHeaders()Lorg/restlet/util/Series;

    move-result-object v4

    invoke-virtual {v4, v2}, Lorg/restlet/util/Series;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 262
    :cond_5
    invoke-virtual {p0}, Lorg/restlet/engine/connector/InboundWay;->onHeadersCompleted()V

    goto :goto_0

    .line 267
    .end local v2    # "header":Lorg/restlet/engine/header/Header;
    :cond_6
    invoke-virtual {p1}, Lorg/restlet/engine/io/Buffer;->remaining()I

    move-result v4

    sub-int v3, v0, v4

    .line 269
    invoke-virtual {p0}, Lorg/restlet/engine/connector/InboundWay;->getLogger()Ljava/util/logging/Logger;

    move-result-object v4

    sget-object v5, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 270
    invoke-virtual {p0}, Lorg/restlet/engine/connector/InboundWay;->getLogger()Ljava/util/logging/Logger;

    move-result-object v4

    sget-object v5, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " bytes read"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 273
    :cond_7
    return v3
.end method

.method public onError(Lorg/restlet/data/Status;)V
    .locals 2
    .param p1, "status"    # Lorg/restlet/data/Status;

    .prologue
    .line 278
    invoke-virtual {p0}, Lorg/restlet/engine/connector/InboundWay;->getHelper()Lorg/restlet/engine/connector/ConnectionHelper;

    move-result-object v0

    invoke-virtual {p0}, Lorg/restlet/engine/connector/InboundWay;->getMessage()Lorg/restlet/Response;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/restlet/engine/connector/ConnectionHelper;->onInboundError(Lorg/restlet/data/Status;Lorg/restlet/Response;)V

    .line 279
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/restlet/engine/connector/InboundWay;->setMessage(Lorg/restlet/Response;)V

    .line 280
    return-void
.end method

.method public varargs onFill(Lorg/restlet/engine/io/Buffer;[Ljava/lang/Object;)I
    .locals 3
    .param p1, "buffer"    # Lorg/restlet/engine/io/Buffer;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 284
    invoke-virtual {p0}, Lorg/restlet/engine/connector/InboundWay;->getBuffer()Lorg/restlet/engine/io/Buffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/restlet/engine/connector/InboundWay;->getConnection()Lorg/restlet/engine/connector/Connection;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/engine/connector/Connection;->getReadableSelectionChannel()Lorg/restlet/engine/io/ReadableSelectionChannel;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/restlet/engine/io/Buffer;->fill(Ljava/nio/channels/ReadableByteChannel;)I

    move-result v0

    .line 287
    .local v0, "result":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 289
    invoke-virtual {p0}, Lorg/restlet/engine/connector/InboundWay;->getConnection()Lorg/restlet/engine/connector/Connection;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/restlet/engine/connector/Connection;->close(Z)V

    .line 292
    :cond_0
    return v0
.end method

.method public onFillEof()V
    .locals 0

    .prologue
    .line 299
    return-void
.end method

.method protected onHeadersCompleted()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 314
    invoke-virtual {p0}, Lorg/restlet/engine/connector/InboundWay;->getLogger()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    invoke-virtual {p0}, Lorg/restlet/engine/connector/InboundWay;->getLogger()Ljava/util/logging/Logger;

    move-result-object v0

    const-string v1, "Inbound message start line and headers received"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 318
    :cond_0
    return-void
.end method

.method public onMessageCompleted(Z)V
    .locals 2
    .param p1, "endDetected"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 214
    invoke-super {p0, p1}, Lorg/restlet/engine/connector/Way;->onMessageCompleted(Z)V

    .line 218
    invoke-virtual {p0}, Lorg/restlet/engine/connector/InboundWay;->getHelper()Lorg/restlet/engine/connector/ConnectionHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/engine/connector/ConnectionHelper;->getController()Lorg/restlet/engine/connector/ConnectionController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/engine/connector/ConnectionController;->wakeup()V

    .line 220
    invoke-virtual {p0}, Lorg/restlet/engine/connector/InboundWay;->getLogger()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    invoke-virtual {p0}, Lorg/restlet/engine/connector/InboundWay;->getLogger()Ljava/util/logging/Logger;

    move-result-object v0

    const-string v1, "Inbound message completed"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 223
    :cond_0
    return-void
.end method

.method protected onPostProcessing()V
    .locals 1

    .prologue
    .line 304
    sget-object v0, Lorg/restlet/engine/io/IoState;->INTEREST:Lorg/restlet/engine/io/IoState;

    invoke-virtual {p0, v0}, Lorg/restlet/engine/connector/InboundWay;->setIoState(Lorg/restlet/engine/io/IoState;)V

    .line 305
    return-void
.end method

.method protected abstract onReceived(Lorg/restlet/Response;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public onTimeOut()V
    .locals 3

    .prologue
    .line 331
    invoke-virtual {p0}, Lorg/restlet/engine/connector/InboundWay;->getMessage()Lorg/restlet/Response;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 332
    invoke-virtual {p0}, Lorg/restlet/engine/connector/InboundWay;->getHelper()Lorg/restlet/engine/connector/ConnectionHelper;

    move-result-object v0

    sget-object v1, Lorg/restlet/data/Status;->CONNECTOR_ERROR_COMMUNICATION:Lorg/restlet/data/Status;

    invoke-virtual {p0}, Lorg/restlet/engine/connector/InboundWay;->getMessage()Lorg/restlet/Response;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/restlet/engine/connector/ConnectionHelper;->onInboundError(Lorg/restlet/data/Status;Lorg/restlet/Response;)V

    .line 335
    :cond_0
    return-void
.end method

.method public processIoBuffer()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 339
    const/4 v0, 0x0

    .line 341
    .local v0, "result":I
    invoke-virtual {p0}, Lorg/restlet/engine/connector/InboundWay;->getMessageState()Lorg/restlet/engine/connector/MessageState;

    move-result-object v1

    sget-object v2, Lorg/restlet/engine/connector/MessageState;->BODY:Lorg/restlet/engine/connector/MessageState;

    if-ne v1, v2, :cond_3

    invoke-virtual {p0}, Lorg/restlet/engine/connector/InboundWay;->getEntityRegistration()Lorg/restlet/util/SelectionRegistration;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 343
    invoke-virtual {p0}, Lorg/restlet/engine/connector/InboundWay;->getLogger()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 344
    invoke-virtual {p0}, Lorg/restlet/engine/connector/InboundWay;->getLogger()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Entity registration selected : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/restlet/engine/connector/InboundWay;->getRegistration()Lorg/restlet/util/SelectionRegistration;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 350
    :cond_0
    invoke-virtual {p0}, Lorg/restlet/engine/connector/InboundWay;->getIoState()Lorg/restlet/engine/io/IoState;

    move-result-object v1

    sget-object v2, Lorg/restlet/engine/io/IoState;->READY:Lorg/restlet/engine/io/IoState;

    if-ne v1, v2, :cond_2

    .line 351
    invoke-virtual {p0}, Lorg/restlet/engine/connector/InboundWay;->getEntityRegistration()Lorg/restlet/util/SelectionRegistration;

    move-result-object v1

    invoke-virtual {v1}, Lorg/restlet/util/SelectionRegistration;->getSelectionListener()Lorg/restlet/util/SelectionListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 352
    invoke-virtual {p0}, Lorg/restlet/engine/connector/InboundWay;->getEntityRegistration()Lorg/restlet/util/SelectionRegistration;

    move-result-object v1

    invoke-virtual {v1}, Lorg/restlet/util/SelectionRegistration;->getSelectionListener()Lorg/restlet/util/SelectionListener;

    move-result-object v1

    invoke-virtual {p0}, Lorg/restlet/engine/connector/InboundWay;->getEntityRegistration()Lorg/restlet/util/SelectionRegistration;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/restlet/util/SelectionListener;->onSelected(Lorg/restlet/util/SelectionRegistration;)V

    .line 363
    :cond_1
    :goto_0
    return v0

    .line 356
    :cond_2
    invoke-virtual {p0}, Lorg/restlet/engine/connector/InboundWay;->getEntityRegistration()Lorg/restlet/util/SelectionRegistration;

    move-result-object v1

    invoke-virtual {p0}, Lorg/restlet/engine/connector/InboundWay;->getRegistration()Lorg/restlet/util/SelectionRegistration;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/util/SelectionRegistration;->getReadyOperations()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/restlet/util/SelectionRegistration;->onSelected(I)V

    goto :goto_0

    .line 360
    :cond_3
    invoke-super {p0}, Lorg/restlet/engine/connector/Way;->processIoBuffer()I

    move-result v0

    goto :goto_0
.end method

.method protected readHeader()Lorg/restlet/engine/header/Header;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 373
    invoke-virtual {p0}, Lorg/restlet/engine/connector/InboundWay;->getLineBuilder()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v1}, Lorg/restlet/engine/header/HeaderReader;->readHeader(Ljava/lang/CharSequence;)Lorg/restlet/engine/header/Header;

    move-result-object v0

    .line 374
    .local v0, "header":Lorg/restlet/engine/header/Header;
    invoke-virtual {p0}, Lorg/restlet/engine/connector/InboundWay;->clearLineBuilder()V

    .line 375
    return-object v0
.end method

.method protected abstract readStartLine()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected setBuilderIndex(I)V
    .locals 0
    .param p1, "builderIndex"    # I

    .prologue
    .line 392
    iput p1, p0, Lorg/restlet/engine/connector/InboundWay;->builderIndex:I

    .line 393
    return-void
.end method

.method protected setEntityRegistration(Lorg/restlet/util/SelectionRegistration;)V
    .locals 0
    .param p1, "entityRegistration"    # Lorg/restlet/util/SelectionRegistration;

    .prologue
    .line 403
    iput-object p1, p0, Lorg/restlet/engine/connector/InboundWay;->entityRegistration:Lorg/restlet/util/SelectionRegistration;

    .line 404
    return-void
.end method

.method public updateState()V
    .locals 4

    .prologue
    .line 408
    invoke-virtual {p0}, Lorg/restlet/engine/connector/InboundWay;->getMessageState()Lorg/restlet/engine/connector/MessageState;

    move-result-object v0

    sget-object v1, Lorg/restlet/engine/connector/MessageState;->BODY:Lorg/restlet/engine/connector/MessageState;

    if-ne v0, v1, :cond_3

    .line 409
    invoke-virtual {p0}, Lorg/restlet/engine/connector/InboundWay;->getHelper()Lorg/restlet/engine/connector/ConnectionHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/engine/connector/ConnectionHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 410
    invoke-virtual {p0}, Lorg/restlet/engine/connector/InboundWay;->getHelper()Lorg/restlet/engine/connector/ConnectionHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/engine/connector/ConnectionHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Old inbound way NIO interest: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/restlet/engine/connector/InboundWay;->getRegistration()Lorg/restlet/util/SelectionRegistration;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 412
    invoke-virtual {p0}, Lorg/restlet/engine/connector/InboundWay;->getHelper()Lorg/restlet/engine/connector/ConnectionHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/engine/connector/ConnectionHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Old inbound entity NIO interest: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/restlet/engine/connector/InboundWay;->getEntityRegistration()Lorg/restlet/util/SelectionRegistration;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 418
    :cond_0
    invoke-virtual {p0}, Lorg/restlet/engine/connector/InboundWay;->getEntityRegistration()Lorg/restlet/util/SelectionRegistration;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/restlet/engine/connector/InboundWay;->getEntityRegistration()Lorg/restlet/util/SelectionRegistration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/util/SelectionRegistration;->getSelectionListener()Lorg/restlet/util/SelectionListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 420
    invoke-virtual {p0}, Lorg/restlet/engine/connector/InboundWay;->getRegistration()Lorg/restlet/util/SelectionRegistration;

    move-result-object v0

    invoke-virtual {p0}, Lorg/restlet/engine/connector/InboundWay;->getEntityRegistration()Lorg/restlet/util/SelectionRegistration;

    move-result-object v1

    invoke-virtual {v1}, Lorg/restlet/util/SelectionRegistration;->getInterestOperations()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/restlet/util/SelectionRegistration;->setInterestOperations(I)Z

    .line 426
    :goto_0
    invoke-virtual {p0}, Lorg/restlet/engine/connector/InboundWay;->getHelper()Lorg/restlet/engine/connector/ConnectionHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/engine/connector/ConnectionHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 427
    invoke-virtual {p0}, Lorg/restlet/engine/connector/InboundWay;->getHelper()Lorg/restlet/engine/connector/ConnectionHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/engine/connector/ConnectionHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "New inbound entity NIO interest: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/restlet/engine/connector/InboundWay;->getEntityRegistration()Lorg/restlet/util/SelectionRegistration;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 431
    invoke-virtual {p0}, Lorg/restlet/engine/connector/InboundWay;->getHelper()Lorg/restlet/engine/connector/ConnectionHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/engine/connector/ConnectionHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "New inbound way NIO interest: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/restlet/engine/connector/InboundWay;->getRegistration()Lorg/restlet/util/SelectionRegistration;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 437
    :cond_1
    :goto_1
    return-void

    .line 423
    :cond_2
    invoke-virtual {p0}, Lorg/restlet/engine/connector/InboundWay;->getRegistration()Lorg/restlet/util/SelectionRegistration;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/restlet/util/SelectionRegistration;->setInterestOperations(I)Z

    goto :goto_0

    .line 435
    :cond_3
    invoke-super {p0}, Lorg/restlet/engine/connector/Way;->updateState()V

    goto :goto_1
.end method

.class public abstract Lorg/restlet/engine/connector/Way;
.super Ljava/lang/Object;
.source "Way.java"

# interfaces
.implements Lorg/restlet/util/SelectionListener;
.implements Lorg/restlet/engine/io/CompletionListener;
.implements Lorg/restlet/engine/io/BufferProcessor;


# instance fields
.field private final buffer:Lorg/restlet/engine/io/Buffer;

.field private final connection:Lorg/restlet/engine/connector/Connection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/restlet/engine/connector/Connection",
            "<*>;"
        }
    .end annotation
.end field

.field private volatile headers:Lorg/restlet/util/Series;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/restlet/util/Series",
            "<",
            "Lorg/restlet/engine/header/Header;",
            ">;"
        }
    .end annotation
.end field

.field private volatile ioState:Lorg/restlet/engine/io/IoState;

.field private final lineBuilder:Ljava/lang/StringBuilder;

.field private volatile lineBuilderState:Lorg/restlet/engine/io/BufferState;

.field private volatile message:Lorg/restlet/Response;

.field private volatile messageState:Lorg/restlet/engine/connector/MessageState;

.field private volatile registration:Lorg/restlet/util/SelectionRegistration;


# direct methods
.method public constructor <init>(Lorg/restlet/engine/connector/Connection;I)V
    .locals 3
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
    const/4 v2, 0x0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Lorg/restlet/engine/connector/Way;->connection:Lorg/restlet/engine/connector/Connection;

    .line 102
    new-instance v0, Lorg/restlet/engine/io/Buffer;

    invoke-virtual {p0}, Lorg/restlet/engine/connector/Way;->getHelper()Lorg/restlet/engine/connector/ConnectionHelper;

    move-result-object v1

    invoke-virtual {v1}, Lorg/restlet/engine/connector/ConnectionHelper;->isDirectBuffers()Z

    move-result v1

    invoke-direct {v0, p2, v1}, Lorg/restlet/engine/io/Buffer;-><init>(IZ)V

    iput-object v0, p0, Lorg/restlet/engine/connector/Way;->buffer:Lorg/restlet/engine/io/Buffer;

    .line 103
    iput-object v2, p0, Lorg/restlet/engine/connector/Way;->headers:Lorg/restlet/util/Series;

    .line 104
    sget-object v0, Lorg/restlet/engine/io/IoState;->IDLE:Lorg/restlet/engine/io/IoState;

    iput-object v0, p0, Lorg/restlet/engine/connector/Way;->ioState:Lorg/restlet/engine/io/IoState;

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/restlet/engine/connector/Way;->lineBuilder:Ljava/lang/StringBuilder;

    .line 106
    sget-object v0, Lorg/restlet/engine/io/BufferState;->IDLE:Lorg/restlet/engine/io/BufferState;

    iput-object v0, p0, Lorg/restlet/engine/connector/Way;->lineBuilderState:Lorg/restlet/engine/io/BufferState;

    .line 107
    iput-object v2, p0, Lorg/restlet/engine/connector/Way;->message:Lorg/restlet/Response;

    .line 108
    sget-object v0, Lorg/restlet/engine/connector/MessageState;->IDLE:Lorg/restlet/engine/connector/MessageState;

    iput-object v0, p0, Lorg/restlet/engine/connector/Way;->messageState:Lorg/restlet/engine/connector/MessageState;

    .line 109
    new-instance v0, Lorg/restlet/util/SelectionRegistration;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, v2}, Lorg/restlet/util/SelectionRegistration;-><init>(ILorg/restlet/util/SelectionListener;Lorg/restlet/engine/io/WakeupListener;)V

    iput-object v0, p0, Lorg/restlet/engine/connector/Way;->registration:Lorg/restlet/util/SelectionRegistration;

    .line 110
    return-void
.end method


# virtual methods
.method public varargs canLoop(Lorg/restlet/engine/io/Buffer;[Ljava/lang/Object;)Z
    .locals 2
    .param p1, "buffer"    # Lorg/restlet/engine/io/Buffer;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 122
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Way;->getConnection()Lorg/restlet/engine/connector/Connection;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/engine/connector/Connection;->getState()Lorg/restlet/engine/connector/ConnectionState;

    move-result-object v0

    sget-object v1, Lorg/restlet/engine/connector/ConnectionState;->CLOSED:Lorg/restlet/engine/connector/ConnectionState;

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/restlet/engine/connector/Way;->getIoState()Lorg/restlet/engine/io/IoState;

    move-result-object v0

    sget-object v1, Lorg/restlet/engine/io/IoState;->PROCESSING:Lorg/restlet/engine/io/IoState;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/restlet/engine/connector/Way;->getIoState()Lorg/restlet/engine/io/IoState;

    move-result-object v0

    sget-object v1, Lorg/restlet/engine/io/IoState;->READY:Lorg/restlet/engine/io/IoState;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clear()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 131
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Way;->getLogger()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    instance-of v0, p0, Lorg/restlet/engine/connector/OutboundWay;

    if-eqz v0, :cond_1

    .line 133
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Way;->getLogger()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OutboundWay#clear: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 139
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/restlet/engine/connector/Way;->buffer:Lorg/restlet/engine/io/Buffer;

    invoke-virtual {v0}, Lorg/restlet/engine/io/Buffer;->clear()V

    .line 140
    iput-object v4, p0, Lorg/restlet/engine/connector/Way;->headers:Lorg/restlet/util/Series;

    .line 141
    sget-object v0, Lorg/restlet/engine/io/IoState;->IDLE:Lorg/restlet/engine/io/IoState;

    iput-object v0, p0, Lorg/restlet/engine/connector/Way;->ioState:Lorg/restlet/engine/io/IoState;

    .line 142
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Way;->clearLineBuilder()V

    .line 143
    iput-object v4, p0, Lorg/restlet/engine/connector/Way;->message:Lorg/restlet/Response;

    .line 144
    sget-object v0, Lorg/restlet/engine/connector/MessageState;->IDLE:Lorg/restlet/engine/connector/MessageState;

    iput-object v0, p0, Lorg/restlet/engine/connector/Way;->messageState:Lorg/restlet/engine/connector/MessageState;

    .line 145
    iget-object v0, p0, Lorg/restlet/engine/connector/Way;->registration:Lorg/restlet/util/SelectionRegistration;

    invoke-virtual {v0}, Lorg/restlet/util/SelectionRegistration;->clear()V

    .line 146
    return-void

    .line 135
    :cond_1
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Way;->getLogger()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InboundWay#clear: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected clearLineBuilder()V
    .locals 3

    .prologue
    .line 152
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Way;->getLineBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/restlet/engine/connector/Way;->getLineBuilder()Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 153
    sget-object v0, Lorg/restlet/engine/io/BufferState;->IDLE:Lorg/restlet/engine/io/BufferState;

    invoke-virtual {p0, v0}, Lorg/restlet/engine/connector/Way;->setLineBuilderState(Lorg/restlet/engine/io/BufferState;)V

    .line 154
    return-void
.end method

.method public varargs couldDrain(Lorg/restlet/engine/io/Buffer;[Ljava/lang/Object;)Z
    .locals 1
    .param p1, "buffer"    # Lorg/restlet/engine/io/Buffer;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 166
    const/4 v0, 0x0

    return v0
.end method

.method public varargs couldFill(Lorg/restlet/engine/io/Buffer;[Ljava/lang/Object;)Z
    .locals 2
    .param p1, "buffer"    # Lorg/restlet/engine/io/Buffer;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 179
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Way;->getConnection()Lorg/restlet/engine/connector/Connection;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/engine/connector/Connection;->getState()Lorg/restlet/engine/connector/ConnectionState;

    move-result-object v0

    sget-object v1, Lorg/restlet/engine/connector/ConnectionState;->CLOSED:Lorg/restlet/engine/connector/ConnectionState;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract getActualMessage()Lorg/restlet/Message;
.end method

.method public getBuffer()Lorg/restlet/engine/io/Buffer;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lorg/restlet/engine/connector/Way;->buffer:Lorg/restlet/engine/io/Buffer;

    return-object v0
.end method

.method public getConnection()Lorg/restlet/engine/connector/Connection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/restlet/engine/connector/Connection",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 204
    iget-object v0, p0, Lorg/restlet/engine/connector/Way;->connection:Lorg/restlet/engine/connector/Connection;

    return-object v0
.end method

.method public getHeaders()Lorg/restlet/util/Series;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/restlet/util/Series",
            "<",
            "Lorg/restlet/engine/header/Header;",
            ">;"
        }
    .end annotation

    .prologue
    .line 213
    iget-object v0, p0, Lorg/restlet/engine/connector/Way;->headers:Lorg/restlet/util/Series;

    return-object v0
.end method

.method public getHelper()Lorg/restlet/engine/connector/ConnectionHelper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/restlet/engine/connector/ConnectionHelper",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 222
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Way;->getConnection()Lorg/restlet/engine/connector/Connection;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/engine/connector/Connection;->getHelper()Lorg/restlet/engine/connector/ConnectionHelper;

    move-result-object v0

    return-object v0
.end method

.method public abstract getInterestOperations()I
.end method

.method public getIoState()Lorg/restlet/engine/io/IoState;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lorg/restlet/engine/connector/Way;->ioState:Lorg/restlet/engine/io/IoState;

    return-object v0
.end method

.method public getLineBuilder()Ljava/lang/StringBuilder;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lorg/restlet/engine/connector/Way;->lineBuilder:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method public getLineBuilderState()Lorg/restlet/engine/io/BufferState;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lorg/restlet/engine/connector/Way;->lineBuilderState:Lorg/restlet/engine/io/BufferState;

    return-object v0
.end method

.method public getLoadScore()I
    .locals 1

    .prologue
    .line 266
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Way;->getMessage()Lorg/restlet/Response;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected getLogger()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 275
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Way;->getConnection()Lorg/restlet/engine/connector/Connection;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/engine/connector/Connection;->getLogger()Ljava/util/logging/Logger;

    move-result-object v0

    return-object v0
.end method

.method public getMessage()Lorg/restlet/Response;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lorg/restlet/engine/connector/Way;->message:Lorg/restlet/Response;

    return-object v0
.end method

.method public getMessageState()Lorg/restlet/engine/connector/MessageState;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lorg/restlet/engine/connector/Way;->messageState:Lorg/restlet/engine/connector/MessageState;

    return-object v0
.end method

.method public getRegistration()Lorg/restlet/util/SelectionRegistration;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lorg/restlet/engine/connector/Way;->registration:Lorg/restlet/util/SelectionRegistration;

    return-object v0
.end method

.method protected hasIoInterest()Z
    .locals 2

    .prologue
    .line 315
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Way;->getIoState()Lorg/restlet/engine/io/IoState;

    move-result-object v0

    sget-object v1, Lorg/restlet/engine/io/IoState;->READY:Lorg/restlet/engine/io/IoState;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAvailable()Z
    .locals 2

    .prologue
    .line 324
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Way;->getMessageState()Lorg/restlet/engine/connector/MessageState;

    move-result-object v0

    sget-object v1, Lorg/restlet/engine/connector/MessageState;->IDLE:Lorg/restlet/engine/connector/MessageState;

    invoke-virtual {v0, v1}, Lorg/restlet/engine/connector/MessageState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/restlet/engine/connector/Way;->getIoState()Lorg/restlet/engine/io/IoState;

    move-result-object v0

    sget-object v1, Lorg/restlet/engine/io/IoState;->IDLE:Lorg/restlet/engine/io/IoState;

    invoke-virtual {v0, v1}, Lorg/restlet/engine/io/IoState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 334
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Way;->getBuffer()Lorg/restlet/engine/io/Buffer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/engine/io/Buffer;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public onClosed()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 341
    sget-object v0, Lorg/restlet/engine/io/IoState;->IDLE:Lorg/restlet/engine/io/IoState;

    invoke-virtual {p0, v0}, Lorg/restlet/engine/connector/Way;->setIoState(Lorg/restlet/engine/io/IoState;)V

    .line 342
    sget-object v0, Lorg/restlet/engine/connector/MessageState;->IDLE:Lorg/restlet/engine/connector/MessageState;

    invoke-virtual {p0, v0}, Lorg/restlet/engine/connector/Way;->setMessageState(Lorg/restlet/engine/connector/MessageState;)V

    .line 343
    invoke-virtual {p0, v1}, Lorg/restlet/engine/connector/Way;->setMessage(Lorg/restlet/Response;)V

    .line 344
    invoke-virtual {p0, v1}, Lorg/restlet/engine/connector/Way;->setHeaders(Lorg/restlet/util/Series;)V

    .line 345
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Way;->getBuffer()Lorg/restlet/engine/io/Buffer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/engine/io/Buffer;->clear()V

    .line 346
    return-void
.end method

.method public varargs abstract onDrain(Lorg/restlet/engine/io/Buffer;I[Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onError(Lorg/restlet/data/Status;)V
.end method

.method public varargs abstract onFill(Lorg/restlet/engine/io/Buffer;[Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract onHeadersCompleted()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public onMessageCompleted(Z)V
    .locals 5
    .param p1, "endDetected"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 398
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Way;->getLogger()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 399
    instance-of v0, p0, Lorg/restlet/engine/connector/OutboundWay;

    if-eqz v0, :cond_1

    .line 400
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Way;->getLogger()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OutboundWay#onCompleted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 408
    :cond_0
    :goto_0
    sget-object v0, Lorg/restlet/engine/io/IoState;->IDLE:Lorg/restlet/engine/io/IoState;

    invoke-virtual {p0, v0}, Lorg/restlet/engine/connector/Way;->setIoState(Lorg/restlet/engine/io/IoState;)V

    .line 409
    sget-object v0, Lorg/restlet/engine/connector/MessageState;->IDLE:Lorg/restlet/engine/connector/MessageState;

    invoke-virtual {p0, v0}, Lorg/restlet/engine/connector/Way;->setMessageState(Lorg/restlet/engine/connector/MessageState;)V

    .line 410
    invoke-virtual {p0, v4}, Lorg/restlet/engine/connector/Way;->setMessage(Lorg/restlet/Response;)V

    .line 411
    invoke-virtual {p0, v4}, Lorg/restlet/engine/connector/Way;->setHeaders(Lorg/restlet/util/Series;)V

    .line 412
    return-void

    .line 403
    :cond_1
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Way;->getLogger()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InboundWay#onCompleted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected abstract onPostProcessing()V
.end method

.method public onSelected(Lorg/restlet/util/SelectionRegistration;)V
    .locals 6
    .param p1, "selectionRegistration"    # Lorg/restlet/util/SelectionRegistration;

    .prologue
    .line 430
    :try_start_0
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Way;->getMessage()Lorg/restlet/Response;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 431
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Way;->getMessage()Lorg/restlet/Response;

    move-result-object v2

    invoke-static {v2}, Lorg/restlet/Response;->setCurrent(Lorg/restlet/Response;)V

    .line 432
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Way;->getMessage()Lorg/restlet/Response;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/Response;->getAttributes()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v2

    const-string v3, "org.restlet.application"

    invoke-interface {v2, v3}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/restlet/Application;

    invoke-static {v2}, Lorg/restlet/Application;->setCurrent(Lorg/restlet/Application;)V

    .line 434
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Way;->getMessage()Lorg/restlet/Response;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/Response;->getAttributes()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v2

    const-string v3, "org.restlet.context"

    invoke-interface {v2, v3}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/restlet/Context;

    invoke-static {v2}, Lorg/restlet/Context;->setCurrent(Lorg/restlet/Context;)V

    .line 436
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Way;->getMessage()Lorg/restlet/Response;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/Response;->getAttributes()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v2

    const-string v3, "org.restlet.virtualHost"

    invoke-interface {v2, v3}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-static {v2}, Lorg/restlet/routing/VirtualHost;->setCurrent(Ljava/lang/Integer;)V

    .line 441
    :cond_0
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Way;->getIoState()Lorg/restlet/engine/io/IoState;

    move-result-object v2

    sget-object v3, Lorg/restlet/engine/io/IoState;->READY:Lorg/restlet/engine/io/IoState;

    if-eq v2, v3, :cond_1

    .line 442
    sget-object v2, Lorg/restlet/engine/io/IoState;->PROCESSING:Lorg/restlet/engine/io/IoState;

    invoke-virtual {p0, v2}, Lorg/restlet/engine/connector/Way;->setIoState(Lorg/restlet/engine/io/IoState;)V

    .line 445
    :cond_1
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Way;->getLogger()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 446
    instance-of v2, p0, Lorg/restlet/engine/connector/InboundWay;

    if-eqz v2, :cond_4

    .line 447
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Way;->getLogger()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Processing IO for inbound way: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 456
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Way;->processIoBuffer()I

    move-result v0

    .line 458
    .local v0, "drained":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_5

    invoke-virtual {p0}, Lorg/restlet/engine/connector/Way;->getConnection()Lorg/restlet/engine/connector/Connection;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/engine/connector/Connection;->getState()Lorg/restlet/engine/connector/ConnectionState;

    move-result-object v2

    sget-object v3, Lorg/restlet/engine/connector/ConnectionState;->CLOSING:Lorg/restlet/engine/connector/ConnectionState;

    if-ne v2, v3, :cond_5

    .line 461
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Way;->getBuffer()Lorg/restlet/engine/io/Buffer;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/engine/io/Buffer;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 470
    .end local v0    # "drained":I
    :cond_3
    :goto_1
    instance-of v2, p0, Lorg/restlet/engine/connector/InboundWay;

    if-eqz v2, :cond_6

    .line 471
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Way;->getLogger()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Inbound way selected. Done for : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 477
    :goto_2
    return-void

    .line 450
    :cond_4
    :try_start_1
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Way;->getLogger()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Processing IO for outbound way: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 465
    :catch_0
    move-exception v1

    .line 466
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Way;->getConnection()Lorg/restlet/engine/connector/Connection;

    move-result-object v2

    const-string v3, "Error while processing a connection"

    sget-object v4, Lorg/restlet/data/Status;->CONNECTOR_ERROR_COMMUNICATION:Lorg/restlet/data/Status;

    invoke-virtual {v2, v3, v1, v4}, Lorg/restlet/engine/connector/Connection;->onError(Ljava/lang/String;Ljava/lang/Throwable;Lorg/restlet/data/Status;)V

    goto :goto_1

    .line 462
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "drained":I
    :cond_5
    :try_start_2
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Way;->getIoState()Lorg/restlet/engine/io/IoState;

    move-result-object v2

    sget-object v3, Lorg/restlet/engine/io/IoState;->PROCESSING:Lorg/restlet/engine/io/IoState;

    if-ne v2, v3, :cond_3

    .line 463
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Way;->onPostProcessing()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 474
    .end local v0    # "drained":I
    :cond_6
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Way;->getLogger()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Outbound way selected. Done for : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public abstract onTimeOut()V
.end method

.method public postProcess(I)V
    .locals 0
    .param p1, "drained"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 488
    return-void
.end method

.method public varargs preProcess(I[Ljava/lang/Object;)I
    .locals 1
    .param p1, "maxDrained"    # I
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 494
    const/4 v0, 0x0

    return v0
.end method

.method protected processIoBuffer()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 503
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Way;->getBuffer()Lorg/restlet/engine/io/Buffer;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v2, v1}, Lorg/restlet/engine/io/Buffer;->process(Lorg/restlet/engine/io/BufferProcessor;I[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected setHeaders(Lorg/restlet/util/Series;)V
    .locals 0
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
    .line 513
    .local p1, "headers":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<Lorg/restlet/engine/header/Header;>;"
    iput-object p1, p0, Lorg/restlet/engine/connector/Way;->headers:Lorg/restlet/util/Series;

    .line 514
    return-void
.end method

.method public setIoState(Lorg/restlet/engine/io/IoState;)V
    .locals 4
    .param p1, "ioState"    # Lorg/restlet/engine/io/IoState;

    .prologue
    .line 523
    iget-object v0, p0, Lorg/restlet/engine/connector/Way;->ioState:Lorg/restlet/engine/io/IoState;

    if-eq p1, v0, :cond_1

    .line 524
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 525
    instance-of v0, p0, Lorg/restlet/engine/connector/OutboundWay;

    if-eqz v0, :cond_2

    .line 526
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OutboundWay#setIoState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 534
    :cond_0
    :goto_0
    iput-object p1, p0, Lorg/restlet/engine/connector/Way;->ioState:Lorg/restlet/engine/io/IoState;

    .line 536
    :cond_1
    return-void

    .line 529
    :cond_2
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InboundWay#setIoState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected setLineBuilderState(Lorg/restlet/engine/io/BufferState;)V
    .locals 0
    .param p1, "lineBuilderState"    # Lorg/restlet/engine/io/BufferState;

    .prologue
    .line 545
    iput-object p1, p0, Lorg/restlet/engine/connector/Way;->lineBuilderState:Lorg/restlet/engine/io/BufferState;

    .line 546
    return-void
.end method

.method protected setMessage(Lorg/restlet/Response;)V
    .locals 0
    .param p1, "message"    # Lorg/restlet/Response;

    .prologue
    .line 555
    iput-object p1, p0, Lorg/restlet/engine/connector/Way;->message:Lorg/restlet/Response;

    .line 556
    return-void
.end method

.method protected setMessageState(Lorg/restlet/engine/connector/MessageState;)V
    .locals 4
    .param p1, "messageState"    # Lorg/restlet/engine/connector/MessageState;

    .prologue
    .line 565
    iget-object v0, p0, Lorg/restlet/engine/connector/Way;->messageState:Lorg/restlet/engine/connector/MessageState;

    if-eq v0, p1, :cond_0

    .line 566
    iput-object p1, p0, Lorg/restlet/engine/connector/Way;->messageState:Lorg/restlet/engine/connector/MessageState;

    .line 568
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Way;->getLogger()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 569
    instance-of v0, p0, Lorg/restlet/engine/connector/OutboundWay;

    if-eqz v0, :cond_1

    .line 570
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OutboundWay#setMessageState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 578
    :cond_0
    :goto_0
    return-void

    .line 573
    :cond_1
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InboundWay#setMessageState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected setRegistration(Lorg/restlet/util/SelectionRegistration;)V
    .locals 0
    .param p1, "registration"    # Lorg/restlet/util/SelectionRegistration;

    .prologue
    .line 589
    iput-object p1, p0, Lorg/restlet/engine/connector/Way;->registration:Lorg/restlet/util/SelectionRegistration;

    .line 590
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 594
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/restlet/engine/connector/Way;->getIoState()Lorg/restlet/engine/io/IoState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/restlet/engine/connector/Way;->getMessageState()Lorg/restlet/engine/connector/MessageState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/restlet/engine/connector/Way;->getBuffer()Lorg/restlet/engine/io/Buffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateState()V
    .locals 2

    .prologue
    .line 601
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Way;->hasIoInterest()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 602
    sget-object v0, Lorg/restlet/engine/io/IoState;->INTEREST:Lorg/restlet/engine/io/IoState;

    invoke-virtual {p0, v0}, Lorg/restlet/engine/connector/Way;->setIoState(Lorg/restlet/engine/io/IoState;)V

    .line 605
    :cond_0
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Way;->getRegistration()Lorg/restlet/util/SelectionRegistration;

    move-result-object v0

    invoke-virtual {p0}, Lorg/restlet/engine/connector/Way;->getInterestOperations()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/restlet/util/SelectionRegistration;->setInterestOperations(I)Z

    .line 606
    return-void
.end method

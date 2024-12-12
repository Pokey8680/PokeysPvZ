.class public Lorg/restlet/engine/io/NbChannelInputStream;
.super Ljava/io/InputStream;
.source "NbChannelInputStream.java"

# interfaces
.implements Lorg/restlet/engine/io/BufferProcessor;


# instance fields
.field private final buffer:Lorg/restlet/engine/io/Buffer;

.field private final channel:Ljava/nio/channels/ReadableByteChannel;

.field private volatile endReached:Z

.field private final selectableChannel:Ljava/nio/channels/SelectableChannel;

.field private final selectionChannel:Lorg/restlet/engine/io/SelectionChannel;

.field private volatile selectionRegistration:Lorg/restlet/util/SelectionRegistration;


# direct methods
.method public constructor <init>(Ljava/nio/channels/ReadableByteChannel;)V
    .locals 3
    .param p1, "channel"    # Ljava/nio/channels/ReadableByteChannel;

    .prologue
    const/4 v2, 0x0

    .line 81
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 82
    iput-object p1, p0, Lorg/restlet/engine/io/NbChannelInputStream;->channel:Ljava/nio/channels/ReadableByteChannel;

    .line 84
    instance-of v0, p1, Lorg/restlet/engine/io/ReadableSelectionChannel;

    if-eqz v0, :cond_0

    .line 85
    check-cast p1, Lorg/restlet/engine/io/ReadableSelectionChannel;

    .end local p1    # "channel":Ljava/nio/channels/ReadableByteChannel;
    iput-object p1, p0, Lorg/restlet/engine/io/NbChannelInputStream;->selectionChannel:Lorg/restlet/engine/io/SelectionChannel;

    .line 86
    iput-object v2, p0, Lorg/restlet/engine/io/NbChannelInputStream;->selectableChannel:Ljava/nio/channels/SelectableChannel;

    .line 98
    :goto_0
    new-instance v0, Lorg/restlet/engine/io/Buffer;

    sget v1, Lorg/restlet/engine/io/IoUtils;->BUFFER_SIZE:I

    invoke-direct {v0, v1}, Lorg/restlet/engine/io/Buffer;-><init>(I)V

    iput-object v0, p0, Lorg/restlet/engine/io/NbChannelInputStream;->buffer:Lorg/restlet/engine/io/Buffer;

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/restlet/engine/io/NbChannelInputStream;->endReached:Z

    .line 100
    iput-object v2, p0, Lorg/restlet/engine/io/NbChannelInputStream;->selectionRegistration:Lorg/restlet/util/SelectionRegistration;

    .line 101
    return-void

    .line 87
    .restart local p1    # "channel":Ljava/nio/channels/ReadableByteChannel;
    :cond_0
    instance-of v0, p1, Ljava/nio/channels/SelectableChannel;

    if-eqz v0, :cond_1

    .line 88
    iput-object v2, p0, Lorg/restlet/engine/io/NbChannelInputStream;->selectionChannel:Lorg/restlet/engine/io/SelectionChannel;

    .line 89
    check-cast p1, Ljava/nio/channels/SelectableChannel;

    .end local p1    # "channel":Ljava/nio/channels/ReadableByteChannel;
    iput-object p1, p0, Lorg/restlet/engine/io/NbChannelInputStream;->selectableChannel:Ljava/nio/channels/SelectableChannel;

    goto :goto_0

    .line 90
    .restart local p1    # "channel":Ljava/nio/channels/ReadableByteChannel;
    :cond_1
    instance-of v0, p1, Lorg/restlet/engine/io/SelectionChannel;

    if-eqz v0, :cond_2

    .line 91
    check-cast p1, Lorg/restlet/engine/io/SelectionChannel;

    .end local p1    # "channel":Ljava/nio/channels/ReadableByteChannel;
    iput-object p1, p0, Lorg/restlet/engine/io/NbChannelInputStream;->selectionChannel:Lorg/restlet/engine/io/SelectionChannel;

    .line 92
    iput-object v2, p0, Lorg/restlet/engine/io/NbChannelInputStream;->selectableChannel:Ljava/nio/channels/SelectableChannel;

    goto :goto_0

    .line 94
    .restart local p1    # "channel":Ljava/nio/channels/ReadableByteChannel;
    :cond_2
    iput-object v2, p0, Lorg/restlet/engine/io/NbChannelInputStream;->selectionChannel:Lorg/restlet/engine/io/SelectionChannel;

    .line 95
    iput-object v2, p0, Lorg/restlet/engine/io/NbChannelInputStream;->selectableChannel:Ljava/nio/channels/SelectableChannel;

    goto :goto_0
.end method


# virtual methods
.method public varargs canLoop(Lorg/restlet/engine/io/Buffer;[Ljava/lang/Object;)Z
    .locals 4
    .param p1, "buffer"    # Lorg/restlet/engine/io/Buffer;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 113
    const/4 v0, 0x1

    .line 115
    .local v0, "result":Z
    array-length v3, p2

    if-ne v3, v1, :cond_2

    .line 116
    aget-object v3, p2, v2

    if-nez v3, :cond_1

    move v0, v1

    .line 121
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v2

    .line 116
    goto :goto_0

    .line 117
    :cond_2
    array-length v1, p2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 118
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public varargs couldFill(Lorg/restlet/engine/io/Buffer;[Ljava/lang/Object;)Z
    .locals 1
    .param p1, "buffer"    # Lorg/restlet/engine/io/Buffer;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 134
    iget-boolean v0, p0, Lorg/restlet/engine/io/NbChannelInputStream;->endReached:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getBuffer()Lorg/restlet/engine/io/Buffer;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lorg/restlet/engine/io/NbChannelInputStream;->buffer:Lorg/restlet/engine/io/Buffer;

    return-object v0
.end method

.method public varargs onDrain(Lorg/restlet/engine/io/Buffer;I[Ljava/lang/Object;)I
    .locals 7
    .param p1, "buffer"    # Lorg/restlet/engine/io/Buffer;
    .param p2, "maxDrained"    # I
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 161
    const/4 v1, 0x0

    .line 163
    .local v1, "result":I
    array-length v3, p3

    if-ne v3, v6, :cond_1

    .line 165
    invoke-virtual {p0}, Lorg/restlet/engine/io/NbChannelInputStream;->getBuffer()Lorg/restlet/engine/io/Buffer;

    move-result-object v3

    invoke-virtual {v3}, Lorg/restlet/engine/io/Buffer;->drain()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p3, v5

    .line 166
    const/4 v1, 0x1

    .line 176
    :cond_0
    :goto_0
    return v1

    .line 167
    :cond_1
    array-length v3, p3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 168
    aget-object v3, p3, v5

    check-cast v3, [B

    move-object v2, v3

    check-cast v2, [B

    .line 169
    .local v2, "targetArray":[B
    aget-object v3, p3, v6

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 170
    .local v0, "offset":I
    invoke-virtual {p0}, Lorg/restlet/engine/io/NbChannelInputStream;->getBuffer()Lorg/restlet/engine/io/Buffer;

    move-result-object v3

    invoke-virtual {v3}, Lorg/restlet/engine/io/Buffer;->remaining()I

    move-result v3

    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 173
    invoke-virtual {p0}, Lorg/restlet/engine/io/NbChannelInputStream;->getBuffer()Lorg/restlet/engine/io/Buffer;

    move-result-object v3

    invoke-virtual {v3, v2, v0, v1}, Lorg/restlet/engine/io/Buffer;->drain([BII)V

    goto :goto_0
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
    const/4 v6, 0x1

    .line 189
    iget-object v3, p0, Lorg/restlet/engine/io/NbChannelInputStream;->channel:Ljava/nio/channels/ReadableByteChannel;

    invoke-virtual {p1, v3}, Lorg/restlet/engine/io/Buffer;->fill(Ljava/nio/channels/ReadableByteChannel;)I

    move-result v0

    .line 191
    .local v0, "result":I
    if-nez v0, :cond_1

    .line 194
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v3

    sget-object v4, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 195
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v3

    sget-object v4, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const-string v5, "Couldn\'t fill the buffer immediately. Trying to register a select key to get more."

    invoke-virtual {v3, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 200
    :cond_0
    iget-object v3, p0, Lorg/restlet/engine/io/NbChannelInputStream;->selectionChannel:Lorg/restlet/engine/io/SelectionChannel;

    if-eqz v3, :cond_4

    .line 201
    iget-object v3, p0, Lorg/restlet/engine/io/NbChannelInputStream;->selectionRegistration:Lorg/restlet/util/SelectionRegistration;

    if-nez v3, :cond_3

    .line 202
    iget-object v3, p0, Lorg/restlet/engine/io/NbChannelInputStream;->selectionChannel:Lorg/restlet/engine/io/SelectionChannel;

    invoke-interface {v3}, Lorg/restlet/engine/io/SelectionChannel;->getRegistration()Lorg/restlet/util/SelectionRegistration;

    move-result-object v3

    iput-object v3, p0, Lorg/restlet/engine/io/NbChannelInputStream;->selectionRegistration:Lorg/restlet/util/SelectionRegistration;

    .line 204
    iget-object v3, p0, Lorg/restlet/engine/io/NbChannelInputStream;->selectionRegistration:Lorg/restlet/util/SelectionRegistration;

    invoke-virtual {v3, v6}, Lorg/restlet/util/SelectionRegistration;->setInterestOperations(I)Z

    .line 206
    iget-object v3, p0, Lorg/restlet/engine/io/NbChannelInputStream;->selectionRegistration:Lorg/restlet/util/SelectionRegistration;

    new-instance v4, Lorg/restlet/engine/io/NbChannelInputStream$1;

    invoke-direct {v4, p0}, Lorg/restlet/engine/io/NbChannelInputStream$1;-><init>(Lorg/restlet/engine/io/NbChannelInputStream;)V

    invoke-virtual {v3, v4}, Lorg/restlet/util/SelectionRegistration;->setSelectionListener(Lorg/restlet/util/SelectionListener;)V

    .line 230
    :goto_0
    iget-object v3, p0, Lorg/restlet/engine/io/NbChannelInputStream;->selectionRegistration:Lorg/restlet/util/SelectionRegistration;

    invoke-virtual {v3}, Lorg/restlet/util/SelectionRegistration;->block()V

    .line 233
    iget-object v3, p0, Lorg/restlet/engine/io/NbChannelInputStream;->channel:Ljava/nio/channels/ReadableByteChannel;

    invoke-virtual {p1, v3}, Lorg/restlet/engine/io/Buffer;->fill(Ljava/nio/channels/ReadableByteChannel;)I

    move-result v0

    .line 254
    :cond_1
    :goto_1
    const/4 v3, -0x1

    if-ne v0, v3, :cond_2

    .line 255
    iput-boolean v6, p0, Lorg/restlet/engine/io/NbChannelInputStream;->endReached:Z

    .line 257
    iget-object v3, p0, Lorg/restlet/engine/io/NbChannelInputStream;->selectionRegistration:Lorg/restlet/util/SelectionRegistration;

    if-eqz v3, :cond_2

    .line 258
    iget-object v3, p0, Lorg/restlet/engine/io/NbChannelInputStream;->selectionRegistration:Lorg/restlet/util/SelectionRegistration;

    invoke-virtual {v3, v6}, Lorg/restlet/util/SelectionRegistration;->setCanceling(Z)V

    .line 259
    iget-object v3, p0, Lorg/restlet/engine/io/NbChannelInputStream;->selectionRegistration:Lorg/restlet/util/SelectionRegistration;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/restlet/util/SelectionRegistration;->setSelectionListener(Lorg/restlet/util/SelectionListener;)V

    .line 263
    :cond_2
    return v0

    .line 226
    :cond_3
    iget-object v3, p0, Lorg/restlet/engine/io/NbChannelInputStream;->selectionRegistration:Lorg/restlet/util/SelectionRegistration;

    invoke-virtual {v3}, Lorg/restlet/util/SelectionRegistration;->resume()V

    goto :goto_0

    .line 234
    :cond_4
    iget-object v3, p0, Lorg/restlet/engine/io/NbChannelInputStream;->selectableChannel:Ljava/nio/channels/SelectableChannel;

    if-eqz v3, :cond_1

    .line 235
    const/4 v2, 0x0

    .line 236
    .local v2, "selector":Ljava/nio/channels/Selector;
    const/4 v1, 0x0

    .line 239
    .local v1, "selectionKey":Ljava/nio/channels/SelectionKey;
    :try_start_0
    invoke-static {}, Lorg/restlet/engine/io/SelectorFactory;->getSelector()Ljava/nio/channels/Selector;

    move-result-object v2

    .line 241
    if-eqz v2, :cond_5

    .line 242
    iget-object v3, p0, Lorg/restlet/engine/io/NbChannelInputStream;->selectableChannel:Ljava/nio/channels/SelectableChannel;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Ljava/nio/channels/SelectableChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    move-result-object v1

    .line 244
    sget v3, Lorg/restlet/engine/io/IoUtils;->TIMEOUT_MS:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Ljava/nio/channels/Selector;->select(J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    :cond_5
    invoke-static {v2, v1}, Lorg/restlet/engine/io/NioUtils;->release(Ljava/nio/channels/Selector;Ljava/nio/channels/SelectionKey;)V

    .line 250
    iget-object v3, p0, Lorg/restlet/engine/io/NbChannelInputStream;->channel:Ljava/nio/channels/ReadableByteChannel;

    invoke-virtual {p1, v3}, Lorg/restlet/engine/io/Buffer;->fill(Ljava/nio/channels/ReadableByteChannel;)I

    move-result v0

    goto :goto_1

    .line 247
    :catchall_0
    move-exception v3

    invoke-static {v2, v1}, Lorg/restlet/engine/io/NioUtils;->release(Ljava/nio/channels/Selector;Ljava/nio/channels/SelectionKey;)V

    throw v3
.end method

.method public onFillEof()V
    .locals 0

    .prologue
    .line 270
    return-void
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
    .line 276
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
    .line 282
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 287
    const/4 v2, 0x0

    .line 288
    .local v2, "result":I
    new-array v0, v4, [Ljava/lang/Object;

    .line 289
    .local v0, "args":[Ljava/lang/Object;
    invoke-virtual {p0}, Lorg/restlet/engine/io/NbChannelInputStream;->getBuffer()Lorg/restlet/engine/io/Buffer;

    move-result-object v3

    invoke-virtual {v3, p0, v4, v0}, Lorg/restlet/engine/io/Buffer;->process(Lorg/restlet/engine/io/BufferProcessor;I[Ljava/lang/Object;)I

    move-result v1

    .line 291
    .local v1, "bytesDrained":I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 292
    const/4 v2, -0x1

    .line 301
    :goto_0
    return v2

    .line 293
    :cond_0
    if-ne v1, v4, :cond_1

    .line 294
    const/4 v3, 0x0

    aget-object v3, v0, v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    .line 296
    :cond_1
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Only one byte was needed but "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " were drained."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public read([BII)I
    .locals 4
    .param p1, "targetArray"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 307
    invoke-virtual {p0}, Lorg/restlet/engine/io/NbChannelInputStream;->getBuffer()Lorg/restlet/engine/io/Buffer;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, p3, v1}, Lorg/restlet/engine/io/Buffer;->process(Lorg/restlet/engine/io/BufferProcessor;I[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

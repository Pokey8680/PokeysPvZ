.class public Lorg/restlet/engine/io/ReadableChunkedChannel;
.super Lorg/restlet/engine/io/ReadableBufferedChannel;
.source "ReadableChunkedChannel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/restlet/engine/io/ReadableChunkedChannel$1;
    }
.end annotation


# instance fields
.field private volatile chunkState:Lorg/restlet/engine/io/ChunkState;

.field private final lineBuilder:Ljava/lang/StringBuilder;

.field private volatile lineBuilderState:Lorg/restlet/engine/io/BufferState;

.field private volatile remainingChunkSize:I


# direct methods
.method public constructor <init>(Lorg/restlet/engine/io/CompletionListener;Lorg/restlet/engine/io/Buffer;Lorg/restlet/engine/io/ReadableSelectionChannel;Lorg/restlet/engine/io/WakeupListener;)V
    .locals 4
    .param p1, "completionListener"    # Lorg/restlet/engine/io/CompletionListener;
    .param p2, "buffer"    # Lorg/restlet/engine/io/Buffer;
    .param p3, "source"    # Lorg/restlet/engine/io/ReadableSelectionChannel;
    .param p4, "wakeupListener"    # Lorg/restlet/engine/io/WakeupListener;

    .prologue
    .line 76
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/restlet/engine/io/ReadableBufferedChannel;-><init>(Lorg/restlet/engine/io/CompletionListener;Lorg/restlet/engine/io/Buffer;Lorg/restlet/engine/io/ReadableSelectionChannel;Lorg/restlet/engine/io/WakeupListener;)V

    .line 78
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ReadableChunkedChannel created from: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Registration: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/restlet/engine/io/ReadableChunkedChannel;->getRegistration()Lorg/restlet/util/SelectionRegistration;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 85
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lorg/restlet/engine/io/ReadableChunkedChannel;->remainingChunkSize:I

    .line 86
    sget-object v0, Lorg/restlet/engine/io/ChunkState;->SIZE:Lorg/restlet/engine/io/ChunkState;

    iput-object v0, p0, Lorg/restlet/engine/io/ReadableChunkedChannel;->chunkState:Lorg/restlet/engine/io/ChunkState;

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/restlet/engine/io/ReadableChunkedChannel;->lineBuilder:Ljava/lang/StringBuilder;

    .line 88
    sget-object v0, Lorg/restlet/engine/io/BufferState;->IDLE:Lorg/restlet/engine/io/BufferState;

    iput-object v0, p0, Lorg/restlet/engine/io/ReadableChunkedChannel;->lineBuilderState:Lorg/restlet/engine/io/BufferState;

    .line 89
    return-void
.end method


# virtual methods
.method protected clearLineBuilder()V
    .locals 3

    .prologue
    .line 95
    invoke-virtual {p0}, Lorg/restlet/engine/io/ReadableChunkedChannel;->getLineBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/restlet/engine/io/ReadableChunkedChannel;->getLineBuilder()Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 96
    sget-object v0, Lorg/restlet/engine/io/BufferState;->IDLE:Lorg/restlet/engine/io/BufferState;

    invoke-virtual {p0, v0}, Lorg/restlet/engine/io/ReadableChunkedChannel;->setLineBuilderState(Lorg/restlet/engine/io/BufferState;)V

    .line 97
    return-void
.end method

.method protected getChunkState()Lorg/restlet/engine/io/ChunkState;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lorg/restlet/engine/io/ReadableChunkedChannel;->chunkState:Lorg/restlet/engine/io/ChunkState;

    return-object v0
.end method

.method protected getLineBuilder()Ljava/lang/StringBuilder;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lorg/restlet/engine/io/ReadableChunkedChannel;->lineBuilder:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method protected getLineBuilderState()Lorg/restlet/engine/io/BufferState;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lorg/restlet/engine/io/ReadableChunkedChannel;->lineBuilderState:Lorg/restlet/engine/io/BufferState;

    return-object v0
.end method

.method protected getRemainingChunkSize()I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lorg/restlet/engine/io/ReadableChunkedChannel;->remainingChunkSize:I

    return v0
.end method

.method public varargs onDrain(Lorg/restlet/engine/io/Buffer;I[Ljava/lang/Object;)I
    .locals 11
    .param p1, "buffer"    # Lorg/restlet/engine/io/Buffer;
    .param p2, "maxDrained"    # I
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 151
    const/4 v5, 0x0

    .line 152
    .local v5, "result":I
    const/4 v7, 0x0

    aget-object v6, p3, v7

    check-cast v6, Ljava/nio/ByteBuffer;

    .line 153
    .local v6, "targetBuffer":Ljava/nio/ByteBuffer;
    const/4 v0, 0x1

    .line 155
    .local v0, "doLoop":Z
    :goto_0
    if-eqz v0, :cond_d

    .line 156
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v7

    sget-object v8, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 157
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v7

    sget-object v8, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Readable chunk state: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lorg/restlet/engine/io/ReadableChunkedChannel;->getChunkState()Lorg/restlet/engine/io/ChunkState;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 161
    :cond_0
    sget-object v7, Lorg/restlet/engine/io/ReadableChunkedChannel$1;->$SwitchMap$org$restlet$engine$io$ChunkState:[I

    invoke-virtual {p0}, Lorg/restlet/engine/io/ReadableChunkedChannel;->getChunkState()Lorg/restlet/engine/io/ChunkState;

    move-result-object v8

    invoke-virtual {v8}, Lorg/restlet/engine/io/ChunkState;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    goto :goto_0

    .line 164
    :pswitch_0
    invoke-virtual {p0}, Lorg/restlet/engine/io/ReadableChunkedChannel;->getLineBuilder()Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lorg/restlet/engine/io/ReadableChunkedChannel;->getLineBuilderState()Lorg/restlet/engine/io/BufferState;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Lorg/restlet/engine/io/Buffer;->drain(Ljava/lang/StringBuilder;Lorg/restlet/engine/io/BufferState;)Lorg/restlet/engine/io/BufferState;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/restlet/engine/io/ReadableChunkedChannel;->setLineBuilderState(Lorg/restlet/engine/io/BufferState;)V

    .line 167
    invoke-virtual {p0}, Lorg/restlet/engine/io/ReadableChunkedChannel;->getLineBuilderState()Lorg/restlet/engine/io/BufferState;

    move-result-object v7

    sget-object v8, Lorg/restlet/engine/io/BufferState;->DRAINING:Lorg/restlet/engine/io/BufferState;

    if-ne v7, v8, :cond_5

    .line 169
    invoke-virtual {p0}, Lorg/restlet/engine/io/ReadableChunkedChannel;->getLineBuilder()Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    .line 171
    .local v3, "length":I
    if-nez v3, :cond_1

    .line 172
    new-instance v7, Ljava/io/IOException;

    const-string v8, "An empty chunk size line was detected"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 176
    :cond_1
    invoke-virtual {p0}, Lorg/restlet/engine/io/ReadableChunkedChannel;->getLineBuilder()Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 177
    .local v2, "index":I
    const/4 v7, -0x1

    if-ne v2, v7, :cond_2

    invoke-virtual {p0}, Lorg/restlet/engine/io/ReadableChunkedChannel;->getLineBuilder()Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 180
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lorg/restlet/engine/io/ReadableChunkedChannel;->getLineBuilder()Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x10

    invoke-static {v7, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {p0, v7}, Lorg/restlet/engine/io/ReadableChunkedChannel;->setRemainingChunkSize(I)V

    .line 183
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v7

    sget-object v8, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 184
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v7

    sget-object v8, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "New readable chunk detected. Size: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lorg/restlet/engine/io/ReadableChunkedChannel;->remainingChunkSize:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    :cond_3
    invoke-virtual {p0}, Lorg/restlet/engine/io/ReadableChunkedChannel;->clearLineBuilder()V

    .line 196
    invoke-virtual {p0}, Lorg/restlet/engine/io/ReadableChunkedChannel;->getRemainingChunkSize()I

    move-result v7

    if-nez v7, :cond_4

    .line 197
    sget-object v7, Lorg/restlet/engine/io/ChunkState;->TRAILER:Lorg/restlet/engine/io/ChunkState;

    invoke-virtual {p0, v7}, Lorg/restlet/engine/io/ReadableChunkedChannel;->setChunkState(Lorg/restlet/engine/io/ChunkState;)V

    goto/16 :goto_0

    .line 189
    :catch_0
    move-exception v1

    .line 190
    .local v1, "ex":Ljava/lang/NumberFormatException;
    :try_start_1
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lorg/restlet/engine/io/ReadableChunkedChannel;->getLineBuilder()Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\" has an invalid chunk size"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 193
    .end local v1    # "ex":Ljava/lang/NumberFormatException;
    :catchall_0
    move-exception v7

    invoke-virtual {p0}, Lorg/restlet/engine/io/ReadableChunkedChannel;->clearLineBuilder()V

    throw v7

    .line 199
    :cond_4
    sget-object v7, Lorg/restlet/engine/io/ChunkState;->DATA:Lorg/restlet/engine/io/ChunkState;

    invoke-virtual {p0, v7}, Lorg/restlet/engine/io/ReadableChunkedChannel;->setChunkState(Lorg/restlet/engine/io/ChunkState;)V

    goto/16 :goto_0

    .line 204
    .end local v2    # "index":I
    .end local v3    # "length":I
    :cond_5
    const/4 v0, 0x0

    .line 207
    goto/16 :goto_0

    .line 210
    :pswitch_1
    const/4 v4, 0x0

    .line 211
    .local v4, "read":I
    invoke-virtual {p0}, Lorg/restlet/engine/io/ReadableChunkedChannel;->getRemainingChunkSize()I

    move-result v7

    if-lez v7, :cond_6

    .line 212
    iget v7, p0, Lorg/restlet/engine/io/ReadableChunkedChannel;->remainingChunkSize:I

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v6, v8, v9

    invoke-super {p0, p1, v7, v8}, Lorg/restlet/engine/io/ReadableBufferedChannel;->onDrain(Lorg/restlet/engine/io/Buffer;I[Ljava/lang/Object;)I

    move-result v4

    .line 214
    add-int/2addr v5, v4

    .line 216
    if-lez v4, :cond_7

    .line 217
    invoke-virtual {p0}, Lorg/restlet/engine/io/ReadableChunkedChannel;->getRemainingChunkSize()I

    move-result v7

    sub-int/2addr v7, v4

    invoke-virtual {p0, v7}, Lorg/restlet/engine/io/ReadableChunkedChannel;->setRemainingChunkSize(I)V

    .line 226
    :cond_6
    :goto_1
    invoke-virtual {p0}, Lorg/restlet/engine/io/ReadableChunkedChannel;->getRemainingChunkSize()I

    move-result v7

    if-nez v7, :cond_9

    .line 228
    invoke-virtual {p0}, Lorg/restlet/engine/io/ReadableChunkedChannel;->getLineBuilder()Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lorg/restlet/engine/io/ReadableChunkedChannel;->getLineBuilderState()Lorg/restlet/engine/io/BufferState;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Lorg/restlet/engine/io/Buffer;->drain(Ljava/lang/StringBuilder;Lorg/restlet/engine/io/BufferState;)Lorg/restlet/engine/io/BufferState;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/restlet/engine/io/ReadableChunkedChannel;->setLineBuilderState(Lorg/restlet/engine/io/BufferState;)V

    .line 231
    invoke-virtual {p0}, Lorg/restlet/engine/io/ReadableChunkedChannel;->getLineBuilderState()Lorg/restlet/engine/io/BufferState;

    move-result-object v7

    sget-object v8, Lorg/restlet/engine/io/BufferState;->DRAINING:Lorg/restlet/engine/io/BufferState;

    if-ne v7, v8, :cond_8

    .line 233
    sget-object v7, Lorg/restlet/engine/io/ChunkState;->SIZE:Lorg/restlet/engine/io/ChunkState;

    invoke-virtual {p0, v7}, Lorg/restlet/engine/io/ReadableChunkedChannel;->setChunkState(Lorg/restlet/engine/io/ChunkState;)V

    .line 234
    invoke-virtual {p0}, Lorg/restlet/engine/io/ReadableChunkedChannel;->clearLineBuilder()V

    goto/16 :goto_0

    .line 219
    :cond_7
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v7

    sget-object v8, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 220
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v7

    const-string v8, "No readable chunk data found"

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    goto :goto_1

    .line 237
    :cond_8
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 241
    :cond_9
    const/4 v0, 0x0

    .line 243
    goto/16 :goto_0

    .line 247
    .end local v4    # "read":I
    :pswitch_2
    sget-object v7, Lorg/restlet/engine/io/ChunkState;->END:Lorg/restlet/engine/io/ChunkState;

    invoke-virtual {p0, v7}, Lorg/restlet/engine/io/ReadableChunkedChannel;->setChunkState(Lorg/restlet/engine/io/ChunkState;)V

    goto/16 :goto_0

    .line 252
    :pswitch_3
    invoke-virtual {p0}, Lorg/restlet/engine/io/ReadableChunkedChannel;->getLineBuilder()Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lorg/restlet/engine/io/ReadableChunkedChannel;->getLineBuilderState()Lorg/restlet/engine/io/BufferState;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Lorg/restlet/engine/io/Buffer;->drain(Ljava/lang/StringBuilder;Lorg/restlet/engine/io/BufferState;)Lorg/restlet/engine/io/BufferState;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/restlet/engine/io/ReadableChunkedChannel;->setLineBuilderState(Lorg/restlet/engine/io/BufferState;)V

    .line 255
    invoke-virtual {p0}, Lorg/restlet/engine/io/ReadableChunkedChannel;->getLineBuilderState()Lorg/restlet/engine/io/BufferState;

    move-result-object v7

    sget-object v8, Lorg/restlet/engine/io/BufferState;->DRAINING:Lorg/restlet/engine/io/BufferState;

    if-ne v7, v8, :cond_c

    .line 256
    invoke-virtual {p0}, Lorg/restlet/engine/io/ReadableChunkedChannel;->getLineBuilder()Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-eqz v7, :cond_a

    .line 257
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v7

    sget-object v8, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v9, "The last readable chunk line had a non empty line"

    invoke-virtual {v7, v8, v9}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 262
    :cond_a
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lorg/restlet/engine/io/ReadableChunkedChannel;->setEndReached(Z)V

    .line 264
    if-gtz v5, :cond_b

    .line 265
    const/4 v5, -0x1

    .line 268
    :cond_b
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 271
    :cond_c
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 278
    :cond_d
    return v5

    .line 161
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected setChunkState(Lorg/restlet/engine/io/ChunkState;)V
    .locals 0
    .param p1, "chunkState"    # Lorg/restlet/engine/io/ChunkState;

    .prologue
    .line 288
    iput-object p1, p0, Lorg/restlet/engine/io/ReadableChunkedChannel;->chunkState:Lorg/restlet/engine/io/ChunkState;

    .line 289
    return-void
.end method

.method protected setLineBuilderState(Lorg/restlet/engine/io/BufferState;)V
    .locals 0
    .param p1, "lineBuilderState"    # Lorg/restlet/engine/io/BufferState;

    .prologue
    .line 298
    iput-object p1, p0, Lorg/restlet/engine/io/ReadableChunkedChannel;->lineBuilderState:Lorg/restlet/engine/io/BufferState;

    .line 299
    return-void
.end method

.method protected setRemainingChunkSize(I)V
    .locals 0
    .param p1, "remainingChunkSize"    # I

    .prologue
    .line 310
    iput p1, p0, Lorg/restlet/engine/io/ReadableChunkedChannel;->remainingChunkSize:I

    .line 311
    return-void
.end method

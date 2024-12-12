.class public Lorg/restlet/engine/io/Buffer;
.super Ljava/lang/Object;
.source "Buffer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/restlet/engine/io/Buffer$1;
    }
.end annotation


# instance fields
.field private final bytes:Ljava/nio/ByteBuffer;

.field private volatile fillBegin:I

.field private volatile state:Lorg/restlet/engine/io/BufferState;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "bufferSize"    # I

    .prologue
    .line 114
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/restlet/engine/io/Buffer;-><init>(IZ)V

    .line 115
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1
    .param p1, "bufferSize"    # I
    .param p2, "direct"    # Z

    .prologue
    .line 128
    invoke-static {p1, p2}, Lorg/restlet/engine/io/Buffer;->createByteBuffer(IZ)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/restlet/engine/io/Buffer;-><init>(Ljava/nio/ByteBuffer;)V

    .line 129
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 89
    sget-object v0, Lorg/restlet/engine/io/BufferState;->FILLING:Lorg/restlet/engine/io/BufferState;

    invoke-direct {p0, p1, v0}, Lorg/restlet/engine/io/Buffer;-><init>(Ljava/nio/ByteBuffer;Lorg/restlet/engine/io/BufferState;)V

    .line 90
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;Lorg/restlet/engine/io/BufferState;)V
    .locals 1
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "byteBufferState"    # Lorg/restlet/engine/io/BufferState;

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    const/4 v0, 0x0

    iput v0, p0, Lorg/restlet/engine/io/Buffer;->fillBegin:I

    .line 103
    iput-object p1, p0, Lorg/restlet/engine/io/Buffer;->bytes:Ljava/nio/ByteBuffer;

    .line 104
    iput-object p2, p0, Lorg/restlet/engine/io/Buffer;->state:Lorg/restlet/engine/io/BufferState;

    .line 105
    return-void
.end method

.method private static createByteBuffer(IZ)Ljava/nio/ByteBuffer;
    .locals 1
    .param p0, "bufferSize"    # I
    .param p1, "direct"    # Z

    .prologue
    .line 62
    const/4 v0, 0x0

    .line 64
    .local v0, "result":Ljava/nio/ByteBuffer;
    if-eqz p1, :cond_0

    .line 65
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 70
    :goto_0
    return-object v0

    .line 67
    :cond_0
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public beforeDrain()V
    .locals 1

    .prologue
    .line 136
    invoke-virtual {p0}, Lorg/restlet/engine/io/Buffer;->isFilling()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {p0}, Lorg/restlet/engine/io/Buffer;->flip()V

    .line 139
    :cond_0
    return-void
.end method

.method public beforeFill()V
    .locals 1

    .prologue
    .line 146
    invoke-virtual {p0}, Lorg/restlet/engine/io/Buffer;->isDraining()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {p0}, Lorg/restlet/engine/io/Buffer;->flip()V

    .line 149
    :cond_0
    return-void
.end method

.method public canCompact()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 157
    invoke-virtual {p0}, Lorg/restlet/engine/io/Buffer;->isFilling()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lorg/restlet/engine/io/Buffer;->fillBegin:I

    if-lez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lorg/restlet/engine/io/Buffer;->getBytes()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public canDrain()Z
    .locals 1

    .prologue
    .line 166
    invoke-virtual {p0}, Lorg/restlet/engine/io/Buffer;->isDraining()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/restlet/engine/io/Buffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canFill()Z
    .locals 1

    .prologue
    .line 175
    invoke-virtual {p0}, Lorg/restlet/engine/io/Buffer;->isFilling()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/restlet/engine/io/Buffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final capacity()I
    .locals 1

    .prologue
    .line 184
    invoke-virtual {p0}, Lorg/restlet/engine/io/Buffer;->getBytes()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 191
    const/4 v0, 0x0

    iput v0, p0, Lorg/restlet/engine/io/Buffer;->fillBegin:I

    .line 192
    iget-object v0, p0, Lorg/restlet/engine/io/Buffer;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 193
    sget-object v0, Lorg/restlet/engine/io/BufferState;->FILLING:Lorg/restlet/engine/io/BufferState;

    iput-object v0, p0, Lorg/restlet/engine/io/Buffer;->state:Lorg/restlet/engine/io/BufferState;

    .line 194
    return-void
.end method

.method public compact()V
    .locals 1

    .prologue
    .line 200
    invoke-virtual {p0}, Lorg/restlet/engine/io/Buffer;->isDraining()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    invoke-virtual {p0}, Lorg/restlet/engine/io/Buffer;->getBytes()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 202
    invoke-virtual {p0}, Lorg/restlet/engine/io/Buffer;->getBytes()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 208
    :goto_0
    return-void

    .line 204
    :cond_0
    invoke-virtual {p0}, Lorg/restlet/engine/io/Buffer;->flip()V

    .line 205
    invoke-virtual {p0}, Lorg/restlet/engine/io/Buffer;->compact()V

    .line 206
    invoke-virtual {p0}, Lorg/restlet/engine/io/Buffer;->flip()V

    goto :goto_0
.end method

.method public couldDrain()Z
    .locals 2

    .prologue
    .line 216
    invoke-virtual {p0}, Lorg/restlet/engine/io/Buffer;->isFilling()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/restlet/engine/io/Buffer;->getBytes()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iget v1, p0, Lorg/restlet/engine/io/Buffer;->fillBegin:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public couldFill()Z
    .locals 2

    .prologue
    .line 225
    invoke-virtual {p0}, Lorg/restlet/engine/io/Buffer;->isDraining()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/restlet/engine/io/Buffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/restlet/engine/io/Buffer;->getBytes()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p0}, Lorg/restlet/engine/io/Buffer;->getBytes()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    if-ge v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public drain()I
    .locals 1

    .prologue
    .line 235
    invoke-virtual {p0}, Lorg/restlet/engine/io/Buffer;->getBytes()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public drain(Ljava/nio/ByteBuffer;)I
    .locals 2
    .param p1, "targetBuffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 261
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lorg/restlet/engine/io/Buffer;->drain(Ljava/nio/ByteBuffer;J)I

    move-result v0

    return v0
.end method

.method public drain(Ljava/nio/ByteBuffer;J)I
    .locals 2
    .param p1, "targetBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "maxDrained"    # J

    .prologue
    .line 276
    invoke-virtual {p0}, Lorg/restlet/engine/io/Buffer;->getBytes()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lorg/restlet/engine/io/NioUtils;->copy(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;J)I

    move-result v0

    return v0
.end method

.method public drain(Ljava/nio/channels/WritableByteChannel;)I
    .locals 1
    .param p1, "wbc"    # Ljava/nio/channels/WritableByteChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 341
    invoke-virtual {p0}, Lorg/restlet/engine/io/Buffer;->getBytes()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method public drain(Ljava/lang/StringBuilder;Lorg/restlet/engine/io/BufferState;)Lorg/restlet/engine/io/BufferState;
    .locals 4
    .param p1, "lineBuilder"    # Ljava/lang/StringBuilder;
    .param p2, "builderState"    # Lorg/restlet/engine/io/BufferState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 293
    sget-object v1, Lorg/restlet/engine/io/BufferState;->IDLE:Lorg/restlet/engine/io/BufferState;

    if-ne p2, v1, :cond_0

    .line 294
    sget-object p2, Lorg/restlet/engine/io/BufferState;->FILLING:Lorg/restlet/engine/io/BufferState;

    .line 298
    :cond_0
    :goto_0
    sget-object v1, Lorg/restlet/engine/io/BufferState;->DRAINING:Lorg/restlet/engine/io/BufferState;

    if-eq p2, v1, :cond_3

    invoke-virtual {p0}, Lorg/restlet/engine/io/Buffer;->getBytes()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 299
    invoke-virtual {p0}, Lorg/restlet/engine/io/Buffer;->getBytes()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 301
    .local v0, "next":I
    sget-object v1, Lorg/restlet/engine/io/Buffer$1;->$SwitchMap$org$restlet$engine$io$BufferState:[I

    invoke-virtual {p2}, Lorg/restlet/engine/io/BufferState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 303
    :pswitch_0
    invoke-static {v0}, Lorg/restlet/engine/header/HeaderUtils;->isCarriageReturn(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 304
    sget-object p2, Lorg/restlet/engine/io/BufferState;->FILLED:Lorg/restlet/engine/io/BufferState;

    goto :goto_0

    .line 306
    :cond_1
    int-to-char v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 312
    :pswitch_1
    invoke-static {v0}, Lorg/restlet/engine/header/HeaderUtils;->isLineFeed(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 313
    sget-object p2, Lorg/restlet/engine/io/BufferState;->DRAINING:Lorg/restlet/engine/io/BufferState;

    goto :goto_0

    .line 315
    :cond_2
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing line feed character at the end of the line. Found character \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    int-to-char v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") instead"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 328
    .end local v0    # "next":I
    :cond_3
    return-object p2

    .line 301
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public drain([BII)V
    .locals 1
    .param p1, "targetArray"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 249
    invoke-virtual {p0}, Lorg/restlet/engine/io/Buffer;->getBytes()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 250
    return-void
.end method

.method public fill(Ljava/nio/ByteBuffer;)I
    .locals 2
    .param p1, "sourceBuffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 364
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lorg/restlet/engine/io/Buffer;->fill(Ljava/nio/ByteBuffer;J)I

    move-result v0

    return v0
.end method

.method public fill(Ljava/nio/ByteBuffer;J)I
    .locals 2
    .param p1, "sourceBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "maxFilled"    # J

    .prologue
    .line 379
    invoke-virtual {p0}, Lorg/restlet/engine/io/Buffer;->getBytes()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {p1, v0, p2, p3}, Lorg/restlet/engine/io/NioUtils;->copy(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;J)I

    move-result v0

    return v0
.end method

.method public fill(Ljava/nio/channels/ReadableByteChannel;)I
    .locals 2
    .param p1, "sourceChannel"    # Ljava/nio/channels/ReadableByteChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 392
    const/4 v0, 0x0

    .line 394
    .local v0, "result":I
    invoke-interface {p1}, Ljava/nio/channels/ReadableByteChannel;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 395
    invoke-virtual {p0}, Lorg/restlet/engine/io/Buffer;->getBytes()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 398
    :cond_0
    return v0
.end method

.method public fill(Ljava/lang/String;)V
    .locals 1
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    .line 409
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/restlet/engine/io/Buffer;->fill([B)V

    .line 410
    return-void
.end method

.method public fill([B)V
    .locals 1
    .param p1, "sourceBuffer"    # [B

    .prologue
    .line 352
    invoke-virtual {p0}, Lorg/restlet/engine/io/Buffer;->getBytes()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 353
    return-void
.end method

.method public flip()V
    .locals 2

    .prologue
    .line 416
    invoke-virtual {p0}, Lorg/restlet/engine/io/Buffer;->isFilling()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 417
    sget-object v0, Lorg/restlet/engine/io/BufferState;->DRAINING:Lorg/restlet/engine/io/BufferState;

    invoke-virtual {p0, v0}, Lorg/restlet/engine/io/Buffer;->setState(Lorg/restlet/engine/io/BufferState;)V

    .line 418
    invoke-virtual {p0}, Lorg/restlet/engine/io/Buffer;->getBytes()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/restlet/engine/io/Buffer;->getBytes()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 419
    invoke-virtual {p0}, Lorg/restlet/engine/io/Buffer;->getBytes()Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lorg/restlet/engine/io/Buffer;->fillBegin:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 420
    const/4 v0, 0x0

    iput v0, p0, Lorg/restlet/engine/io/Buffer;->fillBegin:I

    .line 431
    :cond_0
    :goto_0
    return-void

    .line 421
    :cond_1
    invoke-virtual {p0}, Lorg/restlet/engine/io/Buffer;->isDraining()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 422
    invoke-virtual {p0}, Lorg/restlet/engine/io/Buffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 423
    sget-object v0, Lorg/restlet/engine/io/BufferState;->FILLING:Lorg/restlet/engine/io/BufferState;

    invoke-virtual {p0, v0}, Lorg/restlet/engine/io/Buffer;->setState(Lorg/restlet/engine/io/BufferState;)V

    .line 424
    invoke-virtual {p0}, Lorg/restlet/engine/io/Buffer;->getBytes()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iput v0, p0, Lorg/restlet/engine/io/Buffer;->fillBegin:I

    .line 425
    invoke-virtual {p0}, Lorg/restlet/engine/io/Buffer;->getBytes()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/restlet/engine/io/Buffer;->getBytes()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 426
    invoke-virtual {p0}, Lorg/restlet/engine/io/Buffer;->getBytes()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/restlet/engine/io/Buffer;->getBytes()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    goto :goto_0

    .line 428
    :cond_2
    invoke-virtual {p0}, Lorg/restlet/engine/io/Buffer;->clear()V

    goto :goto_0
.end method

.method public getBytes()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lorg/restlet/engine/io/Buffer;->bytes:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getLock()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lorg/restlet/engine/io/Buffer;->bytes:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getState()Lorg/restlet/engine/io/BufferState;
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lorg/restlet/engine/io/Buffer;->state:Lorg/restlet/engine/io/BufferState;

    return-object v0
.end method

.method public final hasRemaining()Z
    .locals 1

    .prologue
    .line 467
    invoke-virtual {p0}, Lorg/restlet/engine/io/Buffer;->getBytes()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    return v0
.end method

.method public isDraining()Z
    .locals 2

    .prologue
    .line 477
    invoke-virtual {p0}, Lorg/restlet/engine/io/Buffer;->getState()Lorg/restlet/engine/io/BufferState;

    move-result-object v0

    sget-object v1, Lorg/restlet/engine/io/BufferState;->DRAINING:Lorg/restlet/engine/io/BufferState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 487
    invoke-virtual {p0}, Lorg/restlet/engine/io/Buffer;->isFilling()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lorg/restlet/engine/io/Buffer;->capacity()I

    move-result v2

    invoke-virtual {p0}, Lorg/restlet/engine/io/Buffer;->remaining()I

    move-result v3

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lorg/restlet/engine/io/Buffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public isFilling()Z
    .locals 2

    .prologue
    .line 497
    invoke-virtual {p0}, Lorg/restlet/engine/io/Buffer;->getState()Lorg/restlet/engine/io/BufferState;

    move-result-object v0

    sget-object v1, Lorg/restlet/engine/io/BufferState;->FILLING:Lorg/restlet/engine/io/BufferState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public varargs process(Lorg/restlet/engine/io/BufferProcessor;I[Ljava/lang/Object;)I
    .locals 14
    .param p1, "processor"    # Lorg/restlet/engine/io/BufferProcessor;
    .param p2, "maxDrained"    # I
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 518
    const/4 v6, 0x0

    .line 520
    .local v6, "result":I
    invoke-virtual {p0}, Lorg/restlet/engine/io/Buffer;->getLock()Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    .line 521
    const/4 v7, 0x0

    .line 522
    .local v7, "totalFilled":I
    const/4 v1, 0x0

    .line 523
    .local v1, "drained":I
    const/4 v3, 0x0

    .line 524
    .local v3, "filled":I
    const/4 v4, 0x0

    .line 525
    .local v4, "lastDrainFailed":Z
    const/4 v5, 0x0

    .line 526
    .local v5, "lastFillFailed":Z
    const/4 v2, 0x0

    .line 527
    .local v2, "fillEnded":Z
    const/4 v8, 0x1

    .line 529
    .local v8, "tryAgain":Z
    :try_start_0
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v9

    sget-object v11, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v9, v11}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 530
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v9

    sget-object v11, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Beginning process of buffer "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v11, v12}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 536
    :cond_0
    invoke-interface/range {p1 .. p3}, Lorg/restlet/engine/io/BufferProcessor;->preProcess(I[Ljava/lang/Object;)I

    move-result v9

    add-int/2addr v6, v9

    .line 538
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v9

    sget-object v11, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v9, v11}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 539
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v9

    sget-object v11, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " bytes drained from buffer at pre-processing, "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p0}, Lorg/restlet/engine/io/Buffer;->remaining()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " remaining bytes"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v11, v12}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 546
    :cond_1
    :goto_0
    if-eqz v8, :cond_10

    move-object/from16 v0, p3

    invoke-interface {p1, p0, v0}, Lorg/restlet/engine/io/BufferProcessor;->canLoop(Lorg/restlet/engine/io/Buffer;[Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 547
    invoke-virtual {p0}, Lorg/restlet/engine/io/Buffer;->isDraining()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 548
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v9

    sget-object v11, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v9, v11}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 549
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v9

    sget-object v11, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Draining buffer "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v11, v12}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 553
    :cond_2
    const/4 v1, 0x0

    .line 555
    invoke-virtual {p0}, Lorg/restlet/engine/io/Buffer;->hasRemaining()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 556
    if-gtz p2, :cond_4

    .line 557
    const/4 v9, 0x0

    move-object/from16 v0, p3

    invoke-interface {p1, p0, v9, v0}, Lorg/restlet/engine/io/BufferProcessor;->onDrain(Lorg/restlet/engine/io/Buffer;I[Ljava/lang/Object;)I

    move-result v1

    .line 564
    :cond_3
    :goto_1
    if-lez v1, :cond_5

    .line 566
    add-int/2addr v6, v1

    .line 567
    const/4 v4, 0x0

    .line 568
    const/4 v5, 0x0

    .line 570
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v9

    sget-object v11, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v9, v11}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 571
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v9

    sget-object v11, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " bytes drained from buffer, "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p0}, Lorg/restlet/engine/io/Buffer;->remaining()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " remaining bytes"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v11, v12}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 652
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .line 558
    :cond_4
    move/from16 v0, p2

    if-le v0, v6, :cond_3

    .line 559
    sub-int v9, p2, v6

    :try_start_1
    move-object/from16 v0, p3

    invoke-interface {p1, p0, v9, v0}, Lorg/restlet/engine/io/BufferProcessor;->onDrain(Lorg/restlet/engine/io/Buffer;I[Ljava/lang/Object;)I

    move-result v1

    goto :goto_1

    .line 577
    :cond_5
    if-nez v5, :cond_8

    .line 578
    invoke-virtual {p0}, Lorg/restlet/engine/io/Buffer;->couldFill()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 580
    invoke-virtual {p0}, Lorg/restlet/engine/io/Buffer;->beforeFill()V

    .line 590
    :goto_2
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 581
    :cond_6
    invoke-virtual {p0}, Lorg/restlet/engine/io/Buffer;->canCompact()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 582
    invoke-virtual {p0}, Lorg/restlet/engine/io/Buffer;->compact()V

    goto :goto_2

    .line 584
    :cond_7
    const/4 v8, 0x0

    goto :goto_2

    .line 587
    :cond_8
    const/4 v8, 0x0

    goto :goto_2

    .line 592
    :cond_9
    invoke-virtual {p0}, Lorg/restlet/engine/io/Buffer;->isFilling()Z

    move-result v9

    if-eqz v9, :cond_f

    .line 593
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v9

    sget-object v11, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v9, v11}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 594
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v9

    sget-object v11, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Filling buffer "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v11, v12}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 598
    :cond_a
    const/4 v3, 0x0

    .line 600
    invoke-virtual {p0}, Lorg/restlet/engine/io/Buffer;->hasRemaining()Z

    move-result v9

    if-eqz v9, :cond_b

    move-object/from16 v0, p3

    invoke-interface {p1, p0, v0}, Lorg/restlet/engine/io/BufferProcessor;->couldFill(Lorg/restlet/engine/io/Buffer;[Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 601
    move-object/from16 v0, p3

    invoke-interface {p1, p0, v0}, Lorg/restlet/engine/io/BufferProcessor;->onFill(Lorg/restlet/engine/io/Buffer;[Ljava/lang/Object;)I

    move-result v3

    .line 604
    :cond_b
    if-lez v3, :cond_c

    .line 606
    add-int/2addr v7, v3

    .line 607
    const/4 v4, 0x0

    .line 608
    const/4 v5, 0x0

    .line 610
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v9

    sget-object v11, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v9, v11}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 611
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v9

    sget-object v11, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " bytes filled into buffer"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v11, v12}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 615
    :cond_c
    if-nez v4, :cond_e

    invoke-virtual {p0}, Lorg/restlet/engine/io/Buffer;->couldDrain()Z

    move-result v9

    if-eqz v9, :cond_e

    .line 617
    invoke-virtual {p0}, Lorg/restlet/engine/io/Buffer;->beforeDrain()V

    .line 622
    :goto_3
    const/4 v9, -0x1

    if-ne v3, v9, :cond_d

    .line 623
    const/4 v2, 0x1

    .line 624
    invoke-interface {p1}, Lorg/restlet/engine/io/BufferProcessor;->onFillEof()V

    .line 627
    :cond_d
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 619
    :cond_e
    const/4 v8, 0x0

    goto :goto_3

    .line 631
    :cond_f
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 635
    :cond_10
    if-nez v6, :cond_12

    move-object/from16 v0, p3

    invoke-interface {p1, p0, v0}, Lorg/restlet/engine/io/BufferProcessor;->couldFill(Lorg/restlet/engine/io/Buffer;[Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11

    if-eqz v2, :cond_12

    .line 638
    :cond_11
    const/4 v6, -0x1

    .line 641
    :cond_12
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v9

    sget-object v11, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v9, v11}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v9

    if-eqz v9, :cond_13

    .line 642
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v9

    sget-object v11, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Ending process of buffer "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ". Result: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", try again: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", can loop: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-interface {p1, p0, v0}, Lorg/restlet/engine/io/BufferProcessor;->canLoop(Lorg/restlet/engine/io/Buffer;[Ljava/lang/Object;)Z

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", total filled: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v11, v12}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 651
    :cond_13
    invoke-interface {p1, v6}, Lorg/restlet/engine/io/BufferProcessor;->postProcess(I)V

    .line 652
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 654
    return v6
.end method

.method public final remaining()I
    .locals 1

    .prologue
    .line 664
    invoke-virtual {p0}, Lorg/restlet/engine/io/Buffer;->getBytes()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    return v0
.end method

.method public setState(Lorg/restlet/engine/io/BufferState;)V
    .locals 0
    .param p1, "byteBufferState"    # Lorg/restlet/engine/io/BufferState;

    .prologue
    .line 674
    iput-object p1, p0, Lorg/restlet/engine/io/Buffer;->state:Lorg/restlet/engine/io/BufferState;

    .line 675
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 679
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/restlet/engine/io/Buffer;->getBytes()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/restlet/engine/io/Buffer;->getState()Lorg/restlet/engine/io/BufferState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/restlet/engine/io/Buffer;->isEmpty()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

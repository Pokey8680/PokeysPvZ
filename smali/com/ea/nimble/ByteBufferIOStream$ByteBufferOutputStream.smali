.class public Lcom/ea/nimble/ByteBufferIOStream$ByteBufferOutputStream;
.super Ljava/io/OutputStream;
.source "ByteBufferIOStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ea/nimble/ByteBufferIOStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ByteBufferOutputStream"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/ByteBufferIOStream;


# direct methods
.method protected constructor <init>(Lcom/ea/nimble/ByteBufferIOStream;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ea/nimble/ByteBufferIOStream;

    .prologue
    .line 280
    iput-object p1, p0, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferOutputStream;->this$0:Lcom/ea/nimble/ByteBufferIOStream;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 286
    iget-object v0, p0, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferOutputStream;->this$0:Lcom/ea/nimble/ByteBufferIOStream;

    invoke-virtual {v0}, Lcom/ea/nimble/ByteBufferIOStream;->closeIOStream()V

    .line 287
    return-void
.end method

.method public write(I)V
    .locals 3
    .param p1, "oneByte"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 358
    iget-object v0, p0, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferOutputStream;->this$0:Lcom/ea/nimble/ByteBufferIOStream;

    iget-boolean v0, v0, Lcom/ea/nimble/ByteBufferIOStream;->m_closed:Z

    if-eqz v0, :cond_0

    .line 360
    new-instance v0, Ljava/io/IOException;

    const-string v1, "ByteBufferIOStream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferOutputStream;->this$0:Lcom/ea/nimble/ByteBufferIOStream;

    iget-object v0, v0, Lcom/ea/nimble/ByteBufferIOStream;->m_buffer:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iget-object v1, p0, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferOutputStream;->this$0:Lcom/ea/nimble/ByteBufferIOStream;

    iget v1, v1, Lcom/ea/nimble/ByteBufferIOStream;->m_writePosition:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 363
    iget-object v0, p0, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferOutputStream;->this$0:Lcom/ea/nimble/ByteBufferIOStream;

    iget v1, v0, Lcom/ea/nimble/ByteBufferIOStream;->m_writePosition:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/ea/nimble/ByteBufferIOStream;->m_writePosition:I

    .line 364
    iget-object v0, p0, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferOutputStream;->this$0:Lcom/ea/nimble/ByteBufferIOStream;

    iget v0, v0, Lcom/ea/nimble/ByteBufferIOStream;->m_writePosition:I

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_1

    .line 366
    iget-object v0, p0, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferOutputStream;->this$0:Lcom/ea/nimble/ByteBufferIOStream;

    const/4 v1, 0x0

    iput v1, v0, Lcom/ea/nimble/ByteBufferIOStream;->m_writePosition:I

    .line 367
    iget-object v0, p0, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferOutputStream;->this$0:Lcom/ea/nimble/ByteBufferIOStream;

    iget v1, v0, Lcom/ea/nimble/ByteBufferIOStream;->m_availableSegment:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/ea/nimble/ByteBufferIOStream;->m_availableSegment:I

    .line 369
    :cond_1
    return-void
.end method

.method public write([B)V
    .locals 2
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 352
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferOutputStream;->write([BII)V

    .line 353
    return-void
.end method

.method public write([BII)V
    .locals 8
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x1000

    const/4 v6, 0x0

    .line 292
    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    add-int v4, p2, p3

    array-length v5, p1

    if-le v4, v5, :cond_1

    .line 294
    :cond_0
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    const-string v5, "The writing range is out of buffer boundary."

    invoke-direct {v4, v5}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 297
    :cond_1
    iget-object v4, p0, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferOutputStream;->this$0:Lcom/ea/nimble/ByteBufferIOStream;

    iget-boolean v4, v4, Lcom/ea/nimble/ByteBufferIOStream;->m_closed:Z

    if-eqz v4, :cond_2

    .line 299
    new-instance v4, Ljava/io/IOException;

    const-string v5, "ByteBufferIOStream is closed"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 302
    :cond_2
    iget-object v4, p0, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferOutputStream;->this$0:Lcom/ea/nimble/ByteBufferIOStream;

    iget v4, v4, Lcom/ea/nimble/ByteBufferIOStream;->m_writePosition:I

    rsub-int v3, v4, 0x1000

    .line 303
    .local v3, "space":I
    iget-object v4, p0, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferOutputStream;->this$0:Lcom/ea/nimble/ByteBufferIOStream;

    iget-object v4, v4, Lcom/ea/nimble/ByteBufferIOStream;->m_buffer:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 304
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<[B>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferOutputStream;->this$0:Lcom/ea/nimble/ByteBufferIOStream;

    iget v4, v4, Lcom/ea/nimble/ByteBufferIOStream;->m_availableSegment:I

    if-ge v1, v4, :cond_3

    .line 306
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 304
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 309
    :cond_3
    if-ge p3, v3, :cond_5

    .line 311
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferOutputStream;->this$0:Lcom/ea/nimble/ByteBufferIOStream;

    iget v5, v5, Lcom/ea/nimble/ByteBufferIOStream;->m_writePosition:I

    invoke-static {p1, p2, v4, v5, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 312
    iget-object v4, p0, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferOutputStream;->this$0:Lcom/ea/nimble/ByteBufferIOStream;

    iget v5, v4, Lcom/ea/nimble/ByteBufferIOStream;->m_writePosition:I

    add-int/2addr v5, p3

    iput v5, v4, Lcom/ea/nimble/ByteBufferIOStream;->m_writePosition:I

    .line 348
    :cond_4
    return-void

    .line 316
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferOutputStream;->this$0:Lcom/ea/nimble/ByteBufferIOStream;

    iget v5, v5, Lcom/ea/nimble/ByteBufferIOStream;->m_writePosition:I

    invoke-static {p1, p2, v4, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 317
    sub-int/2addr p3, v3

    .line 318
    add-int/2addr p2, v3

    .line 319
    iget-object v4, p0, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferOutputStream;->this$0:Lcom/ea/nimble/ByteBufferIOStream;

    iget v5, v4, Lcom/ea/nimble/ByteBufferIOStream;->m_availableSegment:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/ea/nimble/ByteBufferIOStream;->m_availableSegment:I

    .line 320
    iget-object v4, p0, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferOutputStream;->this$0:Lcom/ea/nimble/ByteBufferIOStream;

    iput v6, v4, Lcom/ea/nimble/ByteBufferIOStream;->m_writePosition:I

    .line 321
    :goto_1
    if-lez p3, :cond_4

    .line 324
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 326
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 334
    .local v0, "current":[B
    :goto_2
    if-ge p3, v7, :cond_7

    .line 336
    invoke-static {p1, p2, v0, v6, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 337
    iget-object v4, p0, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferOutputStream;->this$0:Lcom/ea/nimble/ByteBufferIOStream;

    iput p3, v4, Lcom/ea/nimble/ByteBufferIOStream;->m_writePosition:I

    .line 338
    const/4 p3, 0x0

    goto :goto_1

    .line 330
    .end local v0    # "current":[B
    :cond_6
    new-array v0, v7, [B

    .line 331
    .restart local v0    # "current":[B
    iget-object v4, p0, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferOutputStream;->this$0:Lcom/ea/nimble/ByteBufferIOStream;

    iget-object v4, v4, Lcom/ea/nimble/ByteBufferIOStream;->m_buffer:Ljava/util/LinkedList;

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 342
    :cond_7
    invoke-static {p1, p2, v0, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 343
    add-int/lit16 p3, p3, -0x1000

    .line 344
    add-int/lit16 p2, p2, 0x1000

    .line 345
    iget-object v4, p0, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferOutputStream;->this$0:Lcom/ea/nimble/ByteBufferIOStream;

    iget v5, v4, Lcom/ea/nimble/ByteBufferIOStream;->m_availableSegment:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/ea/nimble/ByteBufferIOStream;->m_availableSegment:I

    goto :goto_1
.end method

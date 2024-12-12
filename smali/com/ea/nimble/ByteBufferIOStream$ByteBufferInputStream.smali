.class public Lcom/ea/nimble/ByteBufferIOStream$ByteBufferInputStream;
.super Ljava/io/InputStream;
.source "ByteBufferIOStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ea/nimble/ByteBufferIOStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ByteBufferInputStream"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/ByteBufferIOStream;


# direct methods
.method protected constructor <init>(Lcom/ea/nimble/ByteBufferIOStream;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ea/nimble/ByteBufferIOStream;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferInputStream;->this$0:Lcom/ea/nimble/ByteBufferIOStream;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferInputStream;->this$0:Lcom/ea/nimble/ByteBufferIOStream;

    iget-boolean v0, v0, Lcom/ea/nimble/ByteBufferIOStream;->m_closed:Z

    if-eqz v0, :cond_0

    .line 148
    new-instance v0, Ljava/io/IOException;

    const-string v1, "ByteBufferIOStream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferInputStream;->this$0:Lcom/ea/nimble/ByteBufferIOStream;

    iget v0, v0, Lcom/ea/nimble/ByteBufferIOStream;->m_availableSegment:I

    mul-int/lit16 v0, v0, 0x1000

    iget-object v1, p0, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferInputStream;->this$0:Lcom/ea/nimble/ByteBufferIOStream;

    iget v1, v1, Lcom/ea/nimble/ByteBufferIOStream;->m_writePosition:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferInputStream;->this$0:Lcom/ea/nimble/ByteBufferIOStream;

    iget v1, v1, Lcom/ea/nimble/ByteBufferIOStream;->m_readPosition:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 157
    iget-object v0, p0, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferInputStream;->this$0:Lcom/ea/nimble/ByteBufferIOStream;

    invoke-virtual {v0}, Lcom/ea/nimble/ByteBufferIOStream;->closeIOStream()V

    .line 158
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferInputStream;->available()I

    move-result v0

    .line 176
    .local v0, "available":I
    if-gtz v0, :cond_0

    .line 178
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Nothing to read in ByteBufferIOStream"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 181
    :cond_0
    iget-object v2, p0, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferInputStream;->this$0:Lcom/ea/nimble/ByteBufferIOStream;

    iget-object v2, v2, Lcom/ea/nimble/ByteBufferIOStream;->m_buffer:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    iget-object v3, p0, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferInputStream;->this$0:Lcom/ea/nimble/ByteBufferIOStream;

    iget v3, v3, Lcom/ea/nimble/ByteBufferIOStream;->m_readPosition:I

    aget-byte v1, v2, v3

    .line 182
    .local v1, "result":I
    iget-object v2, p0, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferInputStream;->this$0:Lcom/ea/nimble/ByteBufferIOStream;

    iget v3, v2, Lcom/ea/nimble/ByteBufferIOStream;->m_readPosition:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/ea/nimble/ByteBufferIOStream;->m_readPosition:I

    .line 183
    iget-object v2, p0, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferInputStream;->this$0:Lcom/ea/nimble/ByteBufferIOStream;

    iget v2, v2, Lcom/ea/nimble/ByteBufferIOStream;->m_readPosition:I

    const/16 v3, 0x1000

    if-lt v2, v3, :cond_1

    .line 185
    iget-object v2, p0, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferInputStream;->this$0:Lcom/ea/nimble/ByteBufferIOStream;

    iget-object v2, v2, Lcom/ea/nimble/ByteBufferIOStream;->m_buffer:Ljava/util/LinkedList;

    iget-object v3, p0, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferInputStream;->this$0:Lcom/ea/nimble/ByteBufferIOStream;

    iget-object v3, v3, Lcom/ea/nimble/ByteBufferIOStream;->m_buffer:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 186
    iget-object v2, p0, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferInputStream;->this$0:Lcom/ea/nimble/ByteBufferIOStream;

    const/4 v3, 0x0

    iput v3, v2, Lcom/ea/nimble/ByteBufferIOStream;->m_readPosition:I

    .line 187
    iget-object v2, p0, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferInputStream;->this$0:Lcom/ea/nimble/ByteBufferIOStream;

    iget v3, v2, Lcom/ea/nimble/ByteBufferIOStream;->m_availableSegment:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lcom/ea/nimble/ByteBufferIOStream;->m_availableSegment:I

    .line 189
    :cond_1
    return v1
.end method

.method public read([B)I
    .locals 2
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 169
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 8
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 195
    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    add-int v5, p2, p3

    array-length v6, p1

    if-le v5, v6, :cond_1

    .line 197
    :cond_0
    new-instance v5, Ljava/lang/IndexOutOfBoundsException;

    const-string v6, "The reading range of out of buffer boundary."

    invoke-direct {v5, v6}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 199
    :cond_1
    invoke-virtual {p0}, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferInputStream;->available()I

    move-result v0

    .line 200
    .local v0, "available":I
    if-gtz v0, :cond_2

    .line 202
    const/4 v5, -0x1

    .line 237
    :goto_0
    return v5

    .line 205
    :cond_2
    if-le p3, v0, :cond_3

    .line 207
    move p3, v0

    .line 209
    :cond_3
    move v3, p3

    .line 210
    .local v3, "remain":I
    iget-object v5, p0, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferInputStream;->this$0:Lcom/ea/nimble/ByteBufferIOStream;

    iget v5, v5, Lcom/ea/nimble/ByteBufferIOStream;->m_readPosition:I

    rsub-int v1, v5, 0x1000

    .line 211
    .local v1, "availableInFirstSegment":I
    if-ge v3, v1, :cond_4

    .line 214
    iget-object v5, p0, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferInputStream;->this$0:Lcom/ea/nimble/ByteBufferIOStream;

    iget-object v5, v5, Lcom/ea/nimble/ByteBufferIOStream;->m_buffer:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v5

    iget-object v6, p0, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferInputStream;->this$0:Lcom/ea/nimble/ByteBufferIOStream;

    iget v6, v6, Lcom/ea/nimble/ByteBufferIOStream;->m_readPosition:I

    invoke-static {v5, v6, p1, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 215
    iget-object v5, p0, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferInputStream;->this$0:Lcom/ea/nimble/ByteBufferIOStream;

    iget v6, v5, Lcom/ea/nimble/ByteBufferIOStream;->m_readPosition:I

    add-int/2addr v6, v3

    iput v6, v5, Lcom/ea/nimble/ByteBufferIOStream;->m_readPosition:I

    :goto_1
    move v5, p3

    .line 237
    goto :goto_0

    .line 220
    :cond_4
    iget-object v5, p0, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferInputStream;->this$0:Lcom/ea/nimble/ByteBufferIOStream;

    iget-object v5, v5, Lcom/ea/nimble/ByteBufferIOStream;->m_buffer:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v5

    iget-object v6, p0, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferInputStream;->this$0:Lcom/ea/nimble/ByteBufferIOStream;

    iget v6, v6, Lcom/ea/nimble/ByteBufferIOStream;->m_readPosition:I

    invoke-static {v5, v6, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 221
    iget-object v5, p0, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferInputStream;->this$0:Lcom/ea/nimble/ByteBufferIOStream;

    iget-object v5, v5, Lcom/ea/nimble/ByteBufferIOStream;->m_buffer:Ljava/util/LinkedList;

    iget-object v6, p0, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferInputStream;->this$0:Lcom/ea/nimble/ByteBufferIOStream;

    iget-object v6, v6, Lcom/ea/nimble/ByteBufferIOStream;->m_buffer:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 222
    sub-int/2addr v3, v1

    .line 223
    add-int/2addr p2, v1

    .line 224
    div-int/lit16 v4, v3, 0x1000

    .line 225
    .local v4, "segments":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v4, :cond_5

    .line 227
    iget-object v5, p0, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferInputStream;->this$0:Lcom/ea/nimble/ByteBufferIOStream;

    iget-object v5, v5, Lcom/ea/nimble/ByteBufferIOStream;->m_buffer:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v5

    const/16 v6, 0x1000

    invoke-static {v5, v7, p1, p2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 228
    iget-object v5, p0, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferInputStream;->this$0:Lcom/ea/nimble/ByteBufferIOStream;

    iget-object v5, v5, Lcom/ea/nimble/ByteBufferIOStream;->m_buffer:Ljava/util/LinkedList;

    iget-object v6, p0, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferInputStream;->this$0:Lcom/ea/nimble/ByteBufferIOStream;

    iget-object v6, v6, Lcom/ea/nimble/ByteBufferIOStream;->m_buffer:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 229
    add-int/lit16 v3, v3, -0x1000

    .line 230
    add-int/lit16 p2, p2, 0x1000

    .line 225
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 232
    :cond_5
    iget-object v5, p0, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferInputStream;->this$0:Lcom/ea/nimble/ByteBufferIOStream;

    iget-object v5, v5, Lcom/ea/nimble/ByteBufferIOStream;->m_buffer:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v7, p1, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 233
    iget-object v5, p0, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferInputStream;->this$0:Lcom/ea/nimble/ByteBufferIOStream;

    iput v3, v5, Lcom/ea/nimble/ByteBufferIOStream;->m_readPosition:I

    .line 234
    iget-object v5, p0, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferInputStream;->this$0:Lcom/ea/nimble/ByteBufferIOStream;

    iget v6, v5, Lcom/ea/nimble/ByteBufferIOStream;->m_availableSegment:I

    add-int/lit8 v4, v4, 0x1

    sub-int/2addr v6, v4

    iput v6, v5, Lcom/ea/nimble/ByteBufferIOStream;->m_availableSegment:I

    goto :goto_1
.end method

.method public skip(J)J
    .locals 9
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 244
    invoke-virtual {p0}, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferInputStream;->available()I

    move-result v0

    .line 245
    .local v0, "available":I
    if-gtz v0, :cond_0

    .line 247
    const-wide/16 v6, 0x0

    .line 276
    :goto_0
    return-wide v6

    .line 250
    :cond_0
    int-to-long v6, v0

    cmp-long v5, p1, v6

    if-lez v5, :cond_1

    .line 252
    int-to-long p1, v0

    .line 254
    :cond_1
    long-to-int v3, p1

    .line 255
    .local v3, "remain":I
    iget-object v5, p0, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferInputStream;->this$0:Lcom/ea/nimble/ByteBufferIOStream;

    iget v5, v5, Lcom/ea/nimble/ByteBufferIOStream;->m_readPosition:I

    rsub-int v1, v5, 0x1000

    .line 256
    .local v1, "availableInFirstSegment":I
    if-ge v3, v1, :cond_2

    .line 259
    iget-object v5, p0, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferInputStream;->this$0:Lcom/ea/nimble/ByteBufferIOStream;

    iget v6, v5, Lcom/ea/nimble/ByteBufferIOStream;->m_readPosition:I

    add-int/2addr v6, v3

    iput v6, v5, Lcom/ea/nimble/ByteBufferIOStream;->m_readPosition:I

    :goto_1
    move-wide v6, p1

    .line 276
    goto :goto_0

    .line 264
    :cond_2
    iget-object v5, p0, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferInputStream;->this$0:Lcom/ea/nimble/ByteBufferIOStream;

    iget-object v5, v5, Lcom/ea/nimble/ByteBufferIOStream;->m_buffer:Ljava/util/LinkedList;

    iget-object v6, p0, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferInputStream;->this$0:Lcom/ea/nimble/ByteBufferIOStream;

    iget-object v6, v6, Lcom/ea/nimble/ByteBufferIOStream;->m_buffer:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 265
    sub-int/2addr v3, v1

    .line 266
    div-int/lit16 v4, v3, 0x1000

    .line 267
    .local v4, "segments":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v4, :cond_3

    .line 269
    iget-object v5, p0, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferInputStream;->this$0:Lcom/ea/nimble/ByteBufferIOStream;

    iget-object v5, v5, Lcom/ea/nimble/ByteBufferIOStream;->m_buffer:Ljava/util/LinkedList;

    iget-object v6, p0, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferInputStream;->this$0:Lcom/ea/nimble/ByteBufferIOStream;

    iget-object v6, v6, Lcom/ea/nimble/ByteBufferIOStream;->m_buffer:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 270
    add-int/lit16 v3, v3, -0x1000

    .line 267
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 272
    :cond_3
    iget-object v5, p0, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferInputStream;->this$0:Lcom/ea/nimble/ByteBufferIOStream;

    iput v3, v5, Lcom/ea/nimble/ByteBufferIOStream;->m_readPosition:I

    .line 273
    iget-object v5, p0, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferInputStream;->this$0:Lcom/ea/nimble/ByteBufferIOStream;

    iget v6, v5, Lcom/ea/nimble/ByteBufferIOStream;->m_availableSegment:I

    add-int/lit8 v4, v4, 0x1

    sub-int/2addr v6, v4

    iput v6, v5, Lcom/ea/nimble/ByteBufferIOStream;->m_availableSegment:I

    goto :goto_1
.end method

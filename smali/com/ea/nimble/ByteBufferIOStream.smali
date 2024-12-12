.class public Lcom/ea/nimble/ByteBufferIOStream;
.super Ljava/lang/Object;
.source "ByteBufferIOStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ea/nimble/ByteBufferIOStream$ByteBufferOutputStream;,
        Lcom/ea/nimble/ByteBufferIOStream$ByteBufferInputStream;
    }
.end annotation


# static fields
.field protected static final SEGMENT_SIZE:I = 0x1000


# instance fields
.field protected m_availableSegment:I

.field protected m_buffer:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<[B>;"
        }
    .end annotation
.end field

.field protected m_closed:Z

.field protected m_input:Lcom/ea/nimble/ByteBufferIOStream$ByteBufferInputStream;

.field protected m_output:Lcom/ea/nimble/ByteBufferIOStream$ByteBufferOutputStream;

.field protected m_readPosition:I

.field protected m_writePosition:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ea/nimble/ByteBufferIOStream;-><init>(I)V

    .line 23
    return-void
.end method

.method public constructor <init>(I)V
    .locals 4
    .param p1, "expectedCapacity"    # I

    .prologue
    const/4 v2, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-boolean v2, p0, Lcom/ea/nimble/ByteBufferIOStream;->m_closed:Z

    .line 29
    iput v2, p0, Lcom/ea/nimble/ByteBufferIOStream;->m_availableSegment:I

    .line 30
    iput v2, p0, Lcom/ea/nimble/ByteBufferIOStream;->m_writePosition:I

    .line 31
    iput v2, p0, Lcom/ea/nimble/ByteBufferIOStream;->m_readPosition:I

    .line 32
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/ea/nimble/ByteBufferIOStream;->m_buffer:Ljava/util/LinkedList;

    .line 33
    new-instance v2, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferInputStream;

    invoke-direct {v2, p0}, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferInputStream;-><init>(Lcom/ea/nimble/ByteBufferIOStream;)V

    iput-object v2, p0, Lcom/ea/nimble/ByteBufferIOStream;->m_input:Lcom/ea/nimble/ByteBufferIOStream$ByteBufferInputStream;

    .line 34
    new-instance v2, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferOutputStream;

    invoke-direct {v2, p0}, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferOutputStream;-><init>(Lcom/ea/nimble/ByteBufferIOStream;)V

    iput-object v2, p0, Lcom/ea/nimble/ByteBufferIOStream;->m_output:Lcom/ea/nimble/ByteBufferIOStream$ByteBufferOutputStream;

    .line 35
    if-gtz p1, :cond_0

    .line 37
    const/4 p1, 0x1

    .line 39
    :cond_0
    add-int/lit8 v2, p1, -0x1

    div-int/lit16 v2, v2, 0x1000

    add-int/lit8 v1, v2, 0x1

    .line 40
    .local v1, "segments":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 42
    iget-object v2, p0, Lcom/ea/nimble/ByteBufferIOStream;->m_buffer:Ljava/util/LinkedList;

    const/16 v3, 0x1000

    new-array v3, v3, [B

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 40
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 44
    :cond_1
    return-void
.end method


# virtual methods
.method public appendSegmentToBuffer([BI)V
    .locals 4
    .param p1, "buffer"    # [B
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x1000

    .line 94
    iget v2, p0, Lcom/ea/nimble/ByteBufferIOStream;->m_writePosition:I

    if-nez v2, :cond_2

    array-length v2, p1

    if-ne v2, v3, :cond_2

    .line 96
    iget-object v2, p0, Lcom/ea/nimble/ByteBufferIOStream;->m_buffer:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 97
    .local v1, "iterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<[B>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/ea/nimble/ByteBufferIOStream;->m_availableSegment:I

    if-ge v0, v2, :cond_0

    .line 99
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 97
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 102
    :cond_0
    invoke-interface {v1, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 103
    if-eq p2, v3, :cond_1

    .line 105
    iput p2, p0, Lcom/ea/nimble/ByteBufferIOStream;->m_writePosition:I

    .line 116
    .end local v0    # "i":I
    .end local v1    # "iterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<[B>;"
    :goto_1
    return-void

    .line 109
    .restart local v0    # "i":I
    .restart local v1    # "iterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<[B>;"
    :cond_1
    iget v2, p0, Lcom/ea/nimble/ByteBufferIOStream;->m_availableSegment:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/ea/nimble/ByteBufferIOStream;->m_availableSegment:I

    goto :goto_1

    .line 114
    .end local v0    # "i":I
    .end local v1    # "iterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<[B>;"
    :cond_2
    invoke-virtual {p0}, Lcom/ea/nimble/ByteBufferIOStream;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3, p2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_1
.end method

.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/ea/nimble/ByteBufferIOStream;->m_input:Lcom/ea/nimble/ByteBufferIOStream$ByteBufferInputStream;

    invoke-virtual {v0}, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferInputStream;->available()I

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 63
    iput-boolean v0, p0, Lcom/ea/nimble/ByteBufferIOStream;->m_closed:Z

    .line 64
    iput v0, p0, Lcom/ea/nimble/ByteBufferIOStream;->m_availableSegment:I

    .line 65
    iput v0, p0, Lcom/ea/nimble/ByteBufferIOStream;->m_writePosition:I

    .line 66
    iput v0, p0, Lcom/ea/nimble/ByteBufferIOStream;->m_readPosition:I

    .line 67
    return-void
.end method

.method protected closeIOStream()V
    .locals 1

    .prologue
    .line 383
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ea/nimble/ByteBufferIOStream;->m_closed:Z

    .line 384
    return-void
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/ea/nimble/ByteBufferIOStream;->m_input:Lcom/ea/nimble/ByteBufferIOStream$ByteBufferInputStream;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/ea/nimble/ByteBufferIOStream;->m_output:Lcom/ea/nimble/ByteBufferIOStream$ByteBufferOutputStream;

    return-object v0
.end method

.method public growBufferBySegment()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    iget v3, p0, Lcom/ea/nimble/ByteBufferIOStream;->m_writePosition:I

    if-eqz v3, :cond_0

    .line 123
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Bad location to grow buffer"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 126
    :cond_0
    iget-object v3, p0, Lcom/ea/nimble/ByteBufferIOStream;->m_buffer:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 127
    .local v1, "iterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<[B>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/ea/nimble/ByteBufferIOStream;->m_availableSegment:I

    if-ge v0, v3, :cond_1

    .line 129
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 127
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 132
    :cond_1
    const/16 v3, 0x1000

    new-array v2, v3, [B

    .line 133
    .local v2, "segment":[B
    invoke-interface {v1, v2}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 134
    iget v3, p0, Lcom/ea/nimble/ByteBufferIOStream;->m_availableSegment:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/ea/nimble/ByteBufferIOStream;->m_availableSegment:I

    .line 135
    return-object v2
.end method

.method public prepareSegment()[B
    .locals 2

    .prologue
    .line 80
    iget v0, p0, Lcom/ea/nimble/ByteBufferIOStream;->m_availableSegment:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/ea/nimble/ByteBufferIOStream;->m_buffer:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 82
    const/16 v0, 0x1000

    new-array v0, v0, [B

    .line 86
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ea/nimble/ByteBufferIOStream;->m_buffer:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ea/nimble/ByteBufferIOStream;->m_buffer:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    goto :goto_0
.end method

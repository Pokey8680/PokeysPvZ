.class public Lorg/restlet/engine/io/ReaderInputStream;
.super Ljava/io/InputStream;
.source "ReaderInputStream.java"


# instance fields
.field private final byteBuffer:Ljava/nio/ByteBuffer;

.field private final charBuffer:Ljava/nio/CharBuffer;

.field private final charsetEncoder:Ljava/nio/charset/CharsetEncoder;

.field private volatile endReached:Z

.field private final reader:Ljava/io/BufferedReader;


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 1
    .param p1, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    sget-object v0, Lorg/restlet/data/CharacterSet;->ISO_8859_1:Lorg/restlet/data/CharacterSet;

    invoke-direct {p0, p1, v0}, Lorg/restlet/engine/io/ReaderInputStream;-><init>(Ljava/io/Reader;Lorg/restlet/data/CharacterSet;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;Lorg/restlet/data/CharacterSet;)V
    .locals 2
    .param p1, "reader"    # Ljava/io/Reader;
    .param p2, "characterSet"    # Lorg/restlet/data/CharacterSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x400

    .line 92
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 93
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/restlet/engine/io/ReaderInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 94
    iget-object v0, p0, Lorg/restlet/engine/io/ReaderInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 95
    invoke-static {v1}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/restlet/engine/io/ReaderInputStream;->charBuffer:Ljava/nio/CharBuffer;

    .line 96
    iget-object v0, p0, Lorg/restlet/engine/io/ReaderInputStream;->charBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 97
    if-nez p2, :cond_0

    sget-object v0, Lorg/restlet/data/CharacterSet;->ISO_8859_1:Lorg/restlet/data/CharacterSet;

    invoke-virtual {v0}, Lorg/restlet/data/CharacterSet;->toCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/restlet/engine/io/ReaderInputStream;->charsetEncoder:Ljava/nio/charset/CharsetEncoder;

    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/restlet/engine/io/ReaderInputStream;->endReached:Z

    .line 101
    instance-of v0, p1, Ljava/io/BufferedReader;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/io/BufferedReader;

    .end local p1    # "reader":Ljava/io/Reader;
    :goto_1
    iput-object p1, p0, Lorg/restlet/engine/io/ReaderInputStream;->reader:Ljava/io/BufferedReader;

    .line 103
    return-void

    .line 97
    .restart local p1    # "reader":Ljava/io/Reader;
    :cond_0
    invoke-virtual {p2}, Lorg/restlet/data/CharacterSet;->toCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    goto :goto_0

    .line 101
    :cond_1
    new-instance v0, Ljava/io/BufferedReader;

    sget v1, Lorg/restlet/engine/io/IoUtils;->BUFFER_SIZE:I

    invoke-direct {v0, p1, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object p1, v0

    goto :goto_1
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lorg/restlet/engine/io/ReaderInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/restlet/engine/io/ReaderInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lorg/restlet/engine/io/ReaderInputStream;->reader:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 116
    return-void
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 120
    const/4 v2, 0x1

    new-array v0, v2, [B

    .line 121
    .local v0, "temp":[B
    invoke-virtual {p0, v0}, Lorg/restlet/engine/io/ReaderInputStream;->read([B)I

    move-result v2

    if-ne v2, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    goto :goto_0
.end method

.method public read([BII)I
    .locals 9
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 126
    const/4 v3, 0x0

    .line 127
    .local v3, "result":I
    const/4 v0, 0x1

    .line 129
    .local v0, "iterate":Z
    :goto_0
    if-eqz v0, :cond_5

    .line 131
    iget-object v5, p0, Lorg/restlet/engine/io/ReaderInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v5

    if-nez v5, :cond_1

    iget-boolean v5, p0, Lorg/restlet/engine/io/ReaderInputStream;->endReached:Z

    if-nez v5, :cond_1

    .line 133
    iget-object v5, p0, Lorg/restlet/engine/io/ReaderInputStream;->charBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v5}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v5

    if-nez v5, :cond_0

    .line 134
    iget-object v5, p0, Lorg/restlet/engine/io/ReaderInputStream;->charBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v5}, Ljava/nio/CharBuffer;->clear()Ljava/nio/Buffer;

    .line 135
    iget-object v5, p0, Lorg/restlet/engine/io/ReaderInputStream;->reader:Ljava/io/BufferedReader;

    iget-object v6, p0, Lorg/restlet/engine/io/ReaderInputStream;->charBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v5, v6}, Ljava/io/BufferedReader;->read(Ljava/nio/CharBuffer;)I

    move-result v1

    .line 136
    .local v1, "read":I
    iget-object v5, p0, Lorg/restlet/engine/io/ReaderInputStream;->charBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v5}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 138
    const/4 v5, -0x1

    if-ne v1, v5, :cond_0

    .line 139
    iput-boolean v4, p0, Lorg/restlet/engine/io/ReaderInputStream;->endReached:Z

    .line 143
    .end local v1    # "read":I
    :cond_0
    if-lez p3, :cond_1

    iget-object v5, p0, Lorg/restlet/engine/io/ReaderInputStream;->charBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v5}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 145
    iget-object v5, p0, Lorg/restlet/engine/io/ReaderInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 146
    iget-object v5, p0, Lorg/restlet/engine/io/ReaderInputStream;->charsetEncoder:Ljava/nio/charset/CharsetEncoder;

    iget-object v6, p0, Lorg/restlet/engine/io/ReaderInputStream;->charBuffer:Ljava/nio/CharBuffer;

    iget-object v7, p0, Lorg/restlet/engine/io/ReaderInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    iget-boolean v8, p0, Lorg/restlet/engine/io/ReaderInputStream;->endReached:Z

    invoke-virtual {v5, v6, v7, v8}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    .line 148
    iget-object v5, p0, Lorg/restlet/engine/io/ReaderInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 153
    :cond_1
    iget-object v5, p0, Lorg/restlet/engine/io/ReaderInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    invoke-static {p3, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 155
    .local v2, "readLength":I
    if-lez v2, :cond_2

    .line 156
    iget-object v5, p0, Lorg/restlet/engine/io/ReaderInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, p1, p2, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 157
    add-int/2addr p2, v2

    .line 158
    sub-int/2addr p3, v2

    .line 159
    add-int/2addr v3, v2

    .line 163
    :cond_2
    if-lez p3, :cond_4

    iget-boolean v5, p0, Lorg/restlet/engine/io/ReaderInputStream;->endReached:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Lorg/restlet/engine/io/ReaderInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lorg/restlet/engine/io/ReaderInputStream;->charBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v5}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    move v0, v4

    .line 166
    :goto_1
    goto :goto_0

    .line 163
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 168
    .end local v2    # "readLength":I
    :cond_5
    iget-boolean v4, p0, Lorg/restlet/engine/io/ReaderInputStream;->endReached:Z

    if-eqz v4, :cond_6

    if-nez v3, :cond_6

    .line 169
    const/4 v3, -0x1

    .line 172
    :cond_6
    return v3
.end method

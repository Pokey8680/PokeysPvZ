.class public Lorg/restlet/engine/io/InputStreamChannel;
.super Ljava/lang/Object;
.source "InputStreamChannel.java"

# interfaces
.implements Ljava/nio/channels/ReadableByteChannel;
.implements Lorg/restlet/engine/io/BlockableChannel;


# instance fields
.field private final blocking:Z

.field private volatile buffer:[B

.field private final inputStream:Ljava/io/InputStream;

.field private volatile open:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-array v2, v1, [B

    iput-object v2, p0, Lorg/restlet/engine/io/InputStreamChannel;->buffer:[B

    .line 68
    iput-object p1, p0, Lorg/restlet/engine/io/InputStreamChannel;->inputStream:Ljava/io/InputStream;

    .line 69
    iput-boolean v0, p0, Lorg/restlet/engine/io/InputStreamChannel;->open:Z

    .line 70
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v2

    if-gtz v2, :cond_0

    :goto_0
    iput-boolean v0, p0, Lorg/restlet/engine/io/InputStreamChannel;->blocking:Z

    .line 71
    return-void

    :cond_0
    move v0, v1

    .line 70
    goto :goto_0
.end method

.method private read(Ljava/nio/ByteBuffer;I)I
    .locals 7
    .param p1, "target"    # Ljava/nio/ByteBuffer;
    .param p2, "readLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 150
    const/4 v1, 0x0

    .line 152
    .local v1, "result":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 154
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 156
    .local v0, "byteArray":[B
    invoke-virtual {p0}, Lorg/restlet/engine/io/InputStreamChannel;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v2, v0, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 159
    if-lez v1, :cond_0

    .line 160
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 178
    .end local v0    # "byteArray":[B
    :cond_0
    :goto_0
    return v1

    .line 163
    :cond_1
    iget-object v2, p0, Lorg/restlet/engine/io/InputStreamChannel;->buffer:[B

    array-length v2, v2

    sget v3, Lorg/restlet/engine/io/IoUtils;->BUFFER_SIZE:I

    if-ge v2, v3, :cond_2

    .line 164
    sget v2, Lorg/restlet/engine/io/IoUtils;->BUFFER_SIZE:I

    new-array v2, v2, [B

    iput-object v2, p0, Lorg/restlet/engine/io/InputStreamChannel;->buffer:[B

    .line 167
    :cond_2
    invoke-virtual {p0}, Lorg/restlet/engine/io/InputStreamChannel;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    iget-object v3, p0, Lorg/restlet/engine/io/InputStreamChannel;->buffer:[B

    sget v4, Lorg/restlet/engine/io/IoUtils;->BUFFER_SIZE:I

    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v2, v3, v6, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 173
    if-lez v1, :cond_0

    .line 174
    iget-object v2, p0, Lorg/restlet/engine/io/InputStreamChannel;->buffer:[B

    invoke-virtual {p1, v2, v6, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    goto :goto_0
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
    .line 77
    invoke-virtual {p0}, Lorg/restlet/engine/io/InputStreamChannel;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/restlet/engine/io/InputStreamChannel;->open:Z

    .line 79
    return-void
.end method

.method protected getInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lorg/restlet/engine/io/InputStreamChannel;->inputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public isBlocking()Z
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Lorg/restlet/engine/io/InputStreamChannel;->blocking:Z

    return v0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 106
    iget-boolean v0, p0, Lorg/restlet/engine/io/InputStreamChannel;->open:Z

    return v0
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 3
    .param p1, "target"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    const/4 v1, 0x0

    .line 119
    .local v1, "readLength":I
    invoke-virtual {p0}, Lorg/restlet/engine/io/InputStreamChannel;->isBlocking()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 121
    sget v1, Lorg/restlet/engine/io/IoUtils;->BUFFER_SIZE:I

    .line 136
    :goto_0
    invoke-direct {p0, p1, v1}, Lorg/restlet/engine/io/InputStreamChannel;->read(Ljava/nio/ByteBuffer;I)I

    move-result v2

    return v2

    .line 123
    :cond_0
    invoke-virtual {p0}, Lorg/restlet/engine/io/InputStreamChannel;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v0

    .line 125
    .local v0, "available":I
    if-lez v0, :cond_1

    .line 127
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0

    .line 131
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    goto :goto_0
.end method

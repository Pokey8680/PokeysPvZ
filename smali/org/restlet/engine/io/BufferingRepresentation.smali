.class public Lorg/restlet/engine/io/BufferingRepresentation;
.super Lorg/restlet/util/WrapperRepresentation;
.source "BufferingRepresentation.java"


# instance fields
.field private volatile buffer:[B

.field private volatile buffered:Z


# direct methods
.method public constructor <init>(Lorg/restlet/representation/Representation;)V
    .locals 1
    .param p1, "bufferedRepresentation"    # Lorg/restlet/representation/Representation;

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lorg/restlet/util/WrapperRepresentation;-><init>(Lorg/restlet/representation/Representation;)V

    .line 78
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/restlet/engine/io/BufferingRepresentation;->setTransient(Z)V

    .line 79
    return-void
.end method

.method private buffer()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    invoke-virtual {p0}, Lorg/restlet/engine/io/BufferingRepresentation;->isBuffered()Z

    move-result v1

    if-nez v1, :cond_0

    .line 88
    invoke-virtual {p0}, Lorg/restlet/engine/io/BufferingRepresentation;->getWrappedRepresentation()Lorg/restlet/representation/Representation;

    move-result-object v1

    invoke-virtual {v1}, Lorg/restlet/representation/Representation;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 90
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p0}, Lorg/restlet/engine/io/BufferingRepresentation;->getWrappedRepresentation()Lorg/restlet/representation/Representation;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/restlet/representation/Representation;->write(Ljava/io/OutputStream;)V

    .line 91
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 92
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/restlet/engine/io/BufferingRepresentation;->setBuffer([B)V

    .line 93
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/restlet/engine/io/BufferingRepresentation;->setBuffered(Z)V

    .line 96
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    :cond_0
    return-void
.end method


# virtual methods
.method public getAvailableSize()J
    .locals 2

    .prologue
    .line 100
    invoke-virtual {p0}, Lorg/restlet/engine/io/BufferingRepresentation;->getSize()J

    move-result-wide v0

    return-wide v0
.end method

.method protected getBuffer()[B
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lorg/restlet/engine/io/BufferingRepresentation;->buffer:[B

    return-object v0
.end method

.method public getChannel()Ljava/nio/channels/ReadableByteChannel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    invoke-virtual {p0}, Lorg/restlet/engine/io/BufferingRepresentation;->getStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lorg/restlet/engine/io/NioUtils;->getChannel(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;

    move-result-object v0

    return-object v0
.end method

.method public getReader()Ljava/io/Reader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 120
    invoke-virtual {p0}, Lorg/restlet/engine/io/BufferingRepresentation;->getStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0}, Lorg/restlet/engine/io/BufferingRepresentation;->getCharacterSet()Lorg/restlet/data/CharacterSet;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/restlet/engine/io/BioUtils;->getReader(Ljava/io/InputStream;Lorg/restlet/data/CharacterSet;)Ljava/io/Reader;

    move-result-object v0

    return-object v0
.end method

.method public getSize()J
    .locals 4

    .prologue
    .line 127
    :try_start_0
    invoke-direct {p0}, Lorg/restlet/engine/io/BufferingRepresentation;->buffer()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :goto_0
    invoke-virtual {p0}, Lorg/restlet/engine/io/BufferingRepresentation;->getBuffer()[B

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/restlet/engine/io/BufferingRepresentation;->getBuffer()[B

    move-result-object v1

    array-length v1, v1

    int-to-long v2, v1

    :goto_1
    return-wide v2

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Unable to buffer the wrapped representation"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 133
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    const-wide/16 v2, -0x1

    goto :goto_1
.end method

.method public getStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 138
    invoke-direct {p0}, Lorg/restlet/engine/io/BufferingRepresentation;->buffer()V

    .line 139
    invoke-virtual {p0}, Lorg/restlet/engine/io/BufferingRepresentation;->getBuffer()[B

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Lorg/restlet/engine/io/BufferingRepresentation;->getBuffer()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getText()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 145
    invoke-direct {p0}, Lorg/restlet/engine/io/BufferingRepresentation;->buffer()V

    .line 147
    invoke-virtual {p0}, Lorg/restlet/engine/io/BufferingRepresentation;->getBuffer()[B

    move-result-object v0

    if-eqz v0, :cond_1

    .line 148
    invoke-virtual {p0}, Lorg/restlet/engine/io/BufferingRepresentation;->getCharacterSet()Lorg/restlet/data/CharacterSet;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/restlet/engine/io/BufferingRepresentation;->getBuffer()[B

    move-result-object v1

    invoke-virtual {p0}, Lorg/restlet/engine/io/BufferingRepresentation;->getCharacterSet()Lorg/restlet/data/CharacterSet;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/data/CharacterSet;->toCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 153
    :goto_0
    return-object v0

    .line 148
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/restlet/engine/io/BufferingRepresentation;->getBuffer()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    .line 153
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAvailable()Z
    .locals 4

    .prologue
    .line 159
    :try_start_0
    invoke-direct {p0}, Lorg/restlet/engine/io/BufferingRepresentation;->buffer()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :goto_0
    invoke-virtual {p0}, Lorg/restlet/engine/io/BufferingRepresentation;->isBuffered()Z

    move-result v1

    return v1

    .line 160
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const-string v3, "Unable to buffer the wrapped representation"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected isBuffered()Z
    .locals 1

    .prologue
    .line 174
    iget-boolean v0, p0, Lorg/restlet/engine/io/BufferingRepresentation;->buffered:Z

    return v0
.end method

.method protected setBuffer([B)V
    .locals 0
    .param p1, "buffer"    # [B

    .prologue
    .line 184
    iput-object p1, p0, Lorg/restlet/engine/io/BufferingRepresentation;->buffer:[B

    .line 185
    return-void
.end method

.method protected setBuffered(Z)V
    .locals 0
    .param p1, "buffered"    # Z

    .prologue
    .line 194
    iput-boolean p1, p0, Lorg/restlet/engine/io/BufferingRepresentation;->buffered:Z

    .line 195
    return-void
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 199
    invoke-direct {p0}, Lorg/restlet/engine/io/BufferingRepresentation;->buffer()V

    .line 201
    invoke-virtual {p0}, Lorg/restlet/engine/io/BufferingRepresentation;->getBuffer()[B

    move-result-object v0

    if-eqz v0, :cond_0

    .line 202
    invoke-virtual {p0}, Lorg/restlet/engine/io/BufferingRepresentation;->getBuffer()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 204
    :cond_0
    return-void
.end method

.method public write(Ljava/io/Writer;)V
    .locals 1
    .param p1, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 217
    invoke-virtual {p0}, Lorg/restlet/engine/io/BufferingRepresentation;->getText()Ljava/lang/String;

    move-result-object v0

    .line 219
    .local v0, "text":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 220
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 222
    :cond_0
    return-void
.end method

.method public write(Ljava/nio/channels/WritableByteChannel;)V
    .locals 1
    .param p1, "writableChannel"    # Ljava/nio/channels/WritableByteChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 208
    invoke-direct {p0}, Lorg/restlet/engine/io/BufferingRepresentation;->buffer()V

    .line 210
    invoke-virtual {p0}, Lorg/restlet/engine/io/BufferingRepresentation;->getBuffer()[B

    move-result-object v0

    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {p0}, Lorg/restlet/engine/io/BufferingRepresentation;->getBuffer()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 213
    :cond_0
    return-void
.end method

.class public Lorg/restlet/engine/application/DecodeRepresentation;
.super Lorg/restlet/util/WrapperRepresentation;
.source "DecodeRepresentation.java"


# instance fields
.field private volatile decoding:Z

.field private final wrappedEncodings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/Encoding;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/restlet/representation/Representation;)V
    .locals 2
    .param p1, "wrappedRepresentation"    # Lorg/restlet/representation/Representation;

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lorg/restlet/util/WrapperRepresentation;-><init>(Lorg/restlet/representation/Representation;)V

    .line 92
    invoke-static {}, Lorg/restlet/engine/application/DecodeRepresentation;->getSupportedEncodings()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lorg/restlet/representation/Representation;->getEncodings()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/restlet/engine/application/DecodeRepresentation;->decoding:Z

    .line 94
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Lorg/restlet/representation/Representation;->getEncodings()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/restlet/engine/application/DecodeRepresentation;->wrappedEncodings:Ljava/util/List;

    .line 96
    return-void
.end method

.method private getDecodedStream(Lorg/restlet/data/Encoding;Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 4
    .param p1, "encoding"    # Lorg/restlet/data/Encoding;
    .param p2, "encodedStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 125
    const/4 v0, 0x0

    .line 127
    .local v0, "result":Ljava/io/InputStream;
    if-eqz p2, :cond_0

    .line 128
    sget-object v2, Lorg/restlet/data/Encoding;->GZIP:Lorg/restlet/data/Encoding;

    invoke-virtual {p1, v2}, Lorg/restlet/data/Encoding;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 129
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    .end local v0    # "result":Ljava/io/InputStream;
    invoke-direct {v0, p2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 148
    .restart local v0    # "result":Ljava/io/InputStream;
    :cond_0
    :goto_0
    return-object v0

    .line 130
    :cond_1
    sget-object v2, Lorg/restlet/data/Encoding;->DEFLATE:Lorg/restlet/data/Encoding;

    invoke-virtual {p1, v2}, Lorg/restlet/data/Encoding;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 131
    new-instance v0, Ljava/util/zip/InflaterInputStream;

    .end local v0    # "result":Ljava/io/InputStream;
    invoke-direct {v0, p2}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    .restart local v0    # "result":Ljava/io/InputStream;
    goto :goto_0

    .line 132
    :cond_2
    sget-object v2, Lorg/restlet/data/Encoding;->DEFLATE_NOWRAP:Lorg/restlet/data/Encoding;

    invoke-virtual {p1, v2}, Lorg/restlet/data/Encoding;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 133
    new-instance v0, Ljava/util/zip/InflaterInputStream;

    .end local v0    # "result":Ljava/io/InputStream;
    new-instance v2, Ljava/util/zip/Inflater;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/zip/Inflater;-><init>(Z)V

    invoke-direct {v0, p2, v2}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V

    .restart local v0    # "result":Ljava/io/InputStream;
    goto :goto_0

    .line 135
    :cond_3
    sget-object v2, Lorg/restlet/data/Encoding;->ZIP:Lorg/restlet/data/Encoding;

    invoke-virtual {p1, v2}, Lorg/restlet/data/Encoding;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 137
    new-instance v1, Ljava/util/zip/ZipInputStream;

    invoke-direct {v1, p2}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 139
    .local v1, "stream":Ljava/util/zip/ZipInputStream;
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 140
    move-object v0, v1

    goto :goto_0

    .line 142
    .end local v1    # "stream":Ljava/util/zip/ZipInputStream;
    :cond_4
    sget-object v2, Lorg/restlet/data/Encoding;->IDENTITY:Lorg/restlet/data/Encoding;

    invoke-virtual {p1, v2}, Lorg/restlet/data/Encoding;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 143
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Decoder unecessary for identity decoding"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getSupportedEncodings()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/Encoding;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    const/4 v0, 0x5

    new-array v0, v0, [Lorg/restlet/data/Encoding;

    const/4 v1, 0x0

    sget-object v2, Lorg/restlet/data/Encoding;->GZIP:Lorg/restlet/data/Encoding;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lorg/restlet/data/Encoding;->DEFLATE:Lorg/restlet/data/Encoding;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lorg/restlet/data/Encoding;->DEFLATE_NOWRAP:Lorg/restlet/data/Encoding;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lorg/restlet/data/Encoding;->ZIP:Lorg/restlet/data/Encoding;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lorg/restlet/data/Encoding;->IDENTITY:Lorg/restlet/data/Encoding;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getChannel()Ljava/nio/channels/ReadableByteChannel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    invoke-virtual {p0}, Lorg/restlet/engine/application/DecodeRepresentation;->isDecoding()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {p0}, Lorg/restlet/engine/application/DecodeRepresentation;->getStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lorg/restlet/engine/io/NioUtils;->getChannel(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;

    move-result-object v0

    .line 109
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/restlet/engine/application/DecodeRepresentation;->getWrappedRepresentation()Lorg/restlet/representation/Representation;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/representation/Representation;->getChannel()Ljava/nio/channels/ReadableByteChannel;

    move-result-object v0

    goto :goto_0
.end method

.method public getEncodings()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/Encoding;",
            ">;"
        }
    .end annotation

    .prologue
    .line 158
    invoke-virtual {p0}, Lorg/restlet/engine/application/DecodeRepresentation;->isDecoding()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 161
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/restlet/engine/application/DecodeRepresentation;->wrappedEncodings:Ljava/util/List;

    goto :goto_0
.end method

.method public getReader()Ljava/io/Reader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 167
    invoke-virtual {p0}, Lorg/restlet/engine/application/DecodeRepresentation;->isDecoding()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {p0}, Lorg/restlet/engine/application/DecodeRepresentation;->getStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0}, Lorg/restlet/engine/application/DecodeRepresentation;->getCharacterSet()Lorg/restlet/data/CharacterSet;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/restlet/engine/io/BioUtils;->getReader(Ljava/io/InputStream;Lorg/restlet/data/CharacterSet;)Ljava/io/Reader;

    move-result-object v0

    .line 170
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/restlet/engine/application/DecodeRepresentation;->getWrappedRepresentation()Lorg/restlet/representation/Representation;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/representation/Representation;->getReader()Ljava/io/Reader;

    move-result-object v0

    goto :goto_0
.end method

.method public getSize()J
    .locals 6

    .prologue
    .line 182
    const-wide/16 v2, -0x1

    .line 184
    .local v2, "result":J
    invoke-virtual {p0}, Lorg/restlet/engine/application/DecodeRepresentation;->isDecoding()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 185
    const/4 v0, 0x1

    .line 186
    .local v0, "identity":Z
    invoke-virtual {p0}, Lorg/restlet/engine/application/DecodeRepresentation;->getEncodings()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 187
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/restlet/data/Encoding;>;"
    :goto_0
    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 188
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/restlet/data/Encoding;

    sget-object v5, Lorg/restlet/data/Encoding;->IDENTITY:Lorg/restlet/data/Encoding;

    invoke-virtual {v4, v5}, Lorg/restlet/data/Encoding;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 190
    :cond_0
    if-eqz v0, :cond_1

    .line 191
    invoke-virtual {p0}, Lorg/restlet/engine/application/DecodeRepresentation;->getWrappedRepresentation()Lorg/restlet/representation/Representation;

    move-result-object v4

    invoke-virtual {v4}, Lorg/restlet/representation/Representation;->getSize()J

    move-result-wide v2

    .line 197
    .end local v0    # "identity":Z
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/restlet/data/Encoding;>;"
    :cond_1
    :goto_1
    return-wide v2

    .line 194
    :cond_2
    invoke-virtual {p0}, Lorg/restlet/engine/application/DecodeRepresentation;->getWrappedRepresentation()Lorg/restlet/representation/Representation;

    move-result-object v4

    invoke-virtual {v4}, Lorg/restlet/representation/Representation;->getSize()J

    move-result-wide v2

    goto :goto_1
.end method

.method public getStream()Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 207
    invoke-virtual {p0}, Lorg/restlet/engine/application/DecodeRepresentation;->getWrappedRepresentation()Lorg/restlet/representation/Representation;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/representation/Representation;->getStream()Ljava/io/InputStream;

    move-result-object v1

    .line 209
    .local v1, "result":Ljava/io/InputStream;
    invoke-virtual {p0}, Lorg/restlet/engine/application/DecodeRepresentation;->isDecoding()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 210
    iget-object v2, p0, Lorg/restlet/engine/application/DecodeRepresentation;->wrappedEncodings:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 211
    iget-object v2, p0, Lorg/restlet/engine/application/DecodeRepresentation;->wrappedEncodings:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/restlet/data/Encoding;

    sget-object v3, Lorg/restlet/data/Encoding;->IDENTITY:Lorg/restlet/data/Encoding;

    invoke-virtual {v2, v3}, Lorg/restlet/data/Encoding;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 212
    iget-object v2, p0, Lorg/restlet/engine/application/DecodeRepresentation;->wrappedEncodings:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/restlet/data/Encoding;

    invoke-direct {p0, v2, v1}, Lorg/restlet/engine/application/DecodeRepresentation;->getDecodedStream(Lorg/restlet/data/Encoding;Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v1

    .line 210
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 218
    .end local v0    # "i":I
    :cond_1
    return-object v1
.end method

.method public getText()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 230
    invoke-virtual {p0}, Lorg/restlet/engine/application/DecodeRepresentation;->isDecoding()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {p0}, Lorg/restlet/engine/application/DecodeRepresentation;->getStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0}, Lorg/restlet/engine/application/DecodeRepresentation;->getCharacterSet()Lorg/restlet/data/CharacterSet;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/restlet/engine/io/BioUtils;->toString(Ljava/io/InputStream;Lorg/restlet/data/CharacterSet;)Ljava/lang/String;

    move-result-object v0

    .line 233
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/restlet/engine/application/DecodeRepresentation;->getWrappedRepresentation()Lorg/restlet/representation/Representation;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/representation/Representation;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isDecoding()Z
    .locals 1

    .prologue
    .line 243
    iget-boolean v0, p0, Lorg/restlet/engine/application/DecodeRepresentation;->decoding:Z

    return v0
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
    .line 254
    invoke-virtual {p0}, Lorg/restlet/engine/application/DecodeRepresentation;->isDecoding()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    invoke-virtual {p0}, Lorg/restlet/engine/application/DecodeRepresentation;->getStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/restlet/engine/io/BioUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 259
    :goto_0
    return-void

    .line 257
    :cond_0
    invoke-virtual {p0}, Lorg/restlet/engine/application/DecodeRepresentation;->getWrappedRepresentation()Lorg/restlet/representation/Representation;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/restlet/representation/Representation;->write(Ljava/io/OutputStream;)V

    goto :goto_0
.end method

.method public write(Ljava/io/Writer;)V
    .locals 2
    .param p1, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 280
    invoke-virtual {p0}, Lorg/restlet/engine/application/DecodeRepresentation;->getCharacterSet()Lorg/restlet/data/CharacterSet;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/restlet/engine/io/BioUtils;->getStream(Ljava/io/Writer;Lorg/restlet/data/CharacterSet;)Ljava/io/OutputStream;

    move-result-object v0

    .line 281
    .local v0, "os":Ljava/io/OutputStream;
    invoke-virtual {p0, v0}, Lorg/restlet/engine/application/DecodeRepresentation;->write(Ljava/io/OutputStream;)V

    .line 282
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 283
    return-void
.end method

.method public write(Ljava/nio/channels/WritableByteChannel;)V
    .locals 2
    .param p1, "writableChannel"    # Ljava/nio/channels/WritableByteChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 269
    invoke-virtual {p0}, Lorg/restlet/engine/application/DecodeRepresentation;->isDecoding()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 270
    invoke-static {p1}, Lorg/restlet/engine/io/NioUtils;->getStream(Ljava/nio/channels/WritableByteChannel;)Ljava/io/OutputStream;

    move-result-object v0

    .line 271
    .local v0, "os":Ljava/io/OutputStream;
    invoke-virtual {p0, v0}, Lorg/restlet/engine/application/DecodeRepresentation;->write(Ljava/io/OutputStream;)V

    .line 272
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 276
    .end local v0    # "os":Ljava/io/OutputStream;
    :goto_0
    return-void

    .line 274
    :cond_0
    invoke-virtual {p0}, Lorg/restlet/engine/application/DecodeRepresentation;->getWrappedRepresentation()Lorg/restlet/representation/Representation;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/restlet/representation/Representation;->write(Ljava/nio/channels/WritableByteChannel;)V

    goto :goto_0
.end method

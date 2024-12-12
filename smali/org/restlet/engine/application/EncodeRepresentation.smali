.class public Lorg/restlet/engine/application/EncodeRepresentation;
.super Lorg/restlet/util/WrapperRepresentation;
.source "EncodeRepresentation.java"


# instance fields
.field private volatile canEncode:Z

.field private volatile encoding:Lorg/restlet/data/Encoding;

.field private volatile encodings:Ljava/util/List;
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
.method public constructor <init>(Lorg/restlet/data/Encoding;Lorg/restlet/representation/Representation;)V
    .locals 1
    .param p1, "encoding"    # Lorg/restlet/data/Encoding;
    .param p2, "wrappedRepresentation"    # Lorg/restlet/representation/Representation;

    .prologue
    .line 96
    invoke-direct {p0, p2}, Lorg/restlet/util/WrapperRepresentation;-><init>(Lorg/restlet/representation/Representation;)V

    .line 97
    invoke-static {}, Lorg/restlet/engine/application/EncodeRepresentation;->getSupportedEncodings()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/restlet/engine/application/EncodeRepresentation;->canEncode:Z

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/restlet/engine/application/EncodeRepresentation;->encodings:Ljava/util/List;

    .line 99
    iput-object p1, p0, Lorg/restlet/engine/application/EncodeRepresentation;->encoding:Lorg/restlet/data/Encoding;

    .line 100
    return-void
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
    .line 73
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
.method public canEncode()Z
    .locals 1

    .prologue
    .line 108
    iget-boolean v0, p0, Lorg/restlet/engine/application/EncodeRepresentation;->canEncode:Z

    return v0
.end method

.method public getAvailableSize()J
    .locals 4

    .prologue
    .line 120
    const-wide/16 v0, -0x1

    .line 122
    .local v0, "result":J
    invoke-virtual {p0}, Lorg/restlet/engine/application/EncodeRepresentation;->canEncode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 123
    iget-object v2, p0, Lorg/restlet/engine/application/EncodeRepresentation;->encoding:Lorg/restlet/data/Encoding;

    sget-object v3, Lorg/restlet/data/Encoding;->IDENTITY:Lorg/restlet/data/Encoding;

    invoke-virtual {v2, v3}, Lorg/restlet/data/Encoding;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 124
    invoke-virtual {p0}, Lorg/restlet/engine/application/EncodeRepresentation;->getWrappedRepresentation()Lorg/restlet/representation/Representation;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/representation/Representation;->getAvailableSize()J

    move-result-wide v0

    .line 130
    :cond_0
    :goto_0
    return-wide v0

    .line 127
    :cond_1
    invoke-virtual {p0}, Lorg/restlet/engine/application/EncodeRepresentation;->getWrappedRepresentation()Lorg/restlet/representation/Representation;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/representation/Representation;->getAvailableSize()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getChannel()Ljava/nio/channels/ReadableByteChannel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 141
    invoke-virtual {p0}, Lorg/restlet/engine/application/EncodeRepresentation;->canEncode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    invoke-static {p0}, Lorg/restlet/engine/io/NioUtils;->getChannel(Lorg/restlet/representation/Representation;)Ljava/nio/channels/ReadableByteChannel;

    move-result-object v0

    .line 144
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/restlet/engine/application/EncodeRepresentation;->getWrappedRepresentation()Lorg/restlet/representation/Representation;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/representation/Representation;->getChannel()Ljava/nio/channels/ReadableByteChannel;

    move-result-object v0

    goto :goto_0
.end method

.method public getEncodings()Ljava/util/List;
    .locals 2
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
    .line 155
    iget-object v0, p0, Lorg/restlet/engine/application/EncodeRepresentation;->encodings:Ljava/util/List;

    if-nez v0, :cond_0

    .line 156
    new-instance v0, Lorg/restlet/engine/application/EncodeRepresentation$1;

    invoke-direct {v0, p0}, Lorg/restlet/engine/application/EncodeRepresentation$1;-><init>(Lorg/restlet/engine/application/EncodeRepresentation;)V

    iput-object v0, p0, Lorg/restlet/engine/application/EncodeRepresentation;->encodings:Ljava/util/List;

    .line 213
    iget-object v0, p0, Lorg/restlet/engine/application/EncodeRepresentation;->encodings:Ljava/util/List;

    invoke-virtual {p0}, Lorg/restlet/engine/application/EncodeRepresentation;->getWrappedRepresentation()Lorg/restlet/representation/Representation;

    move-result-object v1

    invoke-virtual {v1}, Lorg/restlet/representation/Representation;->getEncodings()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 214
    invoke-virtual {p0}, Lorg/restlet/engine/application/EncodeRepresentation;->canEncode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lorg/restlet/engine/application/EncodeRepresentation;->encodings:Ljava/util/List;

    iget-object v1, p0, Lorg/restlet/engine/application/EncodeRepresentation;->encoding:Lorg/restlet/data/Encoding;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    :cond_0
    iget-object v0, p0, Lorg/restlet/engine/application/EncodeRepresentation;->encodings:Ljava/util/List;

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
    .line 223
    invoke-virtual {p0}, Lorg/restlet/engine/application/EncodeRepresentation;->canEncode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    invoke-virtual {p0}, Lorg/restlet/engine/application/EncodeRepresentation;->getStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0}, Lorg/restlet/engine/application/EncodeRepresentation;->getCharacterSet()Lorg/restlet/data/CharacterSet;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/restlet/engine/io/BioUtils;->getReader(Ljava/io/InputStream;Lorg/restlet/data/CharacterSet;)Ljava/io/Reader;

    move-result-object v0

    .line 226
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/restlet/engine/application/EncodeRepresentation;->getWrappedRepresentation()Lorg/restlet/representation/Representation;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/representation/Representation;->getReader()Ljava/io/Reader;

    move-result-object v0

    goto :goto_0
.end method

.method public getSize()J
    .locals 4

    .prologue
    .line 238
    const-wide/16 v0, -0x1

    .line 240
    .local v0, "result":J
    invoke-virtual {p0}, Lorg/restlet/engine/application/EncodeRepresentation;->canEncode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 241
    iget-object v2, p0, Lorg/restlet/engine/application/EncodeRepresentation;->encoding:Lorg/restlet/data/Encoding;

    sget-object v3, Lorg/restlet/data/Encoding;->IDENTITY:Lorg/restlet/data/Encoding;

    invoke-virtual {v2, v3}, Lorg/restlet/data/Encoding;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 242
    invoke-virtual {p0}, Lorg/restlet/engine/application/EncodeRepresentation;->getWrappedRepresentation()Lorg/restlet/representation/Representation;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/representation/Representation;->getSize()J

    move-result-wide v0

    .line 248
    :cond_0
    :goto_0
    return-wide v0

    .line 245
    :cond_1
    invoke-virtual {p0}, Lorg/restlet/engine/application/EncodeRepresentation;->getWrappedRepresentation()Lorg/restlet/representation/Representation;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/representation/Representation;->getSize()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 253
    invoke-virtual {p0}, Lorg/restlet/engine/application/EncodeRepresentation;->canEncode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    invoke-static {p0}, Lorg/restlet/engine/io/BioUtils;->getStream(Lorg/restlet/representation/Representation;)Ljava/io/InputStream;

    move-result-object v0

    .line 256
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/restlet/engine/application/EncodeRepresentation;->getWrappedRepresentation()Lorg/restlet/representation/Representation;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/representation/Representation;->getStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0
.end method

.method public getText()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 262
    invoke-virtual {p0}, Lorg/restlet/engine/application/EncodeRepresentation;->canEncode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    invoke-virtual {p0}, Lorg/restlet/engine/application/EncodeRepresentation;->getStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0}, Lorg/restlet/engine/application/EncodeRepresentation;->getCharacterSet()Lorg/restlet/data/CharacterSet;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/restlet/engine/io/BioUtils;->toString(Ljava/io/InputStream;Lorg/restlet/data/CharacterSet;)Ljava/lang/String;

    move-result-object v0

    .line 265
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/restlet/engine/application/EncodeRepresentation;->getWrappedRepresentation()Lorg/restlet/representation/Representation;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/representation/Representation;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 6
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 282
    invoke-virtual {p0}, Lorg/restlet/engine/application/EncodeRepresentation;->canEncode()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 283
    const/4 v0, 0x0

    .line 285
    .local v0, "encoderOutputStream":Ljava/util/zip/DeflaterOutputStream;
    iget-object v3, p0, Lorg/restlet/engine/application/EncodeRepresentation;->encoding:Lorg/restlet/data/Encoding;

    sget-object v4, Lorg/restlet/data/Encoding;->GZIP:Lorg/restlet/data/Encoding;

    invoke-virtual {v3, v4}, Lorg/restlet/data/Encoding;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 286
    new-instance v0, Ljava/util/zip/GZIPOutputStream;

    .end local v0    # "encoderOutputStream":Ljava/util/zip/DeflaterOutputStream;
    invoke-direct {v0, p1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 311
    .restart local v0    # "encoderOutputStream":Ljava/util/zip/DeflaterOutputStream;
    :cond_0
    :goto_0
    if-eqz v0, :cond_6

    .line 312
    invoke-virtual {p0}, Lorg/restlet/engine/application/EncodeRepresentation;->getWrappedRepresentation()Lorg/restlet/representation/Representation;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/restlet/representation/Representation;->write(Ljava/io/OutputStream;)V

    .line 313
    invoke-virtual {v0}, Ljava/util/zip/DeflaterOutputStream;->flush()V

    .line 314
    invoke-virtual {v0}, Ljava/util/zip/DeflaterOutputStream;->finish()V

    .line 321
    .end local v0    # "encoderOutputStream":Ljava/util/zip/DeflaterOutputStream;
    :goto_1
    return-void

    .line 287
    .restart local v0    # "encoderOutputStream":Ljava/util/zip/DeflaterOutputStream;
    :cond_1
    iget-object v3, p0, Lorg/restlet/engine/application/EncodeRepresentation;->encoding:Lorg/restlet/data/Encoding;

    sget-object v4, Lorg/restlet/data/Encoding;->DEFLATE:Lorg/restlet/data/Encoding;

    invoke-virtual {v3, v4}, Lorg/restlet/data/Encoding;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 288
    new-instance v0, Ljava/util/zip/DeflaterOutputStream;

    .end local v0    # "encoderOutputStream":Ljava/util/zip/DeflaterOutputStream;
    invoke-direct {v0, p1}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .restart local v0    # "encoderOutputStream":Ljava/util/zip/DeflaterOutputStream;
    goto :goto_0

    .line 289
    :cond_2
    iget-object v3, p0, Lorg/restlet/engine/application/EncodeRepresentation;->encoding:Lorg/restlet/data/Encoding;

    sget-object v4, Lorg/restlet/data/Encoding;->DEFLATE_NOWRAP:Lorg/restlet/data/Encoding;

    invoke-virtual {v3, v4}, Lorg/restlet/data/Encoding;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 290
    new-instance v0, Ljava/util/zip/DeflaterOutputStream;

    .end local v0    # "encoderOutputStream":Ljava/util/zip/DeflaterOutputStream;
    new-instance v3, Ljava/util/zip/Deflater;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v5}, Ljava/util/zip/Deflater;-><init>(IZ)V

    invoke-direct {v0, p1, v3}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;)V

    .restart local v0    # "encoderOutputStream":Ljava/util/zip/DeflaterOutputStream;
    goto :goto_0

    .line 292
    :cond_3
    iget-object v3, p0, Lorg/restlet/engine/application/EncodeRepresentation;->encoding:Lorg/restlet/data/Encoding;

    sget-object v4, Lorg/restlet/data/Encoding;->ZIP:Lorg/restlet/data/Encoding;

    invoke-virtual {v3, v4}, Lorg/restlet/data/Encoding;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 294
    new-instance v2, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v2, p1}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 295
    .local v2, "stream":Ljava/util/zip/ZipOutputStream;
    const-string v1, "entry"

    .line 297
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/restlet/engine/application/EncodeRepresentation;->getWrappedRepresentation()Lorg/restlet/representation/Representation;

    move-result-object v3

    invoke-virtual {v3}, Lorg/restlet/representation/Representation;->getDisposition()Lorg/restlet/data/Disposition;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 298
    invoke-virtual {p0}, Lorg/restlet/engine/application/EncodeRepresentation;->getWrappedRepresentation()Lorg/restlet/representation/Representation;

    move-result-object v3

    invoke-virtual {v3}, Lorg/restlet/representation/Representation;->getDisposition()Lorg/restlet/data/Disposition;

    move-result-object v3

    invoke-virtual {v3}, Lorg/restlet/data/Disposition;->getParameters()Lorg/restlet/util/Series;

    move-result-object v3

    const-string v4, "filename"

    invoke-virtual {v3, v4, v5, v1}, Lorg/restlet/util/Series;->getFirstValue(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 305
    :cond_4
    new-instance v3, Ljava/util/zip/ZipEntry;

    invoke-direct {v3, v1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 306
    move-object v0, v2

    .line 307
    goto :goto_0

    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "stream":Ljava/util/zip/ZipOutputStream;
    :cond_5
    iget-object v3, p0, Lorg/restlet/engine/application/EncodeRepresentation;->encoding:Lorg/restlet/data/Encoding;

    sget-object v4, Lorg/restlet/data/Encoding;->IDENTITY:Lorg/restlet/data/Encoding;

    invoke-virtual {v3, v4}, Lorg/restlet/data/Encoding;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 316
    :cond_6
    invoke-virtual {p0}, Lorg/restlet/engine/application/EncodeRepresentation;->getWrappedRepresentation()Lorg/restlet/representation/Representation;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/restlet/representation/Representation;->write(Ljava/io/OutputStream;)V

    goto :goto_1

    .line 319
    .end local v0    # "encoderOutputStream":Ljava/util/zip/DeflaterOutputStream;
    :cond_7
    invoke-virtual {p0}, Lorg/restlet/engine/application/EncodeRepresentation;->getWrappedRepresentation()Lorg/restlet/representation/Representation;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/restlet/representation/Representation;->write(Ljava/io/OutputStream;)V

    goto :goto_1
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
    .line 271
    invoke-virtual {p0}, Lorg/restlet/engine/application/EncodeRepresentation;->canEncode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 272
    invoke-virtual {p0}, Lorg/restlet/engine/application/EncodeRepresentation;->getCharacterSet()Lorg/restlet/data/CharacterSet;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/restlet/engine/io/BioUtils;->getStream(Ljava/io/Writer;Lorg/restlet/data/CharacterSet;)Ljava/io/OutputStream;

    move-result-object v0

    .line 273
    .local v0, "os":Ljava/io/OutputStream;
    invoke-virtual {p0, v0}, Lorg/restlet/engine/application/EncodeRepresentation;->write(Ljava/io/OutputStream;)V

    .line 274
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 278
    .end local v0    # "os":Ljava/io/OutputStream;
    :goto_0
    return-void

    .line 276
    :cond_0
    invoke-virtual {p0}, Lorg/restlet/engine/application/EncodeRepresentation;->getWrappedRepresentation()Lorg/restlet/representation/Representation;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/restlet/representation/Representation;->write(Ljava/io/Writer;)V

    goto :goto_0
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
    .line 325
    invoke-virtual {p0}, Lorg/restlet/engine/application/EncodeRepresentation;->canEncode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 326
    invoke-static {p1}, Lorg/restlet/engine/io/NioUtils;->getStream(Ljava/nio/channels/WritableByteChannel;)Ljava/io/OutputStream;

    move-result-object v0

    .line 327
    .local v0, "os":Ljava/io/OutputStream;
    invoke-virtual {p0, v0}, Lorg/restlet/engine/application/EncodeRepresentation;->write(Ljava/io/OutputStream;)V

    .line 328
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 332
    .end local v0    # "os":Ljava/io/OutputStream;
    :goto_0
    return-void

    .line 330
    :cond_0
    invoke-virtual {p0}, Lorg/restlet/engine/application/EncodeRepresentation;->getWrappedRepresentation()Lorg/restlet/representation/Representation;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/restlet/representation/Representation;->write(Ljava/nio/channels/WritableByteChannel;)V

    goto :goto_0
.end method

.class public Lorg/restlet/representation/FileRepresentation;
.super Lorg/restlet/representation/Representation;
.source "FileRepresentation.java"


# instance fields
.field private volatile autoDeleting:Z

.field private volatile file:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;Lorg/restlet/data/MediaType;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .param p2, "mediaType"    # Lorg/restlet/data/MediaType;

    .prologue
    .line 99
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/restlet/representation/FileRepresentation;-><init>(Ljava/io/File;Lorg/restlet/data/MediaType;I)V

    .line 100
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lorg/restlet/data/MediaType;I)V
    .locals 8
    .param p1, "file"    # Ljava/io/File;
    .param p2, "mediaType"    # Lorg/restlet/data/MediaType;
    .param p3, "timeToLive"    # I

    .prologue
    .line 117
    invoke-direct {p0, p2}, Lorg/restlet/representation/Representation;-><init>(Lorg/restlet/data/MediaType;)V

    .line 118
    iput-object p1, p0, Lorg/restlet/representation/FileRepresentation;->file:Ljava/io/File;

    .line 119
    new-instance v1, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v1}, Lorg/restlet/representation/FileRepresentation;->setModificationDate(Ljava/util/Date;)V

    .line 121
    if-nez p3, :cond_1

    .line 122
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/restlet/representation/FileRepresentation;->setExpirationDate(Ljava/util/Date;)V

    .line 128
    :cond_0
    :goto_0
    invoke-virtual {p0, p2}, Lorg/restlet/representation/FileRepresentation;->setMediaType(Lorg/restlet/data/MediaType;)V

    .line 129
    new-instance v0, Lorg/restlet/data/Disposition;

    invoke-direct {v0}, Lorg/restlet/data/Disposition;-><init>()V

    .line 130
    .local v0, "disposition":Lorg/restlet/data/Disposition;
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/restlet/data/Disposition;->setFilename(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0, v0}, Lorg/restlet/representation/FileRepresentation;->setDisposition(Lorg/restlet/data/Disposition;)V

    .line 132
    return-void

    .line 123
    .end local v0    # "disposition":Lorg/restlet/data/Disposition;
    :cond_1
    if-lez p3, :cond_0

    .line 124
    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    int-to-long v6, p3

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v1}, Lorg/restlet/representation/FileRepresentation;->setExpirationDate(Ljava/util/Date;)V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/restlet/data/MediaType;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mediaType"    # Lorg/restlet/data/MediaType;

    .prologue
    .line 145
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/restlet/representation/FileRepresentation;-><init>(Ljava/lang/String;Lorg/restlet/data/MediaType;I)V

    .line 146
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/restlet/data/MediaType;I)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mediaType"    # Lorg/restlet/data/MediaType;
    .param p3, "timeToLive"    # I

    .prologue
    .line 161
    invoke-static {p1}, Lorg/restlet/representation/FileRepresentation;->createFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lorg/restlet/representation/FileRepresentation;-><init>(Ljava/io/File;Lorg/restlet/data/MediaType;I)V

    .line 162
    return-void
.end method

.method private static createFile(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 73
    const-string v0, "file://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    new-instance v0, Lorg/restlet/data/LocalReference;

    invoke-direct {v0, p0}, Lorg/restlet/data/LocalReference;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/restlet/data/LocalReference;->getFile()Ljava/io/File;

    move-result-object v0

    .line 77
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getChannel()Ljava/nio/channels/FileChannel;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 173
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lorg/restlet/representation/FileRepresentation;->file:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, "fnfe":Ljava/io/FileNotFoundException;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Couldn\'t get the channel. File not found"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public bridge synthetic getChannel()Ljava/nio/channels/ReadableByteChannel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    invoke-virtual {p0}, Lorg/restlet/representation/FileRepresentation;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lorg/restlet/representation/FileRepresentation;->file:Ljava/io/File;

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
    .line 190
    new-instance v0, Ljava/io/FileReader;

    iget-object v1, p0, Lorg/restlet/representation/FileRepresentation;->file:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public getSize()J
    .locals 4

    .prologue
    .line 195
    invoke-super {p0}, Lorg/restlet/representation/Representation;->getSize()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 196
    invoke-super {p0}, Lorg/restlet/representation/Representation;->getSize()J

    move-result-wide v0

    .line 199
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lorg/restlet/representation/FileRepresentation;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getStream()Ljava/io/FileInputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 205
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lorg/restlet/representation/FileRepresentation;->file:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 206
    :catch_0
    move-exception v0

    .line 207
    .local v0, "fnfe":Ljava/io/FileNotFoundException;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Couldn\'t get the stream. File not found"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public bridge synthetic getStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    invoke-virtual {p0}, Lorg/restlet/representation/FileRepresentation;->getStream()Ljava/io/FileInputStream;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 217
    invoke-virtual {p0}, Lorg/restlet/representation/FileRepresentation;->getStream()Ljava/io/FileInputStream;

    move-result-object v0

    invoke-virtual {p0}, Lorg/restlet/representation/FileRepresentation;->getCharacterSet()Lorg/restlet/data/CharacterSet;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/restlet/engine/io/BioUtils;->toString(Ljava/io/InputStream;Lorg/restlet/data/CharacterSet;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAutoDeleting()Z
    .locals 1

    .prologue
    .line 228
    iget-boolean v0, p0, Lorg/restlet/representation/FileRepresentation;->autoDeleting:Z

    return v0
.end method

.method public release()V
    .locals 2

    .prologue
    .line 236
    invoke-virtual {p0}, Lorg/restlet/representation/FileRepresentation;->isAutoDeleting()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/restlet/representation/FileRepresentation;->getFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 238
    :try_start_0
    invoke-virtual {p0}, Lorg/restlet/representation/FileRepresentation;->getFile()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/restlet/engine/io/BioUtils;->delete(Ljava/io/File;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    :cond_0
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/restlet/representation/FileRepresentation;->setFile(Ljava/io/File;)V

    .line 244
    invoke-super {p0}, Lorg/restlet/representation/Representation;->release()V

    .line 245
    return-void

    .line 239
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setAutoDeleting(Z)V
    .locals 0
    .param p1, "autoDeleting"    # Z

    .prologue
    .line 256
    iput-boolean p1, p0, Lorg/restlet/representation/FileRepresentation;->autoDeleting:Z

    .line 257
    return-void
.end method

.method public setFile(Ljava/io/File;)V
    .locals 0
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 266
    iput-object p1, p0, Lorg/restlet/representation/FileRepresentation;->file:Ljava/io/File;

    .line 267
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
    .line 271
    invoke-virtual {p0}, Lorg/restlet/representation/FileRepresentation;->getStream()Ljava/io/FileInputStream;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/restlet/engine/io/BioUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 272
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
    .line 288
    invoke-virtual {p0}, Lorg/restlet/representation/FileRepresentation;->getReader()Ljava/io/Reader;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/restlet/engine/io/BioUtils;->copy(Ljava/io/Reader;Ljava/io/Writer;)V

    .line 289
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
    .line 283
    invoke-virtual {p0}, Lorg/restlet/representation/FileRepresentation;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/restlet/engine/io/NioUtils;->copy(Ljava/nio/channels/FileChannel;Ljava/nio/channels/WritableByteChannel;)V

    .line 284
    return-void
.end method

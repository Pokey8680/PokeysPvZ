.class public Lorg/restlet/util/WrapperRepresentation;
.super Lorg/restlet/representation/Representation;
.source "WrapperRepresentation.java"


# instance fields
.field private final wrappedRepresentation:Lorg/restlet/representation/Representation;


# direct methods
.method public constructor <init>(Lorg/restlet/representation/Representation;)V
    .locals 0
    .param p1, "wrappedRepresentation"    # Lorg/restlet/representation/Representation;

    .prologue
    .line 69
    invoke-direct {p0}, Lorg/restlet/representation/Representation;-><init>()V

    .line 70
    iput-object p1, p0, Lorg/restlet/util/WrapperRepresentation;->wrappedRepresentation:Lorg/restlet/representation/Representation;

    .line 71
    return-void
.end method


# virtual methods
.method public exhaust()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    invoke-virtual {p0}, Lorg/restlet/util/WrapperRepresentation;->getWrappedRepresentation()Lorg/restlet/representation/Representation;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/representation/Representation;->exhaust()J

    move-result-wide v0

    return-wide v0
.end method

.method public getAvailableSize()J
    .locals 2

    .prologue
    .line 80
    invoke-virtual {p0}, Lorg/restlet/util/WrapperRepresentation;->getWrappedRepresentation()Lorg/restlet/representation/Representation;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/representation/Representation;->getAvailableSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getChannel()Ljava/nio/channels/ReadableByteChannel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    invoke-virtual {p0}, Lorg/restlet/util/WrapperRepresentation;->getWrappedRepresentation()Lorg/restlet/representation/Representation;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/representation/Representation;->getChannel()Ljava/nio/channels/ReadableByteChannel;

    move-result-object v0

    return-object v0
.end method

.method public getCharacterSet()Lorg/restlet/data/CharacterSet;
    .locals 1

    .prologue
    .line 91
    invoke-virtual {p0}, Lorg/restlet/util/WrapperRepresentation;->getWrappedRepresentation()Lorg/restlet/representation/Representation;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/representation/Representation;->getCharacterSet()Lorg/restlet/data/CharacterSet;

    move-result-object v0

    return-object v0
.end method

.method public getDigest()Lorg/restlet/data/Digest;
    .locals 1

    .prologue
    .line 96
    invoke-virtual {p0}, Lorg/restlet/util/WrapperRepresentation;->getWrappedRepresentation()Lorg/restlet/representation/Representation;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/representation/Representation;->getDigest()Lorg/restlet/data/Digest;

    move-result-object v0

    return-object v0
.end method

.method public getDisposition()Lorg/restlet/data/Disposition;
    .locals 1

    .prologue
    .line 101
    invoke-virtual {p0}, Lorg/restlet/util/WrapperRepresentation;->getWrappedRepresentation()Lorg/restlet/representation/Representation;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/representation/Representation;->getDisposition()Lorg/restlet/data/Disposition;

    move-result-object v0

    return-object v0
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
    .line 106
    invoke-virtual {p0}, Lorg/restlet/util/WrapperRepresentation;->getWrappedRepresentation()Lorg/restlet/representation/Representation;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/representation/Representation;->getEncodings()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getExpirationDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 111
    invoke-virtual {p0}, Lorg/restlet/util/WrapperRepresentation;->getWrappedRepresentation()Lorg/restlet/representation/Representation;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/representation/Representation;->getExpirationDate()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getLanguages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/Language;",
            ">;"
        }
    .end annotation

    .prologue
    .line 116
    invoke-virtual {p0}, Lorg/restlet/util/WrapperRepresentation;->getWrappedRepresentation()Lorg/restlet/representation/Representation;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/representation/Representation;->getLanguages()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLocationRef()Lorg/restlet/data/Reference;
    .locals 1

    .prologue
    .line 121
    invoke-virtual {p0}, Lorg/restlet/util/WrapperRepresentation;->getWrappedRepresentation()Lorg/restlet/representation/Representation;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/representation/Representation;->getLocationRef()Lorg/restlet/data/Reference;

    move-result-object v0

    return-object v0
.end method

.method public getMediaType()Lorg/restlet/data/MediaType;
    .locals 1

    .prologue
    .line 126
    invoke-virtual {p0}, Lorg/restlet/util/WrapperRepresentation;->getWrappedRepresentation()Lorg/restlet/representation/Representation;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/representation/Representation;->getMediaType()Lorg/restlet/data/MediaType;

    move-result-object v0

    return-object v0
.end method

.method public getModificationDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 131
    invoke-virtual {p0}, Lorg/restlet/util/WrapperRepresentation;->getWrappedRepresentation()Lorg/restlet/representation/Representation;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/representation/Representation;->getModificationDate()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getRange()Lorg/restlet/data/Range;
    .locals 1

    .prologue
    .line 136
    invoke-virtual {p0}, Lorg/restlet/util/WrapperRepresentation;->getWrappedRepresentation()Lorg/restlet/representation/Representation;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/representation/Representation;->getRange()Lorg/restlet/data/Range;

    move-result-object v0

    return-object v0
.end method

.method public getReader()Ljava/io/Reader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 141
    invoke-virtual {p0}, Lorg/restlet/util/WrapperRepresentation;->getWrappedRepresentation()Lorg/restlet/representation/Representation;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/representation/Representation;->getReader()Ljava/io/Reader;

    move-result-object v0

    return-object v0
.end method

.method public getRegistration()Lorg/restlet/util/SelectionRegistration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 191
    invoke-virtual {p0}, Lorg/restlet/util/WrapperRepresentation;->getWrappedRepresentation()Lorg/restlet/representation/Representation;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/representation/Representation;->getRegistration()Lorg/restlet/util/SelectionRegistration;

    move-result-object v0

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 146
    invoke-virtual {p0}, Lorg/restlet/util/WrapperRepresentation;->getWrappedRepresentation()Lorg/restlet/representation/Representation;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/representation/Representation;->getSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 151
    invoke-virtual {p0}, Lorg/restlet/util/WrapperRepresentation;->getWrappedRepresentation()Lorg/restlet/representation/Representation;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/representation/Representation;->getStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getTag()Lorg/restlet/data/Tag;
    .locals 1

    .prologue
    .line 156
    invoke-virtual {p0}, Lorg/restlet/util/WrapperRepresentation;->getWrappedRepresentation()Lorg/restlet/representation/Representation;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/representation/Representation;->getTag()Lorg/restlet/data/Tag;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 161
    invoke-virtual {p0}, Lorg/restlet/util/WrapperRepresentation;->getWrappedRepresentation()Lorg/restlet/representation/Representation;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/representation/Representation;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWrappedRepresentation()Lorg/restlet/representation/Representation;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lorg/restlet/util/WrapperRepresentation;->wrappedRepresentation:Lorg/restlet/representation/Representation;

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .prologue
    .line 175
    invoke-virtual {p0}, Lorg/restlet/util/WrapperRepresentation;->getWrappedRepresentation()Lorg/restlet/representation/Representation;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/representation/Representation;->isAvailable()Z

    move-result v0

    return v0
.end method

.method public isSelectable()Z
    .locals 1

    .prologue
    .line 180
    invoke-virtual {p0}, Lorg/restlet/util/WrapperRepresentation;->getWrappedRepresentation()Lorg/restlet/representation/Representation;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/representation/Representation;->isSelectable()Z

    move-result v0

    return v0
.end method

.method public isTransient()Z
    .locals 1

    .prologue
    .line 185
    invoke-virtual {p0}, Lorg/restlet/util/WrapperRepresentation;->getWrappedRepresentation()Lorg/restlet/representation/Representation;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/representation/Representation;->isTransient()Z

    move-result v0

    return v0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 196
    invoke-virtual {p0}, Lorg/restlet/util/WrapperRepresentation;->getWrappedRepresentation()Lorg/restlet/representation/Representation;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/representation/Representation;->release()V

    .line 197
    return-void
.end method

.method public setAvailable(Z)V
    .locals 1
    .param p1, "isAvailable"    # Z

    .prologue
    .line 201
    invoke-virtual {p0}, Lorg/restlet/util/WrapperRepresentation;->getWrappedRepresentation()Lorg/restlet/representation/Representation;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/restlet/representation/Representation;->setAvailable(Z)V

    .line 202
    return-void
.end method

.method public setCharacterSet(Lorg/restlet/data/CharacterSet;)V
    .locals 1
    .param p1, "characterSet"    # Lorg/restlet/data/CharacterSet;

    .prologue
    .line 206
    invoke-virtual {p0}, Lorg/restlet/util/WrapperRepresentation;->getWrappedRepresentation()Lorg/restlet/representation/Representation;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/restlet/representation/Representation;->setCharacterSet(Lorg/restlet/data/CharacterSet;)V

    .line 207
    return-void
.end method

.method public setDigest(Lorg/restlet/data/Digest;)V
    .locals 1
    .param p1, "digest"    # Lorg/restlet/data/Digest;

    .prologue
    .line 211
    invoke-virtual {p0}, Lorg/restlet/util/WrapperRepresentation;->getWrappedRepresentation()Lorg/restlet/representation/Representation;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/restlet/representation/Representation;->setDigest(Lorg/restlet/data/Digest;)V

    .line 212
    return-void
.end method

.method public setDisposition(Lorg/restlet/data/Disposition;)V
    .locals 1
    .param p1, "disposition"    # Lorg/restlet/data/Disposition;

    .prologue
    .line 216
    invoke-virtual {p0}, Lorg/restlet/util/WrapperRepresentation;->getWrappedRepresentation()Lorg/restlet/representation/Representation;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/restlet/representation/Representation;->setDisposition(Lorg/restlet/data/Disposition;)V

    .line 217
    return-void
.end method

.method public setEncodings(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/Encoding;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 221
    .local p1, "encodings":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Encoding;>;"
    invoke-virtual {p0}, Lorg/restlet/util/WrapperRepresentation;->getWrappedRepresentation()Lorg/restlet/representation/Representation;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/restlet/representation/Representation;->setEncodings(Ljava/util/List;)V

    .line 222
    return-void
.end method

.method public setExpirationDate(Ljava/util/Date;)V
    .locals 1
    .param p1, "expirationDate"    # Ljava/util/Date;

    .prologue
    .line 226
    invoke-virtual {p0}, Lorg/restlet/util/WrapperRepresentation;->getWrappedRepresentation()Lorg/restlet/representation/Representation;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/restlet/representation/Representation;->setExpirationDate(Ljava/util/Date;)V

    .line 227
    return-void
.end method

.method public setLanguages(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/Language;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 231
    .local p1, "languages":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Language;>;"
    invoke-virtual {p0}, Lorg/restlet/util/WrapperRepresentation;->getWrappedRepresentation()Lorg/restlet/representation/Representation;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/restlet/representation/Representation;->setLanguages(Ljava/util/List;)V

    .line 232
    return-void
.end method

.method public setLocationRef(Ljava/lang/String;)V
    .locals 1
    .param p1, "locationUri"    # Ljava/lang/String;

    .prologue
    .line 241
    invoke-virtual {p0}, Lorg/restlet/util/WrapperRepresentation;->getWrappedRepresentation()Lorg/restlet/representation/Representation;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/restlet/representation/Representation;->setLocationRef(Ljava/lang/String;)V

    .line 242
    return-void
.end method

.method public setLocationRef(Lorg/restlet/data/Reference;)V
    .locals 1
    .param p1, "location"    # Lorg/restlet/data/Reference;

    .prologue
    .line 236
    invoke-virtual {p0}, Lorg/restlet/util/WrapperRepresentation;->getWrappedRepresentation()Lorg/restlet/representation/Representation;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/restlet/representation/Representation;->setLocationRef(Lorg/restlet/data/Reference;)V

    .line 237
    return-void
.end method

.method public setMediaType(Lorg/restlet/data/MediaType;)V
    .locals 1
    .param p1, "mediaType"    # Lorg/restlet/data/MediaType;

    .prologue
    .line 246
    invoke-virtual {p0}, Lorg/restlet/util/WrapperRepresentation;->getWrappedRepresentation()Lorg/restlet/representation/Representation;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/restlet/representation/Representation;->setMediaType(Lorg/restlet/data/MediaType;)V

    .line 247
    return-void
.end method

.method public setModificationDate(Ljava/util/Date;)V
    .locals 1
    .param p1, "modificationDate"    # Ljava/util/Date;

    .prologue
    .line 251
    invoke-virtual {p0}, Lorg/restlet/util/WrapperRepresentation;->getWrappedRepresentation()Lorg/restlet/representation/Representation;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/restlet/representation/Representation;->setModificationDate(Ljava/util/Date;)V

    .line 252
    return-void
.end method

.method public setRange(Lorg/restlet/data/Range;)V
    .locals 1
    .param p1, "range"    # Lorg/restlet/data/Range;

    .prologue
    .line 256
    invoke-virtual {p0}, Lorg/restlet/util/WrapperRepresentation;->getWrappedRepresentation()Lorg/restlet/representation/Representation;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/restlet/representation/Representation;->setRange(Lorg/restlet/data/Range;)V

    .line 257
    return-void
.end method

.method public setSize(J)V
    .locals 1
    .param p1, "expectedSize"    # J

    .prologue
    .line 261
    invoke-virtual {p0}, Lorg/restlet/util/WrapperRepresentation;->getWrappedRepresentation()Lorg/restlet/representation/Representation;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/restlet/representation/Representation;->setSize(J)V

    .line 262
    return-void
.end method

.method public setTag(Lorg/restlet/data/Tag;)V
    .locals 1
    .param p1, "tag"    # Lorg/restlet/data/Tag;

    .prologue
    .line 266
    invoke-virtual {p0}, Lorg/restlet/util/WrapperRepresentation;->getWrappedRepresentation()Lorg/restlet/representation/Representation;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/restlet/representation/Representation;->setTag(Lorg/restlet/data/Tag;)V

    .line 267
    return-void
.end method

.method public setTransient(Z)V
    .locals 1
    .param p1, "isTransient"    # Z

    .prologue
    .line 271
    invoke-virtual {p0}, Lorg/restlet/util/WrapperRepresentation;->getWrappedRepresentation()Lorg/restlet/representation/Representation;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/restlet/representation/Representation;->setTransient(Z)V

    .line 272
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
    .line 276
    invoke-virtual {p0}, Lorg/restlet/util/WrapperRepresentation;->getWrappedRepresentation()Lorg/restlet/representation/Representation;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/restlet/representation/Representation;->write(Ljava/io/OutputStream;)V

    .line 277
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
    .line 281
    invoke-virtual {p0}, Lorg/restlet/util/WrapperRepresentation;->getWrappedRepresentation()Lorg/restlet/representation/Representation;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/restlet/representation/Representation;->write(Ljava/io/Writer;)V

    .line 282
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
    .line 287
    invoke-virtual {p0}, Lorg/restlet/util/WrapperRepresentation;->getWrappedRepresentation()Lorg/restlet/representation/Representation;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/restlet/representation/Representation;->write(Ljava/nio/channels/WritableByteChannel;)V

    .line 288
    return-void
.end method

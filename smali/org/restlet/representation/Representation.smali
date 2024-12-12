.class public abstract Lorg/restlet/representation/Representation;
.super Lorg/restlet/representation/RepresentationInfo;
.source "Representation.java"


# static fields
.field public static final UNKNOWN_SIZE:J = -0x1L


# instance fields
.field private volatile available:Z

.field private volatile digest:Lorg/restlet/data/Digest;

.field private volatile disposition:Lorg/restlet/data/Disposition;

.field private volatile expirationDate:Ljava/util/Date;

.field private volatile isTransient:Z

.field private volatile range:Lorg/restlet/data/Range;

.field private volatile size:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/restlet/representation/Representation;-><init>(Lorg/restlet/data/MediaType;)V

    .line 119
    return-void
.end method

.method public constructor <init>(Lorg/restlet/data/MediaType;)V
    .locals 3
    .param p1, "mediaType"    # Lorg/restlet/data/MediaType;

    .prologue
    const/4 v2, 0x0

    .line 128
    invoke-direct {p0, p1}, Lorg/restlet/representation/RepresentationInfo;-><init>(Lorg/restlet/data/MediaType;)V

    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/restlet/representation/Representation;->available:Z

    .line 130
    iput-object v2, p0, Lorg/restlet/representation/Representation;->disposition:Lorg/restlet/data/Disposition;

    .line 131
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/restlet/representation/Representation;->isTransient:Z

    .line 132
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/restlet/representation/Representation;->size:J

    .line 133
    iput-object v2, p0, Lorg/restlet/representation/Representation;->expirationDate:Ljava/util/Date;

    .line 134
    iput-object v2, p0, Lorg/restlet/representation/Representation;->digest:Lorg/restlet/data/Digest;

    .line 135
    iput-object v2, p0, Lorg/restlet/representation/Representation;->range:Lorg/restlet/data/Range;

    .line 136
    return-void
.end method

.method public constructor <init>(Lorg/restlet/data/MediaType;Ljava/util/Date;)V
    .locals 1
    .param p1, "mediaType"    # Lorg/restlet/data/MediaType;
    .param p2, "modificationDate"    # Ljava/util/Date;

    .prologue
    .line 147
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/restlet/representation/Representation;-><init>(Lorg/restlet/data/MediaType;Ljava/util/Date;Lorg/restlet/data/Tag;)V

    .line 148
    return-void
.end method

.method public constructor <init>(Lorg/restlet/data/MediaType;Ljava/util/Date;Lorg/restlet/data/Tag;)V
    .locals 0
    .param p1, "mediaType"    # Lorg/restlet/data/MediaType;
    .param p2, "modificationDate"    # Ljava/util/Date;
    .param p3, "tag"    # Lorg/restlet/data/Tag;

    .prologue
    .line 161
    invoke-direct {p0, p1, p2, p3}, Lorg/restlet/representation/RepresentationInfo;-><init>(Lorg/restlet/data/MediaType;Ljava/util/Date;Lorg/restlet/data/Tag;)V

    .line 162
    return-void
.end method

.method public constructor <init>(Lorg/restlet/data/MediaType;Lorg/restlet/data/Tag;)V
    .locals 1
    .param p1, "mediaType"    # Lorg/restlet/data/MediaType;
    .param p2, "tag"    # Lorg/restlet/data/Tag;

    .prologue
    .line 173
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/restlet/representation/Representation;-><init>(Lorg/restlet/data/MediaType;Ljava/util/Date;Lorg/restlet/data/Tag;)V

    .line 174
    return-void
.end method

.method public constructor <init>(Lorg/restlet/representation/Variant;Ljava/util/Date;)V
    .locals 1
    .param p1, "variant"    # Lorg/restlet/representation/Variant;
    .param p2, "modificationDate"    # Ljava/util/Date;

    .prologue
    .line 185
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/restlet/representation/Representation;-><init>(Lorg/restlet/representation/Variant;Ljava/util/Date;Lorg/restlet/data/Tag;)V

    .line 186
    return-void
.end method

.method public constructor <init>(Lorg/restlet/representation/Variant;Ljava/util/Date;Lorg/restlet/data/Tag;)V
    .locals 1
    .param p1, "variant"    # Lorg/restlet/representation/Variant;
    .param p2, "modificationDate"    # Ljava/util/Date;
    .param p3, "tag"    # Lorg/restlet/data/Tag;

    .prologue
    .line 198
    invoke-direct {p0}, Lorg/restlet/representation/RepresentationInfo;-><init>()V

    .line 199
    invoke-virtual {p1}, Lorg/restlet/representation/Variant;->getCharacterSet()Lorg/restlet/data/CharacterSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/restlet/representation/Representation;->setCharacterSet(Lorg/restlet/data/CharacterSet;)V

    .line 200
    invoke-virtual {p1}, Lorg/restlet/representation/Variant;->getEncodings()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/restlet/representation/Representation;->setEncodings(Ljava/util/List;)V

    .line 201
    invoke-virtual {p1}, Lorg/restlet/representation/Variant;->getLocationRef()Lorg/restlet/data/Reference;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/restlet/representation/Representation;->setLocationRef(Lorg/restlet/data/Reference;)V

    .line 202
    invoke-virtual {p1}, Lorg/restlet/representation/Variant;->getLanguages()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/restlet/representation/Representation;->setLanguages(Ljava/util/List;)V

    .line 203
    invoke-virtual {p1}, Lorg/restlet/representation/Variant;->getMediaType()Lorg/restlet/data/MediaType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/restlet/representation/Representation;->setMediaType(Lorg/restlet/data/MediaType;)V

    .line 204
    invoke-virtual {p0, p2}, Lorg/restlet/representation/Representation;->setModificationDate(Ljava/util/Date;)V

    .line 205
    invoke-virtual {p0, p3}, Lorg/restlet/representation/Representation;->setTag(Lorg/restlet/data/Tag;)V

    .line 206
    return-void
.end method

.method public constructor <init>(Lorg/restlet/representation/Variant;Lorg/restlet/data/Tag;)V
    .locals 1
    .param p1, "variant"    # Lorg/restlet/representation/Variant;
    .param p2, "tag"    # Lorg/restlet/data/Tag;

    .prologue
    .line 217
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/restlet/representation/Representation;-><init>(Lorg/restlet/representation/Variant;Ljava/util/Date;Lorg/restlet/data/Tag;)V

    .line 218
    return-void
.end method


# virtual methods
.method public append(Ljava/lang/Appendable;)V
    .locals 1
    .param p1, "appendable"    # Ljava/lang/Appendable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 232
    invoke-virtual {p0}, Lorg/restlet/representation/Representation;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 233
    return-void
.end method

.method public exhaust()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 243
    const-wide/16 v2, -0x1

    .line 245
    .local v2, "result":J
    invoke-virtual {p0}, Lorg/restlet/representation/Representation;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 246
    invoke-virtual {p0}, Lorg/restlet/representation/Representation;->getStream()Ljava/io/InputStream;

    move-result-object v0

    .line 247
    .local v0, "is":Ljava/io/InputStream;
    invoke-static {v0}, Lorg/restlet/engine/io/BioUtils;->exhaust(Ljava/io/InputStream;)J

    move-result-wide v2

    .line 248
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 251
    .end local v0    # "is":Ljava/io/InputStream;
    :cond_0
    return-wide v2
.end method

.method public getAvailableSize()J
    .locals 2

    .prologue
    .line 262
    invoke-static {p0}, Lorg/restlet/engine/io/BioUtils;->getAvailableSize(Lorg/restlet/representation/Representation;)J

    move-result-wide v0

    return-wide v0
.end method

.method public abstract getChannel()Ljava/nio/channels/ReadableByteChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getDigest()Lorg/restlet/data/Digest;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lorg/restlet/representation/Representation;->digest:Lorg/restlet/data/Digest;

    return-object v0
.end method

.method public getDisposition()Lorg/restlet/data/Disposition;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lorg/restlet/representation/Representation;->disposition:Lorg/restlet/data/Disposition;

    return-object v0
.end method

.method public getExpirationDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lorg/restlet/representation/Representation;->expirationDate:Ljava/util/Date;

    return-object v0
.end method

.method public getRange()Lorg/restlet/data/Range;
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lorg/restlet/representation/Representation;->range:Lorg/restlet/data/Range;

    return-object v0
.end method

.method public abstract getReader()Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getRegistration()Lorg/restlet/util/SelectionRegistration;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 349
    invoke-virtual {p0}, Lorg/restlet/representation/Representation;->isSelectable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    invoke-virtual {p0}, Lorg/restlet/representation/Representation;->getChannel()Ljava/nio/channels/ReadableByteChannel;

    move-result-object v0

    check-cast v0, Lorg/restlet/engine/io/SelectionChannel;

    invoke-interface {v0}, Lorg/restlet/engine/io/SelectionChannel;->getRegistration()Lorg/restlet/util/SelectionRegistration;

    move-result-object v0

    return-object v0

    .line 353
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The representation isn\'t selectable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 370
    iget-wide v0, p0, Lorg/restlet/representation/Representation;->size:J

    return-wide v0
.end method

.method public abstract getStream()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getText()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 391
    const/4 v0, 0x0

    .line 393
    .local v0, "result":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/restlet/representation/Representation;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 394
    const-string v0, ""

    .line 402
    :cond_0
    :goto_0
    return-object v0

    .line 395
    :cond_1
    invoke-virtual {p0}, Lorg/restlet/representation/Representation;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 396
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 397
    .local v1, "sw":Ljava/io/StringWriter;
    invoke-virtual {p0, v1}, Lorg/restlet/representation/Representation;->write(Ljava/io/Writer;)V

    .line 398
    invoke-virtual {v1}, Ljava/io/StringWriter;->flush()V

    .line 399
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public hasKnownSize()Z
    .locals 4

    .prologue
    .line 412
    invoke-virtual {p0}, Lorg/restlet/representation/Representation;->getSize()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAvailable()Z
    .locals 4

    .prologue
    .line 430
    iget-boolean v0, p0, Lorg/restlet/representation/Representation;->available:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/restlet/representation/Representation;->getSize()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 4

    .prologue
    .line 440
    invoke-virtual {p0}, Lorg/restlet/representation/Representation;->getSize()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSelectable()Z
    .locals 2

    .prologue
    .line 455
    :try_start_0
    invoke-virtual {p0}, Lorg/restlet/representation/Representation;->getChannel()Ljava/nio/channels/ReadableByteChannel;

    move-result-object v1

    instance-of v1, v1, Lorg/restlet/engine/io/SelectionChannel;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 457
    :goto_0
    return v1

    .line 456
    :catch_0
    move-exception v0

    .line 457
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isTransient()Z
    .locals 1

    .prologue
    .line 471
    iget-boolean v0, p0, Lorg/restlet/representation/Representation;->isTransient:Z

    return v0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 500
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/restlet/representation/Representation;->setAvailable(Z)V

    .line 501
    return-void
.end method

.method public setAvailable(Z)V
    .locals 0
    .param p1, "available"    # Z

    .prologue
    .line 510
    iput-boolean p1, p0, Lorg/restlet/representation/Representation;->available:Z

    .line 511
    return-void
.end method

.method public setDigest(Lorg/restlet/data/Digest;)V
    .locals 0
    .param p1, "digest"    # Lorg/restlet/data/Digest;

    .prologue
    .line 523
    iput-object p1, p0, Lorg/restlet/representation/Representation;->digest:Lorg/restlet/data/Digest;

    .line 524
    return-void
.end method

.method public setDisposition(Lorg/restlet/data/Disposition;)V
    .locals 0
    .param p1, "disposition"    # Lorg/restlet/data/Disposition;

    .prologue
    .line 533
    iput-object p1, p0, Lorg/restlet/representation/Representation;->disposition:Lorg/restlet/data/Disposition;

    .line 534
    return-void
.end method

.method public setExpirationDate(Ljava/util/Date;)V
    .locals 1
    .param p1, "expirationDate"    # Ljava/util/Date;

    .prologue
    .line 547
    invoke-static {p1}, Lorg/restlet/engine/util/DateUtils;->unmodifiable(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lorg/restlet/representation/Representation;->expirationDate:Ljava/util/Date;

    .line 548
    return-void
.end method

.method public setListener(Lorg/restlet/util/ReadingListener;)V
    .locals 5
    .param p1, "readingListener"    # Lorg/restlet/util/ReadingListener;

    .prologue
    .line 559
    :try_start_0
    invoke-virtual {p0}, Lorg/restlet/representation/Representation;->getRegistration()Lorg/restlet/util/SelectionRegistration;

    move-result-object v1

    .line 561
    .local v1, "sr":Lorg/restlet/util/SelectionRegistration;
    if-nez p1, :cond_0

    .line 562
    invoke-virtual {v1}, Lorg/restlet/util/SelectionRegistration;->setNoInterest()V

    .line 567
    :goto_0
    invoke-virtual {v1, p1}, Lorg/restlet/util/SelectionRegistration;->setSelectionListener(Lorg/restlet/util/SelectionListener;)V

    .line 572
    .end local v1    # "sr":Lorg/restlet/util/SelectionRegistration;
    :goto_1
    return-void

    .line 564
    .restart local v1    # "sr":Lorg/restlet/util/SelectionRegistration;
    :cond_0
    invoke-virtual {v1}, Lorg/restlet/util/SelectionRegistration;->setReadInterest()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 568
    .end local v1    # "sr":Lorg/restlet/util/SelectionRegistration;
    :catch_0
    move-exception v0

    .line 569
    .local v0, "ioe":Ljava/io/IOException;
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "Unable to register the reading listener"

    invoke-virtual {v2, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public setRange(Lorg/restlet/data/Range;)V
    .locals 0
    .param p1, "range"    # Lorg/restlet/data/Range;

    .prologue
    .line 585
    iput-object p1, p0, Lorg/restlet/representation/Representation;->range:Lorg/restlet/data/Range;

    .line 586
    return-void
.end method

.method public setSize(J)V
    .locals 1
    .param p1, "expectedSize"    # J

    .prologue
    .line 599
    iput-wide p1, p0, Lorg/restlet/representation/Representation;->size:J

    .line 600
    return-void
.end method

.method public setTransient(Z)V
    .locals 0
    .param p1, "isTransient"    # Z

    .prologue
    .line 609
    iput-boolean p1, p0, Lorg/restlet/representation/Representation;->isTransient:Z

    .line 610
    return-void
.end method

.method public abstract write(Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract write(Ljava/io/Writer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract write(Ljava/nio/channels/WritableByteChannel;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

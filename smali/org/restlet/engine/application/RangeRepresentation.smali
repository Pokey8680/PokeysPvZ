.class public Lorg/restlet/engine/application/RangeRepresentation;
.super Lorg/restlet/util/WrapperRepresentation;
.source "RangeRepresentation.java"


# instance fields
.field private volatile range:Lorg/restlet/data/Range;


# direct methods
.method public constructor <init>(Lorg/restlet/representation/Representation;)V
    .locals 1
    .param p1, "wrappedRepresentation"    # Lorg/restlet/representation/Representation;

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/restlet/engine/application/RangeRepresentation;-><init>(Lorg/restlet/representation/Representation;Lorg/restlet/data/Range;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Lorg/restlet/representation/Representation;Lorg/restlet/data/Range;)V
    .locals 2
    .param p1, "wrappedRepresentation"    # Lorg/restlet/representation/Representation;
    .param p2, "range"    # Lorg/restlet/data/Range;

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lorg/restlet/util/WrapperRepresentation;-><init>(Lorg/restlet/representation/Representation;)V

    .line 81
    invoke-virtual {p1}, Lorg/restlet/representation/Representation;->getRange()Lorg/restlet/data/Range;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 82
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The wrapped representation must not have a range set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_0
    invoke-virtual {p0, p2}, Lorg/restlet/engine/application/RangeRepresentation;->setRange(Lorg/restlet/data/Range;)V

    .line 86
    return-void
.end method


# virtual methods
.method public getAvailableSize()J
    .locals 2

    .prologue
    .line 90
    invoke-static {p0}, Lorg/restlet/engine/io/BioUtils;->getAvailableSize(Lorg/restlet/representation/Representation;)J

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
    .line 96
    invoke-virtual {p0}, Lorg/restlet/engine/application/RangeRepresentation;->getStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lorg/restlet/engine/io/NioUtils;->getChannel(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;

    move-result-object v0

    return-object v0
.end method

.method public getRange()Lorg/restlet/data/Range;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lorg/restlet/engine/application/RangeRepresentation;->range:Lorg/restlet/data/Range;

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
    .line 112
    invoke-virtual {p0}, Lorg/restlet/engine/application/RangeRepresentation;->getStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0}, Lorg/restlet/engine/application/RangeRepresentation;->getCharacterSet()Lorg/restlet/data/CharacterSet;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/restlet/engine/io/BioUtils;->getReader(Ljava/io/InputStream;Lorg/restlet/data/CharacterSet;)Ljava/io/Reader;

    move-result-object v0

    return-object v0
.end method

.method public getStream()Ljava/io/InputStream;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    new-instance v0, Lorg/restlet/engine/io/RangeInputStream;

    invoke-super {p0}, Lorg/restlet/util/WrapperRepresentation;->getStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {p0}, Lorg/restlet/engine/application/RangeRepresentation;->getSize()J

    move-result-wide v2

    invoke-virtual {p0}, Lorg/restlet/engine/application/RangeRepresentation;->getRange()Lorg/restlet/data/Range;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/restlet/engine/io/RangeInputStream;-><init>(Ljava/io/InputStream;JLorg/restlet/data/Range;)V

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
    .line 122
    invoke-static {p0}, Lorg/restlet/engine/io/BioUtils;->getText(Lorg/restlet/representation/Representation;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setRange(Lorg/restlet/data/Range;)V
    .locals 0
    .param p1, "range"    # Lorg/restlet/data/Range;

    .prologue
    .line 134
    iput-object p1, p0, Lorg/restlet/engine/application/RangeRepresentation;->range:Lorg/restlet/data/Range;

    .line 135
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
    .line 146
    invoke-virtual {p0}, Lorg/restlet/engine/application/RangeRepresentation;->getStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/restlet/engine/io/BioUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 147
    return-void
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
    .line 139
    invoke-virtual {p0}, Lorg/restlet/engine/application/RangeRepresentation;->getCharacterSet()Lorg/restlet/data/CharacterSet;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/restlet/engine/io/BioUtils;->getStream(Ljava/io/Writer;Lorg/restlet/data/CharacterSet;)Ljava/io/OutputStream;

    move-result-object v0

    .line 140
    .local v0, "os":Ljava/io/OutputStream;
    invoke-virtual {p0, v0}, Lorg/restlet/engine/application/RangeRepresentation;->write(Ljava/io/OutputStream;)V

    .line 141
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 142
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
    .line 151
    invoke-static {p1}, Lorg/restlet/engine/io/NioUtils;->getStream(Ljava/nio/channels/WritableByteChannel;)Ljava/io/OutputStream;

    move-result-object v0

    .line 152
    .local v0, "os":Ljava/io/OutputStream;
    invoke-virtual {p0, v0}, Lorg/restlet/engine/application/RangeRepresentation;->write(Ljava/io/OutputStream;)V

    .line 153
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 154
    return-void
.end method

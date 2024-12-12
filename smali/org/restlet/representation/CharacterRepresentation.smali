.class public abstract Lorg/restlet/representation/CharacterRepresentation;
.super Lorg/restlet/representation/Representation;
.source "CharacterRepresentation.java"


# direct methods
.method public constructor <init>(Lorg/restlet/data/MediaType;)V
    .locals 1
    .param p1, "mediaType"    # Lorg/restlet/data/MediaType;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lorg/restlet/representation/Representation;-><init>(Lorg/restlet/data/MediaType;)V

    .line 59
    sget-object v0, Lorg/restlet/data/CharacterSet;->UTF_8:Lorg/restlet/data/CharacterSet;

    invoke-virtual {p0, v0}, Lorg/restlet/representation/CharacterRepresentation;->setCharacterSet(Lorg/restlet/data/CharacterSet;)V

    .line 60
    return-void
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
    .line 65
    invoke-virtual {p0}, Lorg/restlet/representation/CharacterRepresentation;->getStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lorg/restlet/engine/io/NioUtils;->getChannel(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;

    move-result-object v0

    return-object v0
.end method

.method public getStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    invoke-virtual {p0}, Lorg/restlet/representation/CharacterRepresentation;->getReader()Ljava/io/Reader;

    move-result-object v0

    invoke-virtual {p0}, Lorg/restlet/representation/CharacterRepresentation;->getCharacterSet()Lorg/restlet/data/CharacterSet;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/restlet/engine/io/BioUtils;->getStream(Ljava/io/Reader;Lorg/restlet/data/CharacterSet;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    invoke-virtual {p0}, Lorg/restlet/representation/CharacterRepresentation;->getCharacterSet()Lorg/restlet/data/CharacterSet;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/restlet/engine/io/BioUtils;->getWriter(Ljava/io/OutputStream;Lorg/restlet/data/CharacterSet;)Ljava/io/Writer;

    move-result-object v0

    .line 76
    .local v0, "writer":Ljava/io/Writer;
    invoke-virtual {p0, v0}, Lorg/restlet/representation/CharacterRepresentation;->write(Ljava/io/Writer;)V

    .line 77
    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 78
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
    .line 83
    invoke-static {p1}, Lorg/restlet/engine/io/NioUtils;->getStream(Ljava/nio/channels/WritableByteChannel;)Ljava/io/OutputStream;

    move-result-object v0

    .line 85
    .local v0, "os":Ljava/io/OutputStream;
    invoke-virtual {p0, v0}, Lorg/restlet/representation/CharacterRepresentation;->write(Ljava/io/OutputStream;)V

    .line 86
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 87
    return-void
.end method

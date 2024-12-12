.class public abstract Lorg/restlet/representation/StreamRepresentation;
.super Lorg/restlet/representation/Representation;
.source "StreamRepresentation.java"


# direct methods
.method public constructor <init>(Lorg/restlet/data/MediaType;)V
    .locals 0
    .param p1, "mediaType"    # Lorg/restlet/data/MediaType;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lorg/restlet/representation/Representation;-><init>(Lorg/restlet/data/MediaType;)V

    .line 58
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
    .line 63
    invoke-virtual {p0}, Lorg/restlet/representation/StreamRepresentation;->getStream()Ljava/io/InputStream;

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
    .line 68
    invoke-virtual {p0}, Lorg/restlet/representation/StreamRepresentation;->getStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0}, Lorg/restlet/representation/StreamRepresentation;->getCharacterSet()Lorg/restlet/data/CharacterSet;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/restlet/engine/io/BioUtils;->getReader(Ljava/io/InputStream;Lorg/restlet/data/CharacterSet;)Ljava/io/Reader;

    move-result-object v0

    return-object v0
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
    .line 82
    invoke-virtual {p0}, Lorg/restlet/representation/StreamRepresentation;->getCharacterSet()Lorg/restlet/data/CharacterSet;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/restlet/engine/io/BioUtils;->getStream(Ljava/io/Writer;Lorg/restlet/data/CharacterSet;)Ljava/io/OutputStream;

    move-result-object v0

    .line 83
    .local v0, "os":Ljava/io/OutputStream;
    invoke-virtual {p0, v0}, Lorg/restlet/representation/StreamRepresentation;->write(Ljava/io/OutputStream;)V

    .line 84
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 85
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
    .line 74
    invoke-static {p1}, Lorg/restlet/engine/io/NioUtils;->getStream(Ljava/nio/channels/WritableByteChannel;)Ljava/io/OutputStream;

    move-result-object v0

    .line 76
    .local v0, "os":Ljava/io/OutputStream;
    invoke-virtual {p0, v0}, Lorg/restlet/representation/StreamRepresentation;->write(Ljava/io/OutputStream;)V

    .line 77
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 78
    return-void
.end method

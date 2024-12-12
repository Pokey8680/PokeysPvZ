.class public abstract Lorg/restlet/representation/ChannelRepresentation;
.super Lorg/restlet/representation/Representation;
.source "ChannelRepresentation.java"


# direct methods
.method public constructor <init>(Lorg/restlet/data/MediaType;)V
    .locals 0
    .param p1, "mediaType"    # Lorg/restlet/data/MediaType;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lorg/restlet/representation/Representation;-><init>(Lorg/restlet/data/MediaType;)V

    .line 61
    return-void
.end method


# virtual methods
.method public getReader()Ljava/io/Reader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    invoke-virtual {p0}, Lorg/restlet/representation/ChannelRepresentation;->getStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0}, Lorg/restlet/representation/ChannelRepresentation;->getCharacterSet()Lorg/restlet/data/CharacterSet;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/restlet/engine/io/BioUtils;->getReader(Ljava/io/InputStream;Lorg/restlet/data/CharacterSet;)Ljava/io/Reader;

    move-result-object v0

    return-object v0
.end method

.method public getStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    invoke-virtual {p0}, Lorg/restlet/representation/ChannelRepresentation;->getChannel()Ljava/nio/channels/ReadableByteChannel;

    move-result-object v0

    invoke-static {v0}, Lorg/restlet/engine/io/NioUtils;->getStream(Ljava/nio/channels/ReadableByteChannel;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
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
    .line 75
    invoke-static {p1}, Lorg/restlet/engine/io/NioUtils;->getChannel(Ljava/io/OutputStream;)Ljava/nio/channels/WritableByteChannel;

    move-result-object v0

    .line 76
    .local v0, "wbc":Ljava/nio/channels/WritableByteChannel;
    invoke-virtual {p0, v0}, Lorg/restlet/representation/ChannelRepresentation;->write(Ljava/nio/channels/WritableByteChannel;)V

    .line 77
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
    .line 81
    invoke-virtual {p0}, Lorg/restlet/representation/ChannelRepresentation;->getCharacterSet()Lorg/restlet/data/CharacterSet;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/restlet/engine/io/BioUtils;->getStream(Ljava/io/Writer;Lorg/restlet/data/CharacterSet;)Ljava/io/OutputStream;

    move-result-object v0

    .line 82
    .local v0, "os":Ljava/io/OutputStream;
    invoke-virtual {p0, v0}, Lorg/restlet/representation/ChannelRepresentation;->write(Ljava/io/OutputStream;)V

    .line 83
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 84
    return-void
.end method

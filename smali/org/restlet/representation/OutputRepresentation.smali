.class public abstract Lorg/restlet/representation/OutputRepresentation;
.super Lorg/restlet/representation/StreamRepresentation;
.source "OutputRepresentation.java"


# direct methods
.method public constructor <init>(Lorg/restlet/data/MediaType;)V
    .locals 0
    .param p1, "mediaType"    # Lorg/restlet/data/MediaType;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lorg/restlet/representation/StreamRepresentation;-><init>(Lorg/restlet/data/MediaType;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Lorg/restlet/data/MediaType;J)V
    .locals 0
    .param p1, "mediaType"    # Lorg/restlet/data/MediaType;
    .param p2, "expectedSize"    # J

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lorg/restlet/representation/StreamRepresentation;-><init>(Lorg/restlet/data/MediaType;)V

    .line 75
    invoke-virtual {p0, p2, p3}, Lorg/restlet/representation/OutputRepresentation;->setSize(J)V

    .line 76
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
    .line 80
    invoke-static {p0}, Lorg/restlet/engine/io/NioUtils;->getChannel(Lorg/restlet/representation/Representation;)Ljava/nio/channels/ReadableByteChannel;

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
    .line 91
    invoke-static {p0}, Lorg/restlet/engine/io/BioUtils;->getStream(Lorg/restlet/representation/Representation;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

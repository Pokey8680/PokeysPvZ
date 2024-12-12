.class public abstract Lorg/restlet/representation/WritableRepresentation;
.super Lorg/restlet/representation/ChannelRepresentation;
.source "WritableRepresentation.java"


# direct methods
.method public constructor <init>(Lorg/restlet/data/MediaType;)V
    .locals 0
    .param p1, "mediaType"    # Lorg/restlet/data/MediaType;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lorg/restlet/representation/ChannelRepresentation;-><init>(Lorg/restlet/data/MediaType;)V

    .line 64
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
    .line 68
    invoke-static {p0}, Lorg/restlet/engine/io/NioUtils;->getChannel(Lorg/restlet/representation/Representation;)Ljava/nio/channels/ReadableByteChannel;

    move-result-object v0

    return-object v0
.end method

.method public abstract write(Ljava/nio/channels/WritableByteChannel;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

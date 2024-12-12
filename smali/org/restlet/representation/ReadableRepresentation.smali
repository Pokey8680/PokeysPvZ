.class public Lorg/restlet/representation/ReadableRepresentation;
.super Lorg/restlet/representation/ChannelRepresentation;
.source "ReadableRepresentation.java"


# instance fields
.field private volatile channel:Ljava/nio/channels/ReadableByteChannel;


# direct methods
.method public constructor <init>(Ljava/nio/channels/ReadableByteChannel;Lorg/restlet/data/MediaType;)V
    .locals 2
    .param p1, "readableChannel"    # Ljava/nio/channels/ReadableByteChannel;
    .param p2, "mediaType"    # Lorg/restlet/data/MediaType;

    .prologue
    .line 63
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/restlet/representation/ReadableRepresentation;-><init>(Ljava/nio/channels/ReadableByteChannel;Lorg/restlet/data/MediaType;J)V

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/ReadableByteChannel;Lorg/restlet/data/MediaType;J)V
    .locals 3
    .param p1, "channel"    # Ljava/nio/channels/ReadableByteChannel;
    .param p2, "mediaType"    # Lorg/restlet/data/MediaType;
    .param p3, "expectedSize"    # J

    .prologue
    const/4 v1, 0x1

    .line 78
    invoke-direct {p0, p2}, Lorg/restlet/representation/ChannelRepresentation;-><init>(Lorg/restlet/data/MediaType;)V

    .line 79
    invoke-virtual {p0, p3, p4}, Lorg/restlet/representation/ReadableRepresentation;->setSize(J)V

    .line 80
    iput-object p1, p0, Lorg/restlet/representation/ReadableRepresentation;->channel:Ljava/nio/channels/ReadableByteChannel;

    .line 81
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lorg/restlet/representation/ReadableRepresentation;->setAvailable(Z)V

    .line 82
    invoke-virtual {p0, v1}, Lorg/restlet/representation/ReadableRepresentation;->setTransient(Z)V

    .line 83
    return-void

    .line 81
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getChannel()Ljava/nio/channels/ReadableByteChannel;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lorg/restlet/representation/ReadableRepresentation;->channel:Ljava/nio/channels/ReadableByteChannel;

    .line 88
    .local v0, "result":Ljava/nio/channels/ReadableByteChannel;
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/restlet/representation/ReadableRepresentation;->setAvailable(Z)V

    .line 89
    return-object v0
.end method

.method public setChannel(Ljava/nio/channels/ReadableByteChannel;)V
    .locals 0
    .param p1, "channel"    # Ljava/nio/channels/ReadableByteChannel;

    .prologue
    .line 99
    iput-object p1, p0, Lorg/restlet/representation/ReadableRepresentation;->channel:Ljava/nio/channels/ReadableByteChannel;

    .line 100
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
    .line 104
    invoke-virtual {p0}, Lorg/restlet/representation/ReadableRepresentation;->getChannel()Ljava/nio/channels/ReadableByteChannel;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/restlet/engine/io/NioUtils;->copy(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/channels/WritableByteChannel;)V

    .line 105
    return-void
.end method

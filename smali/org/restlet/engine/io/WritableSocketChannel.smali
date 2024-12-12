.class public Lorg/restlet/engine/io/WritableSocketChannel;
.super Lorg/restlet/engine/io/WrapperSocketChannel;
.source "WritableSocketChannel.java"

# interfaces
.implements Lorg/restlet/engine/io/WritableSelectionChannel;


# direct methods
.method public constructor <init>(Ljava/nio/channels/SocketChannel;Lorg/restlet/util/SelectionRegistration;)V
    .locals 0
    .param p1, "wrappedChannel"    # Ljava/nio/channels/SocketChannel;
    .param p2, "registration"    # Lorg/restlet/util/SelectionRegistration;

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lorg/restlet/engine/io/WrapperSocketChannel;-><init>(Ljava/nio/channels/SocketChannel;Lorg/restlet/util/SelectionRegistration;)V

    .line 61
    return-void
.end method


# virtual methods
.method public write(Ljava/nio/ByteBuffer;)I
    .locals 2
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    const/4 v0, 0x0

    .line 72
    .local v0, "count":I
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    invoke-virtual {p0}, Lorg/restlet/engine/io/WritableSocketChannel;->getWrappedChannel()Ljava/nio/channels/Channel;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/SocketChannel;

    invoke-virtual {v1, p1}, Ljava/nio/channels/SocketChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    .line 75
    :cond_0
    return v0
.end method

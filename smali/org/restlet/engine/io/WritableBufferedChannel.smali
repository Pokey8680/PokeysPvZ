.class public Lorg/restlet/engine/io/WritableBufferedChannel;
.super Lorg/restlet/engine/io/BufferedSelectionChannel;
.source "WritableBufferedChannel.java"

# interfaces
.implements Lorg/restlet/engine/io/WritableSelectionChannel;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/restlet/engine/io/BufferedSelectionChannel",
        "<",
        "Lorg/restlet/engine/io/WritableSelectionChannel;",
        ">;",
        "Lorg/restlet/engine/io/WritableSelectionChannel;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/restlet/engine/io/Buffer;Lorg/restlet/engine/io/WritableSelectionChannel;Lorg/restlet/engine/io/WakeupListener;)V
    .locals 0
    .param p1, "buffer"    # Lorg/restlet/engine/io/Buffer;
    .param p2, "target"    # Lorg/restlet/engine/io/WritableSelectionChannel;
    .param p3, "wakeupListener"    # Lorg/restlet/engine/io/WakeupListener;

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3}, Lorg/restlet/engine/io/BufferedSelectionChannel;-><init>(Lorg/restlet/engine/io/Buffer;Lorg/restlet/engine/io/SelectionChannel;Lorg/restlet/engine/io/WakeupListener;)V

    .line 63
    return-void
.end method


# virtual methods
.method public varargs couldDrain(Lorg/restlet/engine/io/Buffer;[Ljava/lang/Object;)Z
    .locals 1
    .param p1, "buffer"    # Lorg/restlet/engine/io/Buffer;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public varargs couldFill(Lorg/restlet/engine/io/Buffer;[Ljava/lang/Object;)Z
    .locals 1
    .param p1, "buffer"    # Lorg/restlet/engine/io/Buffer;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 88
    const/4 v0, 0x1

    return v0
.end method

.method public final varargs onDrain(Lorg/restlet/engine/io/Buffer;I[Ljava/lang/Object;)I
    .locals 2
    .param p1, "buffer"    # Lorg/restlet/engine/io/Buffer;
    .param p2, "maxDrained"    # I
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    invoke-virtual {p0}, Lorg/restlet/engine/io/WritableBufferedChannel;->getBuffer()Lorg/restlet/engine/io/Buffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/restlet/engine/io/WritableBufferedChannel;->getWrappedChannel()Ljava/nio/channels/Channel;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/WritableByteChannel;

    invoke-virtual {v1, v0}, Lorg/restlet/engine/io/Buffer;->drain(Ljava/nio/channels/WritableByteChannel;)I

    move-result v0

    return v0
.end method

.method public varargs onFill(Lorg/restlet/engine/io/Buffer;[Ljava/lang/Object;)I
    .locals 2
    .param p1, "buffer"    # Lorg/restlet/engine/io/Buffer;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    invoke-virtual {p0}, Lorg/restlet/engine/io/WritableBufferedChannel;->getBuffer()Lorg/restlet/engine/io/Buffer;

    move-result-object v1

    const/4 v0, 0x0

    aget-object v0, p2, v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Lorg/restlet/engine/io/Buffer;->fill(Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 3
    .param p1, "sourceBuffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 125
    invoke-virtual {p0}, Lorg/restlet/engine/io/WritableBufferedChannel;->getBuffer()Lorg/restlet/engine/io/Buffer;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-virtual {v0, p0, v2, v1}, Lorg/restlet/engine/io/Buffer;->process(Lorg/restlet/engine/io/BufferProcessor;I[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

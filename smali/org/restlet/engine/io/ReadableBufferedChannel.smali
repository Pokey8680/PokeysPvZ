.class public Lorg/restlet/engine/io/ReadableBufferedChannel;
.super Lorg/restlet/engine/io/BufferedSelectionChannel;
.source "ReadableBufferedChannel.java"

# interfaces
.implements Lorg/restlet/engine/io/ReadableSelectionChannel;
.implements Lorg/restlet/engine/io/CompletionListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/restlet/engine/io/BufferedSelectionChannel",
        "<",
        "Lorg/restlet/engine/io/ReadableSelectionChannel;",
        ">;",
        "Lorg/restlet/engine/io/ReadableSelectionChannel;",
        "Lorg/restlet/engine/io/CompletionListener;"
    }
.end annotation


# instance fields
.field private final completionListener:Lorg/restlet/engine/io/CompletionListener;

.field private volatile endReached:Z


# direct methods
.method public constructor <init>(Lorg/restlet/engine/io/CompletionListener;Lorg/restlet/engine/io/Buffer;Lorg/restlet/engine/io/ReadableSelectionChannel;Lorg/restlet/engine/io/WakeupListener;)V
    .locals 1
    .param p1, "completionListener"    # Lorg/restlet/engine/io/CompletionListener;
    .param p2, "buffer"    # Lorg/restlet/engine/io/Buffer;
    .param p3, "source"    # Lorg/restlet/engine/io/ReadableSelectionChannel;
    .param p4, "wakeupListener"    # Lorg/restlet/engine/io/WakeupListener;

    .prologue
    .line 72
    invoke-direct {p0, p2, p3, p4}, Lorg/restlet/engine/io/BufferedSelectionChannel;-><init>(Lorg/restlet/engine/io/Buffer;Lorg/restlet/engine/io/SelectionChannel;Lorg/restlet/engine/io/WakeupListener;)V

    .line 73
    iput-object p1, p0, Lorg/restlet/engine/io/ReadableBufferedChannel;->completionListener:Lorg/restlet/engine/io/CompletionListener;

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/restlet/engine/io/ReadableBufferedChannel;->endReached:Z

    .line 75
    return-void
.end method

.method private getCompletionListener()Lorg/restlet/engine/io/CompletionListener;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lorg/restlet/engine/io/ReadableBufferedChannel;->completionListener:Lorg/restlet/engine/io/CompletionListener;

    return-object v0
.end method


# virtual methods
.method public varargs couldDrain(Lorg/restlet/engine/io/Buffer;[Ljava/lang/Object;)Z
    .locals 1
    .param p1, "buffer"    # Lorg/restlet/engine/io/Buffer;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public varargs couldFill(Lorg/restlet/engine/io/Buffer;[Ljava/lang/Object;)Z
    .locals 1
    .param p1, "buffer"    # Lorg/restlet/engine/io/Buffer;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 100
    invoke-virtual {p0}, Lorg/restlet/engine/io/ReadableBufferedChannel;->isEndReached()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isEndReached()Z
    .locals 1

    .prologue
    .line 118
    iget-boolean v0, p0, Lorg/restlet/engine/io/ReadableBufferedChannel;->endReached:Z

    return v0
.end method

.method public varargs onDrain(Lorg/restlet/engine/io/Buffer;I[Ljava/lang/Object;)I
    .locals 4
    .param p1, "buffer"    # Lorg/restlet/engine/io/Buffer;
    .param p2, "maxDrained"    # I
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 148
    invoke-virtual {p0}, Lorg/restlet/engine/io/ReadableBufferedChannel;->getBuffer()Lorg/restlet/engine/io/Buffer;

    move-result-object v1

    const/4 v0, 0x0

    aget-object v0, p3, v0

    check-cast v0, Ljava/nio/ByteBuffer;

    int-to-long v2, p2

    invoke-virtual {v1, v0, v2, v3}, Lorg/restlet/engine/io/Buffer;->drain(Ljava/nio/ByteBuffer;J)I

    move-result v0

    return v0
.end method

.method public final varargs onFill(Lorg/restlet/engine/io/Buffer;[Ljava/lang/Object;)I
    .locals 3
    .param p1, "buffer"    # Lorg/restlet/engine/io/Buffer;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 157
    invoke-virtual {p0}, Lorg/restlet/engine/io/ReadableBufferedChannel;->getBuffer()Lorg/restlet/engine/io/Buffer;

    move-result-object v2

    invoke-virtual {p0}, Lorg/restlet/engine/io/ReadableBufferedChannel;->getWrappedChannel()Ljava/nio/channels/Channel;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/ReadableByteChannel;

    invoke-virtual {v2, v1}, Lorg/restlet/engine/io/Buffer;->fill(Ljava/nio/channels/ReadableByteChannel;)I

    move-result v0

    .line 159
    .local v0, "result":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 160
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/restlet/engine/io/ReadableBufferedChannel;->setEndReached(Z)V

    .line 163
    :cond_0
    return v0
.end method

.method public onMessageCompleted(Z)V
    .locals 1
    .param p1, "eofDetected"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 130
    invoke-direct {p0}, Lorg/restlet/engine/io/ReadableBufferedChannel;->getCompletionListener()Lorg/restlet/engine/io/CompletionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    invoke-direct {p0}, Lorg/restlet/engine/io/ReadableBufferedChannel;->getCompletionListener()Lorg/restlet/engine/io/CompletionListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/restlet/engine/io/CompletionListener;->onMessageCompleted(Z)V

    .line 133
    :cond_0
    return-void
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 3
    .param p1, "targetBuffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 176
    invoke-virtual {p0}, Lorg/restlet/engine/io/ReadableBufferedChannel;->getBuffer()Lorg/restlet/engine/io/Buffer;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-virtual {v0, p0, v2, v1}, Lorg/restlet/engine/io/Buffer;->process(Lorg/restlet/engine/io/BufferProcessor;I[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected setEndReached(Z)V
    .locals 1
    .param p1, "endReached"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 186
    iget-boolean v0, p0, Lorg/restlet/engine/io/ReadableBufferedChannel;->endReached:Z

    if-eq v0, p1, :cond_0

    .line 187
    iput-boolean p1, p0, Lorg/restlet/engine/io/ReadableBufferedChannel;->endReached:Z

    .line 189
    iget-boolean v0, p0, Lorg/restlet/engine/io/ReadableBufferedChannel;->endReached:Z

    if-eqz v0, :cond_0

    .line 190
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/restlet/engine/io/ReadableBufferedChannel;->onMessageCompleted(Z)V

    .line 193
    :cond_0
    return-void
.end method

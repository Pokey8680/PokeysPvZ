.class public Lorg/restlet/engine/io/ReadableTraceChannel;
.super Lorg/restlet/engine/io/TraceChannel;
.source "ReadableTraceChannel.java"

# interfaces
.implements Lorg/restlet/engine/io/ReadableSelectionChannel;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/restlet/engine/io/TraceChannel",
        "<",
        "Lorg/restlet/engine/io/ReadableSelectionChannel;",
        ">;",
        "Lorg/restlet/engine/io/ReadableSelectionChannel;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/restlet/engine/io/ReadableSelectionChannel;)V
    .locals 0
    .param p1, "wrappedChannel"    # Lorg/restlet/engine/io/ReadableSelectionChannel;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lorg/restlet/engine/io/TraceChannel;-><init>(Lorg/restlet/engine/io/SelectionChannel;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Lorg/restlet/engine/io/ReadableSelectionChannel;Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "wrappedChannel"    # Lorg/restlet/engine/io/ReadableSelectionChannel;
    .param p2, "traceStream"    # Ljava/io/OutputStream;

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lorg/restlet/engine/io/TraceChannel;-><init>(Lorg/restlet/engine/io/SelectionChannel;Ljava/io/OutputStream;)V

    .line 72
    return-void
.end method


# virtual methods
.method public read(Ljava/nio/ByteBuffer;)I
    .locals 7
    .param p1, "dst"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int v1, v4, v5

    .line 84
    .local v1, "off":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 85
    .local v2, "oldPos":I
    invoke-virtual {p0}, Lorg/restlet/engine/io/ReadableTraceChannel;->getWrappedChannel()Ljava/nio/channels/Channel;

    move-result-object v4

    check-cast v4, Lorg/restlet/engine/io/ReadableSelectionChannel;

    invoke-interface {v4, p1}, Lorg/restlet/engine/io/ReadableSelectionChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v3

    .line 86
    .local v3, "result":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 90
    .local v0, "newPos":I
    if-le v0, v2, :cond_0

    .line 91
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    sub-int v6, v0, v2

    invoke-virtual {v4, v5, v1, v6}, Ljava/io/PrintStream;->write([BII)V

    .line 94
    :cond_0
    return v3
.end method

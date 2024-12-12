.class public abstract Lorg/restlet/engine/io/BufferedSelectionChannel;
.super Lorg/restlet/engine/io/WrapperSelectionChannel;
.source "BufferedSelectionChannel.java"

# interfaces
.implements Lorg/restlet/engine/io/BufferProcessor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/restlet/engine/io/SelectionChannel;",
        ">",
        "Lorg/restlet/engine/io/WrapperSelectionChannel",
        "<TT;>;",
        "Lorg/restlet/engine/io/BufferProcessor;"
    }
.end annotation


# instance fields
.field private final buffer:Lorg/restlet/engine/io/Buffer;


# direct methods
.method public constructor <init>(Lorg/restlet/engine/io/Buffer;Lorg/restlet/engine/io/SelectionChannel;Lorg/restlet/engine/io/WakeupListener;)V
    .locals 3
    .param p1, "buffer"    # Lorg/restlet/engine/io/Buffer;
    .param p3, "wakeupListener"    # Lorg/restlet/engine/io/WakeupListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/restlet/engine/io/Buffer;",
            "TT;",
            "Lorg/restlet/engine/io/WakeupListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 63
    .local p0, "this":Lorg/restlet/engine/io/BufferedSelectionChannel;, "Lorg/restlet/engine/io/BufferedSelectionChannel<TT;>;"
    .local p2, "source":Lorg/restlet/engine/io/SelectionChannel;, "TT;"
    invoke-direct {p0, p2}, Lorg/restlet/engine/io/WrapperSelectionChannel;-><init>(Lorg/restlet/engine/io/SelectionChannel;)V

    .line 64
    new-instance v0, Lorg/restlet/util/SelectionRegistration;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p3}, Lorg/restlet/util/SelectionRegistration;-><init>(ILorg/restlet/util/SelectionListener;Lorg/restlet/engine/io/WakeupListener;)V

    invoke-virtual {p0, v0}, Lorg/restlet/engine/io/BufferedSelectionChannel;->setRegistration(Lorg/restlet/util/SelectionRegistration;)V

    .line 65
    iput-object p1, p0, Lorg/restlet/engine/io/BufferedSelectionChannel;->buffer:Lorg/restlet/engine/io/Buffer;

    .line 66
    return-void
.end method


# virtual methods
.method public varargs canLoop(Lorg/restlet/engine/io/Buffer;[Ljava/lang/Object;)Z
    .locals 1
    .param p1, "buffer"    # Lorg/restlet/engine/io/Buffer;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 78
    .local p0, "this":Lorg/restlet/engine/io/BufferedSelectionChannel;, "Lorg/restlet/engine/io/BufferedSelectionChannel<TT;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    .local p0, "this":Lorg/restlet/engine/io/BufferedSelectionChannel;, "Lorg/restlet/engine/io/BufferedSelectionChannel<TT;>;"
    return-void
.end method

.method public getBuffer()Lorg/restlet/engine/io/Buffer;
    .locals 1

    .prologue
    .line 92
    .local p0, "this":Lorg/restlet/engine/io/BufferedSelectionChannel;, "Lorg/restlet/engine/io/BufferedSelectionChannel<TT;>;"
    iget-object v0, p0, Lorg/restlet/engine/io/BufferedSelectionChannel;->buffer:Lorg/restlet/engine/io/Buffer;

    return-object v0
.end method

.method public onFillEof()V
    .locals 0

    .prologue
    .line 99
    .local p0, "this":Lorg/restlet/engine/io/BufferedSelectionChannel;, "Lorg/restlet/engine/io/BufferedSelectionChannel<TT;>;"
    return-void
.end method

.method public postProcess(I)V
    .locals 0
    .param p1, "drained"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    .local p0, "this":Lorg/restlet/engine/io/BufferedSelectionChannel;, "Lorg/restlet/engine/io/BufferedSelectionChannel<TT;>;"
    return-void
.end method

.method public varargs preProcess(I[Ljava/lang/Object;)I
    .locals 1
    .param p1, "maxDrained"    # I
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 111
    .local p0, "this":Lorg/restlet/engine/io/BufferedSelectionChannel;, "Lorg/restlet/engine/io/BufferedSelectionChannel<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

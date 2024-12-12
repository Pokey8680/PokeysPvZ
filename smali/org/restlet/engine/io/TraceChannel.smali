.class public Lorg/restlet/engine/io/TraceChannel;
.super Lorg/restlet/engine/io/WrapperSelectionChannel;
.source "TraceChannel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/restlet/engine/io/SelectionChannel;",
        ">",
        "Lorg/restlet/engine/io/WrapperSelectionChannel",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private traceStream:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Lorg/restlet/engine/io/SelectionChannel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "this":Lorg/restlet/engine/io/TraceChannel;, "Lorg/restlet/engine/io/TraceChannel<TT;>;"
    .local p1, "wrappedChannel":Lorg/restlet/engine/io/SelectionChannel;, "TT;"
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {p0, p1, v0}, Lorg/restlet/engine/io/TraceChannel;-><init>(Lorg/restlet/engine/io/SelectionChannel;Ljava/io/OutputStream;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Lorg/restlet/engine/io/SelectionChannel;Ljava/io/OutputStream;)V
    .locals 0
    .param p2, "traceStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/io/OutputStream;",
            ")V"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, "this":Lorg/restlet/engine/io/TraceChannel;, "Lorg/restlet/engine/io/TraceChannel<TT;>;"
    .local p1, "wrappedChannel":Lorg/restlet/engine/io/SelectionChannel;, "TT;"
    invoke-direct {p0, p1}, Lorg/restlet/engine/io/WrapperSelectionChannel;-><init>(Lorg/restlet/engine/io/SelectionChannel;)V

    .line 72
    iput-object p2, p0, Lorg/restlet/engine/io/TraceChannel;->traceStream:Ljava/io/OutputStream;

    .line 73
    return-void
.end method


# virtual methods
.method public getTraceStream()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 81
    .local p0, "this":Lorg/restlet/engine/io/TraceChannel;, "Lorg/restlet/engine/io/TraceChannel<TT;>;"
    iget-object v0, p0, Lorg/restlet/engine/io/TraceChannel;->traceStream:Ljava/io/OutputStream;

    return-object v0
.end method

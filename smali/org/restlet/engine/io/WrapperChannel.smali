.class public Lorg/restlet/engine/io/WrapperChannel;
.super Ljava/lang/Object;
.source "WrapperChannel.java"

# interfaces
.implements Ljava/nio/channels/Channel;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/nio/channels/Channel;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/nio/channels/Channel;"
    }
.end annotation


# instance fields
.field private wrappedChannel:Ljava/nio/channels/Channel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/nio/channels/Channel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "this":Lorg/restlet/engine/io/WrapperChannel;, "Lorg/restlet/engine/io/WrapperChannel<TT;>;"
    .local p1, "wrappedChannel":Ljava/nio/channels/Channel;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lorg/restlet/engine/io/WrapperChannel;->wrappedChannel:Ljava/nio/channels/Channel;

    .line 57
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    .local p0, "this":Lorg/restlet/engine/io/WrapperChannel;, "Lorg/restlet/engine/io/WrapperChannel<TT;>;"
    invoke-virtual {p0}, Lorg/restlet/engine/io/WrapperChannel;->getWrappedChannel()Ljava/nio/channels/Channel;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/channels/Channel;->close()V

    .line 64
    return-void
.end method

.method protected getWrappedChannel()Ljava/nio/channels/Channel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 72
    .local p0, "this":Lorg/restlet/engine/io/WrapperChannel;, "Lorg/restlet/engine/io/WrapperChannel<TT;>;"
    iget-object v0, p0, Lorg/restlet/engine/io/WrapperChannel;->wrappedChannel:Ljava/nio/channels/Channel;

    return-object v0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 79
    .local p0, "this":Lorg/restlet/engine/io/WrapperChannel;, "Lorg/restlet/engine/io/WrapperChannel<TT;>;"
    invoke-virtual {p0}, Lorg/restlet/engine/io/WrapperChannel;->getWrappedChannel()Ljava/nio/channels/Channel;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/channels/Channel;->isOpen()Z

    move-result v0

    return v0
.end method

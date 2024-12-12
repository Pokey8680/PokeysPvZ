.class public Lorg/restlet/engine/io/WrapperSocketChannel;
.super Lorg/restlet/engine/io/WrapperChannel;
.source "WrapperSocketChannel.java"

# interfaces
.implements Lorg/restlet/engine/io/SelectionChannel;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/restlet/engine/io/WrapperChannel",
        "<",
        "Ljava/nio/channels/SocketChannel;",
        ">;",
        "Lorg/restlet/engine/io/SelectionChannel;"
    }
.end annotation


# instance fields
.field private registration:Lorg/restlet/util/SelectionRegistration;


# direct methods
.method public constructor <init>(Ljava/nio/channels/SocketChannel;Lorg/restlet/util/SelectionRegistration;)V
    .locals 0
    .param p1, "wrappedChannel"    # Ljava/nio/channels/SocketChannel;
    .param p2, "registration"    # Lorg/restlet/util/SelectionRegistration;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lorg/restlet/engine/io/WrapperChannel;-><init>(Ljava/nio/channels/Channel;)V

    .line 62
    iput-object p2, p0, Lorg/restlet/engine/io/WrapperSocketChannel;->registration:Lorg/restlet/util/SelectionRegistration;

    .line 63
    return-void
.end method


# virtual methods
.method public getRegistration()Lorg/restlet/util/SelectionRegistration;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lorg/restlet/engine/io/WrapperSocketChannel;->registration:Lorg/restlet/util/SelectionRegistration;

    return-object v0
.end method

.method public isBlocking()Z
    .locals 1

    .prologue
    .line 80
    invoke-virtual {p0}, Lorg/restlet/engine/io/WrapperSocketChannel;->getWrappedChannel()Ljava/nio/channels/Channel;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->isBlocking()Z

    move-result v0

    return v0
.end method

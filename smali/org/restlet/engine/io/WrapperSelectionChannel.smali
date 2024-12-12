.class public Lorg/restlet/engine/io/WrapperSelectionChannel;
.super Lorg/restlet/engine/io/WrapperChannel;
.source "WrapperSelectionChannel.java"

# interfaces
.implements Lorg/restlet/engine/io/SelectionChannel;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/restlet/engine/io/SelectionChannel;",
        ">",
        "Lorg/restlet/engine/io/WrapperChannel",
        "<TT;>;",
        "Lorg/restlet/engine/io/SelectionChannel;"
    }
.end annotation


# instance fields
.field private volatile registration:Lorg/restlet/util/SelectionRegistration;


# direct methods
.method public constructor <init>(Lorg/restlet/engine/io/SelectionChannel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "this":Lorg/restlet/engine/io/WrapperSelectionChannel;, "Lorg/restlet/engine/io/WrapperSelectionChannel<TT;>;"
    .local p1, "wrappedChannel":Lorg/restlet/engine/io/SelectionChannel;, "TT;"
    invoke-interface {p1}, Lorg/restlet/engine/io/SelectionChannel;->getRegistration()Lorg/restlet/util/SelectionRegistration;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/restlet/engine/io/WrapperSelectionChannel;-><init>(Lorg/restlet/engine/io/SelectionChannel;Lorg/restlet/util/SelectionRegistration;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Lorg/restlet/engine/io/SelectionChannel;Lorg/restlet/util/SelectionRegistration;)V
    .locals 0
    .param p2, "registration"    # Lorg/restlet/util/SelectionRegistration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/restlet/util/SelectionRegistration;",
            ")V"
        }
    .end annotation

    .prologue
    .line 69
    .local p0, "this":Lorg/restlet/engine/io/WrapperSelectionChannel;, "Lorg/restlet/engine/io/WrapperSelectionChannel<TT;>;"
    .local p1, "wrappedChannel":Lorg/restlet/engine/io/SelectionChannel;, "TT;"
    invoke-direct {p0, p1}, Lorg/restlet/engine/io/WrapperChannel;-><init>(Ljava/nio/channels/Channel;)V

    .line 70
    iput-object p2, p0, Lorg/restlet/engine/io/WrapperSelectionChannel;->registration:Lorg/restlet/util/SelectionRegistration;

    .line 71
    return-void
.end method


# virtual methods
.method public getRegistration()Lorg/restlet/util/SelectionRegistration;
    .locals 1

    .prologue
    .line 79
    .local p0, "this":Lorg/restlet/engine/io/WrapperSelectionChannel;, "Lorg/restlet/engine/io/WrapperSelectionChannel<TT;>;"
    iget-object v0, p0, Lorg/restlet/engine/io/WrapperSelectionChannel;->registration:Lorg/restlet/util/SelectionRegistration;

    return-object v0
.end method

.method public isBlocking()Z
    .locals 1

    .prologue
    .line 88
    .local p0, "this":Lorg/restlet/engine/io/WrapperSelectionChannel;, "Lorg/restlet/engine/io/WrapperSelectionChannel<TT;>;"
    invoke-virtual {p0}, Lorg/restlet/engine/io/WrapperSelectionChannel;->getWrappedChannel()Ljava/nio/channels/Channel;

    move-result-object v0

    check-cast v0, Lorg/restlet/engine/io/SelectionChannel;

    invoke-interface {v0}, Lorg/restlet/engine/io/SelectionChannel;->isBlocking()Z

    move-result v0

    return v0
.end method

.method public setRegistration(Lorg/restlet/util/SelectionRegistration;)V
    .locals 0
    .param p1, "registration"    # Lorg/restlet/util/SelectionRegistration;

    .prologue
    .line 98
    .local p0, "this":Lorg/restlet/engine/io/WrapperSelectionChannel;, "Lorg/restlet/engine/io/WrapperSelectionChannel<TT;>;"
    iput-object p1, p0, Lorg/restlet/engine/io/WrapperSelectionChannel;->registration:Lorg/restlet/util/SelectionRegistration;

    .line 99
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 103
    .local p0, "this":Lorg/restlet/engine/io/WrapperSelectionChannel;, "Lorg/restlet/engine/io/WrapperSelectionChannel<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WrapperSelectionChannel [toString()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", registration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/restlet/engine/io/WrapperSelectionChannel;->registration:Lorg/restlet/util/SelectionRegistration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

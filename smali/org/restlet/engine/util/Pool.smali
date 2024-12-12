.class public abstract Lorg/restlet/engine/util/Pool;
.super Ljava/lang/Object;
.source "Pool.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final store:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    .local p0, "this":Lorg/restlet/engine/util/Pool;, "Lorg/restlet/engine/util/Pool<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-virtual {p0}, Lorg/restlet/engine/util/Pool;->createStore()Ljava/util/Queue;

    move-result-object v0

    iput-object v0, p0, Lorg/restlet/engine/util/Pool;->store:Ljava/util/Queue;

    .line 56
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "initialSize"    # I

    .prologue
    .line 66
    .local p0, "this":Lorg/restlet/engine/util/Pool;, "Lorg/restlet/engine/util/Pool<TT;>;"
    invoke-direct {p0}, Lorg/restlet/engine/util/Pool;-><init>()V

    .line 67
    invoke-virtual {p0, p1}, Lorg/restlet/engine/util/Pool;->preCreate(I)V

    .line 68
    return-void
.end method


# virtual methods
.method public checkin(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 77
    .local p0, "this":Lorg/restlet/engine/util/Pool;, "Lorg/restlet/engine/util/Pool<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_0

    .line 78
    invoke-virtual {p0, p1}, Lorg/restlet/engine/util/Pool;->clear(Ljava/lang/Object;)V

    .line 79
    iget-object v0, p0, Lorg/restlet/engine/util/Pool;->store:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 81
    :cond_0
    return-void
.end method

.method public checkout()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 92
    .local p0, "this":Lorg/restlet/engine/util/Pool;, "Lorg/restlet/engine/util/Pool<TT;>;"
    iget-object v1, p0, Lorg/restlet/engine/util/Pool;->store:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    .local v0, "result":Ljava/lang/Object;, "TT;"
    if-nez v0, :cond_0

    .line 93
    invoke-virtual {p0}, Lorg/restlet/engine/util/Pool;->createObject()Ljava/lang/Object;

    move-result-object v0

    .line 96
    :cond_0
    return-object v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 103
    .local p0, "this":Lorg/restlet/engine/util/Pool;, "Lorg/restlet/engine/util/Pool<TT;>;"
    invoke-virtual {p0}, Lorg/restlet/engine/util/Pool;->getStore()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 104
    return-void
.end method

.method protected clear(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 115
    .local p0, "this":Lorg/restlet/engine/util/Pool;, "Lorg/restlet/engine/util/Pool<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    return-void
.end method

.method protected abstract createObject()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method protected createStore()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 130
    .local p0, "this":Lorg/restlet/engine/util/Pool;, "Lorg/restlet/engine/util/Pool<TT;>;"
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    return-object v0
.end method

.method protected getStore()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 139
    .local p0, "this":Lorg/restlet/engine/util/Pool;, "Lorg/restlet/engine/util/Pool<TT;>;"
    iget-object v0, p0, Lorg/restlet/engine/util/Pool;->store:Ljava/util/Queue;

    return-object v0
.end method

.method public preCreate(I)V
    .locals 2
    .param p1, "initialSize"    # I

    .prologue
    .line 150
    .local p0, "this":Lorg/restlet/engine/util/Pool;, "Lorg/restlet/engine/util/Pool<TT;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 151
    invoke-virtual {p0}, Lorg/restlet/engine/util/Pool;->createObject()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/restlet/engine/util/Pool;->checkin(Ljava/lang/Object;)V

    .line 150
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 153
    :cond_0
    return-void
.end method

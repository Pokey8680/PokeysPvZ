.class Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$CombinedFuture$1;
.super Ljava/lang/Object;
.source "Futures.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$CombinedFuture;->init(Ljava/util/concurrent/Executor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$CombinedFuture;


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$CombinedFuture;)V
    .locals 0

    .prologue
    .line 1499
    .local p0, "this":Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$CombinedFuture$1;, "Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$CombinedFuture.1;"
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$CombinedFuture$1;->this$0:Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$CombinedFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .local p0, "this":Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$CombinedFuture$1;, "Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$CombinedFuture.1;"
    const/4 v3, 0x0

    .line 1503
    iget-object v2, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$CombinedFuture$1;->this$0:Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$CombinedFuture;

    invoke-virtual {v2}, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$CombinedFuture;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1504
    iget-object v2, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$CombinedFuture$1;->this$0:Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$CombinedFuture;

    iget-object v2, v2, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$CombinedFuture;->futures:Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;

    invoke-virtual {v2}, Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;

    .line 1505
    .local v0, "future":Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;, "Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture<*>;"
    iget-object v2, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$CombinedFuture$1;->this$0:Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$CombinedFuture;

    invoke-virtual {v2}, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$CombinedFuture;->wasInterrupted()Z

    move-result v2

    invoke-interface {v0, v2}, Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;->cancel(Z)Z

    goto :goto_0

    .line 1510
    .end local v0    # "future":Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;, "Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture<*>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    iget-object v2, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$CombinedFuture$1;->this$0:Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$CombinedFuture;

    iput-object v3, v2, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$CombinedFuture;->futures:Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;

    .line 1514
    iget-object v2, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$CombinedFuture$1;->this$0:Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$CombinedFuture;

    iput-object v3, v2, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$CombinedFuture;->values:Ljava/util/List;

    .line 1517
    iget-object v2, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$CombinedFuture$1;->this$0:Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$CombinedFuture;

    iput-object v3, v2, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$CombinedFuture;->combiner:Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$FutureCombiner;

    .line 1518
    return-void
.end method
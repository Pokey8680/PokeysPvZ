.class final Lorg/roboguice/shaded/goole/common/util/concurrent/MoreExecutors$4;
.super Lorg/roboguice/shaded/goole/common/util/concurrent/WrappingScheduledExecutorService;
.source "MoreExecutors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/roboguice/shaded/goole/common/util/concurrent/MoreExecutors;->renamingDecorator(Ljava/util/concurrent/ScheduledExecutorService;Lorg/roboguice/shaded/goole/common/base/Supplier;)Ljava/util/concurrent/ScheduledExecutorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$nameSupplier:Lorg/roboguice/shaded/goole/common/base/Supplier;


# direct methods
.method constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;Lorg/roboguice/shaded/goole/common/base/Supplier;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/concurrent/ScheduledExecutorService;

    .prologue
    .line 835
    iput-object p2, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/MoreExecutors$4;->val$nameSupplier:Lorg/roboguice/shaded/goole/common/base/Supplier;

    invoke-direct {p0, p1}, Lorg/roboguice/shaded/goole/common/util/concurrent/WrappingScheduledExecutorService;-><init>(Ljava/util/concurrent/ScheduledExecutorService;)V

    return-void
.end method


# virtual methods
.method protected wrapTask(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 1
    .param p1, "command"    # Ljava/lang/Runnable;

    .prologue
    .line 840
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/MoreExecutors$4;->val$nameSupplier:Lorg/roboguice/shaded/goole/common/base/Supplier;

    invoke-static {p1, v0}, Lorg/roboguice/shaded/goole/common/util/concurrent/Callables;->threadRenaming(Ljava/lang/Runnable;Lorg/roboguice/shaded/goole/common/base/Supplier;)Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method

.method protected wrapTask(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Callable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)",
            "Ljava/util/concurrent/Callable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 837
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/MoreExecutors$4;->val$nameSupplier:Lorg/roboguice/shaded/goole/common/base/Supplier;

    invoke-static {p1, v0}, Lorg/roboguice/shaded/goole/common/util/concurrent/Callables;->threadRenaming(Ljava/util/concurrent/Callable;Lorg/roboguice/shaded/goole/common/base/Supplier;)Ljava/util/concurrent/Callable;

    move-result-object v0

    return-object v0
.end method
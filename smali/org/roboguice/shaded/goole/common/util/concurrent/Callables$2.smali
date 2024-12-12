.class final Lorg/roboguice/shaded/goole/common/util/concurrent/Callables$2;
.super Ljava/lang/Object;
.source "Callables.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/roboguice/shaded/goole/common/util/concurrent/Callables;->threadRenaming(Ljava/util/concurrent/Callable;Lorg/roboguice/shaded/goole/common/base/Supplier;)Ljava/util/concurrent/Callable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$callable:Ljava/util/concurrent/Callable;

.field final synthetic val$nameSupplier:Lorg/roboguice/shaded/goole/common/base/Supplier;


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/base/Supplier;Ljava/util/concurrent/Callable;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Callables$2;->val$nameSupplier:Lorg/roboguice/shaded/goole/common/base/Supplier;

    iput-object p2, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Callables$2;->val$callable:Ljava/util/concurrent/Callable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 62
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 63
    .local v0, "currentThread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, "oldName":Ljava/lang/String;
    iget-object v3, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Callables$2;->val$nameSupplier:Lorg/roboguice/shaded/goole/common/base/Supplier;

    invoke-interface {v3}, Lorg/roboguice/shaded/goole/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3, v0}, Lorg/roboguice/shaded/goole/common/util/concurrent/Callables;->access$000(Ljava/lang/String;Ljava/lang/Thread;)Z

    move-result v2

    .line 66
    .local v2, "restoreName":Z
    :try_start_0
    iget-object v3, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Callables$2;->val$callable:Ljava/util/concurrent/Callable;

    invoke-interface {v3}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 68
    if-eqz v2, :cond_0

    .line 69
    invoke-static {v1, v0}, Lorg/roboguice/shaded/goole/common/util/concurrent/Callables;->access$000(Ljava/lang/String;Ljava/lang/Thread;)Z

    :cond_0
    return-object v3

    .line 68
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 69
    invoke-static {v1, v0}, Lorg/roboguice/shaded/goole/common/util/concurrent/Callables;->access$000(Ljava/lang/String;Ljava/lang/Thread;)Z

    :cond_1
    throw v3
.end method

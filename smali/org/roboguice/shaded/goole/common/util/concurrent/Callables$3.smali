.class final Lorg/roboguice/shaded/goole/common/util/concurrent/Callables$3;
.super Ljava/lang/Object;
.source "Callables.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/roboguice/shaded/goole/common/util/concurrent/Callables;->threadRenaming(Ljava/lang/Runnable;Lorg/roboguice/shaded/goole/common/base/Supplier;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$nameSupplier:Lorg/roboguice/shaded/goole/common/base/Supplier;

.field final synthetic val$task:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/base/Supplier;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Callables$3;->val$nameSupplier:Lorg/roboguice/shaded/goole/common/base/Supplier;

    iput-object p2, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Callables$3;->val$task:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 89
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 90
    .local v0, "currentThread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    .line 91
    .local v1, "oldName":Ljava/lang/String;
    iget-object v3, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Callables$3;->val$nameSupplier:Lorg/roboguice/shaded/goole/common/base/Supplier;

    invoke-interface {v3}, Lorg/roboguice/shaded/goole/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3, v0}, Lorg/roboguice/shaded/goole/common/util/concurrent/Callables;->access$000(Ljava/lang/String;Ljava/lang/Thread;)Z

    move-result v2

    .line 93
    .local v2, "restoreName":Z
    :try_start_0
    iget-object v3, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Callables$3;->val$task:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    if-eqz v2, :cond_0

    .line 96
    invoke-static {v1, v0}, Lorg/roboguice/shaded/goole/common/util/concurrent/Callables;->access$000(Ljava/lang/String;Ljava/lang/Thread;)Z

    .line 99
    :cond_0
    return-void

    .line 95
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 96
    invoke-static {v1, v0}, Lorg/roboguice/shaded/goole/common/util/concurrent/Callables;->access$000(Ljava/lang/String;Ljava/lang/Thread;)Z

    :cond_1
    throw v3
.end method

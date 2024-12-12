.class final Lorg/roboguice/shaded/goole/common/util/concurrent/MoreExecutors$ScheduledListeningDecorator$NeverSuccessfulListenableFutureTask;
.super Lorg/roboguice/shaded/goole/common/util/concurrent/AbstractFuture;
.source "MoreExecutors.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/util/concurrent/MoreExecutors$ScheduledListeningDecorator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NeverSuccessfulListenableFutureTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/roboguice/shaded/goole/common/util/concurrent/AbstractFuture",
        "<",
        "Ljava/lang/Void;",
        ">;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private final delegate:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "delegate"    # Ljava/lang/Runnable;

    .prologue
    .line 576
    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/util/concurrent/AbstractFuture;-><init>()V

    .line 577
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/MoreExecutors$ScheduledListeningDecorator$NeverSuccessfulListenableFutureTask;->delegate:Ljava/lang/Runnable;

    .line 578
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 582
    :try_start_0
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/MoreExecutors$ScheduledListeningDecorator$NeverSuccessfulListenableFutureTask;->delegate:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 587
    return-void

    .line 583
    :catch_0
    move-exception v0

    .line 584
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {p0, v0}, Lorg/roboguice/shaded/goole/common/util/concurrent/MoreExecutors$ScheduledListeningDecorator$NeverSuccessfulListenableFutureTask;->setException(Ljava/lang/Throwable;)Z

    .line 585
    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/base/Throwables;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

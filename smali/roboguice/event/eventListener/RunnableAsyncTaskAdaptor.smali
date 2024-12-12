.class public Lroboguice/event/eventListener/RunnableAsyncTaskAdaptor;
.super Lroboguice/util/SafeAsyncTask;
.source "RunnableAsyncTaskAdaptor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lroboguice/util/SafeAsyncTask",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field protected runnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lroboguice/util/SafeAsyncTask;-><init>(Landroid/os/Handler;)V

    .line 23
    iput-object p2, p0, Lroboguice/event/eventListener/RunnableAsyncTaskAdaptor;->runnable:Ljava/lang/Runnable;

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 17
    invoke-direct {p0}, Lroboguice/util/SafeAsyncTask;-><init>()V

    .line 18
    iput-object p1, p0, Lroboguice/event/eventListener/RunnableAsyncTaskAdaptor;->runnable:Ljava/lang/Runnable;

    .line 19
    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 12
    invoke-virtual {p0}, Lroboguice/event/eventListener/RunnableAsyncTaskAdaptor;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 27
    iget-object v0, p0, Lroboguice/event/eventListener/RunnableAsyncTaskAdaptor;->runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 28
    const/4 v0, 0x0

    return-object v0
.end method

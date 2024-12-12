.class public abstract Lroboguice/util/SafeAsyncTask;
.super Ljava/lang/Object;
.source "SafeAsyncTask.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lroboguice/util/SafeAsyncTask$SafeAsyncTaskAndroidCallable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResultT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<TResultT;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field protected static final DEFAULT_EXECUTOR:Ljava/util/concurrent/Executor;

.field public static final DEFAULT_POOL_SIZE:I = 0x19


# instance fields
.field protected executor:Ljava/util/concurrent/Executor;

.field protected future:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field protected handler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/16 v0, 0x19

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lroboguice/util/SafeAsyncTask;->DEFAULT_EXECUTOR:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    .local p0, "this":Lroboguice/util/SafeAsyncTask;, "Lroboguice/util/SafeAsyncTask<TResultT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    sget-object v0, Lroboguice/util/SafeAsyncTask;->DEFAULT_EXECUTOR:Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lroboguice/util/SafeAsyncTask;->executor:Ljava/util/concurrent/Executor;

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 47
    .local p0, "this":Lroboguice/util/SafeAsyncTask;, "Lroboguice/util/SafeAsyncTask<TResultT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lroboguice/util/SafeAsyncTask;->handler:Landroid/os/Handler;

    .line 49
    sget-object v0, Lroboguice/util/SafeAsyncTask;->DEFAULT_EXECUTOR:Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lroboguice/util/SafeAsyncTask;->executor:Ljava/util/concurrent/Executor;

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 59
    .local p0, "this":Lroboguice/util/SafeAsyncTask;, "Lroboguice/util/SafeAsyncTask<TResultT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lroboguice/util/SafeAsyncTask;->handler:Landroid/os/Handler;

    .line 61
    iput-object p2, p0, Lroboguice/util/SafeAsyncTask;->executor:Ljava/util/concurrent/Executor;

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 55
    .local p0, "this":Lroboguice/util/SafeAsyncTask;, "Lroboguice/util/SafeAsyncTask<TResultT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lroboguice/util/SafeAsyncTask;->executor:Ljava/util/concurrent/Executor;

    .line 57
    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 2
    .param p1, "mayInterruptIfRunning"    # Z

    .prologue
    .line 98
    .local p0, "this":Lroboguice/util/SafeAsyncTask;, "Lroboguice/util/SafeAsyncTask<TResultT;>;"
    iget-object v0, p0, Lroboguice/util/SafeAsyncTask;->future:Ljava/util/concurrent/FutureTask;

    if-nez v0, :cond_0

    .line 99
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "You cannot cancel this task before calling future()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_0
    iget-object v0, p0, Lroboguice/util/SafeAsyncTask;->future:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result v0

    return v0
.end method

.method public execute()V
    .locals 2

    .prologue
    .line 89
    .local p0, "this":Lroboguice/util/SafeAsyncTask;, "Lroboguice/util/SafeAsyncTask<TResultT;>;"
    invoke-static {}, Lroboguice/util/Ln;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 90
    .local v0, "launchLocation":[Ljava/lang/StackTraceElement;
    :goto_0
    invoke-virtual {p0, v0}, Lroboguice/util/SafeAsyncTask;->execute([Ljava/lang/StackTraceElement;)V

    .line 91
    return-void

    .line 89
    .end local v0    # "launchLocation":[Ljava/lang/StackTraceElement;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected execute([Ljava/lang/StackTraceElement;)V
    .locals 2
    .param p1, "launchLocation"    # [Ljava/lang/StackTraceElement;

    .prologue
    .line 94
    .local p0, "this":Lroboguice/util/SafeAsyncTask;, "Lroboguice/util/SafeAsyncTask<TResultT;>;"
    iget-object v0, p0, Lroboguice/util/SafeAsyncTask;->executor:Ljava/util/concurrent/Executor;

    invoke-virtual {p0}, Lroboguice/util/SafeAsyncTask;->future()Ljava/util/concurrent/FutureTask;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 95
    return-void
.end method

.method public executor()Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 76
    .local p0, "this":Lroboguice/util/SafeAsyncTask;, "Lroboguice/util/SafeAsyncTask<TResultT;>;"
    iget-object v0, p0, Lroboguice/util/SafeAsyncTask;->executor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public executor(Ljava/util/concurrent/Executor;)Lroboguice/util/SafeAsyncTask;
    .locals 0
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lroboguice/util/SafeAsyncTask",
            "<TResultT;>;"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, "this":Lroboguice/util/SafeAsyncTask;, "Lroboguice/util/SafeAsyncTask<TResultT;>;"
    iput-object p1, p0, Lroboguice/util/SafeAsyncTask;->executor:Ljava/util/concurrent/Executor;

    .line 72
    return-object p0
.end method

.method public future()Ljava/util/concurrent/FutureTask;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/FutureTask",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, "this":Lroboguice/util/SafeAsyncTask;, "Lroboguice/util/SafeAsyncTask<TResultT;>;"
    new-instance v0, Ljava/util/concurrent/FutureTask;

    invoke-virtual {p0}, Lroboguice/util/SafeAsyncTask;->newTask()Ljava/lang/Runnable;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    iput-object v0, p0, Lroboguice/util/SafeAsyncTask;->future:Ljava/util/concurrent/FutureTask;

    .line 67
    iget-object v0, p0, Lroboguice/util/SafeAsyncTask;->future:Ljava/util/concurrent/FutureTask;

    return-object v0
.end method

.method public handler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 85
    .local p0, "this":Lroboguice/util/SafeAsyncTask;, "Lroboguice/util/SafeAsyncTask<TResultT;>;"
    iget-object v0, p0, Lroboguice/util/SafeAsyncTask;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public handler(Landroid/os/Handler;)Lroboguice/util/SafeAsyncTask;
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            ")",
            "Lroboguice/util/SafeAsyncTask",
            "<TResultT;>;"
        }
    .end annotation

    .prologue
    .line 80
    .local p0, "this":Lroboguice/util/SafeAsyncTask;, "Lroboguice/util/SafeAsyncTask<TResultT;>;"
    iput-object p1, p0, Lroboguice/util/SafeAsyncTask;->handler:Landroid/os/Handler;

    .line 81
    return-object p0
.end method

.method public isCancelled()Z
    .locals 1

    .prologue
    .line 105
    .local p0, "this":Lroboguice/util/SafeAsyncTask;, "Lroboguice/util/SafeAsyncTask<TResultT;>;"
    iget-object v0, p0, Lroboguice/util/SafeAsyncTask;->future:Ljava/util/concurrent/FutureTask;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lroboguice/util/SafeAsyncTask;->future:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->isCancelled()Z

    move-result v0

    goto :goto_0
.end method

.method protected newTask()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 156
    .local p0, "this":Lroboguice/util/SafeAsyncTask;, "Lroboguice/util/SafeAsyncTask<TResultT;>;"
    new-instance v0, Lroboguice/util/SafeAsyncTask$SafeAsyncTaskAndroidCallable;

    invoke-direct {v0, p0}, Lroboguice/util/SafeAsyncTask$SafeAsyncTaskAndroidCallable;-><init>(Lroboguice/util/SafeAsyncTask;)V

    return-object v0
.end method

.method protected onException(Ljava/lang/Exception;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 142
    .local p0, "this":Lroboguice/util/SafeAsyncTask;, "Lroboguice/util/SafeAsyncTask<TResultT;>;"
    invoke-virtual {p0, p1}, Lroboguice/util/SafeAsyncTask;->onThrowable(Ljava/lang/Throwable;)V

    .line 143
    return-void
.end method

.method protected onFinally()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 152
    .local p0, "this":Lroboguice/util/SafeAsyncTask;, "Lroboguice/util/SafeAsyncTask<TResultT;>;"
    return-void
.end method

.method protected onInterrupted(Ljava/lang/Exception;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 131
    .local p0, "this":Lroboguice/util/SafeAsyncTask;, "Lroboguice/util/SafeAsyncTask<TResultT;>;"
    invoke-virtual {p0, p1}, Lroboguice/util/SafeAsyncTask;->onException(Ljava/lang/Exception;)V

    .line 132
    return-void
.end method

.method protected onPreExecute()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 111
    .local p0, "this":Lroboguice/util/SafeAsyncTask;, "Lroboguice/util/SafeAsyncTask<TResultT;>;"
    return-void
.end method

.method protected onSuccess(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResultT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 118
    .local p0, "this":Lroboguice/util/SafeAsyncTask;, "Lroboguice/util/SafeAsyncTask<TResultT;>;"
    .local p1, "t":Ljava/lang/Object;, "TResultT;"
    return-void
.end method

.method protected onThrowable(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 146
    .local p0, "this":Lroboguice/util/SafeAsyncTask;, "Lroboguice/util/SafeAsyncTask<TResultT;>;"
    const-string v0, "roboguice"

    const-string v1, "Throwable caught during background processing"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 147
    return-void
.end method

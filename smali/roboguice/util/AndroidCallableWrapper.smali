.class public Lroboguice/util/AndroidCallableWrapper;
.super Ljava/lang/Object;
.source "AndroidCallableWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResultT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field static isPreCallOverriddenMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lroboguice/util/AndroidCallableI",
            "<*>;>;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected delegate:Lroboguice/util/AndroidCallableI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lroboguice/util/AndroidCallableI",
            "<TResultT;>;"
        }
    .end annotation
.end field

.field protected handler:Landroid/os/Handler;

.field protected launchLocation:[Ljava/lang/StackTraceElement;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 129
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lroboguice/util/AndroidCallableWrapper;->isPreCallOverriddenMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lroboguice/util/AndroidCallableI;[Ljava/lang/StackTraceElement;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;
    .param p3, "launchLocation"    # [Ljava/lang/StackTraceElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Lroboguice/util/AndroidCallableI",
            "<TResultT;>;[",
            "Ljava/lang/StackTraceElement;",
            ")V"
        }
    .end annotation

    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressWarnings;
        value = {
            "MALICIOUS_CODE"
        }
    .end annotation

    .prologue
    .line 26
    .local p0, "this":Lroboguice/util/AndroidCallableWrapper;, "Lroboguice/util/AndroidCallableWrapper<TResultT;>;"
    .local p2, "delegate":Lroboguice/util/AndroidCallableI;, "Lroboguice/util/AndroidCallableI<TResultT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p2, p0, Lroboguice/util/AndroidCallableWrapper;->delegate:Lroboguice/util/AndroidCallableI;

    .line 28
    iput-object p3, p0, Lroboguice/util/AndroidCallableWrapper;->launchLocation:[Ljava/lang/StackTraceElement;

    .line 29
    if-eqz p1, :cond_0

    .end local p1    # "handler":Landroid/os/Handler;
    :goto_0
    iput-object p1, p0, Lroboguice/util/AndroidCallableWrapper;->handler:Landroid/os/Handler;

    .line 30
    return-void

    .line 29
    .restart local p1    # "handler":Landroid/os/Handler;
    :cond_0
    new-instance p1, Landroid/os/Handler;

    .end local p1    # "handler":Landroid/os/Handler;
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto :goto_0
.end method

.method static isPreCallOverriden(Ljava/lang/Class;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lroboguice/util/AndroidCallableI",
            "<*>;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "subClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lroboguice/util/AndroidCallableI<*>;>;"
    const/4 v2, 0x0

    .line 133
    :try_start_0
    sget-object v3, Lroboguice/util/AndroidCallableWrapper;->isPreCallOverriddenMap:Ljava/util/HashMap;

    invoke-virtual {v3, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 134
    .local v1, "tmp":Ljava/lang/Boolean;
    if-eqz v1, :cond_0

    .line 135
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 139
    :goto_0
    return v2

    .line 137
    :cond_0
    const-string v3, "onPreCall"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {p0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Lroboguice/util/AndroidCallableWrapper;

    if-eq v3, v4, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 138
    sget-object v2, Lroboguice/util/AndroidCallableWrapper;->isPreCallOverriddenMap:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 141
    .end local v1    # "tmp":Ljava/lang/Boolean;
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method afterCall(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 2
    .param p2, "e"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResultT;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .prologue
    .line 85
    .local p0, "this":Lroboguice/util/AndroidCallableWrapper;, "Lroboguice/util/AndroidCallableWrapper<TResultT;>;"
    .local p1, "result":Ljava/lang/Object;, "TResultT;"
    iget-object v0, p0, Lroboguice/util/AndroidCallableWrapper;->handler:Landroid/os/Handler;

    new-instance v1, Lroboguice/util/AndroidCallableWrapper$2;

    invoke-direct {v1, p0, p2, p1}, Lroboguice/util/AndroidCallableWrapper$2;-><init>(Lroboguice/util/AndroidCallableWrapper;Ljava/lang/Exception;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 106
    return-void
.end method

.method beforeCall()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p0, "this":Lroboguice/util/AndroidCallableWrapper;, "Lroboguice/util/AndroidCallableWrapper<TResultT;>;"
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 51
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 52
    .local v1, "latch":Ljava/util/concurrent/CountDownLatch;
    new-array v0, v2, [Ljava/lang/Exception;

    .line 58
    .local v0, "exceptions":[Ljava/lang/Exception;
    iget-object v2, p0, Lroboguice/util/AndroidCallableWrapper;->handler:Landroid/os/Handler;

    new-instance v3, Lroboguice/util/AndroidCallableWrapper$1;

    invoke-direct {v3, p0, v0, v1}, Lroboguice/util/AndroidCallableWrapper$1;-><init>(Lroboguice/util/AndroidCallableWrapper;[Ljava/lang/Exception;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 77
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 79
    aget-object v2, v0, v4

    if-eqz v2, :cond_0

    .line 80
    aget-object v2, v0, v4

    throw v2

    .line 82
    :cond_0
    return-void
.end method

.method protected doDoInBackgroundThread()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResultT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 113
    .local p0, "this":Lroboguice/util/AndroidCallableWrapper;, "Lroboguice/util/AndroidCallableWrapper<TResultT;>;"
    iget-object v0, p0, Lroboguice/util/AndroidCallableWrapper;->delegate:Lroboguice/util/AndroidCallableI;

    invoke-interface {v0}, Lroboguice/util/AndroidCallableI;->doInBackground()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected doOnException(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 121
    .local p0, "this":Lroboguice/util/AndroidCallableWrapper;, "Lroboguice/util/AndroidCallableWrapper<TResultT;>;"
    iget-object v0, p0, Lroboguice/util/AndroidCallableWrapper;->delegate:Lroboguice/util/AndroidCallableI;

    invoke-interface {v0, p1}, Lroboguice/util/AndroidCallableI;->onException(Ljava/lang/Exception;)V

    .line 122
    return-void
.end method

.method protected doOnFinally()V
    .locals 1

    .prologue
    .line 125
    .local p0, "this":Lroboguice/util/AndroidCallableWrapper;, "Lroboguice/util/AndroidCallableWrapper<TResultT;>;"
    iget-object v0, p0, Lroboguice/util/AndroidCallableWrapper;->delegate:Lroboguice/util/AndroidCallableI;

    invoke-interface {v0}, Lroboguice/util/AndroidCallableI;->onFinally()V

    .line 126
    return-void
.end method

.method protected doOnPreCall()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 109
    .local p0, "this":Lroboguice/util/AndroidCallableWrapper;, "Lroboguice/util/AndroidCallableWrapper<TResultT;>;"
    iget-object v0, p0, Lroboguice/util/AndroidCallableWrapper;->delegate:Lroboguice/util/AndroidCallableI;

    invoke-interface {v0}, Lroboguice/util/AndroidCallableI;->onPreCall()V

    .line 110
    return-void
.end method

.method protected doOnSuccess(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResultT;)V"
        }
    .end annotation

    .prologue
    .line 117
    .local p0, "this":Lroboguice/util/AndroidCallableWrapper;, "Lroboguice/util/AndroidCallableWrapper<TResultT;>;"
    .local p1, "result":Ljava/lang/Object;, "TResultT;"
    iget-object v0, p0, Lroboguice/util/AndroidCallableWrapper;->delegate:Lroboguice/util/AndroidCallableI;

    invoke-interface {v0, p1}, Lroboguice/util/AndroidCallableI;->onSuccess(Ljava/lang/Object;)V

    .line 118
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 35
    .local p0, "this":Lroboguice/util/AndroidCallableWrapper;, "Lroboguice/util/AndroidCallableWrapper<TResultT;>;"
    const/4 v2, 0x0

    .line 36
    .local v2, "result":Ljava/lang/Object;, "TResultT;"
    const/4 v1, 0x0

    .line 38
    .local v1, "exception":Ljava/lang/Exception;
    :try_start_0
    iget-object v3, p0, Lroboguice/util/AndroidCallableWrapper;->delegate:Lroboguice/util/AndroidCallableI;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lroboguice/util/AndroidCallableWrapper;->isPreCallOverriden(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 39
    invoke-virtual {p0}, Lroboguice/util/AndroidCallableWrapper;->beforeCall()V

    .line 41
    :cond_0
    invoke-virtual {p0}, Lroboguice/util/AndroidCallableWrapper;->doDoInBackgroundThread()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 45
    invoke-virtual {p0, v2, v1}, Lroboguice/util/AndroidCallableWrapper;->afterCall(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 47
    .end local v2    # "result":Ljava/lang/Object;, "TResultT;"
    :goto_0
    return-void

    .line 42
    .restart local v2    # "result":Ljava/lang/Object;, "TResultT;"
    :catch_0
    move-exception v0

    .line 43
    .local v0, "e":Ljava/lang/Exception;
    move-object v1, v0

    .line 45
    invoke-virtual {p0, v2, v1}, Lroboguice/util/AndroidCallableWrapper;->afterCall(Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    invoke-virtual {p0, v2, v1}, Lroboguice/util/AndroidCallableWrapper;->afterCall(Ljava/lang/Object;Ljava/lang/Exception;)V

    throw v3
.end method

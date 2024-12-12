.class public abstract Lroboguice/util/RoboAsyncTask;
.super Lroboguice/util/SafeAsyncTask;
.source "RoboAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResultT:",
        "Ljava/lang/Object;",
        ">",
        "Lroboguice/util/SafeAsyncTask",
        "<TResultT;>;"
    }
.end annotation


# instance fields
.field protected context:Landroid/content/Context;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    .local p0, "this":Lroboguice/util/RoboAsyncTask;, "Lroboguice/util/RoboAsyncTask<TResultT;>;"
    invoke-direct {p0}, Lroboguice/util/SafeAsyncTask;-><init>()V

    .line 15
    iput-object p1, p0, Lroboguice/util/RoboAsyncTask;->context:Landroid/content/Context;

    .line 16
    invoke-static {p1}, Lroboguice/RoboGuice;->getInjector(Landroid/content/Context;)Lroboguice/inject/RoboInjector;

    move-result-object v0

    invoke-interface {v0, p0}, Lroboguice/inject/RoboInjector;->injectMembers(Ljava/lang/Object;)V

    .line 17
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 20
    .local p0, "this":Lroboguice/util/RoboAsyncTask;, "Lroboguice/util/RoboAsyncTask<TResultT;>;"
    invoke-direct {p0, p2}, Lroboguice/util/SafeAsyncTask;-><init>(Landroid/os/Handler;)V

    .line 21
    iput-object p1, p0, Lroboguice/util/RoboAsyncTask;->context:Landroid/content/Context;

    .line 22
    invoke-static {p1}, Lroboguice/RoboGuice;->getInjector(Landroid/content/Context;)Lroboguice/inject/RoboInjector;

    move-result-object v0

    invoke-interface {v0, p0}, Lroboguice/inject/RoboInjector;->injectMembers(Ljava/lang/Object;)V

    .line 23
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 26
    .local p0, "this":Lroboguice/util/RoboAsyncTask;, "Lroboguice/util/RoboAsyncTask<TResultT;>;"
    invoke-direct {p0, p2, p3}, Lroboguice/util/SafeAsyncTask;-><init>(Landroid/os/Handler;Ljava/util/concurrent/Executor;)V

    .line 27
    iput-object p1, p0, Lroboguice/util/RoboAsyncTask;->context:Landroid/content/Context;

    .line 28
    invoke-static {p1}, Lroboguice/RoboGuice;->getInjector(Landroid/content/Context;)Lroboguice/inject/RoboInjector;

    move-result-object v0

    invoke-interface {v0, p0}, Lroboguice/inject/RoboInjector;->injectMembers(Ljava/lang/Object;)V

    .line 29
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 32
    .local p0, "this":Lroboguice/util/RoboAsyncTask;, "Lroboguice/util/RoboAsyncTask<TResultT;>;"
    invoke-direct {p0, p2}, Lroboguice/util/SafeAsyncTask;-><init>(Ljava/util/concurrent/Executor;)V

    .line 33
    iput-object p1, p0, Lroboguice/util/RoboAsyncTask;->context:Landroid/content/Context;

    .line 34
    invoke-static {p1}, Lroboguice/RoboGuice;->getInjector(Landroid/content/Context;)Lroboguice/inject/RoboInjector;

    move-result-object v0

    invoke-interface {v0, p0}, Lroboguice/inject/RoboInjector;->injectMembers(Ljava/lang/Object;)V

    .line 35
    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 38
    .local p0, "this":Lroboguice/util/RoboAsyncTask;, "Lroboguice/util/RoboAsyncTask<TResultT;>;"
    iget-object v0, p0, Lroboguice/util/RoboAsyncTask;->context:Landroid/content/Context;

    return-object v0
.end method

.class public Lroboguice/inject/ContextScopedProvider;
.super Ljava/lang/Object;
.source "ContextScopedProvider.java"


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
.field protected provider:Lcom/google/inject/Provider;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/Provider",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    .local p0, "this":Lroboguice/inject/ContextScopedProvider;, "Lroboguice/inject/ContextScopedProvider<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Landroid/content/Context;)Ljava/lang/Object;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 16
    .local p0, "this":Lroboguice/inject/ContextScopedProvider;, "Lroboguice/inject/ContextScopedProvider<TT;>;"
    invoke-static {p1}, Lroboguice/RoboGuice;->getInjector(Landroid/content/Context;)Lroboguice/inject/RoboInjector;

    move-result-object v1

    const-class v2, Lroboguice/inject/ContextScope;

    invoke-interface {v1, v2}, Lroboguice/inject/RoboInjector;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lroboguice/inject/ContextScope;

    .line 17
    .local v0, "scope":Lroboguice/inject/ContextScope;
    const-class v2, Lroboguice/inject/ContextScope;

    monitor-enter v2

    .line 18
    :try_start_0
    invoke-virtual {v0, p1}, Lroboguice/inject/ContextScope;->enter(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 20
    :try_start_1
    iget-object v1, p0, Lroboguice/inject/ContextScopedProvider;->provider:Lcom/google/inject/Provider;

    invoke-interface {v1}, Lcom/google/inject/Provider;->get()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 22
    :try_start_2
    invoke-virtual {v0, p1}, Lroboguice/inject/ContextScope;->exit(Landroid/content/Context;)V

    monitor-exit v2

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0, p1}, Lroboguice/inject/ContextScope;->exit(Landroid/content/Context;)V

    throw v1

    .line 24
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

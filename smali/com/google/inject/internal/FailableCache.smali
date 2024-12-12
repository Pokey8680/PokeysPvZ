.class public abstract Lcom/google/inject/internal/FailableCache;
.super Ljava/lang/Object;
.source "FailableCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final delegate:Lorg/roboguice/shaded/goole/common/cache/LoadingCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/cache/LoadingCache",
            "<TK;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 29
    .local p0, "this":Lcom/google/inject/internal/FailableCache;, "Lcom/google/inject/internal/FailableCache<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {}, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->newBuilder()Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;

    move-result-object v0

    new-instance v1, Lcom/google/inject/internal/FailableCache$1;

    invoke-direct {v1, p0}, Lcom/google/inject/internal/FailableCache$1;-><init>(Lcom/google/inject/internal/FailableCache;)V

    invoke-virtual {v0, v1}, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->build(Lorg/roboguice/shaded/goole/common/cache/CacheLoader;)Lorg/roboguice/shaded/goole/common/cache/LoadingCache;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/internal/FailableCache;->delegate:Lorg/roboguice/shaded/goole/common/cache/LoadingCache;

    return-void
.end method


# virtual methods
.method protected abstract create(Ljava/lang/Object;Lcom/google/inject/internal/Errors;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lcom/google/inject/internal/Errors;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/inject/internal/ErrorsException;
        }
    .end annotation
.end method

.method public get(Ljava/lang/Object;Lcom/google/inject/internal/Errors;)Ljava/lang/Object;
    .locals 3
    .param p2, "errors"    # Lcom/google/inject/internal/Errors;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lcom/google/inject/internal/Errors;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/inject/internal/ErrorsException;
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "this":Lcom/google/inject/internal/FailableCache;, "Lcom/google/inject/internal/FailableCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v2, p0, Lcom/google/inject/internal/FailableCache;->delegate:Lorg/roboguice/shaded/goole/common/cache/LoadingCache;

    invoke-interface {v2, p1}, Lorg/roboguice/shaded/goole/common/cache/LoadingCache;->getUnchecked(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 49
    .local v1, "resultOrError":Ljava/lang/Object;
    instance-of v2, v1, Lcom/google/inject/internal/Errors;

    if-eqz v2, :cond_0

    .line 50
    check-cast v1, Lcom/google/inject/internal/Errors;

    .end local v1    # "resultOrError":Ljava/lang/Object;
    invoke-virtual {p2, v1}, Lcom/google/inject/internal/Errors;->merge(Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/Errors;

    .line 51
    invoke-virtual {p2}, Lcom/google/inject/internal/Errors;->toException()Lcom/google/inject/internal/ErrorsException;

    move-result-object v2

    throw v2

    .line 54
    .restart local v1    # "resultOrError":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 55
    .local v0, "result":Ljava/lang/Object;, "TV;"
    return-object v0
.end method

.method remove(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "this":Lcom/google/inject/internal/FailableCache;, "Lcom/google/inject/internal/FailableCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lcom/google/inject/internal/FailableCache;->delegate:Lorg/roboguice/shaded/goole/common/cache/LoadingCache;

    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/cache/LoadingCache;->asMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

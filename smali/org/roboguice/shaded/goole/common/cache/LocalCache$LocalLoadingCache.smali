.class Lorg/roboguice/shaded/goole/common/cache/LocalCache$LocalLoadingCache;
.super Lorg/roboguice/shaded/goole/common/cache/LocalCache$LocalManualCache;
.source "LocalCache.java"

# interfaces
.implements Lorg/roboguice/shaded/goole/common/cache/LoadingCache;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LocalLoadingCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/roboguice/shaded/goole/common/cache/LocalCache$LocalManualCache",
        "<TK;TV;>;",
        "Lorg/roboguice/shaded/goole/common/cache/LoadingCache",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;Lorg/roboguice/shaded/goole/common/cache/CacheLoader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/cache/CacheBuilder",
            "<-TK;-TV;>;",
            "Lorg/roboguice/shaded/goole/common/cache/CacheLoader",
            "<-TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 4814
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache$LocalLoadingCache;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$LocalLoadingCache<TK;TV;>;"
    .local p1, "builder":Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;, "Lorg/roboguice/shaded/goole/common/cache/CacheBuilder<-TK;-TV;>;"
    .local p2, "loader":Lorg/roboguice/shaded/goole/common/cache/CacheLoader;, "Lorg/roboguice/shaded/goole/common/cache/CacheLoader<-TK;TV;>;"
    new-instance v1, Lorg/roboguice/shaded/goole/common/cache/LocalCache;

    invoke-static {p2}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/roboguice/shaded/goole/common/cache/CacheLoader;

    invoke-direct {v1, p1, v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;-><init>(Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;Lorg/roboguice/shaded/goole/common/cache/CacheLoader;)V

    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$LocalManualCache;-><init>(Lorg/roboguice/shaded/goole/common/cache/LocalCache;Lorg/roboguice/shaded/goole/common/cache/LocalCache$1;)V

    .line 4815
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 4845
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache$LocalLoadingCache;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$LocalLoadingCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$LocalLoadingCache;->getUnchecked(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 4821
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache$LocalLoadingCache;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$LocalLoadingCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$LocalLoadingCache;->localCache:Lorg/roboguice/shaded/goole/common/cache/LocalCache;

    invoke-virtual {v0, p1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->getOrLoad(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getAll(Ljava/lang/Iterable;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+TK;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 4835
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache$LocalLoadingCache;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$LocalLoadingCache<TK;TV;>;"
    .local p1, "keys":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TK;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$LocalLoadingCache;->localCache:Lorg/roboguice/shaded/goole/common/cache/LocalCache;

    invoke-virtual {v0, p1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->getAll(Ljava/lang/Iterable;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public getUnchecked(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 4827
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache$LocalLoadingCache;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$LocalLoadingCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$LocalLoadingCache;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 4828
    :catch_0
    move-exception v0

    .line 4829
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    new-instance v1, Lorg/roboguice/shaded/goole/common/util/concurrent/UncheckedExecutionException;

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/roboguice/shaded/goole/common/util/concurrent/UncheckedExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public refresh(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .prologue
    .line 4840
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache$LocalLoadingCache;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$LocalLoadingCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$LocalLoadingCache;->localCache:Lorg/roboguice/shaded/goole/common/cache/LocalCache;

    invoke-virtual {v0, p1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->refresh(Ljava/lang/Object;)V

    .line 4841
    return-void
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 4854
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache$LocalLoadingCache;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$LocalLoadingCache<TK;TV;>;"
    new-instance v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingSerializationProxy;

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$LocalLoadingCache;->localCache:Lorg/roboguice/shaded/goole/common/cache/LocalCache;

    invoke-direct {v0, v1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingSerializationProxy;-><init>(Lorg/roboguice/shaded/goole/common/cache/LocalCache;)V

    return-object v0
.end method

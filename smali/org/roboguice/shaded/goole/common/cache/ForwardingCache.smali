.class public abstract Lorg/roboguice/shaded/goole/common/cache/ForwardingCache;
.super Lorg/roboguice/shaded/goole/common/collect/ForwardingObject;
.source "ForwardingCache.java"

# interfaces
.implements Lorg/roboguice/shaded/goole/common/cache/Cache;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/roboguice/shaded/goole/common/cache/ForwardingCache$SimpleForwardingCache;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/roboguice/shaded/goole/common/collect/ForwardingObject;",
        "Lorg/roboguice/shaded/goole/common/cache/Cache",
        "<TK;TV;>;"
    }
.end annotation

.annotation build Lorg/roboguice/shaded/goole/common/annotations/Beta;
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 43
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/ForwardingCache;, "Lorg/roboguice/shaded/goole/common/cache/ForwardingCache<TK;TV;>;"
    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/collect/ForwardingObject;-><init>()V

    return-void
.end method


# virtual methods
.method public asMap()Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 119
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/ForwardingCache;, "Lorg/roboguice/shaded/goole/common/cache/ForwardingCache<TK;TV;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/ForwardingCache;->delegate()Lorg/roboguice/shaded/goole/common/cache/Cache;

    move-result-object v0

    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/cache/Cache;->asMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    return-object v0
.end method

.method public cleanUp()V
    .locals 1

    .prologue
    .line 124
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/ForwardingCache;, "Lorg/roboguice/shaded/goole/common/cache/ForwardingCache<TK;TV;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/ForwardingCache;->delegate()Lorg/roboguice/shaded/goole/common/cache/Cache;

    move-result-object v0

    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/cache/Cache;->cleanUp()V

    .line 125
    return-void
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 39
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/ForwardingCache;, "Lorg/roboguice/shaded/goole/common/cache/ForwardingCache<TK;TV;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/ForwardingCache;->delegate()Lorg/roboguice/shaded/goole/common/cache/Cache;

    move-result-object v0

    return-object v0
.end method

.method protected abstract delegate()Lorg/roboguice/shaded/goole/common/cache/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/cache/Cache",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method public get(Ljava/lang/Object;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/concurrent/Callable",
            "<+TV;>;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 62
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/ForwardingCache;, "Lorg/roboguice/shaded/goole/common/cache/ForwardingCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "valueLoader":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<+TV;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/ForwardingCache;->delegate()Lorg/roboguice/shaded/goole/common/cache/Cache;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/roboguice/shaded/goole/common/cache/Cache;->get(Ljava/lang/Object;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getAllPresent(Ljava/lang/Iterable;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<*>;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/ForwardingCache;, "Lorg/roboguice/shaded/goole/common/cache/ForwardingCache<TK;TV;>;"
    .local p1, "keys":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/ForwardingCache;->delegate()Lorg/roboguice/shaded/goole/common/cache/Cache;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/roboguice/shaded/goole/common/cache/Cache;->getAllPresent(Ljava/lang/Iterable;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public getIfPresent(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 54
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/ForwardingCache;, "Lorg/roboguice/shaded/goole/common/cache/ForwardingCache<TK;TV;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/ForwardingCache;->delegate()Lorg/roboguice/shaded/goole/common/cache/Cache;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/roboguice/shaded/goole/common/cache/Cache;->getIfPresent(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public invalidate(Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 91
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/ForwardingCache;, "Lorg/roboguice/shaded/goole/common/cache/ForwardingCache<TK;TV;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/ForwardingCache;->delegate()Lorg/roboguice/shaded/goole/common/cache/Cache;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/roboguice/shaded/goole/common/cache/Cache;->invalidate(Ljava/lang/Object;)V

    .line 92
    return-void
.end method

.method public invalidateAll()V
    .locals 1

    .prologue
    .line 104
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/ForwardingCache;, "Lorg/roboguice/shaded/goole/common/cache/ForwardingCache<TK;TV;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/ForwardingCache;->delegate()Lorg/roboguice/shaded/goole/common/cache/Cache;

    move-result-object v0

    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/cache/Cache;->invalidateAll()V

    .line 105
    return-void
.end method

.method public invalidateAll(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 99
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/ForwardingCache;, "Lorg/roboguice/shaded/goole/common/cache/ForwardingCache<TK;TV;>;"
    .local p1, "keys":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/ForwardingCache;->delegate()Lorg/roboguice/shaded/goole/common/cache/Cache;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/roboguice/shaded/goole/common/cache/Cache;->invalidateAll(Ljava/lang/Iterable;)V

    .line 100
    return-void
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 78
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/ForwardingCache;, "Lorg/roboguice/shaded/goole/common/cache/ForwardingCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/ForwardingCache;->delegate()Lorg/roboguice/shaded/goole/common/cache/Cache;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/roboguice/shaded/goole/common/cache/Cache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 79
    return-void
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/ForwardingCache;, "Lorg/roboguice/shaded/goole/common/cache/ForwardingCache<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/ForwardingCache;->delegate()Lorg/roboguice/shaded/goole/common/cache/Cache;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/roboguice/shaded/goole/common/cache/Cache;->putAll(Ljava/util/Map;)V

    .line 87
    return-void
.end method

.method public size()J
    .locals 2

    .prologue
    .line 109
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/ForwardingCache;, "Lorg/roboguice/shaded/goole/common/cache/ForwardingCache<TK;TV;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/ForwardingCache;->delegate()Lorg/roboguice/shaded/goole/common/cache/Cache;

    move-result-object v0

    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/cache/Cache;->size()J

    move-result-wide v0

    return-wide v0
.end method

.method public stats()Lorg/roboguice/shaded/goole/common/cache/CacheStats;
    .locals 1

    .prologue
    .line 114
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/ForwardingCache;, "Lorg/roboguice/shaded/goole/common/cache/ForwardingCache<TK;TV;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/ForwardingCache;->delegate()Lorg/roboguice/shaded/goole/common/cache/Cache;

    move-result-object v0

    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/cache/Cache;->stats()Lorg/roboguice/shaded/goole/common/cache/CacheStats;

    move-result-object v0

    return-object v0
.end method
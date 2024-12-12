.class final Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingSerializationProxy;
.super Lorg/roboguice/shaded/goole/common/cache/LocalCache$ManualSerializationProxy;
.source "LocalCache.java"

# interfaces
.implements Lorg/roboguice/shaded/goole/common/cache/LoadingCache;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LoadingSerializationProxy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ManualSerializationProxy",
        "<TK;TV;>;",
        "Lorg/roboguice/shaded/goole/common/cache/LoadingCache",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field transient autoDelegate:Lorg/roboguice/shaded/goole/common/cache/LoadingCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/cache/LoadingCache",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/cache/LocalCache;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 4675
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingSerializationProxy;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingSerializationProxy<TK;TV;>;"
    .local p1, "cache":Lorg/roboguice/shaded/goole/common/cache/LocalCache;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache<TK;TV;>;"
    invoke-direct {p0, p1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ManualSerializationProxy;-><init>(Lorg/roboguice/shaded/goole/common/cache/LocalCache;)V

    .line 4676
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 4679
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingSerializationProxy;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingSerializationProxy<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 4680
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingSerializationProxy;->recreateCacheBuilder()Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;

    move-result-object v0

    .line 4681
    .local v0, "builder":Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;, "Lorg/roboguice/shaded/goole/common/cache/CacheBuilder<TK;TV;>;"
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingSerializationProxy;->loader:Lorg/roboguice/shaded/goole/common/cache/CacheLoader;

    invoke-virtual {v0, v1}, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->build(Lorg/roboguice/shaded/goole/common/cache/CacheLoader;)Lorg/roboguice/shaded/goole/common/cache/LoadingCache;

    move-result-object v1

    iput-object v1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingSerializationProxy;->autoDelegate:Lorg/roboguice/shaded/goole/common/cache/LoadingCache;

    .line 4682
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 4710
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingSerializationProxy;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingSerializationProxy<TK;TV;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingSerializationProxy;->autoDelegate:Lorg/roboguice/shaded/goole/common/cache/LoadingCache;

    return-object v0
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
    .line 4701
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingSerializationProxy;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingSerializationProxy<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingSerializationProxy;->autoDelegate:Lorg/roboguice/shaded/goole/common/cache/LoadingCache;

    invoke-interface {v0, p1}, Lorg/roboguice/shaded/goole/common/cache/LoadingCache;->apply(Ljava/lang/Object;)Ljava/lang/Object;

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
    .line 4686
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingSerializationProxy;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingSerializationProxy<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingSerializationProxy;->autoDelegate:Lorg/roboguice/shaded/goole/common/cache/LoadingCache;

    invoke-interface {v0, p1}, Lorg/roboguice/shaded/goole/common/cache/LoadingCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

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
    .line 4696
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingSerializationProxy;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingSerializationProxy<TK;TV;>;"
    .local p1, "keys":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TK;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingSerializationProxy;->autoDelegate:Lorg/roboguice/shaded/goole/common/cache/LoadingCache;

    invoke-interface {v0, p1}, Lorg/roboguice/shaded/goole/common/cache/LoadingCache;->getAll(Ljava/lang/Iterable;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public getUnchecked(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 4691
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingSerializationProxy;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingSerializationProxy<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingSerializationProxy;->autoDelegate:Lorg/roboguice/shaded/goole/common/cache/LoadingCache;

    invoke-interface {v0, p1}, Lorg/roboguice/shaded/goole/common/cache/LoadingCache;->getUnchecked(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public refresh(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .prologue
    .line 4706
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingSerializationProxy;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingSerializationProxy<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingSerializationProxy;->autoDelegate:Lorg/roboguice/shaded/goole/common/cache/LoadingCache;

    invoke-interface {v0, p1}, Lorg/roboguice/shaded/goole/common/cache/LoadingCache;->refresh(Ljava/lang/Object;)V

    .line 4707
    return-void
.end method

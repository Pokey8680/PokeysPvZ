.class Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedSetMultimap;
.super Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedMultimap;
.source "Synchronized.java"

# interfaces
.implements Lorg/roboguice/shaded/goole/common/collect/SetMultimap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/Synchronized;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SynchronizedSetMultimap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedMultimap",
        "<TK;TV;>;",
        "Lorg/roboguice/shaded/goole/common/collect/SetMultimap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field transient entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/SetMultimap;Ljava/lang/Object;)V
    .locals 0
    .param p2, "mutex"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/collect/SetMultimap",
            "<TK;TV;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 742
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedSetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedSetMultimap<TK;TV;>;"
    .local p1, "delegate":Lorg/roboguice/shaded/goole/common/collect/SetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/SetMultimap<TK;TV;>;"
    invoke-direct {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedMultimap;-><init>(Lorg/roboguice/shaded/goole/common/collect/Multimap;Ljava/lang/Object;)V

    .line 743
    return-void
.end method


# virtual methods
.method bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 736
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedSetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedSetMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedSetMultimap;->delegate()Lorg/roboguice/shaded/goole/common/collect/SetMultimap;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic delegate()Lorg/roboguice/shaded/goole/common/collect/Multimap;
    .locals 1

    .prologue
    .line 736
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedSetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedSetMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedSetMultimap;->delegate()Lorg/roboguice/shaded/goole/common/collect/SetMultimap;

    move-result-object v0

    return-object v0
.end method

.method delegate()Lorg/roboguice/shaded/goole/common/collect/SetMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/SetMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 745
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedSetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedSetMultimap<TK;TV;>;"
    invoke-super {p0}, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lorg/roboguice/shaded/goole/common/collect/Multimap;

    move-result-object v0

    check-cast v0, Lorg/roboguice/shaded/goole/common/collect/SetMultimap;

    return-object v0
.end method

.method public bridge synthetic entries()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 736
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedSetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedSetMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedSetMultimap;->entries()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public entries()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 764
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedSetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedSetMultimap<TK;TV;>;"
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedSetMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 765
    :try_start_0
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedSetMultimap;->entrySet:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 766
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedSetMultimap;->delegate()Lorg/roboguice/shaded/goole/common/collect/SetMultimap;

    move-result-object v0

    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/collect/SetMultimap;->entries()Ljava/util/Set;

    move-result-object v0

    iget-object v2, p0, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedSetMultimap;->mutex:Ljava/lang/Object;

    invoke-static {v0, v2}, Lorg/roboguice/shaded/goole/common/collect/Synchronized;->set(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedSetMultimap;->entrySet:Ljava/util/Set;

    .line 768
    :cond_0
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedSetMultimap;->entrySet:Ljava/util/Set;

    monitor-exit v1

    return-object v0

    .line 769
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 736
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedSetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedSetMultimap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedSetMultimap;->get(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Set",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 748
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedSetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedSetMultimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedSetMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 749
    :try_start_0
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedSetMultimap;->delegate()Lorg/roboguice/shaded/goole/common/collect/SetMultimap;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/roboguice/shaded/goole/common/collect/SetMultimap;->get(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iget-object v2, p0, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedSetMultimap;->mutex:Ljava/lang/Object;

    invoke-static {v0, v2}, Lorg/roboguice/shaded/goole/common/collect/Synchronized;->set(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 750
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 736
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedSetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedSetMultimap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedSetMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public removeAll(Ljava/lang/Object;)Ljava/util/Set;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Set",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 753
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedSetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedSetMultimap<TK;TV;>;"
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedSetMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 754
    :try_start_0
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedSetMultimap;->delegate()Lorg/roboguice/shaded/goole/common/collect/SetMultimap;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/roboguice/shaded/goole/common/collect/SetMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 755
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Iterable;

    .prologue
    .line 736
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedSetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedSetMultimap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedSetMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable",
            "<+TV;>;)",
            "Ljava/util/Set",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 759
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedSetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedSetMultimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TV;>;"
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedSetMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 760
    :try_start_0
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedSetMultimap;->delegate()Lorg/roboguice/shaded/goole/common/collect/SetMultimap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/SetMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 761
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

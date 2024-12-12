.class Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedSortedSetMultimap;
.super Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedSetMultimap;
.source "Synchronized.java"

# interfaces
.implements Lorg/roboguice/shaded/goole/common/collect/SortedSetMultimap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/Synchronized;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SynchronizedSortedSetMultimap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedSetMultimap",
        "<TK;TV;>;",
        "Lorg/roboguice/shaded/goole/common/collect/SortedSetMultimap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/SortedSetMultimap;Ljava/lang/Object;)V
    .locals 0
    .param p2, "mutex"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/collect/SortedSetMultimap",
            "<TK;TV;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 786
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedSortedSetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedSortedSetMultimap<TK;TV;>;"
    .local p1, "delegate":Lorg/roboguice/shaded/goole/common/collect/SortedSetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/SortedSetMultimap<TK;TV;>;"
    invoke-direct {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedSetMultimap;-><init>(Lorg/roboguice/shaded/goole/common/collect/SetMultimap;Ljava/lang/Object;)V

    .line 787
    return-void
.end method


# virtual methods
.method bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 782
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedSortedSetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedSortedSetMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedSortedSetMultimap;->delegate()Lorg/roboguice/shaded/goole/common/collect/SortedSetMultimap;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic delegate()Lorg/roboguice/shaded/goole/common/collect/Multimap;
    .locals 1

    .prologue
    .line 782
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedSortedSetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedSortedSetMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedSortedSetMultimap;->delegate()Lorg/roboguice/shaded/goole/common/collect/SortedSetMultimap;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic delegate()Lorg/roboguice/shaded/goole/common/collect/SetMultimap;
    .locals 1

    .prologue
    .line 782
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedSortedSetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedSortedSetMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedSortedSetMultimap;->delegate()Lorg/roboguice/shaded/goole/common/collect/SortedSetMultimap;

    move-result-object v0

    return-object v0
.end method

.method delegate()Lorg/roboguice/shaded/goole/common/collect/SortedSetMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/SortedSetMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 789
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedSortedSetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedSortedSetMultimap<TK;TV;>;"
    invoke-super {p0}, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedSetMultimap;->delegate()Lorg/roboguice/shaded/goole/common/collect/SetMultimap;

    move-result-object v0

    check-cast v0, Lorg/roboguice/shaded/goole/common/collect/SortedSetMultimap;

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 782
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedSortedSetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedSortedSetMultimap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedSortedSetMultimap;->get(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 782
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedSortedSetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedSortedSetMultimap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedSortedSetMultimap;->get(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedSet",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 792
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedSortedSetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedSortedSetMultimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedSortedSetMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 793
    :try_start_0
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedSortedSetMultimap;->delegate()Lorg/roboguice/shaded/goole/common/collect/SortedSetMultimap;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/roboguice/shaded/goole/common/collect/SortedSetMultimap;->get(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    iget-object v2, p0, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedSortedSetMultimap;->mutex:Ljava/lang/Object;

    invoke-static {v0, v2}, Lorg/roboguice/shaded/goole/common/collect/Synchronized;->access$100(Ljava/util/SortedSet;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 794
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
    .line 782
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedSortedSetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedSortedSetMultimap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedSortedSetMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 782
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedSortedSetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedSortedSetMultimap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedSortedSetMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public removeAll(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/SortedSet",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 797
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedSortedSetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedSortedSetMultimap<TK;TV;>;"
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedSortedSetMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 798
    :try_start_0
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedSortedSetMultimap;->delegate()Lorg/roboguice/shaded/goole/common/collect/SortedSetMultimap;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/roboguice/shaded/goole/common/collect/SortedSetMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 799
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
    .line 782
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedSortedSetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedSortedSetMultimap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedSortedSetMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Set;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Iterable;

    .prologue
    .line 782
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedSortedSetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedSortedSetMultimap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedSortedSetMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/SortedSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable",
            "<+TV;>;)",
            "Ljava/util/SortedSet",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 803
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedSortedSetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedSortedSetMultimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TV;>;"
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedSortedSetMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 804
    :try_start_0
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedSortedSetMultimap;->delegate()Lorg/roboguice/shaded/goole/common/collect/SortedSetMultimap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/SortedSetMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/SortedSet;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 805
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public valueComparator()Ljava/util/Comparator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TV;>;"
        }
    .end annotation

    .prologue
    .line 809
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedSortedSetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedSortedSetMultimap<TK;TV;>;"
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedSortedSetMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 810
    :try_start_0
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedSortedSetMultimap;->delegate()Lorg/roboguice/shaded/goole/common/collect/SortedSetMultimap;

    move-result-object v0

    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/collect/SortedSetMultimap;->valueComparator()Ljava/util/Comparator;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 811
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

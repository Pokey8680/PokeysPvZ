.class Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableMultimap;
.super Lorg/roboguice/shaded/goole/common/collect/ForwardingMultimap;
.source "Multimaps.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/Multimaps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnmodifiableMultimap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/roboguice/shaded/goole/common/collect/ForwardingMultimap",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final delegate:Lorg/roboguice/shaded/goole/common/collect/Multimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/collect/Multimap",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field transient entries:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field transient keySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation
.end field

.field transient keys:Lorg/roboguice/shaded/goole/common/collect/Multiset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/collect/Multiset",
            "<TK;>;"
        }
    .end annotation
.end field

.field transient map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation
.end field

.field transient values:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/Multimap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/collect/Multimap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 500
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableMultimap;, "Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableMultimap<TK;TV;>;"
    .local p1, "delegate":Lorg/roboguice/shaded/goole/common/collect/Multimap;, "Lorg/roboguice/shaded/goole/common/collect/Multimap<TK;TV;>;"
    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/collect/ForwardingMultimap;-><init>()V

    .line 501
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/roboguice/shaded/goole/common/collect/Multimap;

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableMultimap;->delegate:Lorg/roboguice/shaded/goole/common/collect/Multimap;

    .line 502
    return-void
.end method


# virtual methods
.method public asMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 513
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableMultimap;, "Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableMultimap<TK;TV;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableMultimap;->map:Ljava/util/Map;

    .line 514
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<TK;Ljava/util/Collection<TV;>;>;"
    if-nez v0, :cond_0

    .line 515
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableMultimap;->delegate:Lorg/roboguice/shaded/goole/common/collect/Multimap;

    invoke-interface {v1}, Lorg/roboguice/shaded/goole/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object v1

    new-instance v2, Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableMultimap$1;

    invoke-direct {v2, p0}, Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableMultimap$1;-><init>(Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableMultimap;)V

    invoke-static {v1, v2}, Lorg/roboguice/shaded/goole/common/collect/Maps;->transformValues(Ljava/util/Map;Lorg/roboguice/shaded/goole/common/base/Function;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .end local v0    # "result":Ljava/util/Map;, "Ljava/util/Map<TK;Ljava/util/Collection<TV;>;>;"
    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableMultimap;->map:Ljava/util/Map;

    .line 523
    .restart local v0    # "result":Ljava/util/Map;, "Ljava/util/Map<TK;Ljava/util/Collection<TV;>;>;"
    :cond_0
    return-object v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 509
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableMultimap;, "Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableMultimap<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 491
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableMultimap;, "Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableMultimap;->delegate()Lorg/roboguice/shaded/goole/common/collect/Multimap;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Lorg/roboguice/shaded/goole/common/collect/Multimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/Multimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 505
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableMultimap;, "Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableMultimap<TK;TV;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableMultimap;->delegate:Lorg/roboguice/shaded/goole/common/collect/Multimap;

    return-object v0
.end method

.method public entries()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 527
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableMultimap;, "Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableMultimap<TK;TV;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableMultimap;->entries:Ljava/util/Collection;

    .line 528
    .local v0, "result":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/Map$Entry<TK;TV;>;>;"
    if-nez v0, :cond_0

    .line 529
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableMultimap;->delegate:Lorg/roboguice/shaded/goole/common/collect/Multimap;

    invoke-interface {v1}, Lorg/roboguice/shaded/goole/common/collect/Multimap;->entries()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Lorg/roboguice/shaded/goole/common/collect/Multimaps;->access$100(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableMultimap;->entries:Ljava/util/Collection;

    .line 531
    :cond_0
    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 535
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableMultimap;, "Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableMultimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableMultimap;->delegate:Lorg/roboguice/shaded/goole/common/collect/Multimap;

    invoke-interface {v0, p1}, Lorg/roboguice/shaded/goole/common/collect/Multimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/Multimaps;->access$000(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 547
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableMultimap;, "Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableMultimap<TK;TV;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableMultimap;->keySet:Ljava/util/Set;

    .line 548
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    if-nez v0, :cond_0

    .line 549
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableMultimap;->delegate:Lorg/roboguice/shaded/goole/common/collect/Multimap;

    invoke-interface {v1}, Lorg/roboguice/shaded/goole/common/collect/Multimap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableMultimap;->keySet:Ljava/util/Set;

    .line 551
    :cond_0
    return-object v0
.end method

.method public keys()Lorg/roboguice/shaded/goole/common/collect/Multiset;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/Multiset",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 539
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableMultimap;, "Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableMultimap<TK;TV;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableMultimap;->keys:Lorg/roboguice/shaded/goole/common/collect/Multiset;

    .line 540
    .local v0, "result":Lorg/roboguice/shaded/goole/common/collect/Multiset;, "Lorg/roboguice/shaded/goole/common/collect/Multiset<TK;>;"
    if-nez v0, :cond_0

    .line 541
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableMultimap;->delegate:Lorg/roboguice/shaded/goole/common/collect/Multimap;

    invoke-interface {v1}, Lorg/roboguice/shaded/goole/common/collect/Multimap;->keys()Lorg/roboguice/shaded/goole/common/collect/Multiset;

    move-result-object v1

    invoke-static {v1}, Lorg/roboguice/shaded/goole/common/collect/Multisets;->unmodifiableMultiset(Lorg/roboguice/shaded/goole/common/collect/Multiset;)Lorg/roboguice/shaded/goole/common/collect/Multiset;

    move-result-object v0

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableMultimap;->keys:Lorg/roboguice/shaded/goole/common/collect/Multiset;

    .line 543
    :cond_0
    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    .prologue
    .line 555
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableMultimap;, "Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableMultimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable",
            "<+TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 559
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableMultimap;, "Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableMultimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public putAll(Lorg/roboguice/shaded/goole/common/collect/Multimap;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/collect/Multimap",
            "<+TK;+TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 564
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableMultimap;, "Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableMultimap<TK;TV;>;"
    .local p1, "multimap":Lorg/roboguice/shaded/goole/common/collect/Multimap;, "Lorg/roboguice/shaded/goole/common/collect/Multimap<+TK;+TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 568
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableMultimap;, "Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableMultimap<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public removeAll(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 572
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableMultimap;, "Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableMultimap<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable",
            "<+TV;>;)",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 577
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableMultimap;, "Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableMultimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public values()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 581
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableMultimap;, "Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableMultimap<TK;TV;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableMultimap;->values:Ljava/util/Collection;

    .line 582
    .local v0, "result":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-nez v0, :cond_0

    .line 583
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableMultimap;->delegate:Lorg/roboguice/shaded/goole/common/collect/Multimap;

    invoke-interface {v1}, Lorg/roboguice/shaded/goole/common/collect/Multimap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableMultimap;->values:Ljava/util/Collection;

    .line 585
    :cond_0
    return-object v0
.end method

.class final Lorg/roboguice/shaded/goole/common/collect/FilteredMultimapValues;
.super Ljava/util/AbstractCollection;
.source "FilteredMultimapValues.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractCollection",
        "<TV;>;"
    }
.end annotation

.annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtCompatible;
.end annotation


# instance fields
.field private final multimap:Lorg/roboguice/shaded/goole/common/collect/FilteredMultimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/collect/FilteredMultimap",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/FilteredMultimap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/collect/FilteredMultimap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/FilteredMultimapValues;, "Lorg/roboguice/shaded/goole/common/collect/FilteredMultimapValues<TK;TV;>;"
    .local p1, "multimap":Lorg/roboguice/shaded/goole/common/collect/FilteredMultimap;, "Lorg/roboguice/shaded/goole/common/collect/FilteredMultimap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 42
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/roboguice/shaded/goole/common/collect/FilteredMultimap;

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/FilteredMultimapValues;->multimap:Lorg/roboguice/shaded/goole/common/collect/FilteredMultimap;

    .line 43
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 92
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/FilteredMultimapValues;, "Lorg/roboguice/shaded/goole/common/collect/FilteredMultimapValues<TK;TV;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/FilteredMultimapValues;->multimap:Lorg/roboguice/shaded/goole/common/collect/FilteredMultimap;

    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/collect/FilteredMultimap;->clear()V

    .line 93
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 52
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/FilteredMultimapValues;, "Lorg/roboguice/shaded/goole/common/collect/FilteredMultimapValues<TK;TV;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/FilteredMultimapValues;->multimap:Lorg/roboguice/shaded/goole/common/collect/FilteredMultimap;

    invoke-interface {v0, p1}, Lorg/roboguice/shaded/goole/common/collect/FilteredMultimap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/FilteredMultimapValues;, "Lorg/roboguice/shaded/goole/common/collect/FilteredMultimapValues<TK;TV;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/FilteredMultimapValues;->multimap:Lorg/roboguice/shaded/goole/common/collect/FilteredMultimap;

    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/collect/FilteredMultimap;->entries()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/Maps;->valueIterator(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 62
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/FilteredMultimapValues;, "Lorg/roboguice/shaded/goole/common/collect/FilteredMultimapValues<TK;TV;>;"
    iget-object v3, p0, Lorg/roboguice/shaded/goole/common/collect/FilteredMultimapValues;->multimap:Lorg/roboguice/shaded/goole/common/collect/FilteredMultimap;

    invoke-interface {v3}, Lorg/roboguice/shaded/goole/common/collect/FilteredMultimap;->entryPredicate()Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object v1

    .line 63
    .local v1, "entryPredicate":Lorg/roboguice/shaded/goole/common/base/Predicate;, "Lorg/roboguice/shaded/goole/common/base/Predicate<-Ljava/util/Map$Entry<TK;TV;>;>;"
    iget-object v3, p0, Lorg/roboguice/shaded/goole/common/collect/FilteredMultimapValues;->multimap:Lorg/roboguice/shaded/goole/common/collect/FilteredMultimap;

    invoke-interface {v3}, Lorg/roboguice/shaded/goole/common/collect/FilteredMultimap;->unfiltered()Lorg/roboguice/shaded/goole/common/collect/Multimap;

    move-result-object v3

    invoke-interface {v3}, Lorg/roboguice/shaded/goole/common/collect/Multimap;->entries()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 64
    .local v2, "unfilteredItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 65
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 66
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v1, v0}, Lorg/roboguice/shaded/goole/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, p1}, Lorg/roboguice/shaded/goole/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 67
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 68
    const/4 v3, 0x1

    .line 71
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 76
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/FilteredMultimapValues;, "Lorg/roboguice/shaded/goole/common/collect/FilteredMultimapValues<TK;TV;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/FilteredMultimapValues;->multimap:Lorg/roboguice/shaded/goole/common/collect/FilteredMultimap;

    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/collect/FilteredMultimap;->unfiltered()Lorg/roboguice/shaded/goole/common/collect/Multimap;

    move-result-object v0

    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/collect/Multimap;->entries()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/FilteredMultimapValues;->multimap:Lorg/roboguice/shaded/goole/common/collect/FilteredMultimap;

    invoke-interface {v1}, Lorg/roboguice/shaded/goole/common/collect/FilteredMultimap;->entryPredicate()Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object v1

    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Predicates;->in(Ljava/util/Collection;)Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object v2

    invoke-static {v2}, Lorg/roboguice/shaded/goole/common/collect/Maps;->valuePredicateOnEntries(Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/roboguice/shaded/goole/common/base/Predicates;->and(Lorg/roboguice/shaded/goole/common/base/Predicate;Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/collect/Iterables;->removeIf(Ljava/lang/Iterable;Lorg/roboguice/shaded/goole/common/base/Predicate;)Z

    move-result v0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 84
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/FilteredMultimapValues;, "Lorg/roboguice/shaded/goole/common/collect/FilteredMultimapValues<TK;TV;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/FilteredMultimapValues;->multimap:Lorg/roboguice/shaded/goole/common/collect/FilteredMultimap;

    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/collect/FilteredMultimap;->unfiltered()Lorg/roboguice/shaded/goole/common/collect/Multimap;

    move-result-object v0

    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/collect/Multimap;->entries()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/FilteredMultimapValues;->multimap:Lorg/roboguice/shaded/goole/common/collect/FilteredMultimap;

    invoke-interface {v1}, Lorg/roboguice/shaded/goole/common/collect/FilteredMultimap;->entryPredicate()Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object v1

    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Predicates;->in(Ljava/util/Collection;)Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object v2

    invoke-static {v2}, Lorg/roboguice/shaded/goole/common/base/Predicates;->not(Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object v2

    invoke-static {v2}, Lorg/roboguice/shaded/goole/common/collect/Maps;->valuePredicateOnEntries(Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/roboguice/shaded/goole/common/base/Predicates;->and(Lorg/roboguice/shaded/goole/common/base/Predicate;Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/collect/Iterables;->removeIf(Ljava/lang/Iterable;Lorg/roboguice/shaded/goole/common/base/Predicate;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 57
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/FilteredMultimapValues;, "Lorg/roboguice/shaded/goole/common/collect/FilteredMultimapValues<TK;TV;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/FilteredMultimapValues;->multimap:Lorg/roboguice/shaded/goole/common/collect/FilteredMultimap;

    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/collect/FilteredMultimap;->size()I

    move-result v0

    return v0
.end method

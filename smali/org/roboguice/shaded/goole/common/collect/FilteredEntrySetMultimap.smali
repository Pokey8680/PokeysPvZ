.class final Lorg/roboguice/shaded/goole/common/collect/FilteredEntrySetMultimap;
.super Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap;
.source "FilteredEntrySetMultimap.java"

# interfaces
.implements Lorg/roboguice/shaded/goole/common/collect/FilteredSetMultimap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap",
        "<TK;TV;>;",
        "Lorg/roboguice/shaded/goole/common/collect/FilteredSetMultimap",
        "<TK;TV;>;"
    }
.end annotation

.annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtCompatible;
.end annotation


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/SetMultimap;Lorg/roboguice/shaded/goole/common/base/Predicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/collect/SetMultimap",
            "<TK;TV;>;",
            "Lorg/roboguice/shaded/goole/common/base/Predicate",
            "<-",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/FilteredEntrySetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/FilteredEntrySetMultimap<TK;TV;>;"
    .local p1, "unfiltered":Lorg/roboguice/shaded/goole/common/collect/SetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/SetMultimap<TK;TV;>;"
    .local p2, "predicate":Lorg/roboguice/shaded/goole/common/base/Predicate;, "Lorg/roboguice/shaded/goole/common/base/Predicate<-Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-direct {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap;-><init>(Lorg/roboguice/shaded/goole/common/collect/Multimap;Lorg/roboguice/shaded/goole/common/base/Predicate;)V

    .line 36
    return-void
.end method


# virtual methods
.method bridge synthetic createEntries()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 30
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/FilteredEntrySetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/FilteredEntrySetMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/FilteredEntrySetMultimap;->createEntries()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method createEntries()Ljava/util/Set;
    .locals 2
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
    .line 60
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/FilteredEntrySetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/FilteredEntrySetMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/FilteredEntrySetMultimap;->unfiltered()Lorg/roboguice/shaded/goole/common/collect/SetMultimap;

    move-result-object v0

    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/collect/SetMultimap;->entries()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/FilteredEntrySetMultimap;->entryPredicate()Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/collect/Sets;->filter(Ljava/util/Set;Lorg/roboguice/shaded/goole/common/base/Predicate;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic entries()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 30
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/FilteredEntrySetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/FilteredEntrySetMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/FilteredEntrySetMultimap;->entries()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public entries()Ljava/util/Set;
    .locals 1
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
    .line 65
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/FilteredEntrySetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/FilteredEntrySetMultimap<TK;TV;>;"
    invoke-super {p0}, Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap;->entries()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 30
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/FilteredEntrySetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/FilteredEntrySetMultimap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/FilteredEntrySetMultimap;->get(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Set",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/FilteredEntrySetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/FilteredEntrySetMultimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-super {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 30
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/FilteredEntrySetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/FilteredEntrySetMultimap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/FilteredEntrySetMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public removeAll(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
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
    .line 50
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/FilteredEntrySetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/FilteredEntrySetMultimap<TK;TV;>;"
    invoke-super {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Iterable;

    .prologue
    .line 30
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/FilteredEntrySetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/FilteredEntrySetMultimap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/FilteredEntrySetMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Set;
    .locals 1
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
    .line 55
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/FilteredEntrySetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/FilteredEntrySetMultimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TV;>;"
    invoke-super {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public bridge synthetic unfiltered()Lorg/roboguice/shaded/goole/common/collect/Multimap;
    .locals 1

    .prologue
    .line 30
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/FilteredEntrySetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/FilteredEntrySetMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/FilteredEntrySetMultimap;->unfiltered()Lorg/roboguice/shaded/goole/common/collect/SetMultimap;

    move-result-object v0

    return-object v0
.end method

.method public unfiltered()Lorg/roboguice/shaded/goole/common/collect/SetMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/SetMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/FilteredEntrySetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/FilteredEntrySetMultimap<TK;TV;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/FilteredEntrySetMultimap;->unfiltered:Lorg/roboguice/shaded/goole/common/collect/Multimap;

    check-cast v0, Lorg/roboguice/shaded/goole/common/collect/SetMultimap;

    return-object v0
.end method

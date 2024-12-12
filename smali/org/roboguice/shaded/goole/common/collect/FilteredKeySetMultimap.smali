.class final Lorg/roboguice/shaded/goole/common/collect/FilteredKeySetMultimap;
.super Lorg/roboguice/shaded/goole/common/collect/FilteredKeyMultimap;
.source "FilteredKeySetMultimap.java"

# interfaces
.implements Lorg/roboguice/shaded/goole/common/collect/FilteredSetMultimap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/roboguice/shaded/goole/common/collect/FilteredKeySetMultimap$EntrySet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/roboguice/shaded/goole/common/collect/FilteredKeyMultimap",
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
            "<-TK;>;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/FilteredKeySetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/FilteredKeySetMultimap<TK;TV;>;"
    .local p1, "unfiltered":Lorg/roboguice/shaded/goole/common/collect/SetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/SetMultimap<TK;TV;>;"
    .local p2, "keyPredicate":Lorg/roboguice/shaded/goole/common/base/Predicate;, "Lorg/roboguice/shaded/goole/common/base/Predicate<-TK;>;"
    invoke-direct {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/FilteredKeyMultimap;-><init>(Lorg/roboguice/shaded/goole/common/collect/Multimap;Lorg/roboguice/shaded/goole/common/base/Predicate;)V

    .line 38
    return-void
.end method


# virtual methods
.method bridge synthetic createEntries()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 32
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/FilteredKeySetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/FilteredKeySetMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/FilteredKeySetMultimap;->createEntries()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method createEntries()Ljava/util/Set;
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
    .line 67
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/FilteredKeySetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/FilteredKeySetMultimap<TK;TV;>;"
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/FilteredKeySetMultimap$EntrySet;

    invoke-direct {v0, p0}, Lorg/roboguice/shaded/goole/common/collect/FilteredKeySetMultimap$EntrySet;-><init>(Lorg/roboguice/shaded/goole/common/collect/FilteredKeySetMultimap;)V

    return-object v0
.end method

.method public bridge synthetic entries()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 32
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/FilteredKeySetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/FilteredKeySetMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/FilteredKeySetMultimap;->entries()Ljava/util/Set;

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
    .line 62
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/FilteredKeySetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/FilteredKeySetMultimap<TK;TV;>;"
    invoke-super {p0}, Lorg/roboguice/shaded/goole/common/collect/FilteredKeyMultimap;->entries()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 32
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/FilteredKeySetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/FilteredKeySetMultimap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/FilteredKeySetMultimap;->get(Ljava/lang/Object;)Ljava/util/Set;

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
    .line 47
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/FilteredKeySetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/FilteredKeySetMultimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-super {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/FilteredKeyMultimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 32
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/FilteredKeySetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/FilteredKeySetMultimap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/FilteredKeySetMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/Set;

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
    .line 52
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/FilteredKeySetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/FilteredKeySetMultimap<TK;TV;>;"
    invoke-super {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/FilteredKeyMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Iterable;

    .prologue
    .line 32
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/FilteredKeySetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/FilteredKeySetMultimap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/FilteredKeySetMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Set;

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
    .line 57
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/FilteredKeySetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/FilteredKeySetMultimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TV;>;"
    invoke-super {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/FilteredKeyMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public bridge synthetic unfiltered()Lorg/roboguice/shaded/goole/common/collect/Multimap;
    .locals 1

    .prologue
    .line 32
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/FilteredKeySetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/FilteredKeySetMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/FilteredKeySetMultimap;->unfiltered()Lorg/roboguice/shaded/goole/common/collect/SetMultimap;

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
    .line 42
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/FilteredKeySetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/FilteredKeySetMultimap<TK;TV;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/FilteredKeySetMultimap;->unfiltered:Lorg/roboguice/shaded/goole/common/collect/Multimap;

    check-cast v0, Lorg/roboguice/shaded/goole/common/collect/SetMultimap;

    return-object v0
.end method

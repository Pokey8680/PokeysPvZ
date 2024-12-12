.class final Lorg/roboguice/shaded/goole/common/collect/FilteredKeyListMultimap;
.super Lorg/roboguice/shaded/goole/common/collect/FilteredKeyMultimap;
.source "FilteredKeyListMultimap.java"

# interfaces
.implements Lorg/roboguice/shaded/goole/common/collect/ListMultimap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/roboguice/shaded/goole/common/collect/FilteredKeyMultimap",
        "<TK;TV;>;",
        "Lorg/roboguice/shaded/goole/common/collect/ListMultimap",
        "<TK;TV;>;"
    }
.end annotation

.annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtCompatible;
.end annotation


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/ListMultimap;Lorg/roboguice/shaded/goole/common/base/Predicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/collect/ListMultimap",
            "<TK;TV;>;",
            "Lorg/roboguice/shaded/goole/common/base/Predicate",
            "<-TK;>;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/FilteredKeyListMultimap;, "Lorg/roboguice/shaded/goole/common/collect/FilteredKeyListMultimap<TK;TV;>;"
    .local p1, "unfiltered":Lorg/roboguice/shaded/goole/common/collect/ListMultimap;, "Lorg/roboguice/shaded/goole/common/collect/ListMultimap<TK;TV;>;"
    .local p2, "keyPredicate":Lorg/roboguice/shaded/goole/common/base/Predicate;, "Lorg/roboguice/shaded/goole/common/base/Predicate<-TK;>;"
    invoke-direct {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/FilteredKeyMultimap;-><init>(Lorg/roboguice/shaded/goole/common/collect/Multimap;Lorg/roboguice/shaded/goole/common/base/Predicate;)V

    .line 36
    return-void
.end method


# virtual methods
.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 31
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/FilteredKeyListMultimap;, "Lorg/roboguice/shaded/goole/common/collect/FilteredKeyListMultimap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/FilteredKeyListMultimap;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/List",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/FilteredKeyListMultimap;, "Lorg/roboguice/shaded/goole/common/collect/FilteredKeyListMultimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-super {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/FilteredKeyMultimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 31
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/FilteredKeyListMultimap;, "Lorg/roboguice/shaded/goole/common/collect/FilteredKeyListMultimap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/FilteredKeyListMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeAll(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/FilteredKeyListMultimap;, "Lorg/roboguice/shaded/goole/common/collect/FilteredKeyListMultimap<TK;TV;>;"
    invoke-super {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/FilteredKeyMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Iterable;

    .prologue
    .line 31
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/FilteredKeyListMultimap;, "Lorg/roboguice/shaded/goole/common/collect/FilteredKeyListMultimap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/FilteredKeyListMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable",
            "<+TV;>;)",
            "Ljava/util/List",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/FilteredKeyListMultimap;, "Lorg/roboguice/shaded/goole/common/collect/FilteredKeyListMultimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TV;>;"
    invoke-super {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/FilteredKeyMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public unfiltered()Lorg/roboguice/shaded/goole/common/collect/ListMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/ListMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/FilteredKeyListMultimap;, "Lorg/roboguice/shaded/goole/common/collect/FilteredKeyListMultimap<TK;TV;>;"
    invoke-super {p0}, Lorg/roboguice/shaded/goole/common/collect/FilteredKeyMultimap;->unfiltered()Lorg/roboguice/shaded/goole/common/collect/Multimap;

    move-result-object v0

    check-cast v0, Lorg/roboguice/shaded/goole/common/collect/ListMultimap;

    return-object v0
.end method

.method public bridge synthetic unfiltered()Lorg/roboguice/shaded/goole/common/collect/Multimap;
    .locals 1

    .prologue
    .line 31
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/FilteredKeyListMultimap;, "Lorg/roboguice/shaded/goole/common/collect/FilteredKeyListMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/FilteredKeyListMultimap;->unfiltered()Lorg/roboguice/shaded/goole/common/collect/ListMultimap;

    move-result-object v0

    return-object v0
.end method

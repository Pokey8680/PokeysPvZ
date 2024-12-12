.class Lorg/roboguice/shaded/goole/common/collect/Sets$FilteredNavigableSet;
.super Lorg/roboguice/shaded/goole/common/collect/Sets$FilteredSortedSet;
.source "Sets.java"

# interfaces
.implements Ljava/util/NavigableSet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/Sets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FilteredNavigableSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/roboguice/shaded/goole/common/collect/Sets$FilteredSortedSet",
        "<TE;>;",
        "Ljava/util/NavigableSet",
        "<TE;>;"
    }
.end annotation

.annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
    value = "NavigableSet"
.end annotation


# direct methods
.method constructor <init>(Ljava/util/NavigableSet;Lorg/roboguice/shaded/goole/common/base/Predicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/NavigableSet",
            "<TE;>;",
            "Lorg/roboguice/shaded/goole/common/base/Predicate",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 926
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Sets$FilteredNavigableSet;, "Lorg/roboguice/shaded/goole/common/collect/Sets$FilteredNavigableSet<TE;>;"
    .local p1, "unfiltered":Ljava/util/NavigableSet;, "Ljava/util/NavigableSet<TE;>;"
    .local p2, "predicate":Lorg/roboguice/shaded/goole/common/base/Predicate;, "Lorg/roboguice/shaded/goole/common/base/Predicate<-TE;>;"
    invoke-direct {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/Sets$FilteredSortedSet;-><init>(Ljava/util/SortedSet;Lorg/roboguice/shaded/goole/common/base/Predicate;)V

    .line 927
    return-void
.end method


# virtual methods
.method public ceiling(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .prologue
    .line 947
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Sets$FilteredNavigableSet;, "Lorg/roboguice/shaded/goole/common/collect/Sets$FilteredNavigableSet<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/roboguice/shaded/goole/common/collect/Sets$FilteredNavigableSet;->tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/collect/Iterables;->getFirst(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public descendingIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 972
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Sets$FilteredNavigableSet;, "Lorg/roboguice/shaded/goole/common/collect/Sets$FilteredNavigableSet<TE;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/Sets$FilteredNavigableSet;->unfiltered()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableSet;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/Sets$FilteredNavigableSet;->predicate:Lorg/roboguice/shaded/goole/common/base/Predicate;

    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/collect/Iterators;->filter(Ljava/util/Iterator;Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public descendingSet()Ljava/util/NavigableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 967
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Sets$FilteredNavigableSet;, "Lorg/roboguice/shaded/goole/common/collect/Sets$FilteredNavigableSet<TE;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/Sets$FilteredNavigableSet;->unfiltered()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableSet;->descendingSet()Ljava/util/NavigableSet;

    move-result-object v0

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/Sets$FilteredNavigableSet;->predicate:Lorg/roboguice/shaded/goole/common/base/Predicate;

    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/collect/Sets;->filter(Ljava/util/NavigableSet;Lorg/roboguice/shaded/goole/common/base/Predicate;)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public floor(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 942
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Sets$FilteredNavigableSet;, "Lorg/roboguice/shaded/goole/common/collect/Sets$FilteredNavigableSet<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/roboguice/shaded/goole/common/collect/Sets$FilteredNavigableSet;->headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableSet;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/collect/Iterators;->getNext(Ljava/util/Iterator;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 2
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Ljava/util/NavigableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 989
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Sets$FilteredNavigableSet;, "Lorg/roboguice/shaded/goole/common/collect/Sets$FilteredNavigableSet<TE;>;"
    .local p1, "toElement":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/Sets$FilteredNavigableSet;->unfiltered()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/NavigableSet;->headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v0

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/Sets$FilteredNavigableSet;->predicate:Lorg/roboguice/shaded/goole/common/base/Predicate;

    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/collect/Sets;->filter(Ljava/util/NavigableSet;Lorg/roboguice/shaded/goole/common/base/Predicate;)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public higher(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .prologue
    .line 952
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Sets$FilteredNavigableSet;, "Lorg/roboguice/shaded/goole/common/collect/Sets$FilteredNavigableSet<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/roboguice/shaded/goole/common/collect/Sets$FilteredNavigableSet;->tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/collect/Iterables;->getFirst(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public last()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 977
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Sets$FilteredNavigableSet;, "Lorg/roboguice/shaded/goole/common/collect/Sets$FilteredNavigableSet<TE;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/Sets$FilteredNavigableSet;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lower(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 936
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Sets$FilteredNavigableSet;, "Lorg/roboguice/shaded/goole/common/collect/Sets$FilteredNavigableSet<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/roboguice/shaded/goole/common/collect/Sets$FilteredNavigableSet;->headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableSet;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/collect/Iterators;->getNext(Ljava/util/Iterator;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public pollFirst()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 957
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Sets$FilteredNavigableSet;, "Lorg/roboguice/shaded/goole/common/collect/Sets$FilteredNavigableSet<TE;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/Sets$FilteredNavigableSet;->unfiltered()Ljava/util/NavigableSet;

    move-result-object v0

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/Sets$FilteredNavigableSet;->predicate:Lorg/roboguice/shaded/goole/common/base/Predicate;

    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/collect/Iterables;->removeFirstMatching(Ljava/lang/Iterable;Lorg/roboguice/shaded/goole/common/base/Predicate;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public pollLast()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 962
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Sets$FilteredNavigableSet;, "Lorg/roboguice/shaded/goole/common/collect/Sets$FilteredNavigableSet<TE;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/Sets$FilteredNavigableSet;->unfiltered()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableSet;->descendingSet()Ljava/util/NavigableSet;

    move-result-object v0

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/Sets$FilteredNavigableSet;->predicate:Lorg/roboguice/shaded/goole/common/base/Predicate;

    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/collect/Iterables;->removeFirstMatching(Ljava/lang/Iterable;Lorg/roboguice/shaded/goole/common/base/Predicate;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 2
    .param p2, "fromInclusive"    # Z
    .param p4, "toInclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;ZTE;Z)",
            "Ljava/util/NavigableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 983
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Sets$FilteredNavigableSet;, "Lorg/roboguice/shaded/goole/common/collect/Sets$FilteredNavigableSet<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    .local p3, "toElement":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/Sets$FilteredNavigableSet;->unfiltered()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/util/NavigableSet;->subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v0

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/Sets$FilteredNavigableSet;->predicate:Lorg/roboguice/shaded/goole/common/base/Predicate;

    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/collect/Sets;->filter(Ljava/util/NavigableSet;Lorg/roboguice/shaded/goole/common/base/Predicate;)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 2
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Ljava/util/NavigableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 994
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Sets$FilteredNavigableSet;, "Lorg/roboguice/shaded/goole/common/collect/Sets$FilteredNavigableSet<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/Sets$FilteredNavigableSet;->unfiltered()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/NavigableSet;->tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v0

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/Sets$FilteredNavigableSet;->predicate:Lorg/roboguice/shaded/goole/common/base/Predicate;

    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/collect/Sets;->filter(Ljava/util/NavigableSet;Lorg/roboguice/shaded/goole/common/base/Predicate;)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method unfiltered()Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 930
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Sets$FilteredNavigableSet;, "Lorg/roboguice/shaded/goole/common/collect/Sets$FilteredNavigableSet<TE;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Sets$FilteredNavigableSet;->unfiltered:Ljava/util/Collection;

    check-cast v0, Ljava/util/NavigableSet;

    return-object v0
.end method

.class final Lorg/roboguice/shaded/goole/common/collect/UnmodifiableSortedMultiset;
.super Lorg/roboguice/shaded/goole/common/collect/Multisets$UnmodifiableMultiset;
.source "UnmodifiableSortedMultiset.java"

# interfaces
.implements Lorg/roboguice/shaded/goole/common/collect/SortedMultiset;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/roboguice/shaded/goole/common/collect/Multisets$UnmodifiableMultiset",
        "<TE;>;",
        "Lorg/roboguice/shaded/goole/common/collect/SortedMultiset",
        "<TE;>;"
    }
.end annotation

.annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtCompatible;
    emulated = true
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private transient descendingMultiset:Lorg/roboguice/shaded/goole/common/collect/UnmodifiableSortedMultiset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/collect/UnmodifiableSortedMultiset",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/SortedMultiset;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/collect/SortedMultiset",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/UnmodifiableSortedMultiset;, "Lorg/roboguice/shaded/goole/common/collect/UnmodifiableSortedMultiset<TE;>;"
    .local p1, "delegate":Lorg/roboguice/shaded/goole/common/collect/SortedMultiset;, "Lorg/roboguice/shaded/goole/common/collect/SortedMultiset<TE;>;"
    invoke-direct {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Multisets$UnmodifiableMultiset;-><init>(Lorg/roboguice/shaded/goole/common/collect/Multiset;)V

    .line 37
    return-void
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TE;>;"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/UnmodifiableSortedMultiset;, "Lorg/roboguice/shaded/goole/common/collect/UnmodifiableSortedMultiset<TE;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/UnmodifiableSortedMultiset;->delegate()Lorg/roboguice/shaded/goole/common/collect/SortedMultiset;

    move-result-object v0

    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/collect/SortedMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method createElementSet()Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/UnmodifiableSortedMultiset;, "Lorg/roboguice/shaded/goole/common/collect/UnmodifiableSortedMultiset<TE;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/UnmodifiableSortedMultiset;->delegate()Lorg/roboguice/shaded/goole/common/collect/SortedMultiset;

    move-result-object v0

    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/collect/SortedMultiset;->elementSet()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/Sets;->unmodifiableNavigableSet(Ljava/util/NavigableSet;)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic createElementSet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 32
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/UnmodifiableSortedMultiset;, "Lorg/roboguice/shaded/goole/common/collect/UnmodifiableSortedMultiset<TE;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/UnmodifiableSortedMultiset;->createElementSet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/UnmodifiableSortedMultiset;, "Lorg/roboguice/shaded/goole/common/collect/UnmodifiableSortedMultiset<TE;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/UnmodifiableSortedMultiset;->delegate()Lorg/roboguice/shaded/goole/common/collect/SortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 32
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/UnmodifiableSortedMultiset;, "Lorg/roboguice/shaded/goole/common/collect/UnmodifiableSortedMultiset<TE;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/UnmodifiableSortedMultiset;->delegate()Lorg/roboguice/shaded/goole/common/collect/SortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Lorg/roboguice/shaded/goole/common/collect/Multiset;
    .locals 1

    .prologue
    .line 32
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/UnmodifiableSortedMultiset;, "Lorg/roboguice/shaded/goole/common/collect/UnmodifiableSortedMultiset<TE;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/UnmodifiableSortedMultiset;->delegate()Lorg/roboguice/shaded/goole/common/collect/SortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Lorg/roboguice/shaded/goole/common/collect/SortedMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/SortedMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/UnmodifiableSortedMultiset;, "Lorg/roboguice/shaded/goole/common/collect/UnmodifiableSortedMultiset<TE;>;"
    invoke-super {p0}, Lorg/roboguice/shaded/goole/common/collect/Multisets$UnmodifiableMultiset;->delegate()Lorg/roboguice/shaded/goole/common/collect/Multiset;

    move-result-object v0

    check-cast v0, Lorg/roboguice/shaded/goole/common/collect/SortedMultiset;

    return-object v0
.end method

.method public descendingMultiset()Lorg/roboguice/shaded/goole/common/collect/SortedMultiset;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/SortedMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 63
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/UnmodifiableSortedMultiset;, "Lorg/roboguice/shaded/goole/common/collect/UnmodifiableSortedMultiset<TE;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/UnmodifiableSortedMultiset;->descendingMultiset:Lorg/roboguice/shaded/goole/common/collect/UnmodifiableSortedMultiset;

    .line 64
    .local v0, "result":Lorg/roboguice/shaded/goole/common/collect/UnmodifiableSortedMultiset;, "Lorg/roboguice/shaded/goole/common/collect/UnmodifiableSortedMultiset<TE;>;"
    if-nez v0, :cond_0

    .line 65
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/UnmodifiableSortedMultiset;

    .end local v0    # "result":Lorg/roboguice/shaded/goole/common/collect/UnmodifiableSortedMultiset;, "Lorg/roboguice/shaded/goole/common/collect/UnmodifiableSortedMultiset<TE;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/UnmodifiableSortedMultiset;->delegate()Lorg/roboguice/shaded/goole/common/collect/SortedMultiset;

    move-result-object v2

    invoke-interface {v2}, Lorg/roboguice/shaded/goole/common/collect/SortedMultiset;->descendingMultiset()Lorg/roboguice/shaded/goole/common/collect/SortedMultiset;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/roboguice/shaded/goole/common/collect/UnmodifiableSortedMultiset;-><init>(Lorg/roboguice/shaded/goole/common/collect/SortedMultiset;)V

    .line 67
    .restart local v0    # "result":Lorg/roboguice/shaded/goole/common/collect/UnmodifiableSortedMultiset;, "Lorg/roboguice/shaded/goole/common/collect/UnmodifiableSortedMultiset<TE;>;"
    iput-object p0, v0, Lorg/roboguice/shaded/goole/common/collect/UnmodifiableSortedMultiset;->descendingMultiset:Lorg/roboguice/shaded/goole/common/collect/UnmodifiableSortedMultiset;

    .line 68
    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/UnmodifiableSortedMultiset;->descendingMultiset:Lorg/roboguice/shaded/goole/common/collect/UnmodifiableSortedMultiset;

    move-object v1, v0

    .line 70
    .end local v0    # "result":Lorg/roboguice/shaded/goole/common/collect/UnmodifiableSortedMultiset;, "Lorg/roboguice/shaded/goole/common/collect/UnmodifiableSortedMultiset<TE;>;"
    .local v1, "result":Ljava/lang/Object;, "Lorg/roboguice/shaded/goole/common/collect/UnmodifiableSortedMultiset<TE;>;"
    :goto_0
    return-object v1

    .end local v1    # "result":Ljava/lang/Object;, "Lorg/roboguice/shaded/goole/common/collect/UnmodifiableSortedMultiset<TE;>;"
    .restart local v0    # "result":Lorg/roboguice/shaded/goole/common/collect/UnmodifiableSortedMultiset;, "Lorg/roboguice/shaded/goole/common/collect/UnmodifiableSortedMultiset<TE;>;"
    :cond_0
    move-object v1, v0

    .restart local v1    # "result":Ljava/lang/Object;, "Lorg/roboguice/shaded/goole/common/collect/UnmodifiableSortedMultiset<TE;>;"
    goto :goto_0
.end method

.method public elementSet()Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/UnmodifiableSortedMultiset;, "Lorg/roboguice/shaded/goole/common/collect/UnmodifiableSortedMultiset<TE;>;"
    invoke-super {p0}, Lorg/roboguice/shaded/goole/common/collect/Multisets$UnmodifiableMultiset;->elementSet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/NavigableSet;

    return-object v0
.end method

.method public bridge synthetic elementSet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 32
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/UnmodifiableSortedMultiset;, "Lorg/roboguice/shaded/goole/common/collect/UnmodifiableSortedMultiset<TE;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/UnmodifiableSortedMultiset;->elementSet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic elementSet()Ljava/util/SortedSet;
    .locals 1

    .prologue
    .line 32
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/UnmodifiableSortedMultiset;, "Lorg/roboguice/shaded/goole/common/collect/UnmodifiableSortedMultiset<TE;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/UnmodifiableSortedMultiset;->elementSet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public firstEntry()Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 75
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/UnmodifiableSortedMultiset;, "Lorg/roboguice/shaded/goole/common/collect/UnmodifiableSortedMultiset<TE;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/UnmodifiableSortedMultiset;->delegate()Lorg/roboguice/shaded/goole/common/collect/SortedMultiset;

    move-result-object v0

    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/collect/SortedMultiset;->firstEntry()Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;

    move-result-object v0

    return-object v0
.end method

.method public headMultiset(Ljava/lang/Object;Lorg/roboguice/shaded/goole/common/collect/BoundType;)Lorg/roboguice/shaded/goole/common/collect/SortedMultiset;
    .locals 1
    .param p2, "boundType"    # Lorg/roboguice/shaded/goole/common/collect/BoundType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lorg/roboguice/shaded/goole/common/collect/BoundType;",
            ")",
            "Lorg/roboguice/shaded/goole/common/collect/SortedMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 95
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/UnmodifiableSortedMultiset;, "Lorg/roboguice/shaded/goole/common/collect/UnmodifiableSortedMultiset<TE;>;"
    .local p1, "upperBound":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/UnmodifiableSortedMultiset;->delegate()Lorg/roboguice/shaded/goole/common/collect/SortedMultiset;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/SortedMultiset;->headMultiset(Ljava/lang/Object;Lorg/roboguice/shaded/goole/common/collect/BoundType;)Lorg/roboguice/shaded/goole/common/collect/SortedMultiset;

    move-result-object v0

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/Multisets;->unmodifiableSortedMultiset(Lorg/roboguice/shaded/goole/common/collect/SortedMultiset;)Lorg/roboguice/shaded/goole/common/collect/SortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method public lastEntry()Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 80
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/UnmodifiableSortedMultiset;, "Lorg/roboguice/shaded/goole/common/collect/UnmodifiableSortedMultiset<TE;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/UnmodifiableSortedMultiset;->delegate()Lorg/roboguice/shaded/goole/common/collect/SortedMultiset;

    move-result-object v0

    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/collect/SortedMultiset;->lastEntry()Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;

    move-result-object v0

    return-object v0
.end method

.method public pollFirstEntry()Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 85
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/UnmodifiableSortedMultiset;, "Lorg/roboguice/shaded/goole/common/collect/UnmodifiableSortedMultiset<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public pollLastEntry()Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 90
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/UnmodifiableSortedMultiset;, "Lorg/roboguice/shaded/goole/common/collect/UnmodifiableSortedMultiset<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public subMultiset(Ljava/lang/Object;Lorg/roboguice/shaded/goole/common/collect/BoundType;Ljava/lang/Object;Lorg/roboguice/shaded/goole/common/collect/BoundType;)Lorg/roboguice/shaded/goole/common/collect/SortedMultiset;
    .locals 1
    .param p2, "lowerBoundType"    # Lorg/roboguice/shaded/goole/common/collect/BoundType;
    .param p4, "upperBoundType"    # Lorg/roboguice/shaded/goole/common/collect/BoundType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lorg/roboguice/shaded/goole/common/collect/BoundType;",
            "TE;",
            "Lorg/roboguice/shaded/goole/common/collect/BoundType;",
            ")",
            "Lorg/roboguice/shaded/goole/common/collect/SortedMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 103
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/UnmodifiableSortedMultiset;, "Lorg/roboguice/shaded/goole/common/collect/UnmodifiableSortedMultiset<TE;>;"
    .local p1, "lowerBound":Ljava/lang/Object;, "TE;"
    .local p3, "upperBound":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/UnmodifiableSortedMultiset;->delegate()Lorg/roboguice/shaded/goole/common/collect/SortedMultiset;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/roboguice/shaded/goole/common/collect/SortedMultiset;->subMultiset(Ljava/lang/Object;Lorg/roboguice/shaded/goole/common/collect/BoundType;Ljava/lang/Object;Lorg/roboguice/shaded/goole/common/collect/BoundType;)Lorg/roboguice/shaded/goole/common/collect/SortedMultiset;

    move-result-object v0

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/Multisets;->unmodifiableSortedMultiset(Lorg/roboguice/shaded/goole/common/collect/SortedMultiset;)Lorg/roboguice/shaded/goole/common/collect/SortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method public tailMultiset(Ljava/lang/Object;Lorg/roboguice/shaded/goole/common/collect/BoundType;)Lorg/roboguice/shaded/goole/common/collect/SortedMultiset;
    .locals 1
    .param p2, "boundType"    # Lorg/roboguice/shaded/goole/common/collect/BoundType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lorg/roboguice/shaded/goole/common/collect/BoundType;",
            ")",
            "Lorg/roboguice/shaded/goole/common/collect/SortedMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 109
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/UnmodifiableSortedMultiset;, "Lorg/roboguice/shaded/goole/common/collect/UnmodifiableSortedMultiset<TE;>;"
    .local p1, "lowerBound":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/UnmodifiableSortedMultiset;->delegate()Lorg/roboguice/shaded/goole/common/collect/SortedMultiset;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/SortedMultiset;->tailMultiset(Ljava/lang/Object;Lorg/roboguice/shaded/goole/common/collect/BoundType;)Lorg/roboguice/shaded/goole/common/collect/SortedMultiset;

    move-result-object v0

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/Multisets;->unmodifiableSortedMultiset(Lorg/roboguice/shaded/goole/common/collect/SortedMultiset;)Lorg/roboguice/shaded/goole/common/collect/SortedMultiset;

    move-result-object v0

    return-object v0
.end method

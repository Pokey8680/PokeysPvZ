.class Lorg/roboguice/shaded/goole/common/collect/DescendingImmutableSortedSet;
.super Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;
.source "DescendingImmutableSortedSet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final forward:Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/DescendingImmutableSortedSet;, "Lorg/roboguice/shaded/goole/common/collect/DescendingImmutableSortedSet<TE;>;"
    .local p1, "forward":Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet<TE;>;"
    invoke-virtual {p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/Ordering;->from(Ljava/util/Comparator;)Lorg/roboguice/shaded/goole/common/collect/Ordering;

    move-result-object v0

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/Ordering;->reverse()Lorg/roboguice/shaded/goole/common/collect/Ordering;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;-><init>(Ljava/util/Comparator;)V

    .line 33
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/DescendingImmutableSortedSet;->forward:Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;

    .line 34
    return-void
.end method


# virtual methods
.method public ceiling(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .prologue
    .line 92
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/DescendingImmutableSortedSet;, "Lorg/roboguice/shaded/goole/common/collect/DescendingImmutableSortedSet<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/DescendingImmutableSortedSet;->forward:Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;

    invoke-virtual {v0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;->floor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method createDescendingSet()Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "NavigableSet"
    .end annotation

    .prologue
    .line 77
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/DescendingImmutableSortedSet;, "Lorg/roboguice/shaded/goole/common/collect/DescendingImmutableSortedSet<TE;>;"
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "should never be called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public bridge synthetic descendingIterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 28
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/DescendingImmutableSortedSet;, "Lorg/roboguice/shaded/goole/common/collect/DescendingImmutableSortedSet<TE;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/DescendingImmutableSortedSet;->descendingIterator()Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public descendingIterator()Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator",
            "<TE;>;"
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "NavigableSet"
    .end annotation

    .prologue
    .line 71
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/DescendingImmutableSortedSet;, "Lorg/roboguice/shaded/goole/common/collect/DescendingImmutableSortedSet<TE;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/DescendingImmutableSortedSet;->forward:Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;->iterator()Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic descendingSet()Ljava/util/NavigableSet;
    .locals 1

    .prologue
    .line 28
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/DescendingImmutableSortedSet;, "Lorg/roboguice/shaded/goole/common/collect/DescendingImmutableSortedSet<TE;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/DescendingImmutableSortedSet;->descendingSet()Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public descendingSet()Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "NavigableSet"
    .end annotation

    .prologue
    .line 65
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/DescendingImmutableSortedSet;, "Lorg/roboguice/shaded/goole/common/collect/DescendingImmutableSortedSet<TE;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/DescendingImmutableSortedSet;->forward:Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;

    return-object v0
.end method

.method public floor(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .prologue
    .line 87
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/DescendingImmutableSortedSet;, "Lorg/roboguice/shaded/goole/common/collect/DescendingImmutableSortedSet<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/DescendingImmutableSortedSet;->forward:Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;

    invoke-virtual {v0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;->ceiling(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method headSetImpl(Ljava/lang/Object;Z)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;
    .locals 1
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/DescendingImmutableSortedSet;, "Lorg/roboguice/shaded/goole/common/collect/DescendingImmutableSortedSet<TE;>;"
    .local p1, "toElement":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/DescendingImmutableSortedSet;->forward:Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;

    invoke-virtual {v0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;->tailSet(Ljava/lang/Object;Z)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;->descendingSet()Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public higher(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .prologue
    .line 97
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/DescendingImmutableSortedSet;, "Lorg/roboguice/shaded/goole/common/collect/DescendingImmutableSortedSet<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/DescendingImmutableSortedSet;->forward:Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;

    invoke-virtual {v0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;->lower(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method indexOf(Ljava/lang/Object;)I
    .locals 2
    .param p1, "target"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 102
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/DescendingImmutableSortedSet;, "Lorg/roboguice/shaded/goole/common/collect/DescendingImmutableSortedSet<TE;>;"
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/DescendingImmutableSortedSet;->forward:Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;

    invoke-virtual {v1, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 103
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 106
    .end local v0    # "index":I
    :goto_0
    return v0

    .restart local v0    # "index":I
    :cond_0
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/DescendingImmutableSortedSet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    sub-int v0, v1, v0

    goto :goto_0
.end method

.method isPartialView()Z
    .locals 1

    .prologue
    .line 112
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/DescendingImmutableSortedSet;, "Lorg/roboguice/shaded/goole/common/collect/DescendingImmutableSortedSet<TE;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/DescendingImmutableSortedSet;->forward:Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;->isPartialView()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 28
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/DescendingImmutableSortedSet;, "Lorg/roboguice/shaded/goole/common/collect/DescendingImmutableSortedSet<TE;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/DescendingImmutableSortedSet;->iterator()Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/DescendingImmutableSortedSet;, "Lorg/roboguice/shaded/goole/common/collect/DescendingImmutableSortedSet<TE;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/DescendingImmutableSortedSet;->forward:Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;->descendingIterator()Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public lower(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .prologue
    .line 82
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/DescendingImmutableSortedSet;, "Lorg/roboguice/shaded/goole/common/collect/DescendingImmutableSortedSet<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/DescendingImmutableSortedSet;->forward:Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;

    invoke-virtual {v0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;->higher(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 38
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/DescendingImmutableSortedSet;, "Lorg/roboguice/shaded/goole/common/collect/DescendingImmutableSortedSet<TE;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/DescendingImmutableSortedSet;->forward:Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;->size()I

    move-result v0

    return v0
.end method

.method subSetImpl(Ljava/lang/Object;ZLjava/lang/Object;Z)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;
    .locals 1
    .param p2, "fromInclusive"    # Z
    .param p4, "toInclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;ZTE;Z)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/DescendingImmutableSortedSet;, "Lorg/roboguice/shaded/goole/common/collect/DescendingImmutableSortedSet<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    .local p3, "toElement":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/DescendingImmutableSortedSet;->forward:Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;

    invoke-virtual {v0, p3, p4, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;->subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;->descendingSet()Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method tailSetImpl(Ljava/lang/Object;Z)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;
    .locals 1
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/DescendingImmutableSortedSet;, "Lorg/roboguice/shaded/goole/common/collect/DescendingImmutableSortedSet<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/DescendingImmutableSortedSet;->forward:Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;

    invoke-virtual {v0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;->headSet(Ljava/lang/Object;Z)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;->descendingSet()Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

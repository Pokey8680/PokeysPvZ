.class final Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedAsList;
.super Lorg/roboguice/shaded/goole/common/collect/RegularImmutableAsList;
.source "ImmutableSortedAsList.java"

# interfaces
.implements Lorg/roboguice/shaded/goole/common/collect/SortedIterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/roboguice/shaded/goole/common/collect/RegularImmutableAsList",
        "<TE;>;",
        "Lorg/roboguice/shaded/goole/common/collect/SortedIterable",
        "<TE;>;"
    }
.end annotation

.annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtCompatible;
    emulated = true
.end annotation


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;Lorg/roboguice/shaded/goole/common/collect/ImmutableList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet",
            "<TE;>;",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableList",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedAsList;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedAsList<TE;>;"
    .local p1, "backingSet":Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet<TE;>;"
    .local p2, "backingList":Lorg/roboguice/shaded/goole/common/collect/ImmutableList;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableList<TE;>;"
    invoke-direct {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableAsList;-><init>(Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;Lorg/roboguice/shaded/goole/common/collect/ImmutableList;)V

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
    .line 45
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedAsList;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedAsList<TE;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedAsList;->delegateCollection()Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "target"    # Ljava/lang/Object;

    .prologue
    .line 71
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedAsList;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedAsList<TE;>;"
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedAsList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method bridge synthetic delegateCollection()Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;
    .locals 1

    .prologue
    .line 30
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedAsList;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedAsList<TE;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedAsList;->delegateCollection()Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method delegateCollection()Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedAsList;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedAsList<TE;>;"
    invoke-super {p0}, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableAsList;->delegateCollection()Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;

    move-result-object v0

    check-cast v0, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;

    return-object v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 2
    .param p1, "target"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "ImmutableSortedSet.indexOf"
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedAsList;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedAsList<TE;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedAsList;->delegateCollection()Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 60
    .local v0, "index":I
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedAsList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .end local v0    # "index":I
    :goto_0
    return v0

    .restart local v0    # "index":I
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1, "target"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "ImmutableSortedSet.indexOf"
    .end annotation

    .prologue
    .line 65
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedAsList;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedAsList<TE;>;"
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedAsList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method subListUnchecked(II)Lorg/roboguice/shaded/goole/common/collect/ImmutableList;
    .locals 3
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableList",
            "<TE;>;"
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "super.subListUnchecked does not exist; inherited subList is valid if slow"
    .end annotation

    .prologue
    .line 82
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedAsList;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedAsList<TE;>;"
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedSet;

    invoke-super {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableAsList;->subListUnchecked(II)Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedAsList;->comparator()Ljava/util/Comparator;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedSet;-><init>(Lorg/roboguice/shaded/goole/common/collect/ImmutableList;Ljava/util/Comparator;)V

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedSet;->asList()Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

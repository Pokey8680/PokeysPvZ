.class Lorg/roboguice/shaded/goole/common/collect/ImmutableList$ReverseImmutableList;
.super Lorg/roboguice/shaded/goole/common/collect/ImmutableList;
.source "ImmutableList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/ImmutableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReverseImmutableList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/roboguice/shaded/goole/common/collect/ImmutableList",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final transient forwardList:Lorg/roboguice/shaded/goole/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableList",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/ImmutableList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableList",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 516
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableList$ReverseImmutableList;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableList$ReverseImmutableList<TE;>;"
    .local p1, "backingList":Lorg/roboguice/shaded/goole/common/collect/ImmutableList;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableList<TE;>;"
    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;-><init>()V

    .line 517
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableList$ReverseImmutableList;->forwardList:Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    .line 518
    return-void
.end method

.method private reverseIndex(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 521
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableList$ReverseImmutableList;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableList$ReverseImmutableList<TE;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList$ReverseImmutableList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p1

    return v0
.end method

.method private reversePosition(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 525
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableList$ReverseImmutableList;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableList$ReverseImmutableList<TE;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList$ReverseImmutableList;->size()I

    move-result v0

    sub-int/2addr v0, p1

    return v0
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 533
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableList$ReverseImmutableList;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableList$ReverseImmutableList<TE;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableList$ReverseImmutableList;->forwardList:Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    invoke-virtual {v0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 553
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableList$ReverseImmutableList;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableList$ReverseImmutableList<TE;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList$ReverseImmutableList;->size()I

    move-result v0

    invoke-static {p1, v0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkElementIndex(II)I

    .line 554
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableList$ReverseImmutableList;->forwardList:Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    invoke-direct {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList$ReverseImmutableList;->reverseIndex(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 537
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableList$ReverseImmutableList;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableList$ReverseImmutableList<TE;>;"
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableList$ReverseImmutableList;->forwardList:Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    invoke-virtual {v1, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    .line 538
    .local v0, "index":I
    if-ltz v0, :cond_0

    invoke-direct {p0, v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList$ReverseImmutableList;->reverseIndex(I)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method isPartialView()Z
    .locals 1

    .prologue
    .line 562
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableList$ReverseImmutableList;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableList$ReverseImmutableList<TE;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableList$ReverseImmutableList;->forwardList:Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->isPartialView()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 513
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableList$ReverseImmutableList;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableList$ReverseImmutableList<TE;>;"
    invoke-super {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->iterator()Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 542
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableList$ReverseImmutableList;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableList$ReverseImmutableList<TE;>;"
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableList$ReverseImmutableList;->forwardList:Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    invoke-virtual {v1, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 543
    .local v0, "index":I
    if-ltz v0, :cond_0

    invoke-direct {p0, v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList$ReverseImmutableList;->reverseIndex(I)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public bridge synthetic listIterator()Ljava/util/ListIterator;
    .locals 1

    .prologue
    .line 513
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableList$ReverseImmutableList;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableList$ReverseImmutableList<TE;>;"
    invoke-super {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->listIterator()Lorg/roboguice/shaded/goole/common/collect/UnmodifiableListIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 513
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableList$ReverseImmutableList;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableList$ReverseImmutableList<TE;>;"
    invoke-super {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->listIterator(I)Lorg/roboguice/shaded/goole/common/collect/UnmodifiableListIterator;

    move-result-object v0

    return-object v0
.end method

.method public reverse()Lorg/roboguice/shaded/goole/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 529
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableList$ReverseImmutableList;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableList$ReverseImmutableList<TE;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableList$ReverseImmutableList;->forwardList:Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 558
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableList$ReverseImmutableList;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableList$ReverseImmutableList<TE;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableList$ReverseImmutableList;->forwardList:Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic subList(II)Ljava/util/List;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # I

    .prologue
    .line 513
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableList$ReverseImmutableList;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableList$ReverseImmutableList<TE;>;"
    invoke-virtual {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList$ReverseImmutableList;->subList(II)Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public subList(II)Lorg/roboguice/shaded/goole/common/collect/ImmutableList;
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

    .prologue
    .line 547
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableList$ReverseImmutableList;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableList$ReverseImmutableList<TE;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList$ReverseImmutableList;->size()I

    move-result v0

    invoke-static {p1, p2, v0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 548
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableList$ReverseImmutableList;->forwardList:Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    invoke-direct {p0, p2}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList$ReverseImmutableList;->reversePosition(I)I

    move-result v1

    invoke-direct {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList$ReverseImmutableList;->reversePosition(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->subList(II)Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->reverse()Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

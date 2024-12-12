.class public Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$Builder;
.super Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection$Builder;
.source "ImmutableMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection$Builder",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final contents:Lorg/roboguice/shaded/goole/common/collect/Multiset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/collect/Multiset",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 495
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$Builder;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$Builder<TE;>;"
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/LinkedHashMultiset;->create()Lorg/roboguice/shaded/goole/common/collect/LinkedHashMultiset;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$Builder;-><init>(Lorg/roboguice/shaded/goole/common/collect/Multiset;)V

    .line 496
    return-void
.end method

.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/Multiset;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/collect/Multiset",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 498
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$Builder;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$Builder<TE;>;"
    .local p1, "contents":Lorg/roboguice/shaded/goole/common/collect/Multiset;, "Lorg/roboguice/shaded/goole/common/collect/Multiset<TE;>;"
    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection$Builder;-><init>()V

    .line 499
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$Builder;->contents:Lorg/roboguice/shaded/goole/common/collect/Multiset;

    .line 500
    return-void
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection$Builder;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 487
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$Builder;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$Builder<TE;>;"
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$Builder;->add(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic add([Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection$Builder;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 487
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$Builder;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$Builder<TE;>;"
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$Builder;->add([Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$Builder;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$Builder",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 510
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$Builder;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$Builder<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$Builder;->contents:Lorg/roboguice/shaded/goole/common/collect/Multiset;

    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/roboguice/shaded/goole/common/collect/Multiset;->add(Ljava/lang/Object;)Z

    .line 511
    return-object p0
.end method

.method public varargs add([Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$Builder",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 556
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$Builder;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$Builder<TE;>;"
    .local p1, "elements":[Ljava/lang/Object;, "[TE;"
    invoke-super {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection$Builder;->add([Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection$Builder;

    .line 557
    return-object p0
.end method

.method public bridge synthetic addAll(Ljava/lang/Iterable;)Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection$Builder;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Iterable;

    .prologue
    .line 487
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$Builder;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$Builder<TE;>;"
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$Builder;->addAll(Ljava/lang/Iterable;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addAll(Ljava/util/Iterator;)Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection$Builder;
    .locals 1
    .param p1, "x0"    # Ljava/util/Iterator;

    .prologue
    .line 487
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$Builder;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$Builder<TE;>;"
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$Builder;->addAll(Ljava/util/Iterator;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$Builder;

    move-result-object v0

    return-object v0
.end method

.method public addAll(Ljava/lang/Iterable;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$Builder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+TE;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$Builder",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 570
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$Builder;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$Builder<TE;>;"
    .local p1, "elements":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TE;>;"
    instance-of v3, p1, Lorg/roboguice/shaded/goole/common/collect/Multiset;

    if-eqz v3, :cond_0

    .line 571
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/collect/Multisets;->cast(Ljava/lang/Iterable;)Lorg/roboguice/shaded/goole/common/collect/Multiset;

    move-result-object v2

    .line 572
    .local v2, "multiset":Lorg/roboguice/shaded/goole/common/collect/Multiset;, "Lorg/roboguice/shaded/goole/common/collect/Multiset<+TE;>;"
    invoke-interface {v2}, Lorg/roboguice/shaded/goole/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;

    .line 573
    .local v0, "entry":Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;, "Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry<+TE;>;"
    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;->getCount()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$Builder;->addCopies(Ljava/lang/Object;I)Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$Builder;

    goto :goto_0

    .line 576
    .end local v0    # "entry":Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;, "Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry<+TE;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "multiset":Lorg/roboguice/shaded/goole/common/collect/Multiset;, "Lorg/roboguice/shaded/goole/common/collect/Multiset<+TE;>;"
    :cond_0
    invoke-super {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection$Builder;->addAll(Ljava/lang/Iterable;)Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection$Builder;

    .line 578
    :cond_1
    return-object p0
.end method

.method public addAll(Ljava/util/Iterator;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<+TE;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$Builder",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 590
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$Builder;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$Builder<TE;>;"
    .local p1, "elements":Ljava/util/Iterator;, "Ljava/util/Iterator<+TE;>;"
    invoke-super {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection$Builder;->addAll(Ljava/util/Iterator;)Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection$Builder;

    .line 591
    return-object p0
.end method

.method public addCopies(Ljava/lang/Object;I)Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$Builder;
    .locals 2
    .param p2, "occurrences"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$Builder",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 528
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$Builder;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$Builder<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$Builder;->contents:Lorg/roboguice/shaded/goole/common/collect/Multiset;

    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lorg/roboguice/shaded/goole/common/collect/Multiset;->add(Ljava/lang/Object;I)I

    .line 529
    return-object p0
.end method

.method public bridge synthetic build()Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;
    .locals 1

    .prologue
    .line 487
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$Builder;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$Builder<TE;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$Builder;->build()Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 599
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$Builder;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$Builder<TE;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$Builder;->contents:Lorg/roboguice/shaded/goole/common/collect/Multiset;

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;->copyOf(Ljava/lang/Iterable;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;

    move-result-object v0

    return-object v0
.end method

.method public setCount(Ljava/lang/Object;I)Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$Builder;
    .locals 2
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$Builder",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 543
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$Builder;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$Builder<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$Builder;->contents:Lorg/roboguice/shaded/goole/common/collect/Multiset;

    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lorg/roboguice/shaded/goole/common/collect/Multiset;->setCount(Ljava/lang/Object;I)I

    .line 544
    return-object p0
.end method

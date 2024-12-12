.class final Lorg/roboguice/shaded/goole/common/collect/Multisets$FilteredMultiset;
.super Lorg/roboguice/shaded/goole/common/collect/AbstractMultiset;
.source "Multisets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/Multisets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FilteredMultiset"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/roboguice/shaded/goole/common/collect/AbstractMultiset",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final predicate:Lorg/roboguice/shaded/goole/common/base/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/base/Predicate",
            "<-TE;>;"
        }
    .end annotation
.end field

.field final unfiltered:Lorg/roboguice/shaded/goole/common/collect/Multiset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/collect/Multiset",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/Multiset;Lorg/roboguice/shaded/goole/common/base/Predicate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/collect/Multiset",
            "<TE;>;",
            "Lorg/roboguice/shaded/goole/common/base/Predicate",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 282
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Multisets$FilteredMultiset;, "Lorg/roboguice/shaded/goole/common/collect/Multisets$FilteredMultiset<TE;>;"
    .local p1, "unfiltered":Lorg/roboguice/shaded/goole/common/collect/Multiset;, "Lorg/roboguice/shaded/goole/common/collect/Multiset<TE;>;"
    .local p2, "predicate":Lorg/roboguice/shaded/goole/common/base/Predicate;, "Lorg/roboguice/shaded/goole/common/base/Predicate<-TE;>;"
    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/collect/AbstractMultiset;-><init>()V

    .line 283
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/roboguice/shaded/goole/common/collect/Multiset;

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Multisets$FilteredMultiset;->unfiltered:Lorg/roboguice/shaded/goole/common/collect/Multiset;

    .line 284
    invoke-static {p2}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/roboguice/shaded/goole/common/base/Predicate;

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Multisets$FilteredMultiset;->predicate:Lorg/roboguice/shaded/goole/common/base/Predicate;

    .line 285
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;I)I
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "occurrences"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .prologue
    .line 330
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Multisets$FilteredMultiset;, "Lorg/roboguice/shaded/goole/common/collect/Multisets$FilteredMultiset<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Multisets$FilteredMultiset;->predicate:Lorg/roboguice/shaded/goole/common/base/Predicate;

    invoke-interface {v0, p1}, Lorg/roboguice/shaded/goole/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Element %s does not match predicate %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lorg/roboguice/shaded/goole/common/collect/Multisets$FilteredMultiset;->predicate:Lorg/roboguice/shaded/goole/common/base/Predicate;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 332
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Multisets$FilteredMultiset;->unfiltered:Lorg/roboguice/shaded/goole/common/collect/Multiset;

    invoke-interface {v0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/Multiset;->add(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 347
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Multisets$FilteredMultiset;, "Lorg/roboguice/shaded/goole/common/collect/Multisets$FilteredMultiset<TE;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/Multisets$FilteredMultiset;->elementSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 348
    return-void
.end method

.method public count(Ljava/lang/Object;)I
    .locals 4
    .param p1, "element"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Multisets$FilteredMultiset;, "Lorg/roboguice/shaded/goole/common/collect/Multisets$FilteredMultiset<TE;>;"
    const/4 v2, 0x0

    .line 319
    iget-object v3, p0, Lorg/roboguice/shaded/goole/common/collect/Multisets$FilteredMultiset;->unfiltered:Lorg/roboguice/shaded/goole/common/collect/Multiset;

    invoke-interface {v3, p1}, Lorg/roboguice/shaded/goole/common/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result v0

    .line 320
    .local v0, "count":I
    if-lez v0, :cond_1

    .line 322
    move-object v1, p1

    .line 323
    .local v1, "e":Ljava/lang/Object;, "TE;"
    iget-object v3, p0, Lorg/roboguice/shaded/goole/common/collect/Multisets$FilteredMultiset;->predicate:Lorg/roboguice/shaded/goole/common/base/Predicate;

    invoke-interface {v3, v1}, Lorg/roboguice/shaded/goole/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 325
    .end local v0    # "count":I
    .end local v1    # "e":Ljava/lang/Object;, "TE;"
    :goto_0
    return v0

    .restart local v0    # "count":I
    .restart local v1    # "e":Ljava/lang/Object;, "TE;"
    :cond_0
    move v0, v2

    .line 323
    goto :goto_0

    .end local v1    # "e":Ljava/lang/Object;, "TE;"
    :cond_1
    move v0, v2

    .line 325
    goto :goto_0
.end method

.method createElementSet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 294
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Multisets$FilteredMultiset;, "Lorg/roboguice/shaded/goole/common/collect/Multisets$FilteredMultiset<TE;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Multisets$FilteredMultiset;->unfiltered:Lorg/roboguice/shaded/goole/common/collect/Multiset;

    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/collect/Multiset;->elementSet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/Multisets$FilteredMultiset;->predicate:Lorg/roboguice/shaded/goole/common/base/Predicate;

    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/collect/Sets;->filter(Ljava/util/Set;Lorg/roboguice/shaded/goole/common/base/Predicate;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method createEntrySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 299
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Multisets$FilteredMultiset;, "Lorg/roboguice/shaded/goole/common/collect/Multisets$FilteredMultiset<TE;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Multisets$FilteredMultiset;->unfiltered:Lorg/roboguice/shaded/goole/common/collect/Multiset;

    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lorg/roboguice/shaded/goole/common/collect/Multisets$FilteredMultiset$1;

    invoke-direct {v1, p0}, Lorg/roboguice/shaded/goole/common/collect/Multisets$FilteredMultiset$1;-><init>(Lorg/roboguice/shaded/goole/common/collect/Multisets$FilteredMultiset;)V

    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/collect/Sets;->filter(Ljava/util/Set;Lorg/roboguice/shaded/goole/common/base/Predicate;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method distinctElements()I
    .locals 1

    .prologue
    .line 314
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Multisets$FilteredMultiset;, "Lorg/roboguice/shaded/goole/common/collect/Multisets$FilteredMultiset<TE;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/Multisets$FilteredMultiset;->elementSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method entryIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 309
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Multisets$FilteredMultiset;, "Lorg/roboguice/shaded/goole/common/collect/Multisets$FilteredMultiset<TE;>;"
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "should never be called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 278
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Multisets$FilteredMultiset;, "Lorg/roboguice/shaded/goole/common/collect/Multisets$FilteredMultiset<TE;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/Multisets$FilteredMultiset;->iterator()Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 289
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Multisets$FilteredMultiset;, "Lorg/roboguice/shaded/goole/common/collect/Multisets$FilteredMultiset<TE;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Multisets$FilteredMultiset;->unfiltered:Lorg/roboguice/shaded/goole/common/collect/Multiset;

    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/collect/Multiset;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/Multisets$FilteredMultiset;->predicate:Lorg/roboguice/shaded/goole/common/base/Predicate;

    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/collect/Iterators;->filter(Ljava/util/Iterator;Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;I)I
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "occurrences"    # I

    .prologue
    .line 337
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Multisets$FilteredMultiset;, "Lorg/roboguice/shaded/goole/common/collect/Multisets$FilteredMultiset<TE;>;"
    const-string v0, "occurrences"

    invoke-static {p2, v0}, Lorg/roboguice/shaded/goole/common/collect/CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    .line 338
    if-nez p2, :cond_0

    .line 339
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Multisets$FilteredMultiset;->count(Ljava/lang/Object;)I

    move-result v0

    .line 341
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Multisets$FilteredMultiset;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Multisets$FilteredMultiset;->unfiltered:Lorg/roboguice/shaded/goole/common/collect/Multiset;

    invoke-interface {v0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/Multiset;->remove(Ljava/lang/Object;I)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.class public abstract Lorg/roboguice/shaded/goole/common/collect/ForwardingMultiset;
.super Lorg/roboguice/shaded/goole/common/collect/ForwardingCollection;
.source "ForwardingMultiset.java"

# interfaces
.implements Lorg/roboguice/shaded/goole/common/collect/Multiset;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/roboguice/shaded/goole/common/collect/ForwardingMultiset$StandardElementSet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/roboguice/shaded/goole/common/collect/ForwardingCollection",
        "<TE;>;",
        "Lorg/roboguice/shaded/goole/common/collect/Multiset",
        "<TE;>;"
    }
.end annotation

.annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtCompatible;
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 56
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ForwardingMultiset;, "Lorg/roboguice/shaded/goole/common/collect/ForwardingMultiset<TE;>;"
    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/collect/ForwardingCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;I)I
    .locals 1
    .param p2, "occurrences"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ForwardingMultiset;, "Lorg/roboguice/shaded/goole/common/collect/ForwardingMultiset<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ForwardingMultiset;->delegate()Lorg/roboguice/shaded/goole/common/collect/Multiset;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/Multiset;->add(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public count(Ljava/lang/Object;)I
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;

    .prologue
    .line 62
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ForwardingMultiset;, "Lorg/roboguice/shaded/goole/common/collect/ForwardingMultiset<TE;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ForwardingMultiset;->delegate()Lorg/roboguice/shaded/goole/common/collect/Multiset;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/roboguice/shaded/goole/common/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 51
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ForwardingMultiset;, "Lorg/roboguice/shaded/goole/common/collect/ForwardingMultiset<TE;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ForwardingMultiset;->delegate()Lorg/roboguice/shaded/goole/common/collect/Multiset;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 51
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ForwardingMultiset;, "Lorg/roboguice/shaded/goole/common/collect/ForwardingMultiset<TE;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ForwardingMultiset;->delegate()Lorg/roboguice/shaded/goole/common/collect/Multiset;

    move-result-object v0

    return-object v0
.end method

.method protected abstract delegate()Lorg/roboguice/shaded/goole/common/collect/Multiset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/Multiset",
            "<TE;>;"
        }
    .end annotation
.end method

.method public elementSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 77
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ForwardingMultiset;, "Lorg/roboguice/shaded/goole/common/collect/ForwardingMultiset<TE;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ForwardingMultiset;->delegate()Lorg/roboguice/shaded/goole/common/collect/Multiset;

    move-result-object v0

    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/collect/Multiset;->elementSet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
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
    .line 82
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ForwardingMultiset;, "Lorg/roboguice/shaded/goole/common/collect/ForwardingMultiset<TE;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ForwardingMultiset;->delegate()Lorg/roboguice/shaded/goole/common/collect/Multiset;

    move-result-object v0

    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 86
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ForwardingMultiset;, "Lorg/roboguice/shaded/goole/common/collect/ForwardingMultiset<TE;>;"
    if-eq p1, p0, :cond_0

    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ForwardingMultiset;->delegate()Lorg/roboguice/shaded/goole/common/collect/Multiset;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/roboguice/shaded/goole/common/collect/Multiset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 90
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ForwardingMultiset;, "Lorg/roboguice/shaded/goole/common/collect/ForwardingMultiset<TE;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ForwardingMultiset;->delegate()Lorg/roboguice/shaded/goole/common/collect/Multiset;

    move-result-object v0

    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/collect/Multiset;->hashCode()I

    move-result v0

    return v0
.end method

.method public remove(Ljava/lang/Object;I)I
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;
    .param p2, "occurrences"    # I

    .prologue
    .line 72
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ForwardingMultiset;, "Lorg/roboguice/shaded/goole/common/collect/ForwardingMultiset<TE;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ForwardingMultiset;->delegate()Lorg/roboguice/shaded/goole/common/collect/Multiset;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/Multiset;->remove(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public setCount(Ljava/lang/Object;I)I
    .locals 1
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .prologue
    .line 95
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ForwardingMultiset;, "Lorg/roboguice/shaded/goole/common/collect/ForwardingMultiset<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ForwardingMultiset;->delegate()Lorg/roboguice/shaded/goole/common/collect/Multiset;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/Multiset;->setCount(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public setCount(Ljava/lang/Object;II)Z
    .locals 1
    .param p2, "oldCount"    # I
    .param p3, "newCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;II)Z"
        }
    .end annotation

    .prologue
    .line 100
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ForwardingMultiset;, "Lorg/roboguice/shaded/goole/common/collect/ForwardingMultiset<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ForwardingMultiset;->delegate()Lorg/roboguice/shaded/goole/common/collect/Multiset;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lorg/roboguice/shaded/goole/common/collect/Multiset;->setCount(Ljava/lang/Object;II)Z

    move-result v0

    return v0
.end method

.method protected standardAdd(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ForwardingMultiset;, "Lorg/roboguice/shaded/goole/common/collect/ForwardingMultiset<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x1

    .line 149
    invoke-virtual {p0, p1, v0}, Lorg/roboguice/shaded/goole/common/collect/ForwardingMultiset;->add(Ljava/lang/Object;I)I

    .line 150
    return v0
.end method

.method protected standardAddAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/Beta;
    .end annotation

    .prologue
    .line 163
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ForwardingMultiset;, "Lorg/roboguice/shaded/goole/common/collect/ForwardingMultiset<TE;>;"
    .local p1, "elementsToAdd":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Multisets;->addAllImpl(Lorg/roboguice/shaded/goole/common/collect/Multiset;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method protected standardClear()V
    .locals 1

    .prologue
    .line 122
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ForwardingMultiset;, "Lorg/roboguice/shaded/goole/common/collect/ForwardingMultiset<TE;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ForwardingMultiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/Iterators;->clear(Ljava/util/Iterator;)V

    .line 123
    return-void
.end method

.method protected standardContains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 111
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ForwardingMultiset;, "Lorg/roboguice/shaded/goole/common/collect/ForwardingMultiset<TE;>;"
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ForwardingMultiset;->count(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected standardCount(Ljava/lang/Object;)I
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/roboguice/shaded/goole/common/annotations/Beta;
    .end annotation

    .prologue
    .line 133
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ForwardingMultiset;, "Lorg/roboguice/shaded/goole/common/collect/ForwardingMultiset<TE;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ForwardingMultiset;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;

    .line 134
    .local v0, "entry":Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;, "Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry<*>;"
    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, p1}, Lorg/roboguice/shaded/goole/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 135
    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;->getCount()I

    move-result v2

    .line 138
    .end local v0    # "entry":Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;, "Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry<*>;"
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected standardEquals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 284
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ForwardingMultiset;, "Lorg/roboguice/shaded/goole/common/collect/ForwardingMultiset<TE;>;"
    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Multisets;->equalsImpl(Lorg/roboguice/shaded/goole/common/collect/Multiset;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected standardHashCode()I
    .locals 1

    .prologue
    .line 295
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ForwardingMultiset;, "Lorg/roboguice/shaded/goole/common/collect/ForwardingMultiset<TE;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ForwardingMultiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->hashCode()I

    move-result v0

    return v0
.end method

.method protected standardIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 261
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ForwardingMultiset;, "Lorg/roboguice/shaded/goole/common/collect/ForwardingMultiset<TE;>;"
    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/collect/Multisets;->iteratorImpl(Lorg/roboguice/shaded/goole/common/collect/Multiset;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method protected standardRemove(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "element"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ForwardingMultiset;, "Lorg/roboguice/shaded/goole/common/collect/ForwardingMultiset<TE;>;"
    const/4 v0, 0x1

    .line 175
    invoke-virtual {p0, p1, v0}, Lorg/roboguice/shaded/goole/common/collect/ForwardingMultiset;->remove(Ljava/lang/Object;I)I

    move-result v1

    if-lez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected standardRemoveAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 188
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ForwardingMultiset;, "Lorg/roboguice/shaded/goole/common/collect/ForwardingMultiset<TE;>;"
    .local p1, "elementsToRemove":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Multisets;->removeAllImpl(Lorg/roboguice/shaded/goole/common/collect/Multiset;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method protected standardRetainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 201
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ForwardingMultiset;, "Lorg/roboguice/shaded/goole/common/collect/ForwardingMultiset<TE;>;"
    .local p1, "elementsToRetain":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Multisets;->retainAllImpl(Lorg/roboguice/shaded/goole/common/collect/Multiset;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method protected standardSetCount(Ljava/lang/Object;I)I
    .locals 1
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .prologue
    .line 214
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ForwardingMultiset;, "Lorg/roboguice/shaded/goole/common/collect/ForwardingMultiset<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    invoke-static {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/Multisets;->setCountImpl(Lorg/roboguice/shaded/goole/common/collect/Multiset;Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method protected standardSetCount(Ljava/lang/Object;II)Z
    .locals 1
    .param p2, "oldCount"    # I
    .param p3, "newCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;II)Z"
        }
    .end annotation

    .prologue
    .line 226
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ForwardingMultiset;, "Lorg/roboguice/shaded/goole/common/collect/ForwardingMultiset<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    invoke-static {p0, p1, p2, p3}, Lorg/roboguice/shaded/goole/common/collect/Multisets;->setCountImpl(Lorg/roboguice/shaded/goole/common/collect/Multiset;Ljava/lang/Object;II)Z

    move-result v0

    return v0
.end method

.method protected standardSize()I
    .locals 1

    .prologue
    .line 272
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ForwardingMultiset;, "Lorg/roboguice/shaded/goole/common/collect/ForwardingMultiset<TE;>;"
    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/collect/Multisets;->sizeImpl(Lorg/roboguice/shaded/goole/common/collect/Multiset;)I

    move-result v0

    return v0
.end method

.method protected standardToString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 306
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ForwardingMultiset;, "Lorg/roboguice/shaded/goole/common/collect/ForwardingMultiset<TE;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ForwardingMultiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

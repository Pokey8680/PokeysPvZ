.class public Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Builder;
.super Ljava/lang/Object;
.source "ImmutableMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field builderMultimap:Lorg/roboguice/shaded/goole/common/collect/Multimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/collect/Multimap",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field keyComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TK;>;"
        }
    .end annotation
.end field

.field valueComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 163
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Builder;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Builder<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$BuilderMultimap;

    invoke-direct {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$BuilderMultimap;-><init>()V

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Builder;->builderMultimap:Lorg/roboguice/shaded/goole/common/collect/Multimap;

    .line 163
    return-void
.end method


# virtual methods
.method public build()Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 254
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Builder;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Builder<TK;TV;>;"
    iget-object v6, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Builder;->valueComparator:Ljava/util/Comparator;

    if-eqz v6, :cond_0

    .line 255
    iget-object v6, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Builder;->builderMultimap:Lorg/roboguice/shaded/goole/common/collect/Multimap;

    invoke-interface {v6}, Lorg/roboguice/shaded/goole/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    .local v5, "values":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    move-object v3, v5

    .line 256
    check-cast v3, Ljava/util/List;

    .line 257
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<TV;>;"
    iget-object v6, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Builder;->valueComparator:Ljava/util/Comparator;

    invoke-static {v3, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    .line 260
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<TV;>;"
    .end local v5    # "values":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    :cond_0
    iget-object v6, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Builder;->keyComparator:Ljava/util/Comparator;

    if-eqz v6, :cond_2

    .line 261
    new-instance v4, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$BuilderMultimap;

    invoke-direct {v4}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$BuilderMultimap;-><init>()V

    .line 262
    .local v4, "sortedCopy":Lorg/roboguice/shaded/goole/common/collect/Multimap;, "Lorg/roboguice/shaded/goole/common/collect/Multimap<TK;TV;>;"
    iget-object v6, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Builder;->builderMultimap:Lorg/roboguice/shaded/goole/common/collect/Multimap;

    invoke-interface {v6}, Lorg/roboguice/shaded/goole/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-static {v6}, Lorg/roboguice/shaded/goole/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 264
    .local v0, "entries":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<TK;Ljava/util/Collection<TV;>;>;>;"
    iget-object v6, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Builder;->keyComparator:Ljava/util/Comparator;

    invoke-static {v6}, Lorg/roboguice/shaded/goole/common/collect/Ordering;->from(Ljava/util/Comparator;)Lorg/roboguice/shaded/goole/common/collect/Ordering;

    move-result-object v6

    invoke-virtual {v6}, Lorg/roboguice/shaded/goole/common/collect/Ordering;->onKeys()Lorg/roboguice/shaded/goole/common/collect/Ordering;

    move-result-object v6

    invoke-static {v0, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 267
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 268
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;Ljava/util/Collection<TV;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Iterable;

    invoke-interface {v4, v7, v6}, Lorg/roboguice/shaded/goole/common/collect/Multimap;->putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Z

    goto :goto_1

    .line 270
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;Ljava/util/Collection<TV;>;>;"
    :cond_1
    iput-object v4, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Builder;->builderMultimap:Lorg/roboguice/shaded/goole/common/collect/Multimap;

    .line 272
    .end local v0    # "entries":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<TK;Ljava/util/Collection<TV;>;>;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "sortedCopy":Lorg/roboguice/shaded/goole/common/collect/Multimap;, "Lorg/roboguice/shaded/goole/common/collect/Multimap<TK;TV;>;"
    :cond_2
    iget-object v6, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Builder;->builderMultimap:Lorg/roboguice/shaded/goole/common/collect/Multimap;

    invoke-static {v6}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;->copyOf(Lorg/roboguice/shaded/goole/common/collect/Multimap;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;

    move-result-object v6

    return-object v6
.end method

.method public orderKeysBy(Ljava/util/Comparator;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TK;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Builder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 236
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Builder;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Builder<TK;TV;>;"
    .local p1, "keyComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Builder;->keyComparator:Ljava/util/Comparator;

    .line 237
    return-object p0
.end method

.method public orderValuesBy(Ljava/util/Comparator;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TV;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Builder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 246
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Builder;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Builder<TK;TV;>;"
    .local p1, "valueComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TV;>;"
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Builder;->valueComparator:Ljava/util/Comparator;

    .line 247
    return-object p0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Builder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 169
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Builder;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Builder<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-static {p1, p2}, Lorg/roboguice/shaded/goole/common/collect/CollectPreconditions;->checkEntryNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 170
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Builder;->builderMultimap:Lorg/roboguice/shaded/goole/common/collect/Multimap;

    invoke-interface {v0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 171
    return-object p0
.end method

.method public put(Ljava/util/Map$Entry;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<+TK;+TV;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Builder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 180
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Builder;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Builder<TK;TV;>;"
    .local p1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Builder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable",
            "<+TV;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Builder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 191
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Builder;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Builder<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TV;>;"
    if-nez p1, :cond_0

    .line 192
    new-instance v3, Ljava/lang/NullPointerException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "null key in entry: null="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Lorg/roboguice/shaded/goole/common/collect/Iterables;->toString(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 195
    :cond_0
    iget-object v3, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Builder;->builderMultimap:Lorg/roboguice/shaded/goole/common/collect/Multimap;

    invoke-interface {v3, p1}, Lorg/roboguice/shaded/goole/common/collect/Multimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v2

    .line 196
    .local v2, "valueList":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 197
    .local v1, "value":Ljava/lang/Object;, "TV;"
    invoke-static {p1, v1}, Lorg/roboguice/shaded/goole/common/collect/CollectPreconditions;->checkEntryNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 198
    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 200
    .end local v1    # "value":Ljava/lang/Object;, "TV;"
    :cond_1
    return-object p0
.end method

.method public varargs putAll(Ljava/lang/Object;[Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;[TV;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Builder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 210
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Builder;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Builder<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "values":[Ljava/lang/Object;, "[TV;"
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Builder;->putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Lorg/roboguice/shaded/goole/common/collect/Multimap;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/collect/Multimap",
            "<+TK;+TV;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Builder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 224
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Builder;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Builder<TK;TV;>;"
    .local p1, "multimap":Lorg/roboguice/shaded/goole/common/collect/Multimap;, "Lorg/roboguice/shaded/goole/common/collect/Multimap<+TK;+TV;>;"
    invoke-interface {p1}, Lorg/roboguice/shaded/goole/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 225
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+Ljava/util/Collection<+TV;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-virtual {p0, v3, v2}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Builder;->putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Builder;

    goto :goto_0

    .line 227
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+Ljava/util/Collection<+TV;>;>;"
    :cond_0
    return-object p0
.end method
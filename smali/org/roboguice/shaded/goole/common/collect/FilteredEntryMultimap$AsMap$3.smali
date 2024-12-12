.class Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap$3;
.super Lorg/roboguice/shaded/goole/common/collect/Maps$Values;
.source "FilteredEntryMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap;->createValues()Ljava/util/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/roboguice/shaded/goole/common/collect/Maps$Values",
        "<TK;",
        "Ljava/util/Collection",
        "<TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap;


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 286
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap$3;, "Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap.3;"
    .local p2, "x0":Ljava/util/Map;, "Ljava/util/Map<TK;Ljava/util/Collection<TV;>;>;"
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap$3;->this$1:Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap;

    invoke-direct {p0, p2}, Lorg/roboguice/shaded/goole/common/collect/Maps$Values;-><init>(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public remove(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 289
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap$3;, "Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap.3;"
    instance-of v5, p1, Ljava/util/Collection;

    if-eqz v5, :cond_2

    move-object v0, p1

    .line 290
    check-cast v0, Ljava/util/Collection;

    .line 291
    .local v0, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v5, p0, Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap$3;->this$1:Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap;

    iget-object v5, v5, Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap;->this$0:Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap;

    iget-object v5, v5, Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap;->unfiltered:Lorg/roboguice/shaded/goole/common/collect/Multimap;

    invoke-interface {v5}, Lorg/roboguice/shaded/goole/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 293
    .local v3, "entryIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;Ljava/util/Collection<TV;>;>;>;"
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 294
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 295
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;Ljava/util/Collection<TV;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    .line 296
    .local v4, "key":Ljava/lang/Object;, "TK;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    new-instance v6, Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$ValuePredicate;

    iget-object v7, p0, Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap$3;->this$1:Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap;

    iget-object v7, v7, Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap;->this$0:Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap;

    invoke-direct {v6, v7, v4}, Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$ValuePredicate;-><init>(Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap;Ljava/lang/Object;)V

    invoke-static {v5, v6}, Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap;->filterCollection(Ljava/util/Collection;Lorg/roboguice/shaded/goole/common/base/Predicate;)Ljava/util/Collection;

    move-result-object v1

    .line 298
    .local v1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 299
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v6

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v5

    if-ne v6, v5, :cond_1

    .line 300
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 304
    :goto_0
    const/4 v5, 0x1

    .line 308
    .end local v0    # "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    .end local v1    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;Ljava/util/Collection<TV;>;>;"
    .end local v3    # "entryIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;Ljava/util/Collection<TV;>;>;>;"
    .end local v4    # "key":Ljava/lang/Object;, "TK;"
    :goto_1
    return v5

    .line 302
    .restart local v0    # "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    .restart local v1    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;Ljava/util/Collection<TV;>;>;"
    .restart local v3    # "entryIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;Ljava/util/Collection<TV;>;>;>;"
    .restart local v4    # "key":Ljava/lang/Object;, "TK;"
    :cond_1
    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    goto :goto_0

    .line 308
    .end local v0    # "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    .end local v1    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;Ljava/util/Collection<TV;>;>;"
    .end local v3    # "entryIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;Ljava/util/Collection<TV;>;>;>;"
    .end local v4    # "key":Ljava/lang/Object;, "TK;"
    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 313
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap$3;, "Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap.3;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap$3;->this$1:Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap;

    iget-object v0, v0, Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap;->this$0:Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap;

    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Predicates;->in(Ljava/util/Collection;)Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object v1

    invoke-static {v1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->valuePredicateOnEntries(Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap;->removeEntriesIf(Lorg/roboguice/shaded/goole/common/base/Predicate;)Z

    move-result v0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 318
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap$3;, "Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap.3;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap$3;->this$1:Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap;

    iget-object v0, v0, Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap;->this$0:Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap;

    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Predicates;->in(Ljava/util/Collection;)Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object v1

    invoke-static {v1}, Lorg/roboguice/shaded/goole/common/base/Predicates;->not(Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object v1

    invoke-static {v1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->valuePredicateOnEntries(Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap;->removeEntriesIf(Lorg/roboguice/shaded/goole/common/base/Predicate;)Z

    move-result v0

    return v0
.end method

.class Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap;
.super Lorg/roboguice/shaded/goole/common/collect/Maps$ImprovedAbstractMap;
.source "FilteredEntryMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AsMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/roboguice/shaded/goole/common/collect/Maps$ImprovedAbstractMap",
        "<TK;",
        "Ljava/util/Collection",
        "<TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap;


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap;)V
    .locals 0

    .prologue
    .line 168
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap;, "Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap<TK;TV;>.AsMap;"
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap;->this$0:Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap;

    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/collect/Maps$ImprovedAbstractMap;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 176
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap;, "Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap<TK;TV;>.AsMap;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap;->this$0:Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap;

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap;->clear()V

    .line 177
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 171
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap;, "Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap<TK;TV;>.AsMap;"
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method createEntrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;>;"
        }
    .end annotation

    .prologue
    .line 239
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap;, "Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap<TK;TV;>.AsMap;"
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap$2;

    invoke-direct {v0, p0}, Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap$2;-><init>(Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap;)V

    return-object v0
.end method

.method createKeySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 219
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap;, "Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap<TK;TV;>.AsMap;"
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap$1;

    invoke-direct {v0, p0, p0}, Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap$1;-><init>(Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap;Ljava/util/Map;)V

    return-object v0
.end method

.method createValues()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 286
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap;, "Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap<TK;TV;>.AsMap;"
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap$3;

    invoke-direct {v0, p0, p0}, Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap$3;-><init>(Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap;Ljava/util/Map;)V

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 168
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap;, "Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap<TK;TV;>.AsMap;"
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 5
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap;, "Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap<TK;TV;>.AsMap;"
    const/4 v2, 0x0

    .line 181
    iget-object v3, p0, Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap;->this$0:Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap;

    iget-object v3, v3, Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap;->unfiltered:Lorg/roboguice/shaded/goole/common/collect/Multimap;

    invoke-interface {v3}, Lorg/roboguice/shaded/goole/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 182
    .local v1, "result":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-nez v1, :cond_1

    .line 188
    :cond_0
    :goto_0
    return-object v2

    .line 186
    :cond_1
    move-object v0, p1

    .line 187
    .local v0, "k":Ljava/lang/Object;, "TK;"
    new-instance v3, Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$ValuePredicate;

    iget-object v4, p0, Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap;->this$0:Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap;

    invoke-direct {v3, v4, v0}, Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$ValuePredicate;-><init>(Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap;Ljava/lang/Object;)V

    invoke-static {v1, v3}, Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap;->filterCollection(Ljava/util/Collection;Lorg/roboguice/shaded/goole/common/base/Predicate;)Ljava/util/Collection;

    move-result-object v1

    .line 188
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    move-object v2, v1

    goto :goto_0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 168
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap;, "Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap<TK;TV;>.AsMap;"
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap;->remove(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 7
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap;, "Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap<TK;TV;>.AsMap;"
    const/4 v5, 0x0

    .line 193
    iget-object v6, p0, Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap;->this$0:Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap;

    iget-object v6, v6, Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap;->unfiltered:Lorg/roboguice/shaded/goole/common/collect/Multimap;

    invoke-interface {v6}, Lorg/roboguice/shaded/goole/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 194
    .local v0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-nez v0, :cond_1

    .line 213
    :cond_0
    :goto_0
    return-object v5

    .line 198
    :cond_1
    move-object v2, p1

    .line 199
    .local v2, "k":Ljava/lang/Object;, "TK;"
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 200
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<TV;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 201
    .local v1, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<TV;>;"
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 202
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 203
    .local v4, "v":Ljava/lang/Object;, "TV;"
    iget-object v6, p0, Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap;->this$0:Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap;

    invoke-static {v6, v2, v4}, Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap;->access$000(Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 204
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 205
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 208
    .end local v4    # "v":Ljava/lang/Object;, "TV;"
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 210
    iget-object v5, p0, Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap;->this$0:Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap;

    iget-object v5, v5, Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap;->unfiltered:Lorg/roboguice/shaded/goole/common/collect/Multimap;

    instance-of v5, v5, Lorg/roboguice/shaded/goole/common/collect/SetMultimap;

    if-eqz v5, :cond_4

    .line 211
    invoke-static {v3}, Lorg/roboguice/shaded/goole/common/collect/Sets;->newLinkedHashSet(Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v5

    goto :goto_0

    .line 213
    :cond_4
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    goto :goto_0
.end method
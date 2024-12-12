.class Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap$1;
.super Lorg/roboguice/shaded/goole/common/collect/Maps$KeySet;
.source "FilteredEntryMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap;->createKeySet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/roboguice/shaded/goole/common/collect/Maps$KeySet",
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
    .line 219
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap$1;, "Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap.1;"
    .local p2, "x0":Ljava/util/Map;, "Ljava/util/Map<TK;Ljava/util/Collection<TV;>;>;"
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap$1;->this$1:Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap;

    invoke-direct {p0, p2}, Lorg/roboguice/shaded/goole/common/collect/Maps$KeySet;-><init>(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 232
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap$1;, "Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap.1;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap$1;->this$1:Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap;

    invoke-virtual {v0, p1}, Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap;->remove(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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
    .line 222
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap$1;, "Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap.1;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap$1;->this$1:Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap;

    iget-object v0, v0, Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap;->this$0:Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap;

    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Predicates;->in(Ljava/util/Collection;)Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object v1

    invoke-static {v1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->keyPredicateOnEntries(Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/base/Predicate;

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
    .line 227
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap$1;, "Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap.1;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap$1;->this$1:Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap;

    iget-object v0, v0, Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap;->this$0:Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap;

    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Predicates;->in(Ljava/util/Collection;)Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object v1

    invoke-static {v1}, Lorg/roboguice/shaded/goole/common/base/Predicates;->not(Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object v1

    invoke-static {v1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->keyPredicateOnEntries(Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap;->removeEntriesIf(Lorg/roboguice/shaded/goole/common/base/Predicate;)Z

    move-result v0

    return v0
.end method

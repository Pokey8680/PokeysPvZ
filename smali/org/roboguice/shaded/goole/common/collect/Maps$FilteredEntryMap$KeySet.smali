.class Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap$KeySet;
.super Lorg/roboguice/shaded/goole/common/collect/Maps$KeySet;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "KeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/roboguice/shaded/goole/common/collect/Maps$KeySet",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap;


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap;)V
    .locals 0

    .prologue
    .line 2729
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap$KeySet;, "Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap<TK;TV;>.KeySet;"
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap$KeySet;->this$0:Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap;

    .line 2730
    invoke-direct {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Maps$KeySet;-><init>(Ljava/util/Map;)V

    .line 2731
    return-void
.end method

.method private removeIf(Lorg/roboguice/shaded/goole/common/base/Predicate;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/base/Predicate",
            "<-TK;>;)Z"
        }
    .end annotation

    .prologue
    .line 2742
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap$KeySet;, "Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap<TK;TV;>.KeySet;"
    .local p1, "keyPredicate":Lorg/roboguice/shaded/goole/common/base/Predicate;, "Lorg/roboguice/shaded/goole/common/base/Predicate<-TK;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap$KeySet;->this$0:Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap;

    iget-object v0, v0, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap;->unfiltered:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap$KeySet;->this$0:Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap;

    iget-object v1, v1, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap;->predicate:Lorg/roboguice/shaded/goole/common/base/Predicate;

    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->keyPredicateOnEntries(Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/roboguice/shaded/goole/common/base/Predicates;->and(Lorg/roboguice/shaded/goole/common/base/Predicate;Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/collect/Iterables;->removeIf(Ljava/lang/Iterable;Lorg/roboguice/shaded/goole/common/base/Predicate;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 2734
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap$KeySet;, "Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap<TK;TV;>.KeySet;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap$KeySet;->this$0:Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap;

    invoke-virtual {v0, p1}, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2735
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap$KeySet;->this$0:Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap;

    iget-object v0, v0, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap;->unfiltered:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2736
    const/4 v0, 0x1

    .line 2738
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 2748
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap$KeySet;, "Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap<TK;TV;>.KeySet;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Predicates;->in(Ljava/util/Collection;)Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap$KeySet;->removeIf(Lorg/roboguice/shaded/goole/common/base/Predicate;)Z

    move-result v0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 2753
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap$KeySet;, "Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap<TK;TV;>.KeySet;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Predicates;->in(Ljava/util/Collection;)Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object v0

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/base/Predicates;->not(Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap$KeySet;->removeIf(Lorg/roboguice/shaded/goole/common/base/Predicate;)Z

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2758
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap$KeySet;, "Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap<TK;TV;>.KeySet;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap$KeySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/Lists;->newArrayList(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 2762
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap$KeySet;, "Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap<TK;TV;>.KeySet;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap$KeySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/Lists;->newArrayList(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

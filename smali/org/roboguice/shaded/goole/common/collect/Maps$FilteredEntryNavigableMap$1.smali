.class Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap$1;
.super Lorg/roboguice/shaded/goole/common/collect/Maps$NavigableKeySet;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap;->navigableKeySet()Ljava/util/NavigableSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/roboguice/shaded/goole/common/collect/Maps$NavigableKeySet",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap;


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap;Ljava/util/NavigableMap;)V
    .locals 0

    .prologue
    .line 2907
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap$1;, "Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap.1;"
    .local p2, "x0":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<TK;TV;>;"
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap$1;->this$0:Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap;

    invoke-direct {p0, p2}, Lorg/roboguice/shaded/goole/common/collect/Maps$NavigableKeySet;-><init>(Ljava/util/NavigableMap;)V

    return-void
.end method


# virtual methods
.method public removeAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 2910
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap$1;, "Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap.1;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap$1;->this$0:Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap;

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap;->access$700(Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap;)Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap$1;->this$0:Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap;

    invoke-static {v1}, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap;->access$600(Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap;)Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object v1

    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Predicates;->in(Ljava/util/Collection;)Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object v2

    invoke-static {v2}, Lorg/roboguice/shaded/goole/common/collect/Maps;->keyPredicateOnEntries(Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/roboguice/shaded/goole/common/base/Predicates;->and(Lorg/roboguice/shaded/goole/common/base/Predicate;Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/collect/Iterators;->removeIf(Ljava/util/Iterator;Lorg/roboguice/shaded/goole/common/base/Predicate;)Z

    move-result v0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 2916
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap$1;, "Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap.1;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap$1;->this$0:Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap;

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap;->access$700(Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap;)Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap$1;->this$0:Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap;

    invoke-static {v1}, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap;->access$600(Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap;)Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object v1

    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Predicates;->in(Ljava/util/Collection;)Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object v2

    invoke-static {v2}, Lorg/roboguice/shaded/goole/common/base/Predicates;->not(Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object v2

    invoke-static {v2}, Lorg/roboguice/shaded/goole/common/collect/Maps;->keyPredicateOnEntries(Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/roboguice/shaded/goole/common/base/Predicates;->and(Lorg/roboguice/shaded/goole/common/base/Predicate;Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/collect/Iterators;->removeIf(Ljava/util/Iterator;Lorg/roboguice/shaded/goole/common/base/Predicate;)Z

    move-result v0

    return v0
.end method
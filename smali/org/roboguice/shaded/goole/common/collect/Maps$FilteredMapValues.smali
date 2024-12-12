.class final Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredMapValues;
.super Lorg/roboguice/shaded/goole/common/collect/Maps$Values;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/Maps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FilteredMapValues"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/roboguice/shaded/goole/common/collect/Maps$Values",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field predicate:Lorg/roboguice/shaded/goole/common/base/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/base/Predicate",
            "<-",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field unfiltered:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;Ljava/util/Map;Lorg/roboguice/shaded/goole/common/base/Predicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Lorg/roboguice/shaded/goole/common/base/Predicate",
            "<-",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 2617
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredMapValues;, "Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredMapValues<TK;TV;>;"
    .local p1, "filteredMap":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p2, "unfiltered":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p3, "predicate":Lorg/roboguice/shaded/goole/common/base/Predicate;, "Lorg/roboguice/shaded/goole/common/base/Predicate<-Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-direct {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Maps$Values;-><init>(Ljava/util/Map;)V

    .line 2618
    iput-object p2, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredMapValues;->unfiltered:Ljava/util/Map;

    .line 2619
    iput-object p3, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredMapValues;->predicate:Lorg/roboguice/shaded/goole/common/base/Predicate;

    .line 2620
    return-void
.end method

.method private removeIf(Lorg/roboguice/shaded/goole/common/base/Predicate;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/base/Predicate",
            "<-TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 2629
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredMapValues;, "Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredMapValues<TK;TV;>;"
    .local p1, "valuePredicate":Lorg/roboguice/shaded/goole/common/base/Predicate;, "Lorg/roboguice/shaded/goole/common/base/Predicate<-TV;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredMapValues;->unfiltered:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredMapValues;->predicate:Lorg/roboguice/shaded/goole/common/base/Predicate;

    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->valuePredicateOnEntries(Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/roboguice/shaded/goole/common/base/Predicates;->and(Lorg/roboguice/shaded/goole/common/base/Predicate;Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/collect/Iterables;->removeIf(Ljava/lang/Iterable;Lorg/roboguice/shaded/goole/common/base/Predicate;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public remove(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 2623
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredMapValues;, "Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredMapValues<TK;TV;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredMapValues;->unfiltered:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredMapValues;->predicate:Lorg/roboguice/shaded/goole/common/base/Predicate;

    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Predicates;->equalTo(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object v2

    invoke-static {v2}, Lorg/roboguice/shaded/goole/common/collect/Maps;->valuePredicateOnEntries(Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/roboguice/shaded/goole/common/base/Predicates;->and(Lorg/roboguice/shaded/goole/common/base/Predicate;Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/collect/Iterables;->removeFirstMatching(Ljava/lang/Iterable;Lorg/roboguice/shaded/goole/common/base/Predicate;)Ljava/lang/Object;

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
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 2634
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredMapValues;, "Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredMapValues<TK;TV;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Predicates;->in(Ljava/util/Collection;)Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredMapValues;->removeIf(Lorg/roboguice/shaded/goole/common/base/Predicate;)Z

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
    .line 2638
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredMapValues;, "Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredMapValues<TK;TV;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Predicates;->in(Ljava/util/Collection;)Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object v0

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/base/Predicates;->not(Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredMapValues;->removeIf(Lorg/roboguice/shaded/goole/common/base/Predicate;)Z

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2643
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredMapValues;, "Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredMapValues<TK;TV;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredMapValues;->iterator()Ljava/util/Iterator;

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
    .line 2647
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredMapValues;, "Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredMapValues<TK;TV;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredMapValues;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/Lists;->newArrayList(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.class final Lorg/roboguice/shaded/goole/common/collect/Platform;
.super Ljava/lang/Object;
.source "Platform.java"


# annotations
.annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtCompatible;
    emulated = true
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static mapsAsMapSortedSet(Ljava/util/SortedSet;Lorg/roboguice/shaded/goole/common/base/Function;)Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedSet",
            "<TK;>;",
            "Lorg/roboguice/shaded/goole/common/base/Function",
            "<-TK;TV;>;)",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 81
    .local p0, "set":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TK;>;"
    .local p1, "function":Lorg/roboguice/shaded/goole/common/base/Function;, "Lorg/roboguice/shaded/goole/common/base/Function<-TK;TV;>;"
    instance-of v0, p0, Ljava/util/NavigableSet;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/util/NavigableSet;

    .end local p0    # "set":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TK;>;"
    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->asMap(Ljava/util/NavigableSet;Lorg/roboguice/shaded/goole/common/base/Function;)Ljava/util/NavigableMap;

    move-result-object v0

    :goto_0
    return-object v0

    .restart local p0    # "set":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TK;>;"
    :cond_0
    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->asMapSortedIgnoreNavigable(Ljava/util/SortedSet;Lorg/roboguice/shaded/goole/common/base/Function;)Ljava/util/SortedMap;

    move-result-object v0

    goto :goto_0
.end method

.method static mapsFilterSortedMap(Ljava/util/SortedMap;Lorg/roboguice/shaded/goole/common/base/Predicate;)Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedMap",
            "<TK;TV;>;",
            "Lorg/roboguice/shaded/goole/common/base/Predicate",
            "<-",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 95
    .local p0, "map":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;TV;>;"
    .local p1, "predicate":Lorg/roboguice/shaded/goole/common/base/Predicate;, "Lorg/roboguice/shaded/goole/common/base/Predicate<-Ljava/util/Map$Entry<TK;TV;>;>;"
    instance-of v0, p0, Ljava/util/NavigableMap;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/util/NavigableMap;

    .end local p0    # "map":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;TV;>;"
    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->filterEntries(Ljava/util/NavigableMap;Lorg/roboguice/shaded/goole/common/base/Predicate;)Ljava/util/NavigableMap;

    move-result-object v0

    :goto_0
    return-object v0

    .restart local p0    # "map":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;TV;>;"
    :cond_0
    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->filterSortedIgnoreNavigable(Ljava/util/SortedMap;Lorg/roboguice/shaded/goole/common/base/Predicate;)Ljava/util/SortedMap;

    move-result-object v0

    goto :goto_0
.end method

.method static mapsTransformEntriesSortedMap(Ljava/util/SortedMap;Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;)Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V1:",
            "Ljava/lang/Object;",
            "V2:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedMap",
            "<TK;TV1;>;",
            "Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer",
            "<-TK;-TV1;TV2;>;)",
            "Ljava/util/SortedMap",
            "<TK;TV2;>;"
        }
    .end annotation

    .prologue
    .line 74
    .local p0, "fromMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;TV1;>;"
    .local p1, "transformer":Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;, "Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer<-TK;-TV1;TV2;>;"
    instance-of v0, p0, Ljava/util/NavigableMap;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/util/NavigableMap;

    .end local p0    # "fromMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;TV1;>;"
    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->transformEntries(Ljava/util/NavigableMap;Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;)Ljava/util/NavigableMap;

    move-result-object v0

    :goto_0
    return-object v0

    .restart local p0    # "fromMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;TV1;>;"
    :cond_0
    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->transformEntriesIgnoreNavigable(Ljava/util/SortedMap;Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;)Ljava/util/SortedMap;

    move-result-object v0

    goto :goto_0
.end method

.method static newArray([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 3
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)[TT;"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "reference":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 53
    .local v1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v1, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, [Ljava/lang/Object;

    .line 54
    .local v0, "result":[Ljava/lang/Object;, "[TT;"
    return-object v0
.end method

.method static newSetFromMap(Ljava/util/Map;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TE;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TE;Ljava/lang/Boolean;>;"
    invoke-static {p0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method static setsFilterSortedSet(Ljava/util/SortedSet;Lorg/roboguice/shaded/goole/common/base/Predicate;)Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedSet",
            "<TE;>;",
            "Lorg/roboguice/shaded/goole/common/base/Predicate",
            "<-TE;>;)",
            "Ljava/util/SortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 88
    .local p0, "set":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TE;>;"
    .local p1, "predicate":Lorg/roboguice/shaded/goole/common/base/Predicate;, "Lorg/roboguice/shaded/goole/common/base/Predicate<-TE;>;"
    instance-of v0, p0, Ljava/util/NavigableSet;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/util/NavigableSet;

    .end local p0    # "set":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TE;>;"
    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Sets;->filter(Ljava/util/NavigableSet;Lorg/roboguice/shaded/goole/common/base/Predicate;)Ljava/util/NavigableSet;

    move-result-object v0

    :goto_0
    return-object v0

    .restart local p0    # "set":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TE;>;"
    :cond_0
    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Sets;->filterSortedIgnoreNavigable(Ljava/util/SortedSet;Lorg/roboguice/shaded/goole/common/base/Predicate;)Ljava/util/SortedSet;

    move-result-object v0

    goto :goto_0
.end method

.method static tryWeakKeys(Lorg/roboguice/shaded/goole/common/collect/MapMaker;)Lorg/roboguice/shaded/goole/common/collect/MapMaker;
    .locals 1
    .param p0, "mapMaker"    # Lorg/roboguice/shaded/goole/common/collect/MapMaker;

    .prologue
    .line 68
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->weakKeys()Lorg/roboguice/shaded/goole/common/collect/MapMaker;

    move-result-object v0

    return-object v0
.end method

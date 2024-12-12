.class public final Lorg/roboguice/shaded/goole/common/collect/Multimaps;
.super Ljava/lang/Object;
.source "Multimaps.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/roboguice/shaded/goole/common/collect/Multimaps$AsMap;,
        Lorg/roboguice/shaded/goole/common/collect/Multimaps$Entries;,
        Lorg/roboguice/shaded/goole/common/collect/Multimaps$Keys;,
        Lorg/roboguice/shaded/goole/common/collect/Multimaps$TransformedEntriesListMultimap;,
        Lorg/roboguice/shaded/goole/common/collect/Multimaps$TransformedEntriesMultimap;,
        Lorg/roboguice/shaded/goole/common/collect/Multimaps$MapMultimap;,
        Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableSortedSetMultimap;,
        Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableSetMultimap;,
        Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableListMultimap;,
        Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableMultimap;,
        Lorg/roboguice/shaded/goole/common/collect/Multimaps$CustomSortedSetMultimap;,
        Lorg/roboguice/shaded/goole/common/collect/Multimaps$CustomSetMultimap;,
        Lorg/roboguice/shaded/goole/common/collect/Multimaps$CustomListMultimap;,
        Lorg/roboguice/shaded/goole/common/collect/Multimaps$CustomMultimap;
    }
.end annotation

.annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtCompatible;
    emulated = true
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1
    .param p0, "x0"    # Ljava/util/Collection;

    .prologue
    .line 65
    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/collect/Multimaps;->unmodifiableValueCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1
    .param p0, "x0"    # Ljava/util/Collection;

    .prologue
    .line 65
    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/collect/Multimaps;->unmodifiableEntries(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static asMap(Lorg/roboguice/shaded/goole/common/collect/ListMultimap;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/collect/ListMultimap",
            "<TK;TV;>;)",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/List",
            "<TV;>;>;"
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/Beta;
    .end annotation

    .prologue
    .line 863
    .local p0, "multimap":Lorg/roboguice/shaded/goole/common/collect/ListMultimap;, "Lorg/roboguice/shaded/goole/common/collect/ListMultimap<TK;TV;>;"
    invoke-interface {p0}, Lorg/roboguice/shaded/goole/common/collect/ListMultimap;->asMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static asMap(Lorg/roboguice/shaded/goole/common/collect/Multimap;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/collect/Multimap",
            "<TK;TV;>;)",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/Beta;
    .end annotation

    .prologue
    .line 902
    .local p0, "multimap":Lorg/roboguice/shaded/goole/common/collect/Multimap;, "Lorg/roboguice/shaded/goole/common/collect/Multimap<TK;TV;>;"
    invoke-interface {p0}, Lorg/roboguice/shaded/goole/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static asMap(Lorg/roboguice/shaded/goole/common/collect/SetMultimap;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/collect/SetMultimap",
            "<TK;TV;>;)",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Set",
            "<TV;>;>;"
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/Beta;
    .end annotation

    .prologue
    .line 876
    .local p0, "multimap":Lorg/roboguice/shaded/goole/common/collect/SetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/SetMultimap<TK;TV;>;"
    invoke-interface {p0}, Lorg/roboguice/shaded/goole/common/collect/SetMultimap;->asMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static asMap(Lorg/roboguice/shaded/goole/common/collect/SortedSetMultimap;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/collect/SortedSetMultimap",
            "<TK;TV;>;)",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/SortedSet",
            "<TV;>;>;"
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/Beta;
    .end annotation

    .prologue
    .line 891
    .local p0, "multimap":Lorg/roboguice/shaded/goole/common/collect/SortedSetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/SortedSetMultimap<TK;TV;>;"
    invoke-interface {p0}, Lorg/roboguice/shaded/goole/common/collect/SortedSetMultimap;->asMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static equalsImpl(Lorg/roboguice/shaded/goole/common/collect/Multimap;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/collect/Multimap",
            "<**>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 2048
    .local p0, "multimap":Lorg/roboguice/shaded/goole/common/collect/Multimap;, "Lorg/roboguice/shaded/goole/common/collect/Multimap<**>;"
    if-ne p1, p0, :cond_0

    .line 2049
    const/4 v1, 0x1

    .line 2055
    :goto_0
    return v1

    .line 2051
    :cond_0
    instance-of v1, p1, Lorg/roboguice/shaded/goole/common/collect/Multimap;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 2052
    check-cast v0, Lorg/roboguice/shaded/goole/common/collect/Multimap;

    .line 2053
    .local v0, "that":Lorg/roboguice/shaded/goole/common/collect/Multimap;, "Lorg/roboguice/shaded/goole/common/collect/Multimap<**>;"
    invoke-interface {p0}, Lorg/roboguice/shaded/goole/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 2055
    .end local v0    # "that":Lorg/roboguice/shaded/goole/common/collect/Multimap;, "Lorg/roboguice/shaded/goole/common/collect/Multimap<**>;"
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static filterEntries(Lorg/roboguice/shaded/goole/common/collect/Multimap;Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/collect/Multimap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/collect/Multimap",
            "<TK;TV;>;",
            "Lorg/roboguice/shaded/goole/common/base/Predicate",
            "<-",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/Multimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1974
    .local p0, "unfiltered":Lorg/roboguice/shaded/goole/common/collect/Multimap;, "Lorg/roboguice/shaded/goole/common/collect/Multimap<TK;TV;>;"
    .local p1, "entryPredicate":Lorg/roboguice/shaded/goole/common/base/Predicate;, "Lorg/roboguice/shaded/goole/common/base/Predicate<-Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1975
    instance-of v0, p0, Lorg/roboguice/shaded/goole/common/collect/SetMultimap;

    if-eqz v0, :cond_0

    .line 1976
    check-cast p0, Lorg/roboguice/shaded/goole/common/collect/SetMultimap;

    .end local p0    # "unfiltered":Lorg/roboguice/shaded/goole/common/collect/Multimap;, "Lorg/roboguice/shaded/goole/common/collect/Multimap<TK;TV;>;"
    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Multimaps;->filterEntries(Lorg/roboguice/shaded/goole/common/collect/SetMultimap;Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/collect/SetMultimap;

    move-result-object v0

    .line 1978
    :goto_0
    return-object v0

    .restart local p0    # "unfiltered":Lorg/roboguice/shaded/goole/common/collect/Multimap;, "Lorg/roboguice/shaded/goole/common/collect/Multimap<TK;TV;>;"
    :cond_0
    instance-of v0, p0, Lorg/roboguice/shaded/goole/common/collect/FilteredMultimap;

    if-eqz v0, :cond_1

    check-cast p0, Lorg/roboguice/shaded/goole/common/collect/FilteredMultimap;

    .end local p0    # "unfiltered":Lorg/roboguice/shaded/goole/common/collect/Multimap;, "Lorg/roboguice/shaded/goole/common/collect/Multimap<TK;TV;>;"
    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Multimaps;->filterFiltered(Lorg/roboguice/shaded/goole/common/collect/FilteredMultimap;Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/collect/Multimap;

    move-result-object v0

    goto :goto_0

    .restart local p0    # "unfiltered":Lorg/roboguice/shaded/goole/common/collect/Multimap;, "Lorg/roboguice/shaded/goole/common/collect/Multimap<TK;TV;>;"
    :cond_1
    new-instance v1, Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap;

    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/roboguice/shaded/goole/common/collect/Multimap;

    invoke-direct {v1, v0, p1}, Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap;-><init>(Lorg/roboguice/shaded/goole/common/collect/Multimap;Lorg/roboguice/shaded/goole/common/base/Predicate;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public static filterEntries(Lorg/roboguice/shaded/goole/common/collect/SetMultimap;Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/collect/SetMultimap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/collect/SetMultimap",
            "<TK;TV;>;",
            "Lorg/roboguice/shaded/goole/common/base/Predicate",
            "<-",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/SetMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2013
    .local p0, "unfiltered":Lorg/roboguice/shaded/goole/common/collect/SetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/SetMultimap<TK;TV;>;"
    .local p1, "entryPredicate":Lorg/roboguice/shaded/goole/common/base/Predicate;, "Lorg/roboguice/shaded/goole/common/base/Predicate<-Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2014
    instance-of v0, p0, Lorg/roboguice/shaded/goole/common/collect/FilteredSetMultimap;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/roboguice/shaded/goole/common/collect/FilteredSetMultimap;

    .end local p0    # "unfiltered":Lorg/roboguice/shaded/goole/common/collect/SetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/SetMultimap<TK;TV;>;"
    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Multimaps;->filterFiltered(Lorg/roboguice/shaded/goole/common/collect/FilteredSetMultimap;Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/collect/SetMultimap;

    move-result-object v0

    :goto_0
    return-object v0

    .restart local p0    # "unfiltered":Lorg/roboguice/shaded/goole/common/collect/SetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/SetMultimap<TK;TV;>;"
    :cond_0
    new-instance v1, Lorg/roboguice/shaded/goole/common/collect/FilteredEntrySetMultimap;

    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/roboguice/shaded/goole/common/collect/SetMultimap;

    invoke-direct {v1, v0, p1}, Lorg/roboguice/shaded/goole/common/collect/FilteredEntrySetMultimap;-><init>(Lorg/roboguice/shaded/goole/common/collect/SetMultimap;Lorg/roboguice/shaded/goole/common/base/Predicate;)V

    move-object v0, v1

    goto :goto_0
.end method

.method private static filterFiltered(Lorg/roboguice/shaded/goole/common/collect/FilteredMultimap;Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/collect/Multimap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/collect/FilteredMultimap",
            "<TK;TV;>;",
            "Lorg/roboguice/shaded/goole/common/base/Predicate",
            "<-",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/Multimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2028
    .local p0, "multimap":Lorg/roboguice/shaded/goole/common/collect/FilteredMultimap;, "Lorg/roboguice/shaded/goole/common/collect/FilteredMultimap<TK;TV;>;"
    .local p1, "entryPredicate":Lorg/roboguice/shaded/goole/common/base/Predicate;, "Lorg/roboguice/shaded/goole/common/base/Predicate<-Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-interface {p0}, Lorg/roboguice/shaded/goole/common/collect/FilteredMultimap;->entryPredicate()Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object v1

    invoke-static {v1, p1}, Lorg/roboguice/shaded/goole/common/base/Predicates;->and(Lorg/roboguice/shaded/goole/common/base/Predicate;Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object v0

    .line 2030
    .local v0, "predicate":Lorg/roboguice/shaded/goole/common/base/Predicate;, "Lorg/roboguice/shaded/goole/common/base/Predicate<Ljava/util/Map$Entry<TK;TV;>;>;"
    new-instance v1, Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap;

    invoke-interface {p0}, Lorg/roboguice/shaded/goole/common/collect/FilteredMultimap;->unfiltered()Lorg/roboguice/shaded/goole/common/collect/Multimap;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap;-><init>(Lorg/roboguice/shaded/goole/common/collect/Multimap;Lorg/roboguice/shaded/goole/common/base/Predicate;)V

    return-object v1
.end method

.method private static filterFiltered(Lorg/roboguice/shaded/goole/common/collect/FilteredSetMultimap;Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/collect/SetMultimap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/collect/FilteredSetMultimap",
            "<TK;TV;>;",
            "Lorg/roboguice/shaded/goole/common/base/Predicate",
            "<-",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/SetMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2042
    .local p0, "multimap":Lorg/roboguice/shaded/goole/common/collect/FilteredSetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/FilteredSetMultimap<TK;TV;>;"
    .local p1, "entryPredicate":Lorg/roboguice/shaded/goole/common/base/Predicate;, "Lorg/roboguice/shaded/goole/common/base/Predicate<-Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-interface {p0}, Lorg/roboguice/shaded/goole/common/collect/FilteredSetMultimap;->entryPredicate()Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object v1

    invoke-static {v1, p1}, Lorg/roboguice/shaded/goole/common/base/Predicates;->and(Lorg/roboguice/shaded/goole/common/base/Predicate;Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object v0

    .line 2044
    .local v0, "predicate":Lorg/roboguice/shaded/goole/common/base/Predicate;, "Lorg/roboguice/shaded/goole/common/base/Predicate<Ljava/util/Map$Entry<TK;TV;>;>;"
    new-instance v1, Lorg/roboguice/shaded/goole/common/collect/FilteredEntrySetMultimap;

    invoke-interface {p0}, Lorg/roboguice/shaded/goole/common/collect/FilteredSetMultimap;->unfiltered()Lorg/roboguice/shaded/goole/common/collect/SetMultimap;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/roboguice/shaded/goole/common/collect/FilteredEntrySetMultimap;-><init>(Lorg/roboguice/shaded/goole/common/collect/SetMultimap;Lorg/roboguice/shaded/goole/common/base/Predicate;)V

    return-object v1
.end method

.method public static filterKeys(Lorg/roboguice/shaded/goole/common/collect/ListMultimap;Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/collect/ListMultimap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/collect/ListMultimap",
            "<TK;TV;>;",
            "Lorg/roboguice/shaded/goole/common/base/Predicate",
            "<-TK;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/ListMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1865
    .local p0, "unfiltered":Lorg/roboguice/shaded/goole/common/collect/ListMultimap;, "Lorg/roboguice/shaded/goole/common/collect/ListMultimap<TK;TV;>;"
    .local p1, "keyPredicate":Lorg/roboguice/shaded/goole/common/base/Predicate;, "Lorg/roboguice/shaded/goole/common/base/Predicate<-TK;>;"
    instance-of v1, p0, Lorg/roboguice/shaded/goole/common/collect/FilteredKeyListMultimap;

    if-eqz v1, :cond_0

    move-object v0, p0

    .line 1866
    check-cast v0, Lorg/roboguice/shaded/goole/common/collect/FilteredKeyListMultimap;

    .line 1867
    .local v0, "prev":Lorg/roboguice/shaded/goole/common/collect/FilteredKeyListMultimap;, "Lorg/roboguice/shaded/goole/common/collect/FilteredKeyListMultimap<TK;TV;>;"
    new-instance v1, Lorg/roboguice/shaded/goole/common/collect/FilteredKeyListMultimap;

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/FilteredKeyListMultimap;->unfiltered()Lorg/roboguice/shaded/goole/common/collect/ListMultimap;

    move-result-object v2

    iget-object v3, v0, Lorg/roboguice/shaded/goole/common/collect/FilteredKeyListMultimap;->keyPredicate:Lorg/roboguice/shaded/goole/common/base/Predicate;

    invoke-static {v3, p1}, Lorg/roboguice/shaded/goole/common/base/Predicates;->and(Lorg/roboguice/shaded/goole/common/base/Predicate;Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/roboguice/shaded/goole/common/collect/FilteredKeyListMultimap;-><init>(Lorg/roboguice/shaded/goole/common/collect/ListMultimap;Lorg/roboguice/shaded/goole/common/base/Predicate;)V

    .line 1870
    .end local v0    # "prev":Lorg/roboguice/shaded/goole/common/collect/FilteredKeyListMultimap;, "Lorg/roboguice/shaded/goole/common/collect/FilteredKeyListMultimap<TK;TV;>;"
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lorg/roboguice/shaded/goole/common/collect/FilteredKeyListMultimap;

    invoke-direct {v1, p0, p1}, Lorg/roboguice/shaded/goole/common/collect/FilteredKeyListMultimap;-><init>(Lorg/roboguice/shaded/goole/common/collect/ListMultimap;Lorg/roboguice/shaded/goole/common/base/Predicate;)V

    goto :goto_0
.end method

.method public static filterKeys(Lorg/roboguice/shaded/goole/common/collect/Multimap;Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/collect/Multimap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/collect/Multimap",
            "<TK;TV;>;",
            "Lorg/roboguice/shaded/goole/common/base/Predicate",
            "<-TK;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/Multimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1773
    .local p0, "unfiltered":Lorg/roboguice/shaded/goole/common/collect/Multimap;, "Lorg/roboguice/shaded/goole/common/collect/Multimap<TK;TV;>;"
    .local p1, "keyPredicate":Lorg/roboguice/shaded/goole/common/base/Predicate;, "Lorg/roboguice/shaded/goole/common/base/Predicate<-TK;>;"
    instance-of v2, p0, Lorg/roboguice/shaded/goole/common/collect/SetMultimap;

    if-eqz v2, :cond_0

    .line 1774
    check-cast p0, Lorg/roboguice/shaded/goole/common/collect/SetMultimap;

    .end local p0    # "unfiltered":Lorg/roboguice/shaded/goole/common/collect/Multimap;, "Lorg/roboguice/shaded/goole/common/collect/Multimap<TK;TV;>;"
    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Multimaps;->filterKeys(Lorg/roboguice/shaded/goole/common/collect/SetMultimap;Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/collect/SetMultimap;

    move-result-object v2

    .line 1785
    :goto_0
    return-object v2

    .line 1775
    .restart local p0    # "unfiltered":Lorg/roboguice/shaded/goole/common/collect/Multimap;, "Lorg/roboguice/shaded/goole/common/collect/Multimap<TK;TV;>;"
    :cond_0
    instance-of v2, p0, Lorg/roboguice/shaded/goole/common/collect/ListMultimap;

    if-eqz v2, :cond_1

    .line 1776
    check-cast p0, Lorg/roboguice/shaded/goole/common/collect/ListMultimap;

    .end local p0    # "unfiltered":Lorg/roboguice/shaded/goole/common/collect/Multimap;, "Lorg/roboguice/shaded/goole/common/collect/Multimap<TK;TV;>;"
    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Multimaps;->filterKeys(Lorg/roboguice/shaded/goole/common/collect/ListMultimap;Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/collect/ListMultimap;

    move-result-object v2

    goto :goto_0

    .line 1777
    .restart local p0    # "unfiltered":Lorg/roboguice/shaded/goole/common/collect/Multimap;, "Lorg/roboguice/shaded/goole/common/collect/Multimap<TK;TV;>;"
    :cond_1
    instance-of v2, p0, Lorg/roboguice/shaded/goole/common/collect/FilteredKeyMultimap;

    if-eqz v2, :cond_2

    move-object v0, p0

    .line 1778
    check-cast v0, Lorg/roboguice/shaded/goole/common/collect/FilteredKeyMultimap;

    .line 1779
    .local v0, "prev":Lorg/roboguice/shaded/goole/common/collect/FilteredKeyMultimap;, "Lorg/roboguice/shaded/goole/common/collect/FilteredKeyMultimap<TK;TV;>;"
    new-instance v2, Lorg/roboguice/shaded/goole/common/collect/FilteredKeyMultimap;

    iget-object v3, v0, Lorg/roboguice/shaded/goole/common/collect/FilteredKeyMultimap;->unfiltered:Lorg/roboguice/shaded/goole/common/collect/Multimap;

    iget-object v4, v0, Lorg/roboguice/shaded/goole/common/collect/FilteredKeyMultimap;->keyPredicate:Lorg/roboguice/shaded/goole/common/base/Predicate;

    invoke-static {v4, p1}, Lorg/roboguice/shaded/goole/common/base/Predicates;->and(Lorg/roboguice/shaded/goole/common/base/Predicate;Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/roboguice/shaded/goole/common/collect/FilteredKeyMultimap;-><init>(Lorg/roboguice/shaded/goole/common/collect/Multimap;Lorg/roboguice/shaded/goole/common/base/Predicate;)V

    goto :goto_0

    .line 1781
    .end local v0    # "prev":Lorg/roboguice/shaded/goole/common/collect/FilteredKeyMultimap;, "Lorg/roboguice/shaded/goole/common/collect/FilteredKeyMultimap<TK;TV;>;"
    :cond_2
    instance-of v2, p0, Lorg/roboguice/shaded/goole/common/collect/FilteredMultimap;

    if-eqz v2, :cond_3

    move-object v1, p0

    .line 1782
    check-cast v1, Lorg/roboguice/shaded/goole/common/collect/FilteredMultimap;

    .line 1783
    .local v1, "prev":Lorg/roboguice/shaded/goole/common/collect/FilteredMultimap;, "Lorg/roboguice/shaded/goole/common/collect/FilteredMultimap<TK;TV;>;"
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->keyPredicateOnEntries(Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/roboguice/shaded/goole/common/collect/Multimaps;->filterFiltered(Lorg/roboguice/shaded/goole/common/collect/FilteredMultimap;Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/collect/Multimap;

    move-result-object v2

    goto :goto_0

    .line 1785
    .end local v1    # "prev":Lorg/roboguice/shaded/goole/common/collect/FilteredMultimap;, "Lorg/roboguice/shaded/goole/common/collect/FilteredMultimap<TK;TV;>;"
    :cond_3
    new-instance v2, Lorg/roboguice/shaded/goole/common/collect/FilteredKeyMultimap;

    invoke-direct {v2, p0, p1}, Lorg/roboguice/shaded/goole/common/collect/FilteredKeyMultimap;-><init>(Lorg/roboguice/shaded/goole/common/collect/Multimap;Lorg/roboguice/shaded/goole/common/base/Predicate;)V

    goto :goto_0
.end method

.method public static filterKeys(Lorg/roboguice/shaded/goole/common/collect/SetMultimap;Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/collect/SetMultimap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/collect/SetMultimap",
            "<TK;TV;>;",
            "Lorg/roboguice/shaded/goole/common/base/Predicate",
            "<-TK;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/SetMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1821
    .local p0, "unfiltered":Lorg/roboguice/shaded/goole/common/collect/SetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/SetMultimap<TK;TV;>;"
    .local p1, "keyPredicate":Lorg/roboguice/shaded/goole/common/base/Predicate;, "Lorg/roboguice/shaded/goole/common/base/Predicate<-TK;>;"
    instance-of v2, p0, Lorg/roboguice/shaded/goole/common/collect/FilteredKeySetMultimap;

    if-eqz v2, :cond_0

    move-object v0, p0

    .line 1822
    check-cast v0, Lorg/roboguice/shaded/goole/common/collect/FilteredKeySetMultimap;

    .line 1823
    .local v0, "prev":Lorg/roboguice/shaded/goole/common/collect/FilteredKeySetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/FilteredKeySetMultimap<TK;TV;>;"
    new-instance v2, Lorg/roboguice/shaded/goole/common/collect/FilteredKeySetMultimap;

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/FilteredKeySetMultimap;->unfiltered()Lorg/roboguice/shaded/goole/common/collect/SetMultimap;

    move-result-object v3

    iget-object v4, v0, Lorg/roboguice/shaded/goole/common/collect/FilteredKeySetMultimap;->keyPredicate:Lorg/roboguice/shaded/goole/common/base/Predicate;

    invoke-static {v4, p1}, Lorg/roboguice/shaded/goole/common/base/Predicates;->and(Lorg/roboguice/shaded/goole/common/base/Predicate;Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/roboguice/shaded/goole/common/collect/FilteredKeySetMultimap;-><init>(Lorg/roboguice/shaded/goole/common/collect/SetMultimap;Lorg/roboguice/shaded/goole/common/base/Predicate;)V

    .line 1829
    .end local v0    # "prev":Lorg/roboguice/shaded/goole/common/collect/FilteredKeySetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/FilteredKeySetMultimap<TK;TV;>;"
    :goto_0
    return-object v2

    .line 1825
    :cond_0
    instance-of v2, p0, Lorg/roboguice/shaded/goole/common/collect/FilteredSetMultimap;

    if-eqz v2, :cond_1

    move-object v1, p0

    .line 1826
    check-cast v1, Lorg/roboguice/shaded/goole/common/collect/FilteredSetMultimap;

    .line 1827
    .local v1, "prev":Lorg/roboguice/shaded/goole/common/collect/FilteredSetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/FilteredSetMultimap<TK;TV;>;"
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->keyPredicateOnEntries(Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/roboguice/shaded/goole/common/collect/Multimaps;->filterFiltered(Lorg/roboguice/shaded/goole/common/collect/FilteredSetMultimap;Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/collect/SetMultimap;

    move-result-object v2

    goto :goto_0

    .line 1829
    .end local v1    # "prev":Lorg/roboguice/shaded/goole/common/collect/FilteredSetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/FilteredSetMultimap<TK;TV;>;"
    :cond_1
    new-instance v2, Lorg/roboguice/shaded/goole/common/collect/FilteredKeySetMultimap;

    invoke-direct {v2, p0, p1}, Lorg/roboguice/shaded/goole/common/collect/FilteredKeySetMultimap;-><init>(Lorg/roboguice/shaded/goole/common/collect/SetMultimap;Lorg/roboguice/shaded/goole/common/base/Predicate;)V

    goto :goto_0
.end method

.method public static filterValues(Lorg/roboguice/shaded/goole/common/collect/Multimap;Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/collect/Multimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/collect/Multimap",
            "<TK;TV;>;",
            "Lorg/roboguice/shaded/goole/common/base/Predicate",
            "<-TV;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/Multimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1906
    .local p0, "unfiltered":Lorg/roboguice/shaded/goole/common/collect/Multimap;, "Lorg/roboguice/shaded/goole/common/collect/Multimap<TK;TV;>;"
    .local p1, "valuePredicate":Lorg/roboguice/shaded/goole/common/base/Predicate;, "Lorg/roboguice/shaded/goole/common/base/Predicate<-TV;>;"
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->valuePredicateOnEntries(Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/roboguice/shaded/goole/common/collect/Multimaps;->filterEntries(Lorg/roboguice/shaded/goole/common/collect/Multimap;Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/collect/Multimap;

    move-result-object v0

    return-object v0
.end method

.method public static filterValues(Lorg/roboguice/shaded/goole/common/collect/SetMultimap;Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/collect/SetMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/collect/SetMultimap",
            "<TK;TV;>;",
            "Lorg/roboguice/shaded/goole/common/base/Predicate",
            "<-TV;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/SetMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1941
    .local p0, "unfiltered":Lorg/roboguice/shaded/goole/common/collect/SetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/SetMultimap<TK;TV;>;"
    .local p1, "valuePredicate":Lorg/roboguice/shaded/goole/common/base/Predicate;, "Lorg/roboguice/shaded/goole/common/base/Predicate<-TV;>;"
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->valuePredicateOnEntries(Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/roboguice/shaded/goole/common/collect/Multimaps;->filterEntries(Lorg/roboguice/shaded/goole/common/collect/SetMultimap;Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/collect/SetMultimap;

    move-result-object v0

    return-object v0
.end method

.method public static forMap(Ljava/util/Map;)Lorg/roboguice/shaded/goole/common/collect/SetMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/SetMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 923
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Multimaps$MapMultimap;

    invoke-direct {v0, p0}, Lorg/roboguice/shaded/goole/common/collect/Multimaps$MapMultimap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static index(Ljava/lang/Iterable;Lorg/roboguice/shaded/goole/common/base/Function;)Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<TV;>;",
            "Lorg/roboguice/shaded/goole/common/base/Function",
            "<-TV;TK;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1455
    .local p0, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TV;>;"
    .local p1, "keyFunction":Lorg/roboguice/shaded/goole/common/base/Function;, "Lorg/roboguice/shaded/goole/common/base/Function<-TV;TK;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/roboguice/shaded/goole/common/collect/Multimaps;->index(Ljava/util/Iterator;Lorg/roboguice/shaded/goole/common/base/Function;)Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap;

    move-result-object v0

    return-object v0
.end method

.method public static index(Ljava/util/Iterator;Lorg/roboguice/shaded/goole/common/base/Function;)Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<TV;>;",
            "Lorg/roboguice/shaded/goole/common/base/Function",
            "<-TV;TK;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1503
    .local p0, "values":Ljava/util/Iterator;, "Ljava/util/Iterator<TV;>;"
    .local p1, "keyFunction":Lorg/roboguice/shaded/goole/common/base/Function;, "Lorg/roboguice/shaded/goole/common/base/Function<-TV;TK;>;"
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1504
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap;->builder()Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder;

    move-result-object v0

    .line 1506
    .local v0, "builder":Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder<TK;TV;>;"
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1507
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1508
    .local v1, "value":Ljava/lang/Object;, "TV;"
    invoke-static {v1, p0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1509
    invoke-interface {p1, v1}, Lorg/roboguice/shaded/goole/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder;

    goto :goto_0

    .line 1511
    .end local v1    # "value":Ljava/lang/Object;, "TV;"
    :cond_0
    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder;->build()Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap;

    move-result-object v2

    return-object v2
.end method

.method public static invertFrom(Lorg/roboguice/shaded/goole/common/collect/Multimap;Lorg/roboguice/shaded/goole/common/collect/Multimap;)Lorg/roboguice/shaded/goole/common/collect/Multimap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "M::",
            "Lorg/roboguice/shaded/goole/common/collect/Multimap",
            "<TK;TV;>;>(",
            "Lorg/roboguice/shaded/goole/common/collect/Multimap",
            "<+TV;+TK;>;TM;)TM;"
        }
    .end annotation

    .prologue
    .line 409
    .local p0, "source":Lorg/roboguice/shaded/goole/common/collect/Multimap;, "Lorg/roboguice/shaded/goole/common/collect/Multimap<+TV;+TK;>;"
    .local p1, "dest":Lorg/roboguice/shaded/goole/common/collect/Multimap;, "TM;"
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    invoke-interface {p0}, Lorg/roboguice/shaded/goole/common/collect/Multimap;->entries()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 411
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TV;+TK;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Lorg/roboguice/shaded/goole/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 413
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TV;+TK;>;"
    :cond_0
    return-object p1
.end method

.method public static newListMultimap(Ljava/util/Map;Lorg/roboguice/shaded/goole/common/base/Supplier;)Lorg/roboguice/shaded/goole/common/collect/ListMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;",
            "Lorg/roboguice/shaded/goole/common/base/Supplier",
            "<+",
            "Ljava/util/List",
            "<TV;>;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/ListMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 194
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;Ljava/util/Collection<TV;>;>;"
    .local p1, "factory":Lorg/roboguice/shaded/goole/common/base/Supplier;, "Lorg/roboguice/shaded/goole/common/base/Supplier<+Ljava/util/List<TV;>;>;"
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Multimaps$CustomListMultimap;

    invoke-direct {v0, p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Multimaps$CustomListMultimap;-><init>(Ljava/util/Map;Lorg/roboguice/shaded/goole/common/base/Supplier;)V

    return-object v0
.end method

.method public static newMultimap(Ljava/util/Map;Lorg/roboguice/shaded/goole/common/base/Supplier;)Lorg/roboguice/shaded/goole/common/collect/Multimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;",
            "Lorg/roboguice/shaded/goole/common/base/Supplier",
            "<+",
            "Ljava/util/Collection",
            "<TV;>;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/Multimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 113
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;Ljava/util/Collection<TV;>;>;"
    .local p1, "factory":Lorg/roboguice/shaded/goole/common/base/Supplier;, "Lorg/roboguice/shaded/goole/common/base/Supplier<+Ljava/util/Collection<TV;>;>;"
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Multimaps$CustomMultimap;

    invoke-direct {v0, p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Multimaps$CustomMultimap;-><init>(Ljava/util/Map;Lorg/roboguice/shaded/goole/common/base/Supplier;)V

    return-object v0
.end method

.method public static newSetMultimap(Ljava/util/Map;Lorg/roboguice/shaded/goole/common/base/Supplier;)Lorg/roboguice/shaded/goole/common/collect/SetMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;",
            "Lorg/roboguice/shaded/goole/common/base/Supplier",
            "<+",
            "Ljava/util/Set",
            "<TV;>;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/SetMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 272
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;Ljava/util/Collection<TV;>;>;"
    .local p1, "factory":Lorg/roboguice/shaded/goole/common/base/Supplier;, "Lorg/roboguice/shaded/goole/common/base/Supplier<+Ljava/util/Set<TV;>;>;"
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Multimaps$CustomSetMultimap;

    invoke-direct {v0, p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Multimaps$CustomSetMultimap;-><init>(Ljava/util/Map;Lorg/roboguice/shaded/goole/common/base/Supplier;)V

    return-object v0
.end method

.method public static newSortedSetMultimap(Ljava/util/Map;Lorg/roboguice/shaded/goole/common/base/Supplier;)Lorg/roboguice/shaded/goole/common/collect/SortedSetMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;",
            "Lorg/roboguice/shaded/goole/common/base/Supplier",
            "<+",
            "Ljava/util/SortedSet",
            "<TV;>;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/SortedSetMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 350
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;Ljava/util/Collection<TV;>;>;"
    .local p1, "factory":Lorg/roboguice/shaded/goole/common/base/Supplier;, "Lorg/roboguice/shaded/goole/common/base/Supplier<+Ljava/util/SortedSet<TV;>;>;"
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Multimaps$CustomSortedSetMultimap;

    invoke-direct {v0, p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Multimaps$CustomSortedSetMultimap;-><init>(Ljava/util/Map;Lorg/roboguice/shaded/goole/common/base/Supplier;)V

    return-object v0
.end method

.method public static synchronizedListMultimap(Lorg/roboguice/shaded/goole/common/collect/ListMultimap;)Lorg/roboguice/shaded/goole/common/collect/ListMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/collect/ListMultimap",
            "<TK;TV;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/ListMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 774
    .local p0, "multimap":Lorg/roboguice/shaded/goole/common/collect/ListMultimap;, "Lorg/roboguice/shaded/goole/common/collect/ListMultimap<TK;TV;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/roboguice/shaded/goole/common/collect/Synchronized;->listMultimap(Lorg/roboguice/shaded/goole/common/collect/ListMultimap;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ListMultimap;

    move-result-object v0

    return-object v0
.end method

.method public static synchronizedMultimap(Lorg/roboguice/shaded/goole/common/collect/Multimap;)Lorg/roboguice/shaded/goole/common/collect/Multimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/collect/Multimap",
            "<TK;TV;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/Multimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 451
    .local p0, "multimap":Lorg/roboguice/shaded/goole/common/collect/Multimap;, "Lorg/roboguice/shaded/goole/common/collect/Multimap<TK;TV;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/roboguice/shaded/goole/common/collect/Synchronized;->multimap(Lorg/roboguice/shaded/goole/common/collect/Multimap;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/Multimap;

    move-result-object v0

    return-object v0
.end method

.method public static synchronizedSetMultimap(Lorg/roboguice/shaded/goole/common/collect/SetMultimap;)Lorg/roboguice/shaded/goole/common/collect/SetMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/collect/SetMultimap",
            "<TK;TV;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/SetMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 679
    .local p0, "multimap":Lorg/roboguice/shaded/goole/common/collect/SetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/SetMultimap<TK;TV;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/roboguice/shaded/goole/common/collect/Synchronized;->setMultimap(Lorg/roboguice/shaded/goole/common/collect/SetMultimap;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/SetMultimap;

    move-result-object v0

    return-object v0
.end method

.method public static synchronizedSortedSetMultimap(Lorg/roboguice/shaded/goole/common/collect/SortedSetMultimap;)Lorg/roboguice/shaded/goole/common/collect/SortedSetMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/collect/SortedSetMultimap",
            "<TK;TV;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/SortedSetMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 734
    .local p0, "multimap":Lorg/roboguice/shaded/goole/common/collect/SortedSetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/SortedSetMultimap<TK;TV;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/roboguice/shaded/goole/common/collect/Synchronized;->sortedSetMultimap(Lorg/roboguice/shaded/goole/common/collect/SortedSetMultimap;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/SortedSetMultimap;

    move-result-object v0

    return-object v0
.end method

.method public static transformEntries(Lorg/roboguice/shaded/goole/common/collect/ListMultimap;Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;)Lorg/roboguice/shaded/goole/common/collect/ListMultimap;
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
            "Lorg/roboguice/shaded/goole/common/collect/ListMultimap",
            "<TK;TV1;>;",
            "Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer",
            "<-TK;-TV1;TV2;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/ListMultimap",
            "<TK;TV2;>;"
        }
    .end annotation

    .prologue
    .line 1380
    .local p0, "fromMap":Lorg/roboguice/shaded/goole/common/collect/ListMultimap;, "Lorg/roboguice/shaded/goole/common/collect/ListMultimap<TK;TV1;>;"
    .local p1, "transformer":Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;, "Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer<-TK;-TV1;TV2;>;"
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Multimaps$TransformedEntriesListMultimap;

    invoke-direct {v0, p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Multimaps$TransformedEntriesListMultimap;-><init>(Lorg/roboguice/shaded/goole/common/collect/ListMultimap;Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;)V

    return-object v0
.end method

.method public static transformEntries(Lorg/roboguice/shaded/goole/common/collect/Multimap;Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;)Lorg/roboguice/shaded/goole/common/collect/Multimap;
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
            "Lorg/roboguice/shaded/goole/common/collect/Multimap",
            "<TK;TV1;>;",
            "Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer",
            "<-TK;-TV1;TV2;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/Multimap",
            "<TK;TV2;>;"
        }
    .end annotation

    .prologue
    .line 1172
    .local p0, "fromMap":Lorg/roboguice/shaded/goole/common/collect/Multimap;, "Lorg/roboguice/shaded/goole/common/collect/Multimap<TK;TV1;>;"
    .local p1, "transformer":Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;, "Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer<-TK;-TV1;TV2;>;"
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Multimaps$TransformedEntriesMultimap;

    invoke-direct {v0, p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Multimaps$TransformedEntriesMultimap;-><init>(Lorg/roboguice/shaded/goole/common/collect/Multimap;Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;)V

    return-object v0
.end method

.method public static transformValues(Lorg/roboguice/shaded/goole/common/collect/ListMultimap;Lorg/roboguice/shaded/goole/common/base/Function;)Lorg/roboguice/shaded/goole/common/collect/ListMultimap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V1:",
            "Ljava/lang/Object;",
            "V2:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/collect/ListMultimap",
            "<TK;TV1;>;",
            "Lorg/roboguice/shaded/goole/common/base/Function",
            "<-TV1;TV2;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/ListMultimap",
            "<TK;TV2;>;"
        }
    .end annotation

    .prologue
    .line 1320
    .local p0, "fromMultimap":Lorg/roboguice/shaded/goole/common/collect/ListMultimap;, "Lorg/roboguice/shaded/goole/common/collect/ListMultimap<TK;TV1;>;"
    .local p1, "function":Lorg/roboguice/shaded/goole/common/base/Function;, "Lorg/roboguice/shaded/goole/common/base/Function<-TV1;TV2;>;"
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1321
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->asEntryTransformer(Lorg/roboguice/shaded/goole/common/base/Function;)Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;

    move-result-object v0

    .line 1322
    .local v0, "transformer":Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;, "Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer<TK;TV1;TV2;>;"
    invoke-static {p0, v0}, Lorg/roboguice/shaded/goole/common/collect/Multimaps;->transformEntries(Lorg/roboguice/shaded/goole/common/collect/ListMultimap;Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;)Lorg/roboguice/shaded/goole/common/collect/ListMultimap;

    move-result-object v1

    return-object v1
.end method

.method public static transformValues(Lorg/roboguice/shaded/goole/common/collect/Multimap;Lorg/roboguice/shaded/goole/common/base/Function;)Lorg/roboguice/shaded/goole/common/collect/Multimap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V1:",
            "Ljava/lang/Object;",
            "V2:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/collect/Multimap",
            "<TK;TV1;>;",
            "Lorg/roboguice/shaded/goole/common/base/Function",
            "<-TV1;TV2;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/Multimap",
            "<TK;TV2;>;"
        }
    .end annotation

    .prologue
    .line 1109
    .local p0, "fromMultimap":Lorg/roboguice/shaded/goole/common/collect/Multimap;, "Lorg/roboguice/shaded/goole/common/collect/Multimap<TK;TV1;>;"
    .local p1, "function":Lorg/roboguice/shaded/goole/common/base/Function;, "Lorg/roboguice/shaded/goole/common/base/Function<-TV1;TV2;>;"
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1110
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->asEntryTransformer(Lorg/roboguice/shaded/goole/common/base/Function;)Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;

    move-result-object v0

    .line 1111
    .local v0, "transformer":Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;, "Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer<TK;TV1;TV2;>;"
    invoke-static {p0, v0}, Lorg/roboguice/shaded/goole/common/collect/Multimaps;->transformEntries(Lorg/roboguice/shaded/goole/common/collect/Multimap;Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;)Lorg/roboguice/shaded/goole/common/collect/Multimap;

    move-result-object v1

    return-object v1
.end method

.method private static unmodifiableEntries(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 846
    .local p0, "entries":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/Map$Entry<TK;TV;>;>;"
    instance-of v0, p0, Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 847
    check-cast p0, Ljava/util/Set;

    .end local p0    # "entries":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/collect/Maps;->unmodifiableEntrySet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 849
    .restart local p0    # "entries":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/Map$Entry<TK;TV;>;>;"
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Maps$UnmodifiableEntries;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/roboguice/shaded/goole/common/collect/Maps$UnmodifiableEntries;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public static unmodifiableListMultimap(Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap;)Lorg/roboguice/shaded/goole/common/collect/ListMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap",
            "<TK;TV;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/ListMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 812
    .local p0, "delegate":Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap<TK;TV;>;"
    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/roboguice/shaded/goole/common/collect/ListMultimap;

    return-object v0
.end method

.method public static unmodifiableListMultimap(Lorg/roboguice/shaded/goole/common/collect/ListMultimap;)Lorg/roboguice/shaded/goole/common/collect/ListMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/collect/ListMultimap",
            "<TK;TV;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/ListMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 797
    .local p0, "delegate":Lorg/roboguice/shaded/goole/common/collect/ListMultimap;, "Lorg/roboguice/shaded/goole/common/collect/ListMultimap<TK;TV;>;"
    instance-of v0, p0, Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableListMultimap;

    if-nez v0, :cond_0

    instance-of v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap;

    if-eqz v0, :cond_1

    .line 801
    .end local p0    # "delegate":Lorg/roboguice/shaded/goole/common/collect/ListMultimap;, "Lorg/roboguice/shaded/goole/common/collect/ListMultimap<TK;TV;>;"
    :cond_0
    :goto_0
    return-object p0

    .restart local p0    # "delegate":Lorg/roboguice/shaded/goole/common/collect/ListMultimap;, "Lorg/roboguice/shaded/goole/common/collect/ListMultimap<TK;TV;>;"
    :cond_1
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableListMultimap;

    invoke-direct {v0, p0}, Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableListMultimap;-><init>(Lorg/roboguice/shaded/goole/common/collect/ListMultimap;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public static unmodifiableMultimap(Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;)Lorg/roboguice/shaded/goole/common/collect/Multimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap",
            "<TK;TV;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/Multimap",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 488
    .local p0, "delegate":Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap<TK;TV;>;"
    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/roboguice/shaded/goole/common/collect/Multimap;

    return-object v0
.end method

.method public static unmodifiableMultimap(Lorg/roboguice/shaded/goole/common/collect/Multimap;)Lorg/roboguice/shaded/goole/common/collect/Multimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/collect/Multimap",
            "<TK;TV;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/Multimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 473
    .local p0, "delegate":Lorg/roboguice/shaded/goole/common/collect/Multimap;, "Lorg/roboguice/shaded/goole/common/collect/Multimap<TK;TV;>;"
    instance-of v0, p0, Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableMultimap;

    if-nez v0, :cond_0

    instance-of v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;

    if-eqz v0, :cond_1

    .line 477
    .end local p0    # "delegate":Lorg/roboguice/shaded/goole/common/collect/Multimap;, "Lorg/roboguice/shaded/goole/common/collect/Multimap<TK;TV;>;"
    :cond_0
    :goto_0
    return-object p0

    .restart local p0    # "delegate":Lorg/roboguice/shaded/goole/common/collect/Multimap;, "Lorg/roboguice/shaded/goole/common/collect/Multimap<TK;TV;>;"
    :cond_1
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableMultimap;

    invoke-direct {v0, p0}, Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableMultimap;-><init>(Lorg/roboguice/shaded/goole/common/collect/Multimap;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public static unmodifiableSetMultimap(Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap;)Lorg/roboguice/shaded/goole/common/collect/SetMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap",
            "<TK;TV;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/SetMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 717
    .local p0, "delegate":Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap<TK;TV;>;"
    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/roboguice/shaded/goole/common/collect/SetMultimap;

    return-object v0
.end method

.method public static unmodifiableSetMultimap(Lorg/roboguice/shaded/goole/common/collect/SetMultimap;)Lorg/roboguice/shaded/goole/common/collect/SetMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/collect/SetMultimap",
            "<TK;TV;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/SetMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 702
    .local p0, "delegate":Lorg/roboguice/shaded/goole/common/collect/SetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/SetMultimap<TK;TV;>;"
    instance-of v0, p0, Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableSetMultimap;

    if-nez v0, :cond_0

    instance-of v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap;

    if-eqz v0, :cond_1

    .line 706
    .end local p0    # "delegate":Lorg/roboguice/shaded/goole/common/collect/SetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/SetMultimap<TK;TV;>;"
    :cond_0
    :goto_0
    return-object p0

    .restart local p0    # "delegate":Lorg/roboguice/shaded/goole/common/collect/SetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/SetMultimap<TK;TV;>;"
    :cond_1
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableSetMultimap;

    invoke-direct {v0, p0}, Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableSetMultimap;-><init>(Lorg/roboguice/shaded/goole/common/collect/SetMultimap;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public static unmodifiableSortedSetMultimap(Lorg/roboguice/shaded/goole/common/collect/SortedSetMultimap;)Lorg/roboguice/shaded/goole/common/collect/SortedSetMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/collect/SortedSetMultimap",
            "<TK;TV;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/SortedSetMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 757
    .local p0, "delegate":Lorg/roboguice/shaded/goole/common/collect/SortedSetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/SortedSetMultimap<TK;TV;>;"
    instance-of v0, p0, Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableSortedSetMultimap;

    if-eqz v0, :cond_0

    .line 760
    .end local p0    # "delegate":Lorg/roboguice/shaded/goole/common/collect/SortedSetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/SortedSetMultimap<TK;TV;>;"
    :goto_0
    return-object p0

    .restart local p0    # "delegate":Lorg/roboguice/shaded/goole/common/collect/SortedSetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/SortedSetMultimap<TK;TV;>;"
    :cond_0
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableSortedSetMultimap;

    invoke-direct {v0, p0}, Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableSortedSetMultimap;-><init>(Lorg/roboguice/shaded/goole/common/collect/SortedSetMultimap;)V

    move-object p0, v0

    goto :goto_0
.end method

.method private static unmodifiableValueCollection(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TV;>;)",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 825
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    instance-of v0, p0, Ljava/util/SortedSet;

    if-eqz v0, :cond_0

    .line 826
    check-cast p0, Ljava/util/SortedSet;

    .end local p0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;

    move-result-object v0

    .line 832
    .restart local p0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    :goto_0
    return-object v0

    .line 827
    :cond_0
    instance-of v0, p0, Ljava/util/Set;

    if-eqz v0, :cond_1

    .line 828
    check-cast p0, Ljava/util/Set;

    .end local p0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    .line 829
    .restart local p0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    :cond_1
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_2

    .line 830
    check-cast p0, Ljava/util/List;

    .end local p0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 832
    .restart local p0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    :cond_2
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    goto :goto_0
.end method

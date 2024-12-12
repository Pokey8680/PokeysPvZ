.class final Lorg/roboguice/shaded/goole/common/collect/Synchronized;
.super Ljava/lang/Object;
.source "Synchronized.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/roboguice/shaded/goole/common/collect/Synchronized$1;,
        Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedDeque;,
        Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedQueue;,
        Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedEntry;,
        Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedNavigableMap;,
        Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedNavigableSet;,
        Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedAsMapValues;,
        Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedAsMap;,
        Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedBiMap;,
        Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedSortedMap;,
        Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedMap;,
        Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedAsMapEntries;,
        Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedSortedSetMultimap;,
        Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedSetMultimap;,
        Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedListMultimap;,
        Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedMultimap;,
        Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedMultiset;,
        Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedRandomAccessList;,
        Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedList;,
        Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedSortedSet;,
        Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedSet;,
        Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedCollection;,
        Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedObject;
    }
.end annotation

.annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtCompatible;
    emulated = true
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Ljava/util/SortedSet;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1
    .param p0, "x0"    # Ljava/util/SortedSet;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 60
    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Synchronized;->sortedSet(Ljava/util/SortedSet;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Ljava/util/List;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 60
    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Synchronized;->list(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Ljava/util/Set;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 60
    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Synchronized;->typePreservingSet(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .param p0, "x0"    # Ljava/util/Collection;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 60
    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Synchronized;->typePreservingCollection(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .param p0, "x0"    # Ljava/util/Collection;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 60
    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Synchronized;->collection(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Ljava/util/Map$Entry;Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .param p0, "x0"    # Ljava/util/Map$Entry;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 60
    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Synchronized;->nullableSynchronizedEntry(Ljava/util/Map$Entry;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method static biMap(Lorg/roboguice/shaded/goole/common/collect/BiMap;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/BiMap;
    .locals 2
    .param p1, "mutex"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/collect/BiMap",
            "<TK;TV;>;",
            "Ljava/lang/Object;",
            ")",
            "Lorg/roboguice/shaded/goole/common/collect/BiMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "bimap":Lorg/roboguice/shaded/goole/common/collect/BiMap;, "Lorg/roboguice/shaded/goole/common/collect/BiMap<TK;TV;>;"
    const/4 v1, 0x0

    .line 1104
    instance-of v0, p0, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedBiMap;

    if-nez v0, :cond_0

    instance-of v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;

    if-eqz v0, :cond_1

    .line 1108
    .end local p0    # "bimap":Lorg/roboguice/shaded/goole/common/collect/BiMap;, "Lorg/roboguice/shaded/goole/common/collect/BiMap<TK;TV;>;"
    :cond_0
    :goto_0
    return-object p0

    .restart local p0    # "bimap":Lorg/roboguice/shaded/goole/common/collect/BiMap;, "Lorg/roboguice/shaded/goole/common/collect/BiMap<TK;TV;>;"
    :cond_1
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedBiMap;

    invoke-direct {v0, p0, p1, v1, v1}, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedBiMap;-><init>(Lorg/roboguice/shaded/goole/common/collect/BiMap;Ljava/lang/Object;Lorg/roboguice/shaded/goole/common/collect/BiMap;Lorg/roboguice/shaded/goole/common/collect/Synchronized$1;)V

    move-object p0, v0

    goto :goto_0
.end method

.method private static collection(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;
    .locals 2
    .param p1, "mutex"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TE;>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 102
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedCollection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedCollection;-><init>(Ljava/util/Collection;Ljava/lang/Object;Lorg/roboguice/shaded/goole/common/collect/Synchronized$1;)V

    return-object v0
.end method

.method static deque(Ljava/util/Deque;Ljava/lang/Object;)Ljava/util/Deque;
    .locals 1
    .param p1, "mutex"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Deque",
            "<TE;>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Deque",
            "<TE;>;"
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "Deque"
    .end annotation

    .prologue
    .line 1625
    .local p0, "deque":Ljava/util/Deque;, "Ljava/util/Deque<TE;>;"
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedDeque;

    invoke-direct {v0, p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedDeque;-><init>(Ljava/util/Deque;Ljava/lang/Object;)V

    return-object v0
.end method

.method private static list(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .param p1, "mutex"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TE;>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 303
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    instance-of v0, p0, Ljava/util/RandomAccess;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedRandomAccessList;

    invoke-direct {v0, p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedRandomAccessList;-><init>(Ljava/util/List;Ljava/lang/Object;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedList;

    invoke-direct {v0, p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedList;-><init>(Ljava/util/List;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static listMultimap(Lorg/roboguice/shaded/goole/common/collect/ListMultimap;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ListMultimap;
    .locals 1
    .param p1, "mutex"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/collect/ListMultimap",
            "<TK;TV;>;",
            "Ljava/lang/Object;",
            ")",
            "Lorg/roboguice/shaded/goole/common/collect/ListMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 692
    .local p0, "multimap":Lorg/roboguice/shaded/goole/common/collect/ListMultimap;, "Lorg/roboguice/shaded/goole/common/collect/ListMultimap<TK;TV;>;"
    instance-of v0, p0, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedListMultimap;

    if-nez v0, :cond_0

    instance-of v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap;

    if-eqz v0, :cond_1

    .line 696
    .end local p0    # "multimap":Lorg/roboguice/shaded/goole/common/collect/ListMultimap;, "Lorg/roboguice/shaded/goole/common/collect/ListMultimap<TK;TV;>;"
    :cond_0
    :goto_0
    return-object p0

    .restart local p0    # "multimap":Lorg/roboguice/shaded/goole/common/collect/ListMultimap;, "Lorg/roboguice/shaded/goole/common/collect/ListMultimap<TK;TV;>;"
    :cond_1
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedListMultimap;

    invoke-direct {v0, p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedListMultimap;-><init>(Lorg/roboguice/shaded/goole/common/collect/ListMultimap;Ljava/lang/Object;)V

    move-object p0, v0

    goto :goto_0
.end method

.method static map(Ljava/util/Map;Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .param p1, "mutex"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 919
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedMap;

    invoke-direct {v0, p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedMap;-><init>(Ljava/util/Map;Ljava/lang/Object;)V

    return-object v0
.end method

.method static multimap(Lorg/roboguice/shaded/goole/common/collect/Multimap;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/Multimap;
    .locals 1
    .param p1, "mutex"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/collect/Multimap",
            "<TK;TV;>;",
            "Ljava/lang/Object;",
            ")",
            "Lorg/roboguice/shaded/goole/common/collect/Multimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 507
    .local p0, "multimap":Lorg/roboguice/shaded/goole/common/collect/Multimap;, "Lorg/roboguice/shaded/goole/common/collect/Multimap<TK;TV;>;"
    instance-of v0, p0, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedMultimap;

    if-nez v0, :cond_0

    instance-of v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;

    if-eqz v0, :cond_1

    .line 511
    .end local p0    # "multimap":Lorg/roboguice/shaded/goole/common/collect/Multimap;, "Lorg/roboguice/shaded/goole/common/collect/Multimap<TK;TV;>;"
    :cond_0
    :goto_0
    return-object p0

    .restart local p0    # "multimap":Lorg/roboguice/shaded/goole/common/collect/Multimap;, "Lorg/roboguice/shaded/goole/common/collect/Multimap<TK;TV;>;"
    :cond_1
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedMultimap;

    invoke-direct {v0, p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedMultimap;-><init>(Lorg/roboguice/shaded/goole/common/collect/Multimap;Ljava/lang/Object;)V

    move-object p0, v0

    goto :goto_0
.end method

.method static multiset(Lorg/roboguice/shaded/goole/common/collect/Multiset;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/Multiset;
    .locals 1
    .param p1, "mutex"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/collect/Multiset",
            "<TE;>;",
            "Ljava/lang/Object;",
            ")",
            "Lorg/roboguice/shaded/goole/common/collect/Multiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 412
    .local p0, "multiset":Lorg/roboguice/shaded/goole/common/collect/Multiset;, "Lorg/roboguice/shaded/goole/common/collect/Multiset<TE;>;"
    instance-of v0, p0, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedMultiset;

    if-nez v0, :cond_0

    instance-of v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;

    if-eqz v0, :cond_1

    .line 416
    .end local p0    # "multiset":Lorg/roboguice/shaded/goole/common/collect/Multiset;, "Lorg/roboguice/shaded/goole/common/collect/Multiset<TE;>;"
    :cond_0
    :goto_0
    return-object p0

    .restart local p0    # "multiset":Lorg/roboguice/shaded/goole/common/collect/Multiset;, "Lorg/roboguice/shaded/goole/common/collect/Multiset<TE;>;"
    :cond_1
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedMultiset;

    invoke-direct {v0, p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedMultiset;-><init>(Lorg/roboguice/shaded/goole/common/collect/Multiset;Ljava/lang/Object;)V

    move-object p0, v0

    goto :goto_0
.end method

.method static navigableMap(Ljava/util/NavigableMap;)Ljava/util/NavigableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;)",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "NavigableMap"
    .end annotation

    .prologue
    .line 1341
    .local p0, "navigableMap":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<TK;TV;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/roboguice/shaded/goole/common/collect/Synchronized;->navigableMap(Ljava/util/NavigableMap;Ljava/lang/Object;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method static navigableMap(Ljava/util/NavigableMap;Ljava/lang/Object;)Ljava/util/NavigableMap;
    .locals 1
    .param p1, "mutex"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "NavigableMap"
    .end annotation

    .prologue
    .line 1347
    .local p0, "navigableMap":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<TK;TV;>;"
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedNavigableMap;

    invoke-direct {v0, p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedNavigableMap;-><init>(Ljava/util/NavigableMap;Ljava/lang/Object;)V

    return-object v0
.end method

.method static navigableSet(Ljava/util/NavigableSet;)Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/NavigableSet",
            "<TE;>;)",
            "Ljava/util/NavigableSet",
            "<TE;>;"
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "NavigableSet"
    .end annotation

    .prologue
    .line 1335
    .local p0, "navigableSet":Ljava/util/NavigableSet;, "Ljava/util/NavigableSet<TE;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/roboguice/shaded/goole/common/collect/Synchronized;->navigableSet(Ljava/util/NavigableSet;Ljava/lang/Object;)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method static navigableSet(Ljava/util/NavigableSet;Ljava/lang/Object;)Ljava/util/NavigableSet;
    .locals 1
    .param p1, "mutex"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/NavigableSet",
            "<TE;>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/NavigableSet",
            "<TE;>;"
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "NavigableSet"
    .end annotation

    .prologue
    .line 1330
    .local p0, "navigableSet":Ljava/util/NavigableSet;, "Ljava/util/NavigableSet<TE;>;"
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedNavigableSet;

    invoke-direct {v0, p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedNavigableSet;-><init>(Ljava/util/NavigableSet;Ljava/lang/Object;)V

    return-object v0
.end method

.method private static nullableSynchronizedEntry(Ljava/util/Map$Entry;Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .param p0    # Ljava/util/Map$Entry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "mutex"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "works but is needed only for NavigableMap"
    .end annotation

    .prologue
    .line 1516
    .local p0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-nez p0, :cond_0

    .line 1517
    const/4 v0, 0x0

    .line 1519
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedEntry;

    invoke-direct {v0, p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedEntry;-><init>(Ljava/util/Map$Entry;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static queue(Ljava/util/Queue;Ljava/lang/Object;)Ljava/util/Queue;
    .locals 1
    .param p1, "mutex"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Queue",
            "<TE;>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Queue",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1569
    .local p0, "queue":Ljava/util/Queue;, "Ljava/util/Queue<TE;>;"
    instance-of v0, p0, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedQueue;

    if-eqz v0, :cond_0

    .end local p0    # "queue":Ljava/util/Queue;, "Ljava/util/Queue<TE;>;"
    :goto_0
    return-object p0

    .restart local p0    # "queue":Ljava/util/Queue;, "Ljava/util/Queue<TE;>;"
    :cond_0
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedQueue;

    invoke-direct {v0, p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedQueue;-><init>(Ljava/util/Queue;Ljava/lang/Object;)V

    move-object p0, v0

    goto :goto_0
.end method

.method static set(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .param p1, "mutex"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<TE;>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 210
    .local p0, "set":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedSet;

    invoke-direct {v0, p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedSet;-><init>(Ljava/util/Set;Ljava/lang/Object;)V

    return-object v0
.end method

.method static setMultimap(Lorg/roboguice/shaded/goole/common/collect/SetMultimap;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/SetMultimap;
    .locals 1
    .param p1, "mutex"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/collect/SetMultimap",
            "<TK;TV;>;",
            "Ljava/lang/Object;",
            ")",
            "Lorg/roboguice/shaded/goole/common/collect/SetMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 729
    .local p0, "multimap":Lorg/roboguice/shaded/goole/common/collect/SetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/SetMultimap<TK;TV;>;"
    instance-of v0, p0, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedSetMultimap;

    if-nez v0, :cond_0

    instance-of v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap;

    if-eqz v0, :cond_1

    .line 733
    .end local p0    # "multimap":Lorg/roboguice/shaded/goole/common/collect/SetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/SetMultimap<TK;TV;>;"
    :cond_0
    :goto_0
    return-object p0

    .restart local p0    # "multimap":Lorg/roboguice/shaded/goole/common/collect/SetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/SetMultimap<TK;TV;>;"
    :cond_1
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedSetMultimap;

    invoke-direct {v0, p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedSetMultimap;-><init>(Lorg/roboguice/shaded/goole/common/collect/SetMultimap;Ljava/lang/Object;)V

    move-object p0, v0

    goto :goto_0
.end method

.method static sortedMap(Ljava/util/SortedMap;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .param p1, "mutex"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedMap",
            "<TK;TV;>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1050
    .local p0, "sortedMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;TV;>;"
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedSortedMap;

    invoke-direct {v0, p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedSortedMap;-><init>(Ljava/util/SortedMap;Ljava/lang/Object;)V

    return-object v0
.end method

.method private static sortedSet(Ljava/util/SortedSet;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1
    .param p1, "mutex"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedSet",
            "<TE;>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/SortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 244
    .local p0, "set":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TE;>;"
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedSortedSet;

    invoke-direct {v0, p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedSortedSet;-><init>(Ljava/util/SortedSet;Ljava/lang/Object;)V

    return-object v0
.end method

.method static sortedSetMultimap(Lorg/roboguice/shaded/goole/common/collect/SortedSetMultimap;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/SortedSetMultimap;
    .locals 1
    .param p1, "mutex"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/collect/SortedSetMultimap",
            "<TK;TV;>;",
            "Ljava/lang/Object;",
            ")",
            "Lorg/roboguice/shaded/goole/common/collect/SortedSetMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 776
    .local p0, "multimap":Lorg/roboguice/shaded/goole/common/collect/SortedSetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/SortedSetMultimap<TK;TV;>;"
    instance-of v0, p0, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedSortedSetMultimap;

    if-eqz v0, :cond_0

    .line 779
    .end local p0    # "multimap":Lorg/roboguice/shaded/goole/common/collect/SortedSetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/SortedSetMultimap<TK;TV;>;"
    :goto_0
    return-object p0

    .restart local p0    # "multimap":Lorg/roboguice/shaded/goole/common/collect/SortedSetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/SortedSetMultimap<TK;TV;>;"
    :cond_0
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedSortedSetMultimap;

    invoke-direct {v0, p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedSortedSetMultimap;-><init>(Lorg/roboguice/shaded/goole/common/collect/SortedSetMultimap;Ljava/lang/Object;)V

    move-object p0, v0

    goto :goto_0
.end method

.method private static typePreservingCollection(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .param p1, "mutex"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TE;>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 818
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    instance-of v0, p0, Ljava/util/SortedSet;

    if-eqz v0, :cond_0

    .line 819
    check-cast p0, Ljava/util/SortedSet;

    .end local p0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Synchronized;->sortedSet(Ljava/util/SortedSet;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    .line 827
    :goto_0
    return-object v0

    .line 821
    .restart local p0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    :cond_0
    instance-of v0, p0, Ljava/util/Set;

    if-eqz v0, :cond_1

    .line 822
    check-cast p0, Ljava/util/Set;

    .end local p0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Synchronized;->set(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    .line 824
    .restart local p0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    :cond_1
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_2

    .line 825
    check-cast p0, Ljava/util/List;

    .end local p0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Synchronized;->list(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 827
    .restart local p0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    :cond_2
    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Synchronized;->collection(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    goto :goto_0
.end method

.method private static typePreservingSet(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .param p1, "mutex"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<TE;>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 832
    .local p0, "set":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    instance-of v0, p0, Ljava/util/SortedSet;

    if-eqz v0, :cond_0

    .line 833
    check-cast p0, Ljava/util/SortedSet;

    .end local p0    # "set":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Synchronized;->sortedSet(Ljava/util/SortedSet;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    .line 835
    :goto_0
    return-object v0

    .restart local p0    # "set":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    :cond_0
    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Synchronized;->set(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    goto :goto_0
.end method

.class Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap;
.super Lorg/roboguice/shaded/goole/common/collect/AbstractNavigableMap;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/Maps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FilteredEntryNavigableMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/roboguice/shaded/goole/common/collect/AbstractNavigableMap",
        "<TK;TV;>;"
    }
.end annotation

.annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
    value = "NavigableMap"
.end annotation


# instance fields
.field private final entryPredicate:Lorg/roboguice/shaded/goole/common/base/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/base/Predicate",
            "<-",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private final filteredDelegate:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private final unfiltered:Ljava/util/NavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/NavigableMap;Lorg/roboguice/shaded/goole/common/base/Predicate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;",
            "Lorg/roboguice/shaded/goole/common/base/Predicate",
            "<-",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 2894
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap;, "Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap<TK;TV;>;"
    .local p1, "unfiltered":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<TK;TV;>;"
    .local p2, "entryPredicate":Lorg/roboguice/shaded/goole/common/base/Predicate;, "Lorg/roboguice/shaded/goole/common/base/Predicate<-Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/collect/AbstractNavigableMap;-><init>()V

    .line 2895
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/NavigableMap;

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap;->unfiltered:Ljava/util/NavigableMap;

    .line 2896
    iput-object p2, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap;->entryPredicate:Lorg/roboguice/shaded/goole/common/base/Predicate;

    .line 2897
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap;

    invoke-direct {v0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap;-><init>(Ljava/util/Map;Lorg/roboguice/shaded/goole/common/base/Predicate;)V

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap;->filteredDelegate:Ljava/util/Map;

    .line 2898
    return-void
.end method

.method static synthetic access$600(Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap;)Lorg/roboguice/shaded/goole/common/base/Predicate;
    .locals 1
    .param p0, "x0"    # Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap;

    .prologue
    .line 2882
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap;->entryPredicate:Lorg/roboguice/shaded/goole/common/base/Predicate;

    return-object v0
.end method

.method static synthetic access$700(Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap;)Ljava/util/NavigableMap;
    .locals 1
    .param p0, "x0"    # Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap;

    .prologue
    .line 2882
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap;->unfiltered:Ljava/util/NavigableMap;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 2970
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap;, "Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap<TK;TV;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap;->filteredDelegate:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 2971
    return-void
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TK;>;"
        }
    .end annotation

    .prologue
    .line 2902
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap;, "Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap<TK;TV;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap;->unfiltered:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 2950
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap;, "Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap<TK;TV;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap;->filteredDelegate:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method descendingEntryIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 2934
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap;, "Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap<TK;TV;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap;->unfiltered:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap;->entryPredicate:Lorg/roboguice/shaded/goole/common/base/Predicate;

    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/collect/Iterators;->filter(Ljava/util/Iterator;Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public descendingMap()Ljava/util/NavigableMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2990
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap;, "Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap<TK;TV;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap;->unfiltered:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v0

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap;->entryPredicate:Lorg/roboguice/shaded/goole/common/base/Predicate;

    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->filterEntries(Ljava/util/NavigableMap;Lorg/roboguice/shaded/goole/common/base/Predicate;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method entryIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 2929
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap;, "Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap<TK;TV;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap;->unfiltered:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap;->entryPredicate:Lorg/roboguice/shaded/goole/common/base/Predicate;

    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/collect/Iterators;->filter(Ljava/util/Iterator;Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 2975
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap;, "Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap<TK;TV;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap;->filteredDelegate:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 2945
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap;, "Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap<TK;TV;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap;->filteredDelegate:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 2
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3002
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap;, "Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap<TK;TV;>;"
    .local p1, "toKey":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap;->unfiltered:Ljava/util/NavigableMap;

    invoke-interface {v0, p1, p2}, Ljava/util/NavigableMap;->headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap;->entryPredicate:Lorg/roboguice/shaded/goole/common/base/Predicate;

    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->filterEntries(Ljava/util/NavigableMap;Lorg/roboguice/shaded/goole/common/base/Predicate;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public navigableKeySet()Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 2907
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap;, "Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap<TK;TV;>;"
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap$1;

    invoke-direct {v0, p0, p0}, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap$1;-><init>(Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap;Ljava/util/NavigableMap;)V

    return-object v0
.end method

.method public pollFirstEntry()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2980
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap;, "Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap<TK;TV;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap;->unfiltered:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap;->entryPredicate:Lorg/roboguice/shaded/goole/common/base/Predicate;

    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/collect/Iterables;->removeFirstMatching(Ljava/lang/Iterable;Lorg/roboguice/shaded/goole/common/base/Predicate;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0
.end method

.method public pollLastEntry()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2985
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap;, "Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap<TK;TV;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap;->unfiltered:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap;->entryPredicate:Lorg/roboguice/shaded/goole/common/base/Predicate;

    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/collect/Iterables;->removeFirstMatching(Ljava/lang/Iterable;Lorg/roboguice/shaded/goole/common/base/Predicate;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 2955
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap;, "Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap;->filteredDelegate:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 2965
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap;, "Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap;->filteredDelegate:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 2966
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 2960
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap;, "Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap<TK;TV;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap;->filteredDelegate:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 2939
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap;, "Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap<TK;TV;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap;->filteredDelegate:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 2
    .param p2, "fromInclusive"    # Z
    .param p4, "toInclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ZTK;Z)",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2996
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap;, "Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    .local p3, "toKey":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap;->unfiltered:Ljava/util/NavigableMap;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/util/NavigableMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap;->entryPredicate:Lorg/roboguice/shaded/goole/common/base/Predicate;

    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->filterEntries(Ljava/util/NavigableMap;Lorg/roboguice/shaded/goole/common/base/Predicate;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 2
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3007
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap;, "Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap;->unfiltered:Ljava/util/NavigableMap;

    invoke-interface {v0, p1, p2}, Ljava/util/NavigableMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap;->entryPredicate:Lorg/roboguice/shaded/goole/common/base/Predicate;

    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->filterEntries(Ljava/util/NavigableMap;Lorg/roboguice/shaded/goole/common/base/Predicate;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 2924
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap;, "Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap<TK;TV;>;"
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredMapValues;

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap;->unfiltered:Ljava/util/NavigableMap;

    iget-object v2, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap;->entryPredicate:Lorg/roboguice/shaded/goole/common/base/Predicate;

    invoke-direct {v0, p0, v1, v2}, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredMapValues;-><init>(Ljava/util/Map;Ljava/util/Map;Lorg/roboguice/shaded/goole/common/base/Predicate;)V

    return-object v0
.end method

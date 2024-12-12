.class final Lorg/roboguice/shaded/goole/common/collect/EmptyImmutableSortedMap;
.super Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;
.source "EmptyImmutableSortedMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap",
        "<TK;TV;>;"
    }
.end annotation

.annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtCompatible;
    emulated = true
.end annotation


# instance fields
.field private final transient keySet:Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet",
            "<TK;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TK;>;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/EmptyImmutableSortedMap;, "Lorg/roboguice/shaded/goole/common/collect/EmptyImmutableSortedMap<TK;TV;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;-><init>()V

    .line 37
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;->emptySet(Ljava/util/Comparator;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;

    move-result-object v0

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/EmptyImmutableSortedMap;->keySet:Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;

    .line 38
    return-void
.end method

.method constructor <init>(Ljava/util/Comparator;Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TK;>;",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/EmptyImmutableSortedMap;, "Lorg/roboguice/shaded/goole/common/collect/EmptyImmutableSortedMap<TK;TV;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    .local p2, "descendingMap":Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-direct {p0, p2}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;-><init>(Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;)V

    .line 43
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;->emptySet(Ljava/util/Comparator;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;

    move-result-object v0

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/EmptyImmutableSortedMap;->keySet:Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;

    .line 44
    return-void
.end method


# virtual methods
.method public asMultimap()Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 93
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/EmptyImmutableSortedMap;, "Lorg/roboguice/shaded/goole/common/collect/EmptyImmutableSortedMap<TK;TV;>;"
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap;->of()Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap;

    move-result-object v0

    return-object v0
.end method

.method createDescendingMap()Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 110
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/EmptyImmutableSortedMap;, "Lorg/roboguice/shaded/goole/common/collect/EmptyImmutableSortedMap<TK;TV;>;"
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/EmptyImmutableSortedMap;

    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/EmptyImmutableSortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v1}, Lorg/roboguice/shaded/goole/common/collect/Ordering;->from(Ljava/util/Comparator;)Lorg/roboguice/shaded/goole/common/collect/Ordering;

    move-result-object v1

    invoke-virtual {v1}, Lorg/roboguice/shaded/goole/common/collect/Ordering;->reverse()Lorg/roboguice/shaded/goole/common/collect/Ordering;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/roboguice/shaded/goole/common/collect/EmptyImmutableSortedMap;-><init>(Ljava/util/Comparator;Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;)V

    return-object v0
.end method

.method createEntrySet()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSet",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 88
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/EmptyImmutableSortedMap;, "Lorg/roboguice/shaded/goole/common/collect/EmptyImmutableSortedMap<TK;TV;>;"
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "should never be called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public bridge synthetic entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 31
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/EmptyImmutableSortedMap;, "Lorg/roboguice/shaded/goole/common/collect/EmptyImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/EmptyImmutableSortedMap;->entrySet()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public entrySet()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSet",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 83
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/EmptyImmutableSortedMap;, "Lorg/roboguice/shaded/goole/common/collect/EmptyImmutableSortedMap<TK;TV;>;"
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;->of()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

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

    .prologue
    .line 48
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/EmptyImmutableSortedMap;, "Lorg/roboguice/shaded/goole/common/collect/EmptyImmutableSortedMap<TK;TV;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Z

    .prologue
    .line 31
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/EmptyImmutableSortedMap;, "Lorg/roboguice/shaded/goole/common/collect/EmptyImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/EmptyImmutableSortedMap;->headMap(Ljava/lang/Object;Z)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public headMap(Ljava/lang/Object;Z)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;
    .locals 0
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 98
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/EmptyImmutableSortedMap;, "Lorg/roboguice/shaded/goole/common/collect/EmptyImmutableSortedMap<TK;TV;>;"
    .local p1, "toKey":Ljava/lang/Object;, "TK;"
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    return-object p0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 63
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/EmptyImmutableSortedMap;, "Lorg/roboguice/shaded/goole/common/collect/EmptyImmutableSortedMap<TK;TV;>;"
    const/4 v0, 0x1

    return v0
.end method

.method isPartialView()Z
    .locals 1

    .prologue
    .line 78
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/EmptyImmutableSortedMap;, "Lorg/roboguice/shaded/goole/common/collect/EmptyImmutableSortedMap<TK;TV;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 31
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/EmptyImmutableSortedMap;, "Lorg/roboguice/shaded/goole/common/collect/EmptyImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/EmptyImmutableSortedMap;->keySet()Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic keySet()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;
    .locals 1

    .prologue
    .line 31
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/EmptyImmutableSortedMap;, "Lorg/roboguice/shaded/goole/common/collect/EmptyImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/EmptyImmutableSortedMap;->keySet()Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public keySet()Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/EmptyImmutableSortedMap;, "Lorg/roboguice/shaded/goole/common/collect/EmptyImmutableSortedMap<TK;TV;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/EmptyImmutableSortedMap;->keySet:Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 58
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/EmptyImmutableSortedMap;, "Lorg/roboguice/shaded/goole/common/collect/EmptyImmutableSortedMap<TK;TV;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Z

    .prologue
    .line 31
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/EmptyImmutableSortedMap;, "Lorg/roboguice/shaded/goole/common/collect/EmptyImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/EmptyImmutableSortedMap;->tailMap(Ljava/lang/Object;Z)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;Z)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;
    .locals 0
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 104
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/EmptyImmutableSortedMap;, "Lorg/roboguice/shaded/goole/common/collect/EmptyImmutableSortedMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/EmptyImmutableSortedMap;, "Lorg/roboguice/shaded/goole/common/collect/EmptyImmutableSortedMap<TK;TV;>;"
    const-string v0, "{}"

    return-object v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 31
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/EmptyImmutableSortedMap;, "Lorg/roboguice/shaded/goole/common/collect/EmptyImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/EmptyImmutableSortedMap;->values()Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;

    move-result-object v0

    return-object v0
.end method

.method public values()Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 68
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/EmptyImmutableSortedMap;, "Lorg/roboguice/shaded/goole/common/collect/EmptyImmutableSortedMap<TK;TV;>;"
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->of()Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

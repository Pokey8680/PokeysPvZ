.class final Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap;
.super Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;
.source "RegularImmutableSortedMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap$1;,
        Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap$EntrySet;
    }
.end annotation

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
.field private final transient keySet:Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedSet",
            "<TK;>;"
        }
    .end annotation
.end field

.field private final transient valueList:Lorg/roboguice/shaded/goole/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableList",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedSet;Lorg/roboguice/shaded/goole/common/collect/ImmutableList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedSet",
            "<TK;>;",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableList",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap;, "Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap<TK;TV;>;"
    .local p1, "keySet":Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedSet;, "Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedSet<TK;>;"
    .local p2, "valueList":Lorg/roboguice/shaded/goole/common/collect/ImmutableList;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableList<TV;>;"
    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;-><init>()V

    .line 36
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap;->keySet:Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedSet;

    .line 37
    iput-object p2, p0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap;->valueList:Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    .line 38
    return-void
.end method

.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedSet;Lorg/roboguice/shaded/goole/common/collect/ImmutableList;Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedSet",
            "<TK;>;",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableList",
            "<TV;>;",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap;, "Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap<TK;TV;>;"
    .local p1, "keySet":Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedSet;, "Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedSet<TK;>;"
    .local p2, "valueList":Lorg/roboguice/shaded/goole/common/collect/ImmutableList;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableList<TV;>;"
    .local p3, "descendingMap":Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-direct {p0, p3}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;-><init>(Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;)V

    .line 45
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap;->keySet:Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedSet;

    .line 46
    iput-object p2, p0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap;->valueList:Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    .line 47
    return-void
.end method

.method static synthetic access$100(Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap;)Lorg/roboguice/shaded/goole/common/collect/ImmutableList;
    .locals 1
    .param p0, "x0"    # Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap;

    .prologue
    .line 31
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap;->valueList:Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    return-object v0
.end method

.method private getSubMap(II)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;
    .locals 2
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 101
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap;, "Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap<TK;TV;>;"
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap;->size()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 106
    .end local p0    # "this":Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap;, "Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap<TK;TV;>;"
    :goto_0
    return-object p0

    .line 103
    .restart local p0    # "this":Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap;, "Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap<TK;TV;>;"
    :cond_0
    if-ne p1, p2, :cond_1

    .line 104
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap;->emptyMap(Ljava/util/Comparator;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;

    move-result-object p0

    goto :goto_0

    .line 106
    :cond_1
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap;->keySet:Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedSet;

    invoke-virtual {v0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedSet;->getSubSet(II)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;

    move-result-object v0

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap;->valueList:Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    invoke-virtual {v1, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->subList(II)Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap;->from(Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;Lorg/roboguice/shaded/goole/common/collect/ImmutableList;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;

    move-result-object p0

    goto :goto_0
.end method


# virtual methods
.method createDescendingMap()Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 124
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap;, "Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap<TK;TV;>;"
    new-instance v1, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap;

    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap;->keySet:Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedSet;

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedSet;->descendingSet()Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;

    move-result-object v0

    check-cast v0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedSet;

    iget-object v2, p0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap;->valueList:Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    invoke-virtual {v2}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->reverse()Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    move-result-object v2

    invoke-direct {v1, v0, v2, p0}, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap;-><init>(Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedSet;Lorg/roboguice/shaded/goole/common/collect/ImmutableList;Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;)V

    return-object v1
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
    .line 51
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap;, "Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap<TK;TV;>;"
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap$EntrySet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap$EntrySet;-><init>(Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap;Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap$1;)V

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
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
    .line 96
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap;, "Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap<TK;TV;>;"
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap;->keySet:Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedSet;

    invoke-virtual {v1, p1}, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedSet;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 97
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap;->valueList:Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    invoke-virtual {v1, v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public bridge synthetic headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Z

    .prologue
    .line 29
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap;, "Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap;->headMap(Ljava/lang/Object;Z)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public headMap(Ljava/lang/Object;Z)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;
    .locals 3
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 114
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap;, "Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap<TK;TV;>;"
    .local p1, "toKey":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap;->keySet:Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedSet;

    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedSet;->headIndex(Ljava/lang/Object;Z)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap;->getSubMap(II)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 29
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap;, "Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap;->keySet()Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic keySet()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;
    .locals 1

    .prologue
    .line 29
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap;, "Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap;->keySet()Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;

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
    .line 86
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap;, "Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap<TK;TV;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap;->keySet:Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedSet;

    return-object v0
.end method

.method public bridge synthetic tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Z

    .prologue
    .line 29
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap;, "Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap;->tailMap(Ljava/lang/Object;Z)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;Z)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;
    .locals 2
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 119
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap;, "Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap;->keySet:Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedSet;

    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedSet;->tailIndex(Ljava/lang/Object;Z)I

    move-result v0

    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap;->size()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap;->getSubMap(II)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 29
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap;, "Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap;->values()Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;

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
    .line 91
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap;, "Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap<TK;TV;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap;->valueList:Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    return-object v0
.end method

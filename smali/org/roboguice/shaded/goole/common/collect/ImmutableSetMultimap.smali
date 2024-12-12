.class public Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap;
.super Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;
.source "ImmutableSetMultimap.java"

# interfaces
.implements Lorg/roboguice/shaded/goole/common/collect/SetMultimap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap$EntrySet;,
        Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap$Builder;,
        Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap$BuilderMultimap;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap",
        "<TK;TV;>;",
        "Lorg/roboguice/shaded/goole/common/collect/SetMultimap",
        "<TK;TV;>;"
    }
.end annotation

.annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtCompatible;
    emulated = true
    serializable = true
.end annotation


# static fields
.field private static final serialVersionUID:J
    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "not needed in emulated source."
    .end annotation
.end field


# instance fields
.field private final transient emptySet:Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSet",
            "<TV;>;"
        }
    .end annotation
.end field

.field private transient entries:Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSet",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private transient inverse:Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap",
            "<TV;TK;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;ILjava/util/Comparator;)V
    .locals 1
    .param p2, "size"    # I
    .param p3    # Ljava/util/Comparator;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMap",
            "<TK;",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSet",
            "<TV;>;>;I",
            "Ljava/util/Comparator",
            "<-TV;>;)V"
        }
    .end annotation

    .prologue
    .line 345
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap<TK;TV;>;"
    .local p1, "map":Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMap<TK;Lorg/roboguice/shaded/goole/common/collect/ImmutableSet<TV;>;>;"
    .local p3, "valueComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TV;>;"
    invoke-direct {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;-><init>(Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;I)V

    .line 346
    invoke-static {p3}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap;->emptySet(Ljava/util/Comparator;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v0

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap;->emptySet:Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    .line 347
    return-void
.end method

.method static synthetic access$000(Lorg/roboguice/shaded/goole/common/collect/Multimap;Ljava/util/Comparator;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap;
    .locals 1
    .param p0, "x0"    # Lorg/roboguice/shaded/goole/common/collect/Multimap;
    .param p1, "x1"    # Ljava/util/Comparator;

    .prologue
    .line 65
    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap;->copyOf(Lorg/roboguice/shaded/goole/common/collect/Multimap;Ljava/util/Comparator;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap;

    move-result-object v0

    return-object v0
.end method

.method public static builder()Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap$Builder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 148
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap$Builder;

    invoke-direct {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap$Builder;-><init>()V

    return-object v0
.end method

.method public static copyOf(Lorg/roboguice/shaded/goole/common/collect/Multimap;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/collect/Multimap",
            "<+TK;+TV;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 299
    .local p0, "multimap":Lorg/roboguice/shaded/goole/common/collect/Multimap;, "Lorg/roboguice/shaded/goole/common/collect/Multimap<+TK;+TV;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap;->copyOf(Lorg/roboguice/shaded/goole/common/collect/Multimap;Ljava/util/Comparator;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap;

    move-result-object v0

    return-object v0
.end method

.method private static copyOf(Lorg/roboguice/shaded/goole/common/collect/Multimap;Ljava/util/Comparator;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/collect/Multimap",
            "<+TK;+TV;>;",
            "Ljava/util/Comparator",
            "<-TV;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 305
    .local p0, "multimap":Lorg/roboguice/shaded/goole/common/collect/Multimap;, "Lorg/roboguice/shaded/goole/common/collect/Multimap<+TK;+TV;>;"
    .local p1, "valueComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TV;>;"
    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    invoke-interface {p0}, Lorg/roboguice/shaded/goole/common/collect/Multimap;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    if-nez p1, :cond_1

    .line 307
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap;->of()Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap;

    move-result-object v4

    .line 333
    :cond_0
    :goto_0
    return-object v4

    .line 310
    :cond_1
    instance-of v8, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap;

    if-eqz v8, :cond_2

    move-object v4, p0

    .line 312
    check-cast v4, Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap;

    .line 314
    .local v4, "kvMultimap":Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap<TK;TV;>;"
    invoke-virtual {v4}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap;->isPartialView()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 319
    .end local v4    # "kvMultimap":Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap<TK;TV;>;"
    :cond_2
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;->builder()Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 320
    .local v0, "builder":Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder<TK;Lorg/roboguice/shaded/goole/common/collect/ImmutableSet<TV;>;>;"
    const/4 v6, 0x0

    .line 323
    .local v6, "size":I
    invoke-interface {p0}, Lorg/roboguice/shaded/goole/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 324
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+Ljava/util/Collection<+TV;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 325
    .local v3, "key":Ljava/lang/Object;, "TK;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Collection;

    .line 326
    .local v7, "values":Ljava/util/Collection;, "Ljava/util/Collection<+TV;>;"
    invoke-static {p1, v7}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap;->valueSet(Ljava/util/Comparator;Ljava/util/Collection;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v5

    .line 327
    .local v5, "set":Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSet<TV;>;"
    invoke-virtual {v5}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    .line 328
    invoke-virtual {v0, v3, v5}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder;

    .line 329
    invoke-virtual {v5}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;->size()I

    move-result v8

    add-int/2addr v6, v8

    goto :goto_1

    .line 333
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+Ljava/util/Collection<+TV;>;>;"
    .end local v3    # "key":Ljava/lang/Object;, "TK;"
    .end local v5    # "set":Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSet<TV;>;"
    .end local v7    # "values":Ljava/util/Collection;, "Ljava/util/Collection<+TV;>;"
    :cond_4
    new-instance v4, Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap;

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder;->build()Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;

    move-result-object v8

    invoke-direct {v4, v8, v6, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap;-><init>(Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;ILjava/util/Comparator;)V

    goto :goto_0
.end method

.method private static emptySet(Ljava/util/Comparator;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;
    .locals 1
    .param p0    # Ljava/util/Comparator;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<-TV;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSet",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 467
    .local p0, "valueComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TV;>;"
    if-nez p0, :cond_0

    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;->of()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;->emptySet(Ljava/util/Comparator;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;

    move-result-object v0

    goto :goto_0
.end method

.method private invert()Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap",
            "<TV;TK;>;"
        }
    .end annotation

    .prologue
    .line 381
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap<TK;TV;>;"
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap;->builder()Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap$Builder;

    move-result-object v0

    .line 382
    .local v0, "builder":Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap$Builder;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap$Builder<TV;TK;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap;->entries()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v4

    invoke-virtual {v4}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 383
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap$Builder;

    goto :goto_0

    .line 385
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_0
    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap$Builder;->build()Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap;

    move-result-object v3

    .line 386
    .local v3, "invertedMultimap":Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap<TV;TK;>;"
    iput-object p0, v3, Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap;->inverse:Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap;

    .line 387
    return-object v3
.end method

.method public static of()Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 73
    sget-object v0, Lorg/roboguice/shaded/goole/common/collect/EmptyImmutableSetMultimap;->INSTANCE:Lorg/roboguice/shaded/goole/common/collect/EmptyImmutableSetMultimap;

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 80
    .local p0, "k1":Ljava/lang/Object;, "TK;"
    .local p1, "v1":Ljava/lang/Object;, "TV;"
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap;->builder()Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap$Builder;

    move-result-object v0

    .line 81
    .local v0, "builder":Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap$Builder;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap$Builder<TK;TV;>;"
    invoke-virtual {v0, p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap$Builder;

    .line 82
    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap$Builder;->build()Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap;

    move-result-object v1

    return-object v1
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 91
    .local p0, "k1":Ljava/lang/Object;, "TK;"
    .local p1, "v1":Ljava/lang/Object;, "TV;"
    .local p2, "k2":Ljava/lang/Object;, "TK;"
    .local p3, "v2":Ljava/lang/Object;, "TV;"
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap;->builder()Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap$Builder;

    move-result-object v0

    .line 92
    .local v0, "builder":Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap$Builder;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap$Builder<TK;TV;>;"
    invoke-virtual {v0, p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap$Builder;

    .line 93
    invoke-virtual {v0, p2, p3}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap$Builder;

    .line 94
    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap$Builder;->build()Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap;

    move-result-object v1

    return-object v1
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;TK;TV;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 104
    .local p0, "k1":Ljava/lang/Object;, "TK;"
    .local p1, "v1":Ljava/lang/Object;, "TV;"
    .local p2, "k2":Ljava/lang/Object;, "TK;"
    .local p3, "v2":Ljava/lang/Object;, "TV;"
    .local p4, "k3":Ljava/lang/Object;, "TK;"
    .local p5, "v3":Ljava/lang/Object;, "TV;"
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap;->builder()Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap$Builder;

    move-result-object v0

    .line 105
    .local v0, "builder":Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap$Builder;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap$Builder<TK;TV;>;"
    invoke-virtual {v0, p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap$Builder;

    .line 106
    invoke-virtual {v0, p2, p3}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap$Builder;

    .line 107
    invoke-virtual {v0, p4, p5}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap$Builder;

    .line 108
    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap$Builder;->build()Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap;

    move-result-object v1

    return-object v1
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;TK;TV;TK;TV;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 118
    .local p0, "k1":Ljava/lang/Object;, "TK;"
    .local p1, "v1":Ljava/lang/Object;, "TV;"
    .local p2, "k2":Ljava/lang/Object;, "TK;"
    .local p3, "v2":Ljava/lang/Object;, "TV;"
    .local p4, "k3":Ljava/lang/Object;, "TK;"
    .local p5, "v3":Ljava/lang/Object;, "TV;"
    .local p6, "k4":Ljava/lang/Object;, "TK;"
    .local p7, "v4":Ljava/lang/Object;, "TV;"
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap;->builder()Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap$Builder;

    move-result-object v0

    .line 119
    .local v0, "builder":Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap$Builder;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap$Builder<TK;TV;>;"
    invoke-virtual {v0, p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap$Builder;

    .line 120
    invoke-virtual {v0, p2, p3}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap$Builder;

    .line 121
    invoke-virtual {v0, p4, p5}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap$Builder;

    .line 122
    invoke-virtual {v0, p6, p7}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap$Builder;

    .line 123
    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap$Builder;->build()Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap;

    move-result-object v1

    return-object v1
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 133
    .local p0, "k1":Ljava/lang/Object;, "TK;"
    .local p1, "v1":Ljava/lang/Object;, "TV;"
    .local p2, "k2":Ljava/lang/Object;, "TK;"
    .local p3, "v2":Ljava/lang/Object;, "TV;"
    .local p4, "k3":Ljava/lang/Object;, "TK;"
    .local p5, "v3":Ljava/lang/Object;, "TV;"
    .local p6, "k4":Ljava/lang/Object;, "TK;"
    .local p7, "v4":Ljava/lang/Object;, "TV;"
    .local p8, "k5":Ljava/lang/Object;, "TK;"
    .local p9, "v5":Ljava/lang/Object;, "TV;"
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap;->builder()Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap$Builder;

    move-result-object v0

    .line 134
    .local v0, "builder":Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap$Builder;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap$Builder<TK;TV;>;"
    invoke-virtual {v0, p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap$Builder;

    .line 135
    invoke-virtual {v0, p2, p3}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap$Builder;

    .line 136
    invoke-virtual {v0, p4, p5}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap$Builder;

    .line 137
    invoke-virtual {v0, p6, p7}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap$Builder;

    .line 138
    invoke-virtual {v0, p8, p9}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap$Builder;

    .line 139
    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap$Builder;->build()Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap;

    move-result-object v1

    return-object v1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 15
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "java.io.ObjectInputStream"
    .end annotation

    .prologue
    .line 494
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap<TK;TV;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 495
    invoke-virtual/range {p1 .. p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Comparator;

    .line 497
    .local v9, "valueComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/lang/Object;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v6

    .line 498
    .local v6, "keyCount":I
    if-gez v6, :cond_0

    .line 499
    new-instance v12, Ljava/io/InvalidObjectException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Invalid key count "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 501
    :cond_0
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;->builder()Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder;

    move-result-object v1

    .line 503
    .local v1, "builder":Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder<Ljava/lang/Object;Lorg/roboguice/shaded/goole/common/collect/ImmutableSet<Ljava/lang/Object;>;>;"
    const/4 v8, 0x0

    .line 505
    .local v8, "tmpSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v6, :cond_4

    .line 506
    invoke-virtual/range {p1 .. p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v5

    .line 507
    .local v5, "key":Ljava/lang/Object;
    invoke-virtual/range {p1 .. p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v10

    .line 508
    .local v10, "valueCount":I
    if-gtz v10, :cond_1

    .line 509
    new-instance v12, Ljava/io/InvalidObjectException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Invalid value count "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 512
    :cond_1
    new-array v0, v10, [Ljava/lang/Object;

    .line 513
    .local v0, "array":[Ljava/lang/Object;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    if-ge v4, v10, :cond_2

    .line 514
    invoke-virtual/range {p1 .. p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v12

    aput-object v12, v0, v4

    .line 513
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 516
    :cond_2
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    invoke-static {v9, v12}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap;->valueSet(Ljava/util/Comparator;Ljava/util/Collection;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v11

    .line 517
    .local v11, "valueSet":Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSet<Ljava/lang/Object;>;"
    invoke-virtual {v11}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;->size()I

    move-result v12

    array-length v13, v0

    if-eq v12, v13, :cond_3

    .line 518
    new-instance v12, Ljava/io/InvalidObjectException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Duplicate key-value pairs exist for key "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 521
    :cond_3
    invoke-virtual {v1, v5, v11}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder;

    .line 522
    add-int/2addr v8, v10

    .line 505
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 527
    .end local v0    # "array":[Ljava/lang/Object;
    .end local v4    # "j":I
    .end local v5    # "key":Ljava/lang/Object;
    .end local v10    # "valueCount":I
    .end local v11    # "valueSet":Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSet<Ljava/lang/Object;>;"
    :cond_4
    :try_start_0
    invoke-virtual {v1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder;->build()Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 533
    .local v7, "tmpMap":Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMap<Ljava/lang/Object;Lorg/roboguice/shaded/goole/common/collect/ImmutableSet<Ljava/lang/Object;>;>;"
    sget-object v12, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$FieldSettersHolder;->MAP_FIELD_SETTER:Lorg/roboguice/shaded/goole/common/collect/Serialization$FieldSetter;

    invoke-virtual {v12, p0, v7}, Lorg/roboguice/shaded/goole/common/collect/Serialization$FieldSetter;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 534
    sget-object v12, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$FieldSettersHolder;->SIZE_FIELD_SETTER:Lorg/roboguice/shaded/goole/common/collect/Serialization$FieldSetter;

    invoke-virtual {v12, p0, v8}, Lorg/roboguice/shaded/goole/common/collect/Serialization$FieldSetter;->set(Ljava/lang/Object;I)V

    .line 535
    sget-object v12, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$FieldSettersHolder;->EMPTY_SET_FIELD_SETTER:Lorg/roboguice/shaded/goole/common/collect/Serialization$FieldSetter;

    invoke-static {v9}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap;->emptySet(Ljava/util/Comparator;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v13

    invoke-virtual {v12, p0, v13}, Lorg/roboguice/shaded/goole/common/collect/Serialization$FieldSetter;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 537
    return-void

    .line 528
    .end local v7    # "tmpMap":Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMap<Ljava/lang/Object;Lorg/roboguice/shaded/goole/common/collect/ImmutableSet<Ljava/lang/Object;>;>;"
    :catch_0
    move-exception v2

    .line 529
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    new-instance v12, Ljava/io/InvalidObjectException;

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v2}, Ljava/io/InvalidObjectException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v12

    check-cast v12, Ljava/io/InvalidObjectException;

    throw v12
.end method

.method private static valueSet(Ljava/util/Comparator;Ljava/util/Collection;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;
    .locals 1
    .param p0    # Ljava/util/Comparator;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<-TV;>;",
            "Ljava/util/Collection",
            "<+TV;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSet",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 460
    .local p0, "valueComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TV;>;"
    .local p1, "values":Ljava/util/Collection;, "Ljava/util/Collection<+TV;>;"
    if-nez p0, :cond_0

    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;->copyOf(Ljava/util/Collection;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;->copyOf(Ljava/util/Comparator;Ljava/util/Collection;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;

    move-result-object v0

    goto :goto_0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "java.io.ObjectOutputStream"
    .end annotation

    .prologue
    .line 478
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 479
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap;->valueComparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 480
    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Serialization;->writeMultimap(Lorg/roboguice/shaded/goole/common/collect/Multimap;Ljava/io/ObjectOutputStream;)V

    .line 481
    return-void
.end method


# virtual methods
.method public bridge synthetic entries()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 64
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap;->entries()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic entries()Ljava/util/Set;
    .locals 1

    .prologue
    .line 64
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap;->entries()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic entries()Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;
    .locals 1

    .prologue
    .line 64
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap;->entries()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public entries()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;
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
    .line 419
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap<TK;TV;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap;->entries:Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    .line 420
    .local v0, "result":Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSet<Ljava/util/Map$Entry<TK;TV;>;>;"
    if-nez v0, :cond_0

    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap$EntrySet;

    .end local v0    # "result":Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSet<Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-direct {v0, p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap$EntrySet;-><init>(Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap;)V

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap;->entries:Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 64
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap;->get(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 64
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap;->get(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 64
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap;->get(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSet",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 359
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap;->map:Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;

    invoke-virtual {v1, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    .line 360
    .local v0, "set":Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSet<TV;>;"
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap;->emptySet:Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/base/Objects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    return-object v1
.end method

.method public bridge synthetic inverse()Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;
    .locals 1

    .prologue
    .line 64
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap;->inverse()Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap;

    move-result-object v0

    return-object v0
.end method

.method public inverse()Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap",
            "<TV;TK;>;"
        }
    .end annotation

    .prologue
    .line 376
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap<TK;TV;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap;->inverse:Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap;

    .line 377
    .local v0, "result":Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap<TV;TK;>;"
    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap;->invert()Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap;

    move-result-object v0

    .end local v0    # "result":Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap<TV;TK;>;"
    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap;->inverse:Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 64
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap;->removeAll(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 64
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap;->removeAll(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 64
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap;->removeAll(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public removeAll(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSet",
            "<TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 397
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Iterable;

    .prologue
    .line 64
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Set;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Iterable;

    .prologue
    .line 64
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Iterable;

    .prologue
    .line 64
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable",
            "<+TV;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSet",
            "<TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 408
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method valueComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 484
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap<TK;TV;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap;->emptySet:Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    instance-of v0, v0, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap;->emptySet:Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    check-cast v0, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

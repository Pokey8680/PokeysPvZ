.class public abstract Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;
.super Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;
.source "ImmutableMultiset.java"

# interfaces
.implements Lorg/roboguice/shaded/goole/common/collect/Multiset;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$Builder;,
        Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$SerializedForm;,
        Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$EntrySetSerializedForm;,
        Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$EntrySet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection",
        "<TE;>;",
        "Lorg/roboguice/shaded/goole/common/collect/Multiset",
        "<TE;>;"
    }
.end annotation

.annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtCompatible;
    emulated = true
    serializable = true
.end annotation


# static fields
.field private static final EMPTY:Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private transient entrySet:Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSet",
            "<",
            "Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry",
            "<TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 55
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableMultiset;

    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;->of()Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableMultiset;-><init>(Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;I)V

    sput-object v0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;->EMPTY:Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 236
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset<TE;>;"
    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;-><init>()V

    return-void
.end method

.method public static builder()Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$Builder",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 466
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$Builder;

    invoke-direct {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$Builder;-><init>()V

    return-object v0
.end method

.method static copyFromEntries(Ljava/util/Collection;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+",
            "Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry",
            "<+TE;>;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 200
    .local p0, "entries":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry<+TE;>;>;"
    const-wide/16 v4, 0x0

    .line 201
    .local v4, "size":J
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;->builder()Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 202
    .local v0, "builder":Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder<TE;Ljava/lang/Integer;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;

    .line 203
    .local v2, "entry":Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;, "Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry<+TE;>;"
    invoke-interface {v2}, Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;->getCount()I

    move-result v1

    .line 204
    .local v1, "count":I
    if-lez v1, :cond_0

    .line 207
    invoke-interface {v2}, Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder;

    .line 208
    int-to-long v6, v1

    add-long/2addr v4, v6

    goto :goto_0

    .line 212
    .end local v1    # "count":I
    .end local v2    # "entry":Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;, "Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry<+TE;>;"
    :cond_1
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-nez v6, :cond_2

    .line 213
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;->of()Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;

    move-result-object v6

    .line 215
    :goto_1
    return-object v6

    :cond_2
    new-instance v6, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableMultiset;

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder;->build()Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;

    move-result-object v7

    invoke-static {v4, v5}, Lorg/roboguice/shaded/goole/common/primitives/Ints;->saturatedCast(J)I

    move-result v8

    invoke-direct {v6, v7, v8}, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableMultiset;-><init>(Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;I)V

    goto :goto_1
.end method

.method public static copyOf(Ljava/lang/Iterable;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TE;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 174
    .local p0, "elements":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TE;>;"
    instance-of v2, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;

    if-eqz v2, :cond_0

    move-object v1, p0

    .line 176
    check-cast v1, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;

    .line 177
    .local v1, "result":Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset<TE;>;"
    invoke-virtual {v1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;->isPartialView()Z

    move-result v2

    if-nez v2, :cond_0

    .line 186
    .end local v1    # "result":Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset<TE;>;"
    :goto_0
    return-object v1

    .line 182
    :cond_0
    instance-of v2, p0, Lorg/roboguice/shaded/goole/common/collect/Multiset;

    if-eqz v2, :cond_1

    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/collect/Multisets;->cast(Ljava/lang/Iterable;)Lorg/roboguice/shaded/goole/common/collect/Multiset;

    move-result-object v0

    .line 186
    .local v0, "multiset":Lorg/roboguice/shaded/goole/common/collect/Multiset;, "Lorg/roboguice/shaded/goole/common/collect/Multiset<+TE;>;"
    :goto_1
    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;->copyOfInternal(Lorg/roboguice/shaded/goole/common/collect/Multiset;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;

    move-result-object v1

    goto :goto_0

    .line 182
    .end local v0    # "multiset":Lorg/roboguice/shaded/goole/common/collect/Multiset;, "Lorg/roboguice/shaded/goole/common/collect/Multiset<+TE;>;"
    :cond_1
    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/collect/LinkedHashMultiset;->create(Ljava/lang/Iterable;)Lorg/roboguice/shaded/goole/common/collect/LinkedHashMultiset;

    move-result-object v0

    goto :goto_1
.end method

.method public static copyOf(Ljava/util/Iterator;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<+TE;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 231
    .local p0, "elements":Ljava/util/Iterator;, "Ljava/util/Iterator<+TE;>;"
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/LinkedHashMultiset;->create()Lorg/roboguice/shaded/goole/common/collect/LinkedHashMultiset;

    move-result-object v0

    .line 232
    .local v0, "multiset":Lorg/roboguice/shaded/goole/common/collect/Multiset;, "Lorg/roboguice/shaded/goole/common/collect/Multiset<TE;>;"
    invoke-static {v0, p0}, Lorg/roboguice/shaded/goole/common/collect/Iterators;->addAll(Ljava/util/Collection;Ljava/util/Iterator;)Z

    .line 233
    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;->copyOfInternal(Lorg/roboguice/shaded/goole/common/collect/Multiset;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;

    move-result-object v1

    return-object v1
.end method

.method public static copyOf([Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 152
    .local p0, "elements":[Ljava/lang/Object;, "[TE;"
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;->copyOf(Ljava/lang/Iterable;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;

    move-result-object v0

    return-object v0
.end method

.method private static copyOfInternal(Lorg/roboguice/shaded/goole/common/collect/Multiset;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/collect/Multiset",
            "<+TE;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 195
    .local p0, "multiset":Lorg/roboguice/shaded/goole/common/collect/Multiset;, "Lorg/roboguice/shaded/goole/common/collect/Multiset<+TE;>;"
    invoke-interface {p0}, Lorg/roboguice/shaded/goole/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;->copyFromEntries(Ljava/util/Collection;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;

    move-result-object v0

    return-object v0
.end method

.method private static varargs copyOfInternal([Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 190
    .local p0, "elements":[Ljava/lang/Object;, "[TE;"
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;->copyOf(Ljava/lang/Iterable;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;

    move-result-object v0

    return-object v0
.end method

.method private final createEntrySet()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSet",
            "<",
            "Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 351
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset<TE;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;->of()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$EntrySet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$EntrySet;-><init>(Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$1;)V

    goto :goto_0
.end method

.method public static of()Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 63
    sget-object v0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;->EMPTY:Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;

    return-object v0
.end method

.method public static of(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 74
    .local p0, "element":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;->copyOfInternal([Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 85
    .local p0, "e1":Ljava/lang/Object;, "TE;"
    .local p1, "e2":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;->copyOfInternal([Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 96
    .local p0, "e1":Ljava/lang/Object;, "TE;"
    .local p1, "e2":Ljava/lang/Object;, "TE;"
    .local p2, "e3":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;->copyOfInternal([Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;TE;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 107
    .local p0, "e1":Ljava/lang/Object;, "TE;"
    .local p1, "e2":Ljava/lang/Object;, "TE;"
    .local p2, "e3":Ljava/lang/Object;, "TE;"
    .local p3, "e4":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;->copyOfInternal([Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;TE;TE;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 118
    .local p0, "e1":Ljava/lang/Object;, "TE;"
    .local p1, "e2":Ljava/lang/Object;, "TE;"
    .local p2, "e3":Ljava/lang/Object;, "TE;"
    .local p3, "e4":Ljava/lang/Object;, "TE;"
    .local p4, "e5":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;->copyOfInternal([Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;

    move-result-object v0

    return-object v0
.end method

.method public static varargs of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;TE;TE;TE;[TE;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 130
    .local p0, "e1":Ljava/lang/Object;, "TE;"
    .local p1, "e2":Ljava/lang/Object;, "TE;"
    .local p2, "e3":Ljava/lang/Object;, "TE;"
    .local p3, "e4":Ljava/lang/Object;, "TE;"
    .local p4, "e5":Ljava/lang/Object;, "TE;"
    .local p5, "e6":Ljava/lang/Object;, "TE;"
    .local p6, "others":[Ljava/lang/Object;, "[TE;"
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$Builder;

    invoke-direct {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$Builder;-><init>()V

    invoke-virtual {v0, p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$Builder;->add(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$Builder;->add(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$Builder;->add(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$Builder;->add(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$Builder;

    move-result-object v0

    invoke-virtual {v0, p4}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$Builder;->add(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$Builder;

    move-result-object v0

    invoke-virtual {v0, p5}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$Builder;->add(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$Builder;

    move-result-object v0

    invoke-virtual {v0, p6}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$Builder;->add([Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$Builder;->build()Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final add(Ljava/lang/Object;I)I
    .locals 1
    .param p2, "occurrences"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 281
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 264
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset<TE;>;"
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;->count(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 269
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset<TE;>;"
    .local p1, "targets":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;->elementSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method copyIntoArray([Ljava/lang/Object;I)I
    .locals 4
    .param p1, "dst"    # [Ljava/lang/Object;
    .param p2, "offset"    # I
    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "not present in emulated superclass"
    .end annotation

    .prologue
    .line 323
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset<TE;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;->entrySet()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v2

    invoke-virtual {v2}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;

    .line 324
    .local v0, "entry":Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;, "Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry<TE;>;"
    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;->getCount()I

    move-result v2

    add-int/2addr v2, p2

    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, p2, v2, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 325
    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;->getCount()I

    move-result v2

    add-int/2addr p2, v2

    .line 326
    goto :goto_0

    .line 327
    .end local v0    # "entry":Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;, "Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry<TE;>;"
    :cond_0
    return p2
.end method

.method public bridge synthetic entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 49
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset<TE;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;->entrySet()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

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
            "Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 346
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset<TE;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;->entrySet:Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    .line 347
    .local v0, "es":Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSet<Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry<TE;>;>;"
    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;->createEntrySet()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v0

    .end local v0    # "es":Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSet<Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry<TE;>;>;"
    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;->entrySet:Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    :cond_0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 331
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset<TE;>;"
    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Multisets;->equalsImpl(Lorg/roboguice/shaded/goole/common/collect/Multiset;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method abstract getEntry(I)Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry",
            "<TE;>;"
        }
    .end annotation
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 335
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset<TE;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;->entrySet()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v0

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/Sets;->hashCodeImpl(Ljava/util/Set;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 49
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset<TE;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;->iterator()Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 239
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset<TE;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;->entrySet()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v1

    invoke-virtual {v1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;->iterator()Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator;

    move-result-object v0

    .line 240
    .local v0, "entryIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry<TE;>;>;"
    new-instance v1, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$1;

    invoke-direct {v1, p0, v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$1;-><init>(Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public final remove(Ljava/lang/Object;I)I
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;
    .param p2, "occurrences"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 293
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final setCount(Ljava/lang/Object;I)I
    .locals 1
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 305
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final setCount(Ljava/lang/Object;II)Z
    .locals 1
    .param p2, "oldCount"    # I
    .param p3, "newCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;II)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 317
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 339
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset<TE;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;->entrySet()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 458
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset<TE;>;"
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$SerializedForm;

    invoke-direct {v0, p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$SerializedForm;-><init>(Lorg/roboguice/shaded/goole/common/collect/Multiset;)V

    return-object v0
.end method

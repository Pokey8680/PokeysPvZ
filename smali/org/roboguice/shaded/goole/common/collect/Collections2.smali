.class public final Lorg/roboguice/shaded/goole/common/collect/Collections2;
.super Ljava/lang/Object;
.source "Collections2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/roboguice/shaded/goole/common/collect/Collections2$PermutationIterator;,
        Lorg/roboguice/shaded/goole/common/collect/Collections2$PermutationCollection;,
        Lorg/roboguice/shaded/goole/common/collect/Collections2$OrderedPermutationIterator;,
        Lorg/roboguice/shaded/goole/common/collect/Collections2$OrderedPermutationCollection;,
        Lorg/roboguice/shaded/goole/common/collect/Collections2$TransformedCollection;,
        Lorg/roboguice/shaded/goole/common/collect/Collections2$FilteredCollection;
    }
.end annotation

.annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtCompatible;
.end annotation


# static fields
.field static final STANDARD_JOINER:Lorg/roboguice/shaded/goole/common/base/Joiner;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 323
    const-string v0, ", "

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/base/Joiner;->on(Ljava/lang/String;)Lorg/roboguice/shaded/goole/common/base/Joiner;

    move-result-object v0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Lorg/roboguice/shaded/goole/common/base/Joiner;->useForNull(Ljava/lang/String;)Lorg/roboguice/shaded/goole/common/base/Joiner;

    move-result-object v0

    sput-object v0, Lorg/roboguice/shaded/goole/common/collect/Collections2;->STANDARD_JOINER:Lorg/roboguice/shaded/goole/common/base/Joiner;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(J)Z
    .locals 2
    .param p0, "x0"    # J

    .prologue
    .line 56
    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Collections2;->isPositiveInt(J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Ljava/util/List;Ljava/util/List;)Z
    .locals 1
    .param p0, "x0"    # Ljava/util/List;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 56
    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Collections2;->isPermutation(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method static cast(Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<TT;>;)",
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 320
    .local p0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    check-cast p0, Ljava/util/Collection;

    .end local p0    # "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    return-object p0
.end method

.method static containsAllImpl(Ljava/util/Collection;Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 290
    .local p0, "self":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/base/Predicates;->in(Ljava/util/Collection;)Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/roboguice/shaded/goole/common/collect/Iterables;->all(Ljava/lang/Iterable;Lorg/roboguice/shaded/goole/common/base/Predicate;)Z

    move-result v0

    return v0
.end method

.method public static filter(Ljava/util/Collection;Lorg/roboguice/shaded/goole/common/base/Predicate;)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TE;>;",
            "Lorg/roboguice/shaded/goole/common/base/Predicate",
            "<-TE;>;)",
            "Ljava/util/Collection",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 91
    .local p0, "unfiltered":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    .local p1, "predicate":Lorg/roboguice/shaded/goole/common/base/Predicate;, "Lorg/roboguice/shaded/goole/common/base/Predicate<-TE;>;"
    instance-of v0, p0, Lorg/roboguice/shaded/goole/common/collect/Collections2$FilteredCollection;

    if-eqz v0, :cond_0

    .line 94
    check-cast p0, Lorg/roboguice/shaded/goole/common/collect/Collections2$FilteredCollection;

    .end local p0    # "unfiltered":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Collections2$FilteredCollection;->createCombined(Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/collect/Collections2$FilteredCollection;

    move-result-object v0

    .line 97
    :goto_0
    return-object v0

    .restart local p0    # "unfiltered":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    :cond_0
    new-instance v2, Lorg/roboguice/shaded/goole/common/collect/Collections2$FilteredCollection;

    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/roboguice/shaded/goole/common/base/Predicate;

    invoke-direct {v2, v0, v1}, Lorg/roboguice/shaded/goole/common/collect/Collections2$FilteredCollection;-><init>(Ljava/util/Collection;Lorg/roboguice/shaded/goole/common/base/Predicate;)V

    move-object v0, v2

    goto :goto_0
.end method

.method private static isPermutation(Ljava/util/List;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;",
            "Ljava/util/List",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 663
    .local p0, "first":Ljava/util/List;, "Ljava/util/List<*>;"
    .local p1, "second":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 664
    const/4 v2, 0x0

    .line 668
    :goto_0
    return v2

    .line 666
    :cond_0
    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/collect/HashMultiset;->create(Ljava/lang/Iterable;)Lorg/roboguice/shaded/goole/common/collect/HashMultiset;

    move-result-object v0

    .line 667
    .local v0, "firstMultiset":Lorg/roboguice/shaded/goole/common/collect/Multiset;, "Lorg/roboguice/shaded/goole/common/collect/Multiset<*>;"
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/collect/HashMultiset;->create(Ljava/lang/Iterable;)Lorg/roboguice/shaded/goole/common/collect/HashMultiset;

    move-result-object v1

    .line 668
    .local v1, "secondMultiset":Lorg/roboguice/shaded/goole/common/collect/Multiset;, "Lorg/roboguice/shaded/goole/common/collect/Multiset<*>;"
    invoke-interface {v0, v1}, Lorg/roboguice/shaded/goole/common/collect/Multiset;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method private static isPositiveInt(J)Z
    .locals 2
    .param p0, "n"    # J

    .prologue
    .line 672
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p0, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static newStringBuilderForCollection(I)Ljava/lang/StringBuilder;
    .locals 6
    .param p0, "size"    # I

    .prologue
    .line 312
    const-string v0, "size"

    invoke-static {p0, v0}, Lorg/roboguice/shaded/goole/common/collect/CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    int-to-long v2, p0

    const-wide/16 v4, 0x8

    mul-long/2addr v2, v4

    const-wide/32 v4, 0x40000000

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    return-object v0
.end method

.method public static orderedPermutations(Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable",
            "<-TE;>;>(",
            "Ljava/lang/Iterable",
            "<TE;>;)",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<TE;>;>;"
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/Beta;
    .end annotation

    .prologue
    .line 354
    .local p0, "elements":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TE;>;"
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Ordering;->natural()Lorg/roboguice/shaded/goole/common/collect/Ordering;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/roboguice/shaded/goole/common/collect/Collections2;->orderedPermutations(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static orderedPermutations(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<TE;>;",
            "Ljava/util/Comparator",
            "<-TE;>;)",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<TE;>;>;"
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/Beta;
    .end annotation

    .prologue
    .line 406
    .local p0, "elements":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TE;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Collections2$OrderedPermutationCollection;

    invoke-direct {v0, p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Collections2$OrderedPermutationCollection;-><init>(Ljava/lang/Iterable;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static permutations(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TE;>;)",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<TE;>;>;"
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/Beta;
    .end annotation

    .prologue
    .line 559
    .local p0, "elements":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Collections2$PermutationCollection;

    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/roboguice/shaded/goole/common/collect/Collections2$PermutationCollection;-><init>(Lorg/roboguice/shaded/goole/common/collect/ImmutableList;)V

    return-object v0
.end method

.method static safeContains(Ljava/util/Collection;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v1, 0x0

    .line 108
    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 114
    :goto_0
    return v1

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Ljava/lang/ClassCastException;
    goto :goto_0

    .line 113
    .end local v0    # "e":Ljava/lang/ClassCastException;
    :catch_1
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method static safeRemove(Ljava/util/Collection;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v1, 0x0

    .line 124
    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 130
    :goto_0
    return v1

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Ljava/lang/ClassCastException;
    goto :goto_0

    .line 129
    .end local v0    # "e":Ljava/lang/ClassCastException;
    :catch_1
    move-exception v0

    .line 130
    .local v0, "e":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method static toStringImpl(Ljava/util/Collection;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 297
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-static {v1}, Lorg/roboguice/shaded/goole/common/collect/Collections2;->newStringBuilderForCollection(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 299
    .local v0, "sb":Ljava/lang/StringBuilder;
    sget-object v1, Lorg/roboguice/shaded/goole/common/collect/Collections2;->STANDARD_JOINER:Lorg/roboguice/shaded/goole/common/base/Joiner;

    new-instance v2, Lorg/roboguice/shaded/goole/common/collect/Collections2$1;

    invoke-direct {v2, p0}, Lorg/roboguice/shaded/goole/common/collect/Collections2$1;-><init>(Ljava/util/Collection;)V

    invoke-static {p0, v2}, Lorg/roboguice/shaded/goole/common/collect/Iterables;->transform(Ljava/lang/Iterable;Lorg/roboguice/shaded/goole/common/base/Function;)Ljava/lang/Iterable;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/roboguice/shaded/goole/common/base/Joiner;->appendTo(Ljava/lang/StringBuilder;Ljava/lang/Iterable;)Ljava/lang/StringBuilder;

    .line 305
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static transform(Ljava/util/Collection;Lorg/roboguice/shaded/goole/common/base/Function;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TF;>;",
            "Lorg/roboguice/shaded/goole/common/base/Function",
            "<-TF;TT;>;)",
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 247
    .local p0, "fromCollection":Ljava/util/Collection;, "Ljava/util/Collection<TF;>;"
    .local p1, "function":Lorg/roboguice/shaded/goole/common/base/Function;, "Lorg/roboguice/shaded/goole/common/base/Function<-TF;TT;>;"
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Collections2$TransformedCollection;

    invoke-direct {v0, p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Collections2$TransformedCollection;-><init>(Ljava/util/Collection;Lorg/roboguice/shaded/goole/common/base/Function;)V

    return-object v0
.end method
.class Lorg/roboguice/shaded/goole/common/collect/Multimaps$CustomSortedSetMultimap;
.super Lorg/roboguice/shaded/goole/common/collect/AbstractSortedSetMultimap;
.source "Multimaps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/Multimaps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CustomSortedSetMultimap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/roboguice/shaded/goole/common/collect/AbstractSortedSetMultimap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J
    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "not needed in emulated source"
    .end annotation
.end field


# instance fields
.field transient factory:Lorg/roboguice/shaded/goole/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/base/Supplier",
            "<+",
            "Ljava/util/SortedSet",
            "<TV;>;>;"
        }
    .end annotation
.end field

.field transient valueComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;Lorg/roboguice/shaded/goole/common/base/Supplier;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;",
            "Lorg/roboguice/shaded/goole/common/base/Supplier",
            "<+",
            "Ljava/util/SortedSet",
            "<TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 360
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Multimaps$CustomSortedSetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/Multimaps$CustomSortedSetMultimap<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<TK;Ljava/util/Collection<TV;>;>;"
    .local p2, "factory":Lorg/roboguice/shaded/goole/common/base/Supplier;, "Lorg/roboguice/shaded/goole/common/base/Supplier<+Ljava/util/SortedSet<TV;>;>;"
    invoke-direct {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/AbstractSortedSetMultimap;-><init>(Ljava/util/Map;)V

    .line 361
    invoke-static {p2}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/roboguice/shaded/goole/common/base/Supplier;

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Multimaps$CustomSortedSetMultimap;->factory:Lorg/roboguice/shaded/goole/common/base/Supplier;

    .line 362
    invoke-interface {p2}, Lorg/roboguice/shaded/goole/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Multimaps$CustomSortedSetMultimap;->valueComparator:Ljava/util/Comparator;

    .line 363
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
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
    .line 385
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Multimaps$CustomSortedSetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/Multimaps$CustomSortedSetMultimap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 386
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/roboguice/shaded/goole/common/base/Supplier;

    iput-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/Multimaps$CustomSortedSetMultimap;->factory:Lorg/roboguice/shaded/goole/common/base/Supplier;

    .line 387
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/Multimaps$CustomSortedSetMultimap;->factory:Lorg/roboguice/shaded/goole/common/base/Supplier;

    invoke-interface {v1}, Lorg/roboguice/shaded/goole/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/SortedSet;

    invoke-interface {v1}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v1

    iput-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/Multimaps$CustomSortedSetMultimap;->valueComparator:Ljava/util/Comparator;

    .line 388
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 389
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;Ljava/util/Collection<TV;>;>;"
    invoke-virtual {p0, v0}, Lorg/roboguice/shaded/goole/common/collect/Multimaps$CustomSortedSetMultimap;->setMap(Ljava/util/Map;)V

    .line 390
    return-void
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
    .line 376
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Multimaps$CustomSortedSetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/Multimaps$CustomSortedSetMultimap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 377
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Multimaps$CustomSortedSetMultimap;->factory:Lorg/roboguice/shaded/goole/common/base/Supplier;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 378
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/Multimaps$CustomSortedSetMultimap;->backingMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 379
    return-void
.end method


# virtual methods
.method protected bridge synthetic createCollection()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 353
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Multimaps$CustomSortedSetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/Multimaps$CustomSortedSetMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/Multimaps$CustomSortedSetMultimap;->createCollection()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic createCollection()Ljava/util/Set;
    .locals 1

    .prologue
    .line 353
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Multimaps$CustomSortedSetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/Multimaps$CustomSortedSetMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/Multimaps$CustomSortedSetMultimap;->createCollection()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method protected createCollection()Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 366
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Multimaps$CustomSortedSetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/Multimaps$CustomSortedSetMultimap<TK;TV;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Multimaps$CustomSortedSetMultimap;->factory:Lorg/roboguice/shaded/goole/common/base/Supplier;

    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/SortedSet;

    return-object v0
.end method

.method public valueComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TV;>;"
        }
    .end annotation

    .prologue
    .line 370
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Multimaps$CustomSortedSetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/Multimaps$CustomSortedSetMultimap<TK;TV;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Multimaps$CustomSortedSetMultimap;->valueComparator:Ljava/util/Comparator;

    return-object v0
.end method

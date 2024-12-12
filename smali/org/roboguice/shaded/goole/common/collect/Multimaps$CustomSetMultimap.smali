.class Lorg/roboguice/shaded/goole/common/collect/Multimaps$CustomSetMultimap;
.super Lorg/roboguice/shaded/goole/common/collect/AbstractSetMultimap;
.source "Multimaps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/Multimaps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CustomSetMultimap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/roboguice/shaded/goole/common/collect/AbstractSetMultimap",
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
            "Ljava/util/Set",
            "<TV;>;>;"
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
            "Ljava/util/Set",
            "<TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 281
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Multimaps$CustomSetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/Multimaps$CustomSetMultimap<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<TK;Ljava/util/Collection<TV;>;>;"
    .local p2, "factory":Lorg/roboguice/shaded/goole/common/base/Supplier;, "Lorg/roboguice/shaded/goole/common/base/Supplier<+Ljava/util/Set<TV;>;>;"
    invoke-direct {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/AbstractSetMultimap;-><init>(Ljava/util/Map;)V

    .line 282
    invoke-static {p2}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/roboguice/shaded/goole/common/base/Supplier;

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Multimaps$CustomSetMultimap;->factory:Lorg/roboguice/shaded/goole/common/base/Supplier;

    .line 283
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
    .line 301
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Multimaps$CustomSetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/Multimaps$CustomSetMultimap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 302
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/roboguice/shaded/goole/common/base/Supplier;

    iput-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/Multimaps$CustomSetMultimap;->factory:Lorg/roboguice/shaded/goole/common/base/Supplier;

    .line 303
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 304
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;Ljava/util/Collection<TV;>;>;"
    invoke-virtual {p0, v0}, Lorg/roboguice/shaded/goole/common/collect/Multimaps$CustomSetMultimap;->setMap(Ljava/util/Map;)V

    .line 305
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
    .line 292
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Multimaps$CustomSetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/Multimaps$CustomSetMultimap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 293
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Multimaps$CustomSetMultimap;->factory:Lorg/roboguice/shaded/goole/common/base/Supplier;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 294
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/Multimaps$CustomSetMultimap;->backingMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 295
    return-void
.end method


# virtual methods
.method protected bridge synthetic createCollection()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 275
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Multimaps$CustomSetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/Multimaps$CustomSetMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/Multimaps$CustomSetMultimap;->createCollection()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected createCollection()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 286
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Multimaps$CustomSetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/Multimaps$CustomSetMultimap<TK;TV;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Multimaps$CustomSetMultimap;->factory:Lorg/roboguice/shaded/goole/common/base/Supplier;

    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

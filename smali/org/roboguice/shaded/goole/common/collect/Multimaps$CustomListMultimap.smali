.class Lorg/roboguice/shaded/goole/common/collect/Multimaps$CustomListMultimap;
.super Lorg/roboguice/shaded/goole/common/collect/AbstractListMultimap;
.source "Multimaps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/Multimaps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CustomListMultimap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/roboguice/shaded/goole/common/collect/AbstractListMultimap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J
    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "java serialization not supported"
    .end annotation
.end field


# instance fields
.field transient factory:Lorg/roboguice/shaded/goole/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/base/Supplier",
            "<+",
            "Ljava/util/List",
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
            "Ljava/util/List",
            "<TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 203
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Multimaps$CustomListMultimap;, "Lorg/roboguice/shaded/goole/common/collect/Multimaps$CustomListMultimap<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<TK;Ljava/util/Collection<TV;>;>;"
    .local p2, "factory":Lorg/roboguice/shaded/goole/common/base/Supplier;, "Lorg/roboguice/shaded/goole/common/base/Supplier<+Ljava/util/List<TV;>;>;"
    invoke-direct {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/AbstractListMultimap;-><init>(Ljava/util/Map;)V

    .line 204
    invoke-static {p2}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/roboguice/shaded/goole/common/base/Supplier;

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Multimaps$CustomListMultimap;->factory:Lorg/roboguice/shaded/goole/common/base/Supplier;

    .line 205
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
    .line 223
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Multimaps$CustomListMultimap;, "Lorg/roboguice/shaded/goole/common/collect/Multimaps$CustomListMultimap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 224
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/roboguice/shaded/goole/common/base/Supplier;

    iput-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/Multimaps$CustomListMultimap;->factory:Lorg/roboguice/shaded/goole/common/base/Supplier;

    .line 225
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 226
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;Ljava/util/Collection<TV;>;>;"
    invoke-virtual {p0, v0}, Lorg/roboguice/shaded/goole/common/collect/Multimaps$CustomListMultimap;->setMap(Ljava/util/Map;)V

    .line 227
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
    .line 214
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Multimaps$CustomListMultimap;, "Lorg/roboguice/shaded/goole/common/collect/Multimaps$CustomListMultimap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 215
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Multimaps$CustomListMultimap;->factory:Lorg/roboguice/shaded/goole/common/base/Supplier;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 216
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/Multimaps$CustomListMultimap;->backingMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 217
    return-void
.end method


# virtual methods
.method protected bridge synthetic createCollection()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 197
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Multimaps$CustomListMultimap;, "Lorg/roboguice/shaded/goole/common/collect/Multimaps$CustomListMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/Multimaps$CustomListMultimap;->createCollection()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected createCollection()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 208
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Multimaps$CustomListMultimap;, "Lorg/roboguice/shaded/goole/common/collect/Multimaps$CustomListMultimap<TK;TV;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Multimaps$CustomListMultimap;->factory:Lorg/roboguice/shaded/goole/common/base/Supplier;

    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

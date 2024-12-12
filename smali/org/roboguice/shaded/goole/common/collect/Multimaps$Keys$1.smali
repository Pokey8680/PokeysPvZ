.class Lorg/roboguice/shaded/goole/common/collect/Multimaps$Keys$1;
.super Lorg/roboguice/shaded/goole/common/collect/TransformedIterator;
.source "Multimaps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/roboguice/shaded/goole/common/collect/Multimaps$Keys;->entryIterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/roboguice/shaded/goole/common/collect/TransformedIterator",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;",
        "Ljava/util/Collection",
        "<TV;>;>;",
        "Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry",
        "<TK;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/roboguice/shaded/goole/common/collect/Multimaps$Keys;


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/Multimaps$Keys;Ljava/util/Iterator;)V
    .locals 0

    .prologue
    .line 1523
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Multimaps$Keys$1;, "Lorg/roboguice/shaded/goole/common/collect/Multimaps$Keys.1;"
    .local p2, "x0":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/util/Map$Entry<TK;Ljava/util/Collection<TV;>;>;>;"
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/Multimaps$Keys$1;->this$0:Lorg/roboguice/shaded/goole/common/collect/Multimaps$Keys;

    invoke-direct {p0, p2}, Lorg/roboguice/shaded/goole/common/collect/TransformedIterator;-><init>(Ljava/util/Iterator;)V

    return-void
.end method


# virtual methods
.method bridge synthetic transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1523
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Multimaps$Keys$1;, "Lorg/roboguice/shaded/goole/common/collect/Multimaps$Keys.1;"
    check-cast p1, Ljava/util/Map$Entry;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Multimaps$Keys$1;->transform(Ljava/util/Map$Entry;)Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;

    move-result-object v0

    return-object v0
.end method

.method transform(Ljava/util/Map$Entry;)Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 1527
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Multimaps$Keys$1;, "Lorg/roboguice/shaded/goole/common/collect/Multimaps$Keys.1;"
    .local p1, "backingEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;Ljava/util/Collection<TV;>;>;"
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Multimaps$Keys$1$1;

    invoke-direct {v0, p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Multimaps$Keys$1$1;-><init>(Lorg/roboguice/shaded/goole/common/collect/Multimaps$Keys$1;Ljava/util/Map$Entry;)V

    return-object v0
.end method

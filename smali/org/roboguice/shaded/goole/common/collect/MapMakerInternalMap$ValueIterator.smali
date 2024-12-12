.class final Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ValueIterator;
.super Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$HashIterator;
.source "MapMakerInternalMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ValueIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap",
        "<TK;TV;>.HashIterator<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;)V
    .locals 0

    .prologue
    .line 3710
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ValueIterator;, "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap<TK;TV;>.ValueIterator;"
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ValueIterator;->this$0:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;

    invoke-direct {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$HashIterator;-><init>(Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 3714
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ValueIterator;, "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap<TK;TV;>.ValueIterator;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ValueIterator;->nextEntry()Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$WriteThroughEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$WriteThroughEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

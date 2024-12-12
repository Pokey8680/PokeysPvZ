.class final Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$KeySet;
.super Ljava/util/AbstractSet;
.source "MapMakerInternalMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "KeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;)V
    .locals 0

    .prologue
    .line 3773
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$KeySet;, "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap<TK;TV;>.KeySet;"
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$KeySet;->this$0:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 3802
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$KeySet;, "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap<TK;TV;>.KeySet;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$KeySet;->this$0:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->clear()V

    .line 3803
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 3792
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$KeySet;, "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap<TK;TV;>.KeySet;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$KeySet;->this$0:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;

    invoke-virtual {v0, p1}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 3787
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$KeySet;, "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap<TK;TV;>.KeySet;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$KeySet;->this$0:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 3777
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$KeySet;, "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap<TK;TV;>.KeySet;"
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$KeyIterator;

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$KeySet;->this$0:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;

    invoke-direct {v0, v1}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$KeyIterator;-><init>(Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 3797
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$KeySet;, "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap<TK;TV;>.KeySet;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$KeySet;->this$0:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;

    invoke-virtual {v0, p1}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 3782
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$KeySet;, "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap<TK;TV;>.KeySet;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$KeySet;->this$0:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->size()I

    move-result v0

    return v0
.end method

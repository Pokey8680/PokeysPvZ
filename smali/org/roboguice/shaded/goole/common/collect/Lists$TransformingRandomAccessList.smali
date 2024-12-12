.class Lorg/roboguice/shaded/goole/common/collect/Lists$TransformingRandomAccessList;
.super Ljava/util/AbstractList;
.source "Lists.java"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/Lists;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TransformingRandomAccessList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList",
        "<TT;>;",
        "Ljava/util/RandomAccess;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final fromList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TF;>;"
        }
    .end annotation
.end field

.field final function:Lorg/roboguice/shaded/goole/common/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/base/Function",
            "<-TF;+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;Lorg/roboguice/shaded/goole/common/base/Function;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TF;>;",
            "Lorg/roboguice/shaded/goole/common/base/Function",
            "<-TF;+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 565
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Lists$TransformingRandomAccessList;, "Lorg/roboguice/shaded/goole/common/collect/Lists$TransformingRandomAccessList<TF;TT;>;"
    .local p1, "fromList":Ljava/util/List;, "Ljava/util/List<TF;>;"
    .local p2, "function":Lorg/roboguice/shaded/goole/common/base/Function;, "Lorg/roboguice/shaded/goole/common/base/Function<-TF;+TT;>;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 566
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Lists$TransformingRandomAccessList;->fromList:Ljava/util/List;

    .line 567
    invoke-static {p2}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/roboguice/shaded/goole/common/base/Function;

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Lists$TransformingRandomAccessList;->function:Lorg/roboguice/shaded/goole/common/base/Function;

    .line 568
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 570
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Lists$TransformingRandomAccessList;, "Lorg/roboguice/shaded/goole/common/collect/Lists$TransformingRandomAccessList<TF;TT;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Lists$TransformingRandomAccessList;->fromList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 571
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 573
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Lists$TransformingRandomAccessList;, "Lorg/roboguice/shaded/goole/common/collect/Lists$TransformingRandomAccessList<TF;TT;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Lists$TransformingRandomAccessList;->function:Lorg/roboguice/shaded/goole/common/base/Function;

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/Lists$TransformingRandomAccessList;->fromList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/roboguice/shaded/goole/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 587
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Lists$TransformingRandomAccessList;, "Lorg/roboguice/shaded/goole/common/collect/Lists$TransformingRandomAccessList<TF;TT;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Lists$TransformingRandomAccessList;->fromList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 576
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Lists$TransformingRandomAccessList;, "Lorg/roboguice/shaded/goole/common/collect/Lists$TransformingRandomAccessList<TF;TT;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/Lists$TransformingRandomAccessList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 579
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Lists$TransformingRandomAccessList;, "Lorg/roboguice/shaded/goole/common/collect/Lists$TransformingRandomAccessList<TF;TT;>;"
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Lists$TransformingRandomAccessList$1;

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/Lists$TransformingRandomAccessList;->fromList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/roboguice/shaded/goole/common/collect/Lists$TransformingRandomAccessList$1;-><init>(Lorg/roboguice/shaded/goole/common/collect/Lists$TransformingRandomAccessList;Ljava/util/ListIterator;)V

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 590
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Lists$TransformingRandomAccessList;, "Lorg/roboguice/shaded/goole/common/collect/Lists$TransformingRandomAccessList<TF;TT;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Lists$TransformingRandomAccessList;->function:Lorg/roboguice/shaded/goole/common/base/Function;

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/Lists$TransformingRandomAccessList;->fromList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/roboguice/shaded/goole/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 593
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Lists$TransformingRandomAccessList;, "Lorg/roboguice/shaded/goole/common/collect/Lists$TransformingRandomAccessList<TF;TT;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Lists$TransformingRandomAccessList;->fromList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

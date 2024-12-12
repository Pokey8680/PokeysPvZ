.class Lorg/roboguice/shaded/goole/common/collect/Lists$TransformingSequentialList;
.super Ljava/util/AbstractSequentialList;
.source "Lists.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/Lists;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TransformingSequentialList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSequentialList",
        "<TT;>;",
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
    .line 524
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Lists$TransformingSequentialList;, "Lorg/roboguice/shaded/goole/common/collect/Lists$TransformingSequentialList<TF;TT;>;"
    .local p1, "fromList":Ljava/util/List;, "Ljava/util/List<TF;>;"
    .local p2, "function":Lorg/roboguice/shaded/goole/common/base/Function;, "Lorg/roboguice/shaded/goole/common/base/Function<-TF;+TT;>;"
    invoke-direct {p0}, Ljava/util/AbstractSequentialList;-><init>()V

    .line 525
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Lists$TransformingSequentialList;->fromList:Ljava/util/List;

    .line 526
    invoke-static {p2}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/roboguice/shaded/goole/common/base/Function;

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Lists$TransformingSequentialList;->function:Lorg/roboguice/shaded/goole/common/base/Function;

    .line 527
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 534
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Lists$TransformingSequentialList;, "Lorg/roboguice/shaded/goole/common/collect/Lists$TransformingSequentialList<TF;TT;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Lists$TransformingSequentialList;->fromList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 535
    return-void
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
    .line 540
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Lists$TransformingSequentialList;, "Lorg/roboguice/shaded/goole/common/collect/Lists$TransformingSequentialList<TF;TT;>;"
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Lists$TransformingSequentialList$1;

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/Lists$TransformingSequentialList;->fromList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/roboguice/shaded/goole/common/collect/Lists$TransformingSequentialList$1;-><init>(Lorg/roboguice/shaded/goole/common/collect/Lists$TransformingSequentialList;Ljava/util/ListIterator;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 537
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Lists$TransformingSequentialList;, "Lorg/roboguice/shaded/goole/common/collect/Lists$TransformingSequentialList<TF;TT;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Lists$TransformingSequentialList;->fromList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.class Lorg/roboguice/shaded/goole/common/collect/Iterators$MergingIterator$1;
.super Ljava/lang/Object;
.source "Iterators.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/roboguice/shaded/goole/common/collect/Iterators$MergingIterator;-><init>(Ljava/lang/Iterable;Ljava/util/Comparator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/roboguice/shaded/goole/common/collect/PeekingIterator",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/roboguice/shaded/goole/common/collect/Iterators$MergingIterator;

.field final synthetic val$itemComparator:Ljava/util/Comparator;


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/Iterators$MergingIterator;Ljava/util/Comparator;)V
    .locals 0

    .prologue
    .line 1270
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Iterators$MergingIterator$1;, "Lorg/roboguice/shaded/goole/common/collect/Iterators$MergingIterator.1;"
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/Iterators$MergingIterator$1;->this$0:Lorg/roboguice/shaded/goole/common/collect/Iterators$MergingIterator;

    iput-object p2, p0, Lorg/roboguice/shaded/goole/common/collect/Iterators$MergingIterator$1;->val$itemComparator:Ljava/util/Comparator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 1270
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Iterators$MergingIterator$1;, "Lorg/roboguice/shaded/goole/common/collect/Iterators$MergingIterator.1;"
    check-cast p1, Lorg/roboguice/shaded/goole/common/collect/PeekingIterator;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lorg/roboguice/shaded/goole/common/collect/PeekingIterator;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/Iterators$MergingIterator$1;->compare(Lorg/roboguice/shaded/goole/common/collect/PeekingIterator;Lorg/roboguice/shaded/goole/common/collect/PeekingIterator;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/roboguice/shaded/goole/common/collect/PeekingIterator;Lorg/roboguice/shaded/goole/common/collect/PeekingIterator;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/collect/PeekingIterator",
            "<TT;>;",
            "Lorg/roboguice/shaded/goole/common/collect/PeekingIterator",
            "<TT;>;)I"
        }
    .end annotation

    .prologue
    .line 1273
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Iterators$MergingIterator$1;, "Lorg/roboguice/shaded/goole/common/collect/Iterators$MergingIterator.1;"
    .local p1, "o1":Lorg/roboguice/shaded/goole/common/collect/PeekingIterator;, "Lorg/roboguice/shaded/goole/common/collect/PeekingIterator<TT;>;"
    .local p2, "o2":Lorg/roboguice/shaded/goole/common/collect/PeekingIterator;, "Lorg/roboguice/shaded/goole/common/collect/PeekingIterator<TT;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Iterators$MergingIterator$1;->val$itemComparator:Ljava/util/Comparator;

    invoke-interface {p1}, Lorg/roboguice/shaded/goole/common/collect/PeekingIterator;->peek()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2}, Lorg/roboguice/shaded/goole/common/collect/PeekingIterator;->peek()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.class final Lorg/roboguice/shaded/goole/common/collect/Multisets$4;
.super Lorg/roboguice/shaded/goole/common/collect/AbstractMultiset;
.source "Multisets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/roboguice/shaded/goole/common/collect/Multisets;->difference(Lorg/roboguice/shaded/goole/common/collect/Multiset;Lorg/roboguice/shaded/goole/common/collect/Multiset;)Lorg/roboguice/shaded/goole/common/collect/Multiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/roboguice/shaded/goole/common/collect/AbstractMultiset",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic val$multiset1:Lorg/roboguice/shaded/goole/common/collect/Multiset;

.field final synthetic val$multiset2:Lorg/roboguice/shaded/goole/common/collect/Multiset;


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/Multiset;Lorg/roboguice/shaded/goole/common/collect/Multiset;)V
    .locals 0

    .prologue
    .line 604
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/Multisets$4;->val$multiset1:Lorg/roboguice/shaded/goole/common/collect/Multiset;

    iput-object p2, p0, Lorg/roboguice/shaded/goole/common/collect/Multisets$4;->val$multiset2:Lorg/roboguice/shaded/goole/common/collect/Multiset;

    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/collect/AbstractMultiset;-><init>()V

    return-void
.end method


# virtual methods
.method public count(Ljava/lang/Object;)I
    .locals 3
    .param p1, "element"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 607
    iget-object v2, p0, Lorg/roboguice/shaded/goole/common/collect/Multisets$4;->val$multiset1:Lorg/roboguice/shaded/goole/common/collect/Multiset;

    invoke-interface {v2, p1}, Lorg/roboguice/shaded/goole/common/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result v0

    .line 608
    .local v0, "count1":I
    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    iget-object v2, p0, Lorg/roboguice/shaded/goole/common/collect/Multisets$4;->val$multiset2:Lorg/roboguice/shaded/goole/common/collect/Multiset;

    invoke-interface {v2, p1}, Lorg/roboguice/shaded/goole/common/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result v2

    sub-int v2, v0, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_0
.end method

.method distinctElements()I
    .locals 1

    .prologue
    .line 633
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/Multisets$4;->entryIterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/Iterators;->size(Ljava/util/Iterator;)I

    move-result v0

    return v0
.end method

.method entryIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 614
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/Multisets$4;->val$multiset1:Lorg/roboguice/shaded/goole/common/collect/Multiset;

    invoke-interface {v1}, Lorg/roboguice/shaded/goole/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 615
    .local v0, "iterator1":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry<TE;>;>;"
    new-instance v1, Lorg/roboguice/shaded/goole/common/collect/Multisets$4$1;

    invoke-direct {v1, p0, v0}, Lorg/roboguice/shaded/goole/common/collect/Multisets$4$1;-><init>(Lorg/roboguice/shaded/goole/common/collect/Multisets$4;Ljava/util/Iterator;)V

    return-object v1
.end method

.class Lorg/roboguice/shaded/goole/common/collect/ImmutableList$SubList;
.super Lorg/roboguice/shaded/goole/common/collect/ImmutableList;
.source "ImmutableList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/ImmutableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SubList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/roboguice/shaded/goole/common/collect/ImmutableList",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final transient length:I

.field final transient offset:I

.field final synthetic this$0:Lorg/roboguice/shaded/goole/common/collect/ImmutableList;


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/ImmutableList;II)V
    .locals 0
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 406
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableList$SubList;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableList<TE;>.SubList;"
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableList$SubList;->this$0:Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;-><init>()V

    .line 407
    iput p2, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableList$SubList;->offset:I

    .line 408
    iput p3, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableList$SubList;->length:I

    .line 409
    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 418
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableList$SubList;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableList<TE;>.SubList;"
    iget v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableList$SubList;->length:I

    invoke-static {p1, v0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkElementIndex(II)I

    .line 419
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableList$SubList;->this$0:Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    iget v1, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableList$SubList;->offset:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method isPartialView()Z
    .locals 1

    .prologue
    .line 430
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableList$SubList;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableList<TE;>.SubList;"
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 402
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableList$SubList;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableList<TE;>.SubList;"
    invoke-super {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->iterator()Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic listIterator()Ljava/util/ListIterator;
    .locals 1

    .prologue
    .line 402
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableList$SubList;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableList<TE;>.SubList;"
    invoke-super {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->listIterator()Lorg/roboguice/shaded/goole/common/collect/UnmodifiableListIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 402
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableList$SubList;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableList<TE;>.SubList;"
    invoke-super {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->listIterator(I)Lorg/roboguice/shaded/goole/common/collect/UnmodifiableListIterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 413
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableList$SubList;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableList<TE;>.SubList;"
    iget v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableList$SubList;->length:I

    return v0
.end method

.method public bridge synthetic subList(II)Ljava/util/List;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # I

    .prologue
    .line 402
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableList$SubList;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableList<TE;>.SubList;"
    invoke-virtual {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList$SubList;->subList(II)Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public subList(II)Lorg/roboguice/shaded/goole/common/collect/ImmutableList;
    .locals 3
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 424
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableList$SubList;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableList<TE;>.SubList;"
    iget v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableList$SubList;->length:I

    invoke-static {p1, p2, v0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 425
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableList$SubList;->this$0:Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    iget v1, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableList$SubList;->offset:I

    add-int/2addr v1, p1

    iget v2, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableList$SubList;->offset:I

    add-int/2addr v2, p2

    invoke-virtual {v0, v1, v2}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->subList(II)Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method
